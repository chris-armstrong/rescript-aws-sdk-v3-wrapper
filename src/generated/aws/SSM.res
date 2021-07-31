type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ssm") @new external createClient: unit => awsServiceClient = "SSMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type validNextStep = string
type url = string
type uuid = string
type totalCount = int
type tokenValue = string
type timeoutSeconds = int
type targetValue = string
type targetType = string
type targetMapValue = string
type targetMapKey = string
type targetKey = string
type targetCount = int
type tagValue = string
type tagKey = string
type stringDateTime = string
type string_ = string
type streamUrl = string
type stopType = [@as("Cancel") #Cancel | @as("Complete") #Complete]
type stepExecutionFilterValue = string
type stepExecutionFilterKey = [
  | @as("Action") #Action
  | @as("StepName") #StepName
  | @as("StepExecutionId") #StepExecutionId
  | @as("StepExecutionStatus") #StepExecutionStatus
  | @as("StartTimeAfter") #StartTimeAfter
  | @as("StartTimeBefore") #StartTimeBefore
]
type statusName = string
type statusMessage = string
type statusDetails = string
type statusAdditionalInfo = string
type standardOutputContent = string
type standardErrorContent = string
type snapshotId = string
type snapshotDownloadUrl = string
type signalType = [
  | @as("Resume") #Resume
  | @as("StopStep") #StopStep
  | @as("StartStep") #StartStep
  | @as("Reject") #Reject
  | @as("Approve") #Approve
]
type sharedDocumentVersion = string
type sessionTarget = string
type sessionStatus = [
  | @as("Failed") #Failed
  | @as("Terminating") #Terminating
  | @as("Terminated") #Terminated
  | @as("Disconnected") #Disconnected
  | @as("Connecting") #Connecting
  | @as("Connected") #Connected
]
type sessionState = [@as("History") #History | @as("Active") #Active]
type sessionOwner = string
type sessionMaxResults = int
type sessionManagerS3OutputUrl = string
type sessionManagerParameterValue = string
type sessionManagerParameterName = string
type sessionManagerCloudWatchOutputUrl = string
type sessionId = string
type sessionFilterValue = string
type sessionFilterKey = [
  | @as("SessionId") #SessionId
  | @as("Status") #Status
  | @as("Owner") #Owner
  | @as("Target") #Target
  | @as("InvokedBefore") #InvokedBefore
  | @as("InvokedAfter") #InvokedAfter
]
type sessionDetails = string
type serviceSettingValue = string
type serviceSettingId = string
type serviceRole = string
type scheduleExpression = string
type s3Region = string
type s3KeyPrefix = string
type s3BucketName = string
type reviewer = string
type reviewStatus = [
  | @as("REJECTED") #REJECTED
  | @as("PENDING") #PENDING
  | @as("NOT_REVIEWED") #NOT_REVIEWED
  | @as("APPROVED") #APPROVED
]
type responseCode = int
type resourceTypeForTagging = [
  | @as("OpsMetadata") #OpsMetadata
  | @as("OpsItem") #OpsItem
  | @as("PatchBaseline") #PatchBaseline
  | @as("Parameter") #Parameter
  | @as("MaintenanceWindow") #MaintenanceWindow
  | @as("ManagedInstance") #ManagedInstance
  | @as("Document") #Document
]
type resourceType = [
  | @as("EC2Instance") #EC2Instance
  | @as("Document") #Document
  | @as("ManagedInstance") #ManagedInstance
]
type resourceId = string
type resourceDataSyncType = string
type resourceDataSyncState = string
type resourceDataSyncSourceType = string
type resourceDataSyncSourceRegion = string
type resourceDataSyncS3Region = string
type resourceDataSyncS3Prefix = string
type resourceDataSyncS3Format = [@as("JsonSerDe") #JsonSerDe]
type resourceDataSyncS3BucketName = string
type resourceDataSyncOrganizationalUnitId = string
type resourceDataSyncOrganizationSourceType = string
type resourceDataSyncName = string
type resourceDataSyncLastModifiedTime = Js.Date.t
type resourceDataSyncIncludeFutureRegions = bool
type resourceDataSyncEnableAllOpsDataSources = bool
type resourceDataSyncDestinationDataSharingType = string
type resourceDataSyncCreatedTime = Js.Date.t
type resourceDataSyncAWSKMSKeyARN = string
type resourceCountByStatus = string
type resourceCount = int
type remainingCount = int
type registrationsCount = int
type registrationLimit = int
type region = string
type rebootOption = [@as("NoReboot") #NoReboot | @as("RebootIfNeeded") #RebootIfNeeded]
type putInventoryMessage = string
type product = string
type platformType = [@as("Linux") #Linux | @as("Windows") #Windows]
type pingStatus = [
  | @as("Inactive") #Inactive
  | @as("ConnectionLost") #ConnectionLost
  | @as("Online") #Online
]
type patchVersion = string
type patchVendor = string
type patchUnreportedNotApplicableCount = int
type patchTitle = string
type patchStringDateTime = string
type patchSourceProduct = string
type patchSourceName = string
type patchSourceConfiguration = string
type patchSeverity = string
type patchSet = [@as("APPLICATION") #APPLICATION | @as("OS") #OS]
type patchSecurityNonCompliantCount = int
type patchRepository = string
type patchRelease = string
type patchProperty = [
  | @as("SEVERITY") #SEVERITY
  | @as("PRIORITY") #PRIORITY
  | @as("MSRC_SEVERITY") #MSRC_SEVERITY
  | @as("CLASSIFICATION") #CLASSIFICATION
  | @as("PRODUCT_FAMILY") #PRODUCT_FAMILY
  | @as("PRODUCT") #PRODUCT
]
type patchProductFamily = string
type patchProduct = string
type patchOtherNonCompliantCount = int
type patchOrchestratorFilterValue = string
type patchOrchestratorFilterKey = string
type patchOperationType = [@as("Install") #Install | @as("Scan") #Scan]
type patchNotApplicableCount = int
type patchName = string
type patchMsrcSeverity = string
type patchMsrcNumber = string
type patchMissingCount = int
type patchLanguage = string
type patchKbNumber = string
type patchInstalledRejectedCount = int
type patchInstalledPendingRebootCount = int
type patchInstalledOtherCount = int
type patchInstalledCount = int
type patchId = string
type patchGroup = string
type patchFilterValue = string
type patchFilterKey = [
  | @as("VERSION") #VERSION
  | @as("SECURITY") #SECURITY
  | @as("SEVERITY") #SEVERITY
  | @as("RELEASE") #RELEASE
  | @as("REPOSITORY") #REPOSITORY
  | @as("PRIORITY") #PRIORITY
  | @as("SECTION") #SECTION
  | @as("PATCH_ID") #PATCH_ID
  | @as("NAME") #NAME
  | @as("MSRC_SEVERITY") #MSRC_SEVERITY
  | @as("EPOCH") #EPOCH
  | @as("CVE_ID") #CVE_ID
  | @as("CLASSIFICATION") #CLASSIFICATION
  | @as("PRODUCT_FAMILY") #PRODUCT_FAMILY
  | @as("PRODUCT") #PRODUCT
  | @as("PATCH_SET") #PATCH_SET
  | @as("BUGZILLA_ID") #BUGZILLA_ID
  | @as("ADVISORY_ID") #ADVISORY_ID
  | @as("ARCH") #ARCH
]
type patchFailedCount = int
type patchEpoch = int
type patchDescription = string
type patchDeploymentStatus = [
  | @as("EXPLICIT_REJECTED") #EXPLICIT_REJECTED
  | @as("EXPLICIT_APPROVED") #EXPLICIT_APPROVED
  | @as("PENDING_APPROVAL") #PENDING_APPROVAL
  | @as("APPROVED") #APPROVED
]
type patchCriticalNonCompliantCount = int
type patchContentUrl = string
type patchComplianceMaxResults = int
type patchComplianceLevel = [
  | @as("UNSPECIFIED") #UNSPECIFIED
  | @as("INFORMATIONAL") #INFORMATIONAL
  | @as("LOW") #LOW
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("CRITICAL") #CRITICAL
]
type patchComplianceDataState = [
  | @as("FAILED") #FAILED
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("MISSING") #MISSING
  | @as("INSTALLED_REJECTED") #INSTALLED_REJECTED
  | @as("INSTALLED_PENDING_REBOOT") #INSTALLED_PENDING_REBOOT
  | @as("INSTALLED_OTHER") #INSTALLED_OTHER
  | @as("INSTALLED") #INSTALLED
]
type patchClassification = string
type patchCVEIds = string
type patchCVEId = string
type patchBugzillaId = string
type patchBaselineMaxResults = int
type patchArch = string
type patchAdvisoryId = string
type patchAction = [@as("BLOCK") #BLOCK | @as("ALLOW_AS_DEPENDENCY") #ALLOW_AS_DEPENDENCY]
type parametersFilterValue = string
type parametersFilterKey = [@as("KeyId") #KeyId | @as("Type") #Type | @as("Name") #Name]
type parameterValue = string
type parameterType = [
  | @as("SecureString") #SecureString
  | @as("StringList") #StringList
  | @as("String") #String
]
type parameterTier = [
  | @as("Intelligent-Tiering") #Intelligent_Tiering
  | @as("Advanced") #Advanced
  | @as("Standard") #Standard
]
type parameterStringQueryOption = string
type parameterStringFilterValue = string
type parameterStringFilterKey = string
type parameterPolicies = string
type parameterName = string
type parameterLabel = string
type parameterKeyId = string
type parameterDescription = string
type parameterDataType = string
type psparameterVersion = float
type psparameterValue = string
type psparameterSelector = string
type psparameterName = string
type ownerInformation = string
type outputSourceType = string
type outputSourceId = string
type opsMetadataResourceId = string
type opsMetadataFilterValue = string
type opsMetadataFilterKey = string
type opsMetadataArn = string
type opsItemType = string
type opsItemTitle = string
type opsItemStatus = [
  | @as("Rejected") #Rejected
  | @as("Approved") #Approved
  | @as("PendingApproval") #PendingApproval
  | @as("ChangeCalendarOverrideRejected") #ChangeCalendarOverrideRejected
  | @as("ChangeCalendarOverrideApproved") #ChangeCalendarOverrideApproved
  | @as("PendingChangeCalendarOverride") #PendingChangeCalendarOverride
  | @as("RunbookInProgress") #RunbookInProgress
  | @as("Scheduled") #Scheduled
  | @as("CompletedWithFailure") #CompletedWithFailure
  | @as("CompletedWithSuccess") #CompletedWithSuccess
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("Cancelling") #Cancelling
  | @as("TimedOut") #TimedOut
  | @as("Pending") #Pending
  | @as("Resolved") #Resolved
  | @as("InProgress") #InProgress
  | @as("Open") #Open
]
type opsItemSource = string
type opsItemSeverity = string
type opsItemRelatedItemsMaxResults = int
type opsItemRelatedItemsFilterValue = string
type opsItemRelatedItemsFilterOperator = [@as("Equal") #Equal]
type opsItemRelatedItemsFilterKey = [
  | @as("ResourceUri") #ResourceUri
  | @as("AssociationId") #AssociationId
  | @as("ResourceType") #ResourceType
]
type opsItemRelatedItemAssociationType = string
type opsItemRelatedItemAssociationResourceUri = string
type opsItemRelatedItemAssociationResourceType = string
type opsItemRelatedItemAssociationId = string
type opsItemPriority = int
type opsItemMaxResults = int
type opsItemId = string
type opsItemFilterValue = string
type opsItemFilterOperator = [
  | @as("LessThan") #LessThan
  | @as("GreaterThan") #GreaterThan
  | @as("Contains") #Contains
  | @as("Equal") #Equal
]
type opsItemFilterKey = [
  | @as("ChangeRequestByTargetsResourceGroup") #ChangeRequestByTargetsResourceGroup
  | @as("ChangeRequestByTemplate") #ChangeRequestByTemplate
  | @as("ChangeRequestByApproverName") #ChangeRequestByApproverName
  | @as("ChangeRequestByApproverArn") #ChangeRequestByApproverArn
  | @as("ChangeRequestByRequesterName") #ChangeRequestByRequesterName
  | @as("ChangeRequestByRequesterArn") #ChangeRequestByRequesterArn
  | @as("OpsItemType") #OpsItemType
  | @as("Severity") #Severity
  | @as("Category") #Category
  | @as("AutomationId") #AutomationId
  | @as("ResourceId") #ResourceId
  | @as("OperationalDataValue") #OperationalDataValue
  | @as("OperationalDataKey") #OperationalDataKey
  | @as("OperationalData") #OperationalData
  | @as("PlannedEndTime") #PlannedEndTime
  | @as("PlannedStartTime") #PlannedStartTime
  | @as("ActualEndTime") #ActualEndTime
  | @as("ActualStartTime") #ActualStartTime
  | @as("LastModifiedTime") #LastModifiedTime
  | @as("CreatedTime") #CreatedTime
  | @as("OpsItemId") #OpsItemId
  | @as("Title") #Title
  | @as("Priority") #Priority
  | @as("Source") #Source
  | @as("CreatedBy") #CreatedBy
  | @as("Status") #Status
]
type opsItemEventMaxResults = int
type opsItemEventFilterValue = string
type opsItemEventFilterOperator = [@as("Equal") #Equal]
type opsItemEventFilterKey = [@as("OpsItemId") #OpsItemId]
type opsItemDescription = string
type opsItemDataValueString = string
type opsItemDataType = [@as("String") #String | @as("SearchableString") #SearchableString]
type opsItemDataKey = string
type opsItemCategory = string
type opsFilterValue = string
type opsFilterOperatorType = [
  | @as("Exists") #Exists
  | @as("GreaterThan") #GreaterThan
  | @as("LessThan") #LessThan
  | @as("BeginWith") #BeginWith
  | @as("NotEqual") #NotEqual
  | @as("Equal") #Equal
]
type opsFilterKey = string
type opsEntityItemKey = string
type opsEntityItemCaptureTime = string
type opsEntityId = string
type opsDataTypeName = string
type opsDataAttributeName = string
type opsAggregatorValueKey = string
type opsAggregatorValue = string
type opsAggregatorType = string
type operatingSystem = [
  | @as("MACOS") #MACOS
  | @as("DEBIAN") #DEBIAN
  | @as("ORACLE_LINUX") #ORACLE_LINUX
  | @as("CENTOS") #CENTOS
  | @as("SUSE") #SUSE
  | @as("REDHAT_ENTERPRISE_LINUX") #REDHAT_ENTERPRISE_LINUX
  | @as("UBUNTU") #UBUNTU
  | @as("AMAZON_LINUX_2") #AMAZON_LINUX_2
  | @as("AMAZON_LINUX") #AMAZON_LINUX
  | @as("WINDOWS") #WINDOWS
]
type notificationType = [@as("Invocation") #Invocation | @as("Command") #Command]
type notificationEvent = [
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("TimedOut") #TimedOut
  | @as("Success") #Success
  | @as("InProgress") #InProgress
  | @as("All") #All
]
type notificationArn = string
type nextToken = string
type metadataValueString = string
type metadataKey = string
type maxResultsEC2Compatible = int
type maxResults = int
type maxErrors = string
type maxConcurrency = string
type managedInstanceId = string
type maintenanceWindowTimezone = string
type maintenanceWindowTaskType = [
  | @as("LAMBDA") #LAMBDA
  | @as("STEP_FUNCTIONS") #STEP_FUNCTIONS
  | @as("AUTOMATION") #AUTOMATION
  | @as("RUN_COMMAND") #RUN_COMMAND
]
type maintenanceWindowTaskTargetId = string
type maintenanceWindowTaskPriority = int
type maintenanceWindowTaskParameterValue = string
type maintenanceWindowTaskParameterName = string
type maintenanceWindowTaskId = string
type maintenanceWindowTaskArn = string
type maintenanceWindowTargetId = string
type maintenanceWindowStringDateTime = string
type maintenanceWindowStepFunctionsName = string
type maintenanceWindowStepFunctionsInput = string
type maintenanceWindowSearchMaxResults = int
type maintenanceWindowSchedule = string
type maintenanceWindowResourceType = [
  | @as("RESOURCE_GROUP") #RESOURCE_GROUP
  | @as("INSTANCE") #INSTANCE
]
type maintenanceWindowOffset = int
type maintenanceWindowName = string
type maintenanceWindowMaxResults = int
type maintenanceWindowLambdaQualifier = string
type maintenanceWindowLambdaPayload = NodeJs.Buffer.t
type maintenanceWindowLambdaClientContext = string
type maintenanceWindowId = string
type maintenanceWindowFilterValue = string
type maintenanceWindowFilterKey = string
type maintenanceWindowExecutionTaskInvocationParameters = string
type maintenanceWindowExecutionTaskInvocationId = string
type maintenanceWindowExecutionTaskId = string
type maintenanceWindowExecutionTaskExecutionId = string
type maintenanceWindowExecutionStatusDetails = string
type maintenanceWindowExecutionStatus = [
  | @as("SKIPPED_OVERLAPPING") #SKIPPED_OVERLAPPING
  | @as("CANCELLED") #CANCELLED
  | @as("CANCELLING") #CANCELLING
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type maintenanceWindowExecutionId = string
type maintenanceWindowEnabled = bool
type maintenanceWindowDurationHours = int
type maintenanceWindowDescription = string
type maintenanceWindowCutoff = int
type maintenanceWindowAllowUnassociatedTargets = bool
type long = float
type listOpsMetadataMaxResults = int
type lastSuccessfulResourceDataSyncTime = Js.Date.t
type lastResourceDataSyncTime = Js.Date.t
type lastResourceDataSyncStatus = [
  | @as("InProgress") #InProgress
  | @as("Failed") #Failed
  | @as("Successful") #Successful
]
type lastResourceDataSyncMessage = string
type isSubTypeSchema = bool
type invocationTraceOutput = string
type inventoryTypeDisplayName = string
type inventorySchemaDeleteOption = [
  | @as("DeleteSchema") #DeleteSchema
  | @as("DisableSchema") #DisableSchema
]
type inventoryResultItemKey = string
type inventoryResultEntityId = string
type inventoryQueryOperatorType = [
  | @as("Exists") #Exists
  | @as("GreaterThan") #GreaterThan
  | @as("LessThan") #LessThan
  | @as("BeginWith") #BeginWith
  | @as("NotEqual") #NotEqual
  | @as("Equal") #Equal
]
type inventoryItemTypeNameFilter = string
type inventoryItemTypeName = string
type inventoryItemSchemaVersion = string
type inventoryItemContentHash = string
type inventoryItemCaptureTime = string
type inventoryItemAttributeName = string
type inventoryGroupName = string
type inventoryFilterValue = string
type inventoryFilterKey = string
type inventoryDeletionStatus = [@as("Complete") #Complete | @as("InProgress") #InProgress]
type inventoryDeletionStartTime = Js.Date.t
type inventoryDeletionLastStatusUpdateTime = Js.Date.t
type inventoryDeletionLastStatusMessage = string
type inventoryAttributeDataType = [@as("number") #Number | @as("string") #String]
type inventoryAggregatorExpression = string
type integer_ = int
type instancesCount = int
type instanceTagName = string
type instancePatchStateOperatorType = [
  | @as("GreaterThan") #GreaterThan
  | @as("LessThan") #LessThan
  | @as("NotEqual") #NotEqual
  | @as("Equal") #Equal
]
type instancePatchStateFilterValue = string
type instancePatchStateFilterKey = string
type instanceInformationStringFilterKey = string
type instanceInformationFilterValue = string
type instanceInformationFilterKey = [
  | @as("AssociationStatus") #AssociationStatus
  | @as("ResourceType") #ResourceType
  | @as("IamRole") #IamRole
  | @as("ActivationIds") #ActivationIds
  | @as("PlatformTypes") #PlatformTypes
  | @as("PingStatus") #PingStatus
  | @as("AgentVersion") #AgentVersion
  | @as("InstanceIds") #InstanceIds
]
type instanceId = string
type instanceCount = int
type instanceAssociationExecutionSummary = string
type installOverrideList = string
type idempotencyToken = string
type iamRole = string
type iso8601String = string
type ipaddress = string
type getParametersByPathMaxResults = int
type getOpsMetadataMaxResults = int
type getInventorySchemaMaxResults = int
type fault = [@as("Unknown") #Unknown | @as("Server") #Server | @as("Client") #Client]
type expirationDate = Js.Date.t
type executionRoleName = string
type executionMode = [@as("Interactive") #Interactive | @as("Auto") #Auto]
type errorCount = int
type effectiveInstanceAssociationMaxResults = int
type dryRun = bool
type documentVersionNumber = string
type documentVersionName = string
type documentVersion = string
type documentType = [
  | @as("ProblemAnalysisTemplate") #ProblemAnalysisTemplate
  | @as("ProblemAnalysis") #ProblemAnalysis
  | @as("Automation.ChangeTemplate") #Automation_ChangeTemplate
  | @as("ChangeCalendar") #ChangeCalendar
  | @as("DeploymentStrategy") #DeploymentStrategy
  | @as("ApplicationConfigurationSchema") #ApplicationConfigurationSchema
  | @as("ApplicationConfiguration") #ApplicationConfiguration
  | @as("Package") #Package
  | @as("Session") #Session
  | @as("Automation") #Automation
  | @as("Policy") #Policy
  | @as("Command") #Command
]
type documentStatusInformation = string
type documentStatus = [
  | @as("Failed") #Failed
  | @as("Deleting") #Deleting
  | @as("Updating") #Updating
  | @as("Active") #Active
  | @as("Creating") #Creating
]
type documentSha1 = string
type documentSchemaVersion = string
type documentReviewCommentType = [@as("Comment") #Comment]
type documentReviewComment = string
type documentReviewAction = [
  | @as("Reject") #Reject
  | @as("Approve") #Approve
  | @as("UpdateReview") #UpdateReview
  | @as("SendForReview") #SendForReview
]
type documentPermissionType = [@as("Share") #Share]
type documentPermissionMaxResults = int
type documentParameterType = [@as("StringList") #StringList | @as("String") #String]
type documentParameterName = string
type documentParameterDescrption = string
type documentParameterDefaultValue = string
type documentOwner = string
type documentName = string
type documentMetadataEnum = [@as("DocumentReviews") #DocumentReviews]
type documentKeyValuesFilterValue = string
type documentKeyValuesFilterKey = string
type documentHashType = [@as("Sha1") #Sha1 | @as("Sha256") #Sha256]
type documentHash = string
type documentFormat = [@as("TEXT") #TEXT | @as("JSON") #JSON | @as("YAML") #YAML]
type documentFilterValue = string
type documentFilterKey = [
  | @as("DocumentType") #DocumentType
  | @as("PlatformTypes") #PlatformTypes
  | @as("Owner") #Owner
  | @as("Name") #Name
]
type documentDisplayName = string
type documentContent = string
type documentAuthor = string
type documentARN = string
type descriptionInDocument = string
type describeActivationsFilterKeys = [
  | @as("IamRole") #IamRole
  | @as("DefaultInstanceName") #DefaultInstanceName
  | @as("ActivationIds") #ActivationIds
]
type deliveryTimedOutCount = int
type defaultInstanceName = string
type defaultBaseline = bool
type dateTime = Js.Date.t
type createdDate = Js.Date.t
type contentLength = float
type connectionStatus = [@as("NotConnected") #NotConnected | @as("Connected") #Connected]
type computerName = string
type complianceUploadType = [@as("PARTIAL") #PARTIAL | @as("COMPLETE") #COMPLETE]
type complianceTypeName = string
type complianceSummaryCount = int
type complianceStringFilterKey = string
type complianceStatus = [@as("NON_COMPLIANT") #NON_COMPLIANT | @as("COMPLIANT") #COMPLIANT]
type complianceSeverity = [
  | @as("UNSPECIFIED") #UNSPECIFIED
  | @as("INFORMATIONAL") #INFORMATIONAL
  | @as("LOW") #LOW
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("CRITICAL") #CRITICAL
]
type complianceResourceType = string
type complianceResourceId = string
type complianceQueryOperatorType = [
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("BEGIN_WITH") #BEGIN_WITH
  | @as("NOT_EQUAL") #NOT_EQUAL
  | @as("EQUAL") #EQUAL
]
type complianceItemTitle = string
type complianceItemId = string
type complianceItemContentHash = string
type complianceFilterValue = string
type complianceExecutionType = string
type complianceExecutionId = string
type completedCount = int
type comment = string
type commandStatus = [
  | @as("Cancelling") #Cancelling
  | @as("TimedOut") #TimedOut
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("Success") #Success
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type commandPluginStatus = [
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("TimedOut") #TimedOut
  | @as("Success") #Success
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type commandPluginOutput = string
type commandPluginName = string
type commandMaxResults = int
type commandInvocationStatus = [
  | @as("Cancelling") #Cancelling
  | @as("Failed") #Failed
  | @as("TimedOut") #TimedOut
  | @as("Cancelled") #Cancelled
  | @as("Success") #Success
  | @as("Delayed") #Delayed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type commandId = string
type commandFilterValue = string
type commandFilterKey = [
  | @as("DocumentName") #DocumentName
  | @as("ExecutionStage") #ExecutionStage
  | @as("Status") #Status
  | @as("InvokedBefore") #InvokedBefore
  | @as("InvokedAfter") #InvokedAfter
]
type cloudWatchOutputEnabled = bool
type cloudWatchLogGroupName = string
type clientToken = string
type changeRequestName = string
type changeDetailsValue = string
type calendarState = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type calendarNameOrARN = string
type boolean_ = bool
type batchErrorMessage = string
type baselineName = string
type baselineId = string
type baselineDescription = string
type automationType = [@as("Local") #Local | @as("CrossAccount") #CrossAccount]
type automationTargetParameterName = string
type automationSubtype = [@as("ChangeRequest") #ChangeRequest]
type automationParameterValue = string
type automationParameterKey = string
type automationExecutionStatus = [
  | @as("CompletedWithFailure") #CompletedWithFailure
  | @as("CompletedWithSuccess") #CompletedWithSuccess
  | @as("ChangeCalendarOverrideRejected") #ChangeCalendarOverrideRejected
  | @as("ChangeCalendarOverrideApproved") #ChangeCalendarOverrideApproved
  | @as("PendingChangeCalendarOverride") #PendingChangeCalendarOverride
  | @as("RunbookInProgress") #RunbookInProgress
  | @as("Scheduled") #Scheduled
  | @as("Rejected") #Rejected
  | @as("Approved") #Approved
  | @as("PendingApproval") #PendingApproval
  | @as("Failed") #Failed
  | @as("Cancelled") #Cancelled
  | @as("Cancelling") #Cancelling
  | @as("TimedOut") #TimedOut
  | @as("Success") #Success
  | @as("Waiting") #Waiting
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type automationExecutionId = string
type automationExecutionFilterValue = string
type automationExecutionFilterKey = [
  | @as("OpsItemId") #OpsItemId
  | @as("AutomationSubtype") #AutomationSubtype
  | @as("TargetResourceGroup") #TargetResourceGroup
  | @as("TagKey") #TagKey
  | @as("AutomationType") #AutomationType
  | @as("StartTimeAfter") #StartTimeAfter
  | @as("StartTimeBefore") #StartTimeBefore
  | @as("CurrentAction") #CurrentAction
  | @as("ParentExecutionId") #ParentExecutionId
  | @as("ExecutionId") #ExecutionId
  | @as("ExecutionStatus") #ExecutionStatus
  | @as("DocumentNamePrefix") #DocumentNamePrefix
]
type automationActionName = string
type attributeValue = string
type attributeName = string
type attachmentsSourceValue = string
type attachmentsSourceKey = [
  | @as("AttachmentReference") #AttachmentReference
  | @as("S3FileUrl") #S3FileUrl
  | @as("SourceUrl") #SourceUrl
]
type attachmentUrl = string
type attachmentName = string
type attachmentIdentifier = string
type attachmentHashType = [@as("Sha256") #Sha256]
type attachmentHash = string
type associationVersion = string
type associationSyncCompliance = [@as("MANUAL") #MANUAL | @as("AUTO") #AUTO]
type associationStatusName = [
  | @as("Failed") #Failed
  | @as("Success") #Success
  | @as("Pending") #Pending
]
type associationResourceType = string
type associationResourceId = string
type associationName = string
type associationId = string
type associationFilterValue = string
type associationFilterOperatorType = [
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN") #LESS_THAN
  | @as("EQUAL") #EQUAL
]
type associationFilterKey = [
  | @as("ResourceGroupName") #ResourceGroupName
  | @as("AssociationName") #AssociationName
  | @as("LastExecutedAfter") #LastExecutedAfter
  | @as("LastExecutedBefore") #LastExecutedBefore
  | @as("AssociationStatusName") #AssociationStatusName
  | @as("AssociationId") #AssociationId
  | @as("Name") #Name
  | @as("InstanceId") #InstanceId
]
type associationExecutionTargetsFilterValue = string
type associationExecutionTargetsFilterKey = [
  | @as("ResourceType") #ResourceType
  | @as("ResourceId") #ResourceId
  | @as("Status") #Status
]
type associationExecutionId = string
type associationExecutionFilterValue = string
type associationExecutionFilterKey = [
  | @as("CreatedTime") #CreatedTime
  | @as("Status") #Status
  | @as("ExecutionId") #ExecutionId
]
type associationComplianceSeverity = [
  | @as("UNSPECIFIED") #UNSPECIFIED
  | @as("LOW") #LOW
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("CRITICAL") #CRITICAL
]
type approveAfterDays = int
type applyOnlyAtCronInterval = bool
type allowedPattern = string
type aggregatorSchemaOnly = bool
type agentErrorCode = string
type activationId = string
type activationDescription = string
type activationCode = string
type accountId = string
type account = string
type validNextStepList = array<validNextStep>
type targetValues = array<targetValue>
type targetParameterList = array<parameterValue>
type targetMapValueList = array<targetMapValue>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type stringList = array<string_>
type stepExecutionFilterValueList = array<stepExecutionFilterValue>
type severitySummary = {
  @as("UnspecifiedCount") unspecifiedCount: option<complianceSummaryCount>,
  @as("InformationalCount") informationalCount: option<complianceSummaryCount>,
  @as("LowCount") lowCount: option<complianceSummaryCount>,
  @as("MediumCount") mediumCount: option<complianceSummaryCount>,
  @as("HighCount") highCount: option<complianceSummaryCount>,
  @as("CriticalCount") criticalCount: option<complianceSummaryCount>,
}
type sessionManagerParameterValueList = array<sessionManagerParameterValue>
type sessionManagerOutputUrl = {
  @as("CloudWatchOutputUrl") cloudWatchOutputUrl: option<sessionManagerCloudWatchOutputUrl>,
  @as("S3OutputUrl") s3OutputUrl: option<sessionManagerS3OutputUrl>,
}
type sessionFilter = {
  value: sessionFilterValue,
  key: sessionFilterKey,
}
type serviceSetting = {
  @as("Status") status: option<string_>,
  @as("ARN") arn: option<string_>,
  @as("LastModifiedUser") lastModifiedUser: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<dateTime>,
  @as("SettingValue") settingValue: option<serviceSettingValue>,
  @as("SettingId") settingId: option<serviceSettingId>,
}
type scheduledWindowExecution = {
  @as("ExecutionTime") executionTime: option<maintenanceWindowStringDateTime>,
  @as("Name") name: option<maintenanceWindowName>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type s3OutputUrl = {@as("OutputUrl") outputUrl: option<url>}
type s3OutputLocation = {
  @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<s3KeyPrefix>,
  @as("OutputS3BucketName") outputS3BucketName: option<s3BucketName>,
  @as("OutputS3Region") outputS3Region: option<s3Region>,
}
type reviewInformation = {
  @as("Reviewer") reviewer: option<reviewer>,
  @as("Status") status: option<reviewStatus>,
  @as("ReviewedTime") reviewedTime: option<dateTime>,
}
type resultAttribute = {@as("TypeName") typeName: inventoryItemTypeName}
type resourceDataSyncSourceRegionList = array<resourceDataSyncSourceRegion>
type resourceDataSyncOrganizationalUnit = {
  @as("OrganizationalUnitId") organizationalUnitId: option<resourceDataSyncOrganizationalUnitId>,
}
type resourceDataSyncDestinationDataSharing = {
  @as("DestinationDataSharingType")
  destinationDataSharingType: option<resourceDataSyncDestinationDataSharingType>,
}
type relatedOpsItem = {@as("OpsItemId") opsItemId: string_}
type regions = array<region>
type progressCounters = {
  @as("TimedOutSteps") timedOutSteps: option<integer_>,
  @as("CancelledSteps") cancelledSteps: option<integer_>,
  @as("FailedSteps") failedSteps: option<integer_>,
  @as("SuccessSteps") successSteps: option<integer_>,
  @as("TotalSteps") totalSteps: option<integer_>,
}
type platformTypeList = array<platformType>
type patchStatus = {
  @as("ApprovalDate") approvalDate: option<dateTime>,
  @as("ComplianceLevel") complianceLevel: option<patchComplianceLevel>,
  @as("DeploymentStatus") deploymentStatus: option<patchDeploymentStatus>,
}
type patchSourceProductList = array<patchSourceProduct>
type patchPropertyEntry = Js.Dict.t<attributeValue>
type patchOrchestratorFilterValues = array<patchOrchestratorFilterValue>
type patchIdList = array<patchId>
type patchGroupList = array<patchGroup>
type patchFilterValueList = array<patchFilterValue>
type patchComplianceData = {
  @as("CVEIds") cveids: option<patchCVEIds>,
  @as("InstalledTime") installedTime: dateTime,
  @as("State") state: patchComplianceDataState,
  @as("Severity") severity: patchSeverity,
  @as("Classification") classification: patchClassification,
  @as("KBId") kbid: patchKbNumber,
  @as("Title") title: patchTitle,
}
type patchCVEIdList = array<patchCVEId>
type patchBugzillaIdList = array<patchBugzillaId>
type patchBaselineIdentity = {
  @as("DefaultBaseline") defaultBaseline: option<defaultBaseline>,
  @as("BaselineDescription") baselineDescription: option<baselineDescription>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  @as("BaselineName") baselineName: option<baselineName>,
  @as("BaselineId") baselineId: option<baselineId>,
}
type patchAdvisoryIdList = array<patchAdvisoryId>
type parametersFilterValueList = array<parametersFilterValue>
type parameterValueList = array<parameterValue>
type parameterStringFilterValueList = array<parameterStringFilterValue>
type parameterNameList = array<psparameterName>
type parameterLabelList = array<parameterLabel>
type parameterInlinePolicy = {
  @as("PolicyStatus") policyStatus: option<string_>,
  @as("PolicyType") policyType: option<string_>,
  @as("PolicyText") policyText: option<string_>,
}
type parameter = {
  @as("DataType") dataType: option<parameterDataType>,
  @as("ARN") arn: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<dateTime>,
  @as("SourceResult") sourceResult: option<string_>,
  @as("Selector") selector: option<psparameterSelector>,
  @as("Version") version: option<psparameterVersion>,
  @as("Value") value: option<psparameterValue>,
  @as("Type") type_: option<parameterType>,
  @as("Name") name: option<psparameterName>,
}
type outputSource = {
  @as("OutputSourceType") outputSourceType: option<outputSourceType>,
  @as("OutputSourceId") outputSourceId: option<outputSourceId>,
}
type opsResultAttribute = {@as("TypeName") typeName: opsDataTypeName}
type opsMetadataFilterValueList = array<opsMetadataFilterValue>
type opsMetadata = {
  @as("CreationDate") creationDate: option<dateTime>,
  @as("LastModifiedUser") lastModifiedUser: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<dateTime>,
  @as("OpsMetadataArn") opsMetadataArn: option<opsMetadataArn>,
  @as("ResourceId") resourceId: option<opsMetadataResourceId>,
}
type opsItemRelatedItemsFilterValues = array<opsItemRelatedItemsFilterValue>
type opsItemParameterNamesList = array<string_>
type opsItemOpsDataKeysList = array<string_>
type opsItemNotification = {@as("Arn") arn: option<string_>}
type opsItemIdentity = {@as("Arn") arn: option<string_>}
type opsItemFilterValues = array<opsItemFilterValue>
type opsItemEventFilterValues = array<opsItemEventFilterValue>
type opsItemDataValue = {
  @as("Type") type_: option<opsItemDataType>,
  @as("Value") value: option<opsItemDataValueString>,
}
type opsFilterValueList = array<opsFilterValue>
type opsEntityItemEntry = Js.Dict.t<attributeValue>
type opsAggregatorValueMap = Js.Dict.t<opsAggregatorValue>
type notificationEventList = array<notificationEvent>
type normalStringMap = Js.Dict.t<string_>
type metadataValue = {@as("Value") value: option<metadataValueString>}
type metadataKeysToDeleteList = array<metadataKey>
type maintenanceWindowTaskParameterValueList = array<maintenanceWindowTaskParameterValue>
type maintenanceWindowStepFunctionsParameters = {
  @as("Name") name: option<maintenanceWindowStepFunctionsName>,
  @as("Input") input: option<maintenanceWindowStepFunctionsInput>,
}
type maintenanceWindowLambdaParameters = {
  @as("Payload") payload: option<maintenanceWindowLambdaPayload>,
  @as("Qualifier") qualifier: option<maintenanceWindowLambdaQualifier>,
  @as("ClientContext") clientContext: option<maintenanceWindowLambdaClientContext>,
}
type maintenanceWindowIdentityForTarget = {
  @as("Name") name: option<maintenanceWindowName>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type maintenanceWindowIdentity = {
  @as("NextExecutionTime") nextExecutionTime: option<maintenanceWindowStringDateTime>,
  @as("StartDate") startDate: option<maintenanceWindowStringDateTime>,
  @as("EndDate") endDate: option<maintenanceWindowStringDateTime>,
  @as("ScheduleOffset") scheduleOffset: option<maintenanceWindowOffset>,
  @as("ScheduleTimezone") scheduleTimezone: option<maintenanceWindowTimezone>,
  @as("Schedule") schedule: option<maintenanceWindowSchedule>,
  @as("Cutoff") cutoff: option<maintenanceWindowCutoff>,
  @as("Duration") duration: option<maintenanceWindowDurationHours>,
  @as("Enabled") enabled: option<maintenanceWindowEnabled>,
  @as("Description") description: option<maintenanceWindowDescription>,
  @as("Name") name: option<maintenanceWindowName>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type maintenanceWindowFilterValues = array<maintenanceWindowFilterValue>
type maintenanceWindowExecutionTaskInvocationIdentity = {
  @as("WindowTargetId") windowTargetId: option<maintenanceWindowTaskTargetId>,
  @as("OwnerInformation") ownerInformation: option<ownerInformation>,
  @as("EndTime") endTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @as("Status") status: option<maintenanceWindowExecutionStatus>,
  @as("Parameters") parameters: option<maintenanceWindowExecutionTaskInvocationParameters>,
  @as("TaskType") taskType: option<maintenanceWindowTaskType>,
  @as("ExecutionId") executionId: option<maintenanceWindowExecutionTaskExecutionId>,
  @as("InvocationId") invocationId: option<maintenanceWindowExecutionTaskInvocationId>,
  @as("TaskExecutionId") taskExecutionId: option<maintenanceWindowExecutionTaskId>,
  @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
}
type maintenanceWindowExecutionTaskIdentity = {
  @as("TaskType") taskType: option<maintenanceWindowTaskType>,
  @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
  @as("EndTime") endTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @as("Status") status: option<maintenanceWindowExecutionStatus>,
  @as("TaskExecutionId") taskExecutionId: option<maintenanceWindowExecutionTaskId>,
  @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
}
type maintenanceWindowExecutionTaskIdList = array<maintenanceWindowExecutionTaskId>
type maintenanceWindowExecution = {
  @as("EndTime") endTime: option<dateTime>,
  @as("StartTime") startTime: option<dateTime>,
  @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @as("Status") status: option<maintenanceWindowExecutionStatus>,
  @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type loggingInfo = {
  @as("S3Region") s3Region: s3Region,
  @as("S3KeyPrefix") s3KeyPrefix: option<s3KeyPrefix>,
  @as("S3BucketName") s3BucketName: s3BucketName,
}
type keyList = array<tagKey>
type inventoryItemEntry = Js.Dict.t<attributeValue>
type inventoryItemContentContext = Js.Dict.t<attributeValue>
type inventoryItemAttribute = {
  @as("DataType") dataType: inventoryAttributeDataType,
  @as("Name") name: inventoryItemAttributeName,
}
type inventoryFilterValueList = array<inventoryFilterValue>
type inventoryDeletionSummaryItem = {
  @as("RemainingCount") remainingCount: option<remainingCount>,
  @as("Count") count: option<resourceCount>,
  @as("Version") version: option<inventoryItemSchemaVersion>,
}
type instancePatchStateFilterValues = array<instancePatchStateFilterValue>
type instancePatchState = {
  @as("OtherNonCompliantCount") otherNonCompliantCount: option<patchOtherNonCompliantCount>,
  @as("SecurityNonCompliantCount")
  securityNonCompliantCount: option<patchSecurityNonCompliantCount>,
  @as("CriticalNonCompliantCount")
  criticalNonCompliantCount: option<patchCriticalNonCompliantCount>,
  @as("RebootOption") rebootOption: option<rebootOption>,
  @as("LastNoRebootInstallOperationTime") lastNoRebootInstallOperationTime: option<dateTime>,
  @as("Operation") operation: patchOperationType,
  @as("OperationEndTime") operationEndTime: dateTime,
  @as("OperationStartTime") operationStartTime: dateTime,
  @as("NotApplicableCount") notApplicableCount: option<patchNotApplicableCount>,
  @as("UnreportedNotApplicableCount")
  unreportedNotApplicableCount: option<patchUnreportedNotApplicableCount>,
  @as("FailedCount") failedCount: option<patchFailedCount>,
  @as("MissingCount") missingCount: option<patchMissingCount>,
  @as("InstalledRejectedCount") installedRejectedCount: option<patchInstalledRejectedCount>,
  @as("InstalledPendingRebootCount")
  installedPendingRebootCount: option<patchInstalledPendingRebootCount>,
  @as("InstalledOtherCount") installedOtherCount: option<patchInstalledOtherCount>,
  @as("InstalledCount") installedCount: option<patchInstalledCount>,
  @as("OwnerInformation") ownerInformation: option<ownerInformation>,
  @as("InstallOverrideList") installOverrideList: option<installOverrideList>,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("BaselineId") baselineId: baselineId,
  @as("PatchGroup") patchGroup: patchGroup,
  @as("InstanceId") instanceId: instanceId,
}
type instanceInformationFilterValueSet = array<instanceInformationFilterValue>
type instanceIdList = array<instanceId>
type instanceAssociationStatusAggregatedCount = Js.Dict.t<instanceCount>
type instanceAssociation = {
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("Content") content: option<documentContent>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("AssociationId") associationId: option<associationId>,
}
type documentVersionInfo = {
  @as("ReviewStatus") reviewStatus: option<reviewStatus>,
  @as("StatusInformation") statusInformation: option<documentStatusInformation>,
  @as("Status") status: option<documentStatus>,
  @as("DocumentFormat") documentFormat: option<documentFormat>,
  @as("IsDefaultVersion") isDefaultVersion: option<boolean_>,
  @as("CreatedDate") createdDate: option<dateTime>,
  @as("VersionName") versionName: option<documentVersionName>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DisplayName") displayName: option<documentDisplayName>,
  @as("Name") name: option<documentName>,
}
type documentReviewCommentSource = {
  @as("Content") content: option<documentReviewComment>,
  @as("Type") type_: option<documentReviewCommentType>,
}
type documentRequires = {
  @as("Version") version: option<documentVersion>,
  @as("Name") name: documentARN,
}
type documentParameter = {
  @as("DefaultValue") defaultValue: option<documentParameterDefaultValue>,
  @as("Description") description: option<documentParameterDescrption>,
  @as("Type") type_: option<documentParameterType>,
  @as("Name") name: option<documentParameterName>,
}
type documentKeyValuesFilterValues = array<documentKeyValuesFilterValue>
type documentFilter = {
  value: documentFilterValue,
  key: documentFilterKey,
}
type documentDefaultVersionDescription = {
  @as("DefaultVersionName") defaultVersionName: option<documentVersionName>,
  @as("DefaultVersion") defaultVersion: option<documentVersion>,
  @as("Name") name: option<documentName>,
}
type complianceStringFilterValueList = array<complianceFilterValue>
type complianceResourceTypeList = array<complianceResourceType>
type complianceResourceIdList = array<complianceResourceId>
type complianceItemDetails = Js.Dict.t<attributeValue>
type complianceExecutionSummary = {
  @as("ExecutionType") executionType: option<complianceExecutionType>,
  @as("ExecutionId") executionId: option<complianceExecutionId>,
  @as("ExecutionTime") executionTime: dateTime,
}
type commandPlugin = {
  @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<s3KeyPrefix>,
  @as("OutputS3BucketName") outputS3BucketName: option<s3BucketName>,
  @as("OutputS3Region") outputS3Region: option<s3Region>,
  @as("StandardErrorUrl") standardErrorUrl: option<url>,
  @as("StandardOutputUrl") standardOutputUrl: option<url>,
  @as("Output") output: option<commandPluginOutput>,
  @as("ResponseFinishDateTime") responseFinishDateTime: option<dateTime>,
  @as("ResponseStartDateTime") responseStartDateTime: option<dateTime>,
  @as("ResponseCode") responseCode: option<responseCode>,
  @as("StatusDetails") statusDetails: option<statusDetails>,
  @as("Status") status: option<commandPluginStatus>,
  @as("Name") name: option<commandPluginName>,
}
type commandFilter = {
  value: commandFilterValue,
  key: commandFilterKey,
}
type cloudWatchOutputConfig = {
  @as("CloudWatchOutputEnabled") cloudWatchOutputEnabled: option<cloudWatchOutputEnabled>,
  @as("CloudWatchLogGroupName") cloudWatchLogGroupName: option<cloudWatchLogGroupName>,
}
type calendarNameOrARNList = array<calendarNameOrARN>
type automationParameterValueList = array<automationParameterValue>
type automationExecutionFilterValueList = array<automationExecutionFilterValue>
type attachmentsSourceValues = array<attachmentsSourceValue>
type attachmentInformation = {@as("Name") name: option<attachmentName>}
type attachmentContent = {
  @as("Url") url: option<attachmentUrl>,
  @as("HashType") hashType: option<attachmentHashType>,
  @as("Hash") hash: option<attachmentHash>,
  @as("Size") size: option<contentLength>,
  @as("Name") name: option<attachmentName>,
}
type associationStatusAggregatedCount = Js.Dict.t<instanceCount>
type associationStatus = {
  @as("AdditionalInfo") additionalInfo: option<statusAdditionalInfo>,
  @as("Message") message: statusMessage,
  @as("Name") name: associationStatusName,
  @as("Date") date: dateTime,
}
type associationIdList = array<associationId>
type associationFilter = {
  value: associationFilterValue,
  key: associationFilterKey,
}
type associationExecutionTargetsFilter = {
  @as("Value") value: associationExecutionTargetsFilterValue,
  @as("Key") key: associationExecutionTargetsFilterKey,
}
type associationExecutionFilter = {
  @as("Type") type_: associationFilterOperatorType,
  @as("Value") value: associationExecutionFilterValue,
  @as("Key") key: associationExecutionFilterKey,
}
type associationExecution = {
  @as("ResourceCountByStatus") resourceCountByStatus: option<resourceCountByStatus>,
  @as("LastExecutionDate") lastExecutionDate: option<dateTime>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("DetailedStatus") detailedStatus: option<statusName>,
  @as("Status") status: option<statusName>,
  @as("ExecutionId") executionId: option<associationExecutionId>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("AssociationId") associationId: option<associationId>,
}
type accounts = array<account>
type accountSharingInfo = {
  @as("SharedDocumentVersion") sharedDocumentVersion: option<sharedDocumentVersion>,
  @as("AccountId") accountId: option<accountId>,
}
type accountIdList = array<accountId>
type targetMap = Js.Dict.t<targetMapValueList>
type targetLocation = {
  @as("ExecutionRoleName") executionRoleName: option<executionRoleName>,
  @as("TargetLocationMaxErrors") targetLocationMaxErrors: option<maxErrors>,
  @as("TargetLocationMaxConcurrency") targetLocationMaxConcurrency: option<maxConcurrency>,
  @as("Regions") regions: option<regions>,
  @as("Accounts") accounts: option<accounts>,
}
type target = {
  @as("Values") values: option<targetValues>,
  @as("Key") key: option<targetKey>,
}
type tagList_ = array<tag>
type stepExecutionFilter = {
  @as("Values") values: stepExecutionFilterValueList,
  @as("Key") key: stepExecutionFilterKey,
}
type sessionManagerParameters = Js.Dict.t<sessionManagerParameterValueList>
type sessionFilterList = array<sessionFilter>
type session = {
  @as("OutputUrl") outputUrl: option<sessionManagerOutputUrl>,
  @as("Details") details: option<sessionDetails>,
  @as("Owner") owner: option<sessionOwner>,
  @as("DocumentName") documentName: option<documentName>,
  @as("EndDate") endDate: option<dateTime>,
  @as("StartDate") startDate: option<dateTime>,
  @as("Status") status: option<sessionStatus>,
  @as("Target") target: option<sessionTarget>,
  @as("SessionId") sessionId: option<sessionId>,
}
type scheduledWindowExecutionList = array<scheduledWindowExecution>
type reviewInformationList = array<reviewInformation>
type resultAttributeList = array<resultAttribute>
type resourceDataSyncS3Destination = {
  @as("DestinationDataSharing")
  destinationDataSharing: option<resourceDataSyncDestinationDataSharing>,
  @as("AWSKMSKeyARN") awskmskeyARN: option<resourceDataSyncAWSKMSKeyARN>,
  @as("Region") region: resourceDataSyncS3Region,
  @as("SyncFormat") syncFormat: resourceDataSyncS3Format,
  @as("Prefix") prefix: option<resourceDataSyncS3Prefix>,
  @as("BucketName") bucketName: resourceDataSyncS3BucketName,
}
type resourceDataSyncOrganizationalUnitList = array<resourceDataSyncOrganizationalUnit>
type resolvedTargets = {
  @as("Truncated") truncated: option<boolean_>,
  @as("ParameterValues") parameterValues: option<targetParameterList>,
}
type relatedOpsItems = array<relatedOpsItem>
type patchSource = {
  @as("Configuration") configuration: patchSourceConfiguration,
  @as("Products") products: patchSourceProductList,
  @as("Name") name: patchSourceName,
}
type patchPropertiesList = array<patchPropertyEntry>
type patchOrchestratorFilter = {
  @as("Values") values: option<patchOrchestratorFilterValues>,
  @as("Key") key: option<patchOrchestratorFilterKey>,
}
type patchGroupPatchBaselineMapping = {
  @as("BaselineIdentity") baselineIdentity: option<patchBaselineIdentity>,
  @as("PatchGroup") patchGroup: option<patchGroup>,
}
type patchFilter = {
  @as("Values") values: patchFilterValueList,
  @as("Key") key: patchFilterKey,
}
type patchComplianceDataList = array<patchComplianceData>
type patchBaselineIdentityList = array<patchBaselineIdentity>
type patch = {
  @as("Repository") repository: option<patchRepository>,
  @as("Severity") severity: option<patchSeverity>,
  @as("Arch") arch: option<patchArch>,
  @as("Release") release: option<patchRelease>,
  @as("Version") version: option<patchVersion>,
  @as("Epoch") epoch: option<patchEpoch>,
  @as("Name") name: option<patchName>,
  @as("CVEIds") cveids: option<patchCVEIdList>,
  @as("BugzillaIds") bugzillaIds: option<patchBugzillaIdList>,
  @as("AdvisoryIds") advisoryIds: option<patchAdvisoryIdList>,
  @as("Language") language: option<patchLanguage>,
  @as("MsrcNumber") msrcNumber: option<patchMsrcNumber>,
  @as("KbNumber") kbNumber: option<patchKbNumber>,
  @as("MsrcSeverity") msrcSeverity: option<patchMsrcSeverity>,
  @as("Classification") classification: option<patchClassification>,
  @as("Product") product: option<patchProduct>,
  @as("ProductFamily") productFamily: option<patchProductFamily>,
  @as("Vendor") vendor: option<patchVendor>,
  @as("ContentUrl") contentUrl: option<patchContentUrl>,
  @as("Description") description: option<patchDescription>,
  @as("Title") title: option<patchTitle>,
  @as("ReleaseDate") releaseDate: option<dateTime>,
  @as("Id") id: option<patchId>,
}
type parametersFilter = {
  @as("Values") values: parametersFilterValueList,
  @as("Key") key: parametersFilterKey,
}
type parameters = Js.Dict.t<parameterValueList>
type parameterStringFilter = {
  @as("Values") values: option<parameterStringFilterValueList>,
  @as("Option") option: option<parameterStringQueryOption>,
  @as("Key") key: parameterStringFilterKey,
}
type parameterPolicyList = array<parameterInlinePolicy>
type parameterList = array<parameter>
type opsResultAttributeList = array<opsResultAttribute>
type opsMetadataList = array<opsMetadata>
type opsMetadataFilter = {
  @as("Values") values: opsMetadataFilterValueList,
  @as("Key") key: opsMetadataFilterKey,
}
type opsItemRelatedItemsFilter = {
  @as("Operator") operator: opsItemRelatedItemsFilterOperator,
  @as("Values") values: opsItemRelatedItemsFilterValues,
  @as("Key") key: opsItemRelatedItemsFilterKey,
}
type opsItemRelatedItemSummary = {
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LastModifiedBy") lastModifiedBy: option<opsItemIdentity>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("CreatedBy") createdBy: option<opsItemIdentity>,
  @as("ResourceUri") resourceUri: option<opsItemRelatedItemAssociationResourceUri>,
  @as("AssociationType") associationType: option<opsItemRelatedItemAssociationType>,
  @as("ResourceType") resourceType: option<opsItemRelatedItemAssociationResourceType>,
  @as("AssociationId") associationId: option<opsItemRelatedItemAssociationId>,
  @as("OpsItemId") opsItemId: option<opsItemId>,
}
type opsItemOperationalData = Js.Dict.t<opsItemDataValue>
type opsItemNotifications = array<opsItemNotification>
type opsItemFilter = {
  @as("Operator") operator: opsItemFilterOperator,
  @as("Values") values: opsItemFilterValues,
  @as("Key") key: opsItemFilterKey,
}
type opsItemEventSummary = {
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("CreatedBy") createdBy: option<opsItemIdentity>,
  @as("Detail") detail: option<string_>,
  @as("DetailType") detailType: option<string_>,
  @as("Source") source: option<string_>,
  @as("EventId") eventId: option<string_>,
  @as("OpsItemId") opsItemId: option<string_>,
}
type opsItemEventFilter = {
  @as("Operator") operator: opsItemEventFilterOperator,
  @as("Values") values: opsItemEventFilterValues,
  @as("Key") key: opsItemEventFilterKey,
}
type opsFilter = {
  @as("Type") type_: option<opsFilterOperatorType>,
  @as("Values") values: opsFilterValueList,
  @as("Key") key: opsFilterKey,
}
type opsEntityItemEntryList = array<opsEntityItemEntry>
type notificationConfig = {
  @as("NotificationType") notificationType: option<notificationType>,
  @as("NotificationEvents") notificationEvents: option<notificationEventList>,
  @as("NotificationArn") notificationArn: option<notificationArn>,
}
type nonCompliantSummary = {
  @as("SeveritySummary") severitySummary: option<severitySummary>,
  @as("NonCompliantCount") nonCompliantCount: option<complianceSummaryCount>,
}
type metadataMap = Js.Dict.t<metadataValue>
type maintenanceWindowsForTargetList = array<maintenanceWindowIdentityForTarget>
type maintenanceWindowTaskParameterValueExpression = {
  @as("Values") values: option<maintenanceWindowTaskParameterValueList>,
}
type maintenanceWindowIdentityList = array<maintenanceWindowIdentity>
type maintenanceWindowFilter = {
  @as("Values") values: option<maintenanceWindowFilterValues>,
  @as("Key") key: option<maintenanceWindowFilterKey>,
}
type maintenanceWindowExecutionTaskInvocationIdentityList = array<
  maintenanceWindowExecutionTaskInvocationIdentity,
>
type maintenanceWindowExecutionTaskIdentityList = array<maintenanceWindowExecutionTaskIdentity>
type maintenanceWindowExecutionList = array<maintenanceWindowExecution>
type inventoryItemEntryList = array<inventoryItemEntry>
type inventoryItemAttributeList = array<inventoryItemAttribute>
type inventoryFilter = {
  @as("Type") type_: option<inventoryQueryOperatorType>,
  @as("Values") values: inventoryFilterValueList,
  @as("Key") key: inventoryFilterKey,
}
type inventoryDeletionSummaryItems = array<inventoryDeletionSummaryItem>
type instancePatchStatesList = array<instancePatchState>
type instancePatchStateList = array<instancePatchState>
type instancePatchStateFilter = {
  @as("Type") type_: instancePatchStateOperatorType,
  @as("Values") values: instancePatchStateFilterValues,
  @as("Key") key: instancePatchStateFilterKey,
}
type instanceInformationStringFilter = {
  @as("Values") values: instanceInformationFilterValueSet,
  @as("Key") key: instanceInformationStringFilterKey,
}
type instanceInformationFilter = {
  valueSet: instanceInformationFilterValueSet,
  key: instanceInformationFilterKey,
}
type instanceAssociationOutputUrl = {@as("S3OutputUrl") s3OutputUrl: option<s3OutputUrl>}
type instanceAssociationOutputLocation = {@as("S3Location") s3Location: option<s3OutputLocation>}
type instanceAssociationList = array<instanceAssociation>
type instanceAggregatedAssociationOverview = {
  @as("InstanceAssociationStatusAggregatedCount")
  instanceAssociationStatusAggregatedCount: option<instanceAssociationStatusAggregatedCount>,
  @as("DetailedStatus") detailedStatus: option<statusName>,
}
type documentVersionList = array<documentVersionInfo>
type documentReviewCommentList = array<documentReviewCommentSource>
type documentRequiresList = array<documentRequires>
type documentParameterList = array<documentParameter>
type documentKeyValuesFilter = {
  @as("Values") values: option<documentKeyValuesFilterValues>,
  @as("Key") key: option<documentKeyValuesFilterKey>,
}
type documentFilterList = array<documentFilter>
type describeActivationsFilter = {
  @as("FilterValues") filterValues: option<stringList>,
  @as("FilterKey") filterKey: option<describeActivationsFilterKeys>,
}
type compliantSummary = {
  @as("SeveritySummary") severitySummary: option<severitySummary>,
  @as("CompliantCount") compliantCount: option<complianceSummaryCount>,
}
type complianceStringFilter = {
  @as("Type") type_: option<complianceQueryOperatorType>,
  @as("Values") values: option<complianceStringFilterValueList>,
  @as("Key") key: option<complianceStringFilterKey>,
}
type complianceItemEntry = {
  @as("Details") details: option<complianceItemDetails>,
  @as("Status") status: complianceStatus,
  @as("Severity") severity: complianceSeverity,
  @as("Title") title: option<complianceItemTitle>,
  @as("Id") id: option<complianceItemId>,
}
type complianceItem = {
  @as("Details") details: option<complianceItemDetails>,
  @as("ExecutionSummary") executionSummary: option<complianceExecutionSummary>,
  @as("Severity") severity: option<complianceSeverity>,
  @as("Status") status: option<complianceStatus>,
  @as("Title") title: option<complianceItemTitle>,
  @as("Id") id: option<complianceItemId>,
  @as("ResourceId") resourceId: option<complianceResourceId>,
  @as("ResourceType") resourceType: option<complianceResourceType>,
  @as("ComplianceType") complianceType: option<complianceTypeName>,
}
type commandPluginList = array<commandPlugin>
type commandFilterList = array<commandFilter>
type automationParameterMap = Js.Dict.t<automationParameterValueList>
type automationExecutionFilter = {
  @as("Values") values: automationExecutionFilterValueList,
  @as("Key") key: automationExecutionFilterKey,
}
type attachmentsSource = {
  @as("Name") name: option<attachmentIdentifier>,
  @as("Values") values: option<attachmentsSourceValues>,
  @as("Key") key: option<attachmentsSourceKey>,
}
type attachmentInformationList = array<attachmentInformation>
type attachmentContentList = array<attachmentContent>
type associationOverview = {
  @as("AssociationStatusAggregatedCount")
  associationStatusAggregatedCount: option<associationStatusAggregatedCount>,
  @as("DetailedStatus") detailedStatus: option<statusName>,
  @as("Status") status: option<statusName>,
}
type associationFilterList = array<associationFilter>
type associationExecutionsList = array<associationExecution>
type associationExecutionTargetsFilterList = array<associationExecutionTargetsFilter>
type associationExecutionTarget = {
  @as("OutputSource") outputSource: option<outputSource>,
  @as("LastExecutionDate") lastExecutionDate: option<dateTime>,
  @as("DetailedStatus") detailedStatus: option<statusName>,
  @as("Status") status: option<statusName>,
  @as("ResourceType") resourceType: option<associationResourceType>,
  @as("ResourceId") resourceId: option<associationResourceId>,
  @as("ExecutionId") executionId: option<associationExecutionId>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("AssociationId") associationId: option<associationId>,
}
type associationExecutionFilterList = array<associationExecutionFilter>
type accountSharingInfoList = array<accountSharingInfo>
type targets = array<target>
type targetMaps = array<targetMap>
type targetLocations = array<targetLocation>
type stepExecutionFilterList = array<stepExecutionFilter>
type sessionList = array<session>
type resourceDataSyncAwsOrganizationsSource = {
  @as("OrganizationalUnits") organizationalUnits: option<resourceDataSyncOrganizationalUnitList>,
  @as("OrganizationSourceType") organizationSourceType: resourceDataSyncOrganizationSourceType,
}
type resourceComplianceSummaryItem = {
  @as("NonCompliantSummary") nonCompliantSummary: option<nonCompliantSummary>,
  @as("CompliantSummary") compliantSummary: option<compliantSummary>,
  @as("ExecutionSummary") executionSummary: option<complianceExecutionSummary>,
  @as("OverallSeverity") overallSeverity: option<complianceSeverity>,
  @as("Status") status: option<complianceStatus>,
  @as("ResourceId") resourceId: option<complianceResourceId>,
  @as("ResourceType") resourceType: option<complianceResourceType>,
  @as("ComplianceType") complianceType: option<complianceTypeName>,
}
type patchSourceList = array<patchSource>
type patchOrchestratorFilterList = array<patchOrchestratorFilter>
type patchList = array<patch>
type patchGroupPatchBaselineMappingList = array<patchGroupPatchBaselineMapping>
type patchFilterList = array<patchFilter>
type parametersFilterList = array<parametersFilter>
type parameterStringFilterList = array<parameterStringFilter>
type parameterMetadata = {
  @as("DataType") dataType: option<parameterDataType>,
  @as("Policies") policies: option<parameterPolicyList>,
  @as("Tier") tier: option<parameterTier>,
  @as("Version") version: option<psparameterVersion>,
  @as("AllowedPattern") allowedPattern: option<allowedPattern>,
  @as("Description") description: option<parameterDescription>,
  @as("LastModifiedUser") lastModifiedUser: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<dateTime>,
  @as("KeyId") keyId: option<parameterKeyId>,
  @as("Type") type_: option<parameterType>,
  @as("Name") name: option<psparameterName>,
}
type parameterHistory = {
  @as("DataType") dataType: option<parameterDataType>,
  @as("Policies") policies: option<parameterPolicyList>,
  @as("Tier") tier: option<parameterTier>,
  @as("Labels") labels: option<parameterLabelList>,
  @as("Version") version: option<psparameterVersion>,
  @as("AllowedPattern") allowedPattern: option<allowedPattern>,
  @as("Value") value: option<psparameterValue>,
  @as("Description") description: option<parameterDescription>,
  @as("LastModifiedUser") lastModifiedUser: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<dateTime>,
  @as("KeyId") keyId: option<parameterKeyId>,
  @as("Type") type_: option<parameterType>,
  @as("Name") name: option<psparameterName>,
}
type opsMetadataFilterList = array<opsMetadataFilter>
type opsItemSummary = {
  @as("PlannedEndTime") plannedEndTime: option<dateTime>,
  @as("PlannedStartTime") plannedStartTime: option<dateTime>,
  @as("ActualEndTime") actualEndTime: option<dateTime>,
  @as("ActualStartTime") actualStartTime: option<dateTime>,
  @as("OpsItemType") opsItemType: option<opsItemType>,
  @as("Severity") severity: option<opsItemSeverity>,
  @as("Category") category: option<opsItemCategory>,
  @as("OperationalData") operationalData: option<opsItemOperationalData>,
  @as("Title") title: option<opsItemTitle>,
  @as("OpsItemId") opsItemId: option<opsItemId>,
  @as("Status") status: option<opsItemStatus>,
  @as("Source") source: option<opsItemSource>,
  @as("Priority") priority: option<opsItemPriority>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LastModifiedBy") lastModifiedBy: option<string_>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("CreatedBy") createdBy: option<string_>,
}
type opsItemRelatedItemsFilters = array<opsItemRelatedItemsFilter>
type opsItemRelatedItemSummaries = array<opsItemRelatedItemSummary>
type opsItemFilters = array<opsItemFilter>
type opsItemEventSummaries = array<opsItemEventSummary>
type opsItemEventFilters = array<opsItemEventFilter>
type opsItem = {
  @as("PlannedEndTime") plannedEndTime: option<dateTime>,
  @as("PlannedStartTime") plannedStartTime: option<dateTime>,
  @as("ActualEndTime") actualEndTime: option<dateTime>,
  @as("ActualStartTime") actualStartTime: option<dateTime>,
  @as("Severity") severity: option<opsItemSeverity>,
  @as("Category") category: option<opsItemCategory>,
  @as("OperationalData") operationalData: option<opsItemOperationalData>,
  @as("Source") source: option<opsItemSource>,
  @as("Title") title: option<opsItemTitle>,
  @as("Version") version: option<string_>,
  @as("OpsItemId") opsItemId: option<opsItemId>,
  @as("Status") status: option<opsItemStatus>,
  @as("RelatedOpsItems") relatedOpsItems: option<relatedOpsItems>,
  @as("Priority") priority: option<opsItemPriority>,
  @as("Notifications") notifications: option<opsItemNotifications>,
  @as("LastModifiedTime") lastModifiedTime: option<dateTime>,
  @as("LastModifiedBy") lastModifiedBy: option<string_>,
  @as("Description") description: option<opsItemDescription>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("OpsItemType") opsItemType: option<opsItemType>,
  @as("CreatedBy") createdBy: option<string_>,
}
type opsFilterList = array<opsFilter>
type opsEntityItem = {
  @as("Content") content: option<opsEntityItemEntryList>,
  @as("CaptureTime") captureTime: option<opsEntityItemCaptureTime>,
}
type maintenanceWindowTaskParameters = Js.Dict.t<maintenanceWindowTaskParameterValueExpression>
type maintenanceWindowRunCommandParameters = {
  @as("TimeoutSeconds") timeoutSeconds: option<timeoutSeconds>,
  @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
  @as("Parameters") parameters: option<parameters>,
  @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<s3KeyPrefix>,
  @as("OutputS3BucketName") outputS3BucketName: option<s3BucketName>,
  @as("NotificationConfig") notificationConfig: option<notificationConfig>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentHashType") documentHashType: option<documentHashType>,
  @as("DocumentHash") documentHash: option<documentHash>,
  @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @as("Comment") comment: option<comment>,
}
type maintenanceWindowFilterList = array<maintenanceWindowFilter>
type maintenanceWindowAutomationParameters = {
  @as("Parameters") parameters: option<automationParameterMap>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
}
type inventoryResultItem = {
  @as("Content") content: inventoryItemEntryList,
  @as("ContentHash") contentHash: option<inventoryItemContentHash>,
  @as("CaptureTime") captureTime: option<inventoryItemCaptureTime>,
  @as("SchemaVersion") schemaVersion: inventoryItemSchemaVersion,
  @as("TypeName") typeName: inventoryItemTypeName,
}
type inventoryItemSchema = {
  @as("DisplayName") displayName: option<inventoryTypeDisplayName>,
  @as("Attributes") attributes: inventoryItemAttributeList,
  @as("Version") version: option<inventoryItemSchemaVersion>,
  @as("TypeName") typeName: inventoryItemTypeName,
}
type inventoryItem = {
  @as("Context") context: option<inventoryItemContentContext>,
  @as("Content") content: option<inventoryItemEntryList>,
  @as("ContentHash") contentHash: option<inventoryItemContentHash>,
  @as("CaptureTime") captureTime: inventoryItemCaptureTime,
  @as("SchemaVersion") schemaVersion: inventoryItemSchemaVersion,
  @as("TypeName") typeName: inventoryItemTypeName,
}
type inventoryFilterList = array<inventoryFilter>
type inventoryDeletionSummary = {
  @as("SummaryItems") summaryItems: option<inventoryDeletionSummaryItems>,
  @as("RemainingCount") remainingCount: option<remainingCount>,
  @as("TotalCount") totalCount: option<totalCount>,
}
type instancePatchStateFilterList = array<instancePatchStateFilter>
type instanceInformationStringFilterList = array<instanceInformationStringFilter>
type instanceInformationFilterList = array<instanceInformationFilter>
type instanceInformation = {
  @as("AssociationOverview") associationOverview: option<instanceAggregatedAssociationOverview>,
  @as("LastSuccessfulAssociationExecutionDate")
  lastSuccessfulAssociationExecutionDate: option<dateTime>,
  @as("LastAssociationExecutionDate") lastAssociationExecutionDate: option<dateTime>,
  @as("AssociationStatus") associationStatus: option<statusName>,
  @as("ComputerName") computerName: option<computerName>,
  @as("IPAddress") ipaddress: option<ipaddress>,
  @as("Name") name: option<string_>,
  @as("ResourceType") resourceType: option<resourceType>,
  @as("RegistrationDate") registrationDate: option<dateTime>,
  @as("IamRole") iamRole: option<iamRole>,
  @as("ActivationId") activationId: option<activationId>,
  @as("PlatformVersion") platformVersion: option<string_>,
  @as("PlatformName") platformName: option<string_>,
  @as("PlatformType") platformType: option<platformType>,
  @as("IsLatestVersion") isLatestVersion: option<boolean_>,
  @as("AgentVersion") agentVersion: option<version>,
  @as("LastPingDateTime") lastPingDateTime: option<dateTime>,
  @as("PingStatus") pingStatus: option<pingStatus>,
  @as("InstanceId") instanceId: option<instanceId>,
}
type instanceAssociationStatusInfo = {
  @as("AssociationName") associationName: option<associationName>,
  @as("OutputUrl") outputUrl: option<instanceAssociationOutputUrl>,
  @as("ErrorCode") errorCode: option<agentErrorCode>,
  @as("ExecutionSummary") executionSummary: option<instanceAssociationExecutionSummary>,
  @as("DetailedStatus") detailedStatus: option<statusName>,
  @as("Status") status: option<statusName>,
  @as("ExecutionDate") executionDate: option<dateTime>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("Name") name: option<documentARN>,
  @as("AssociationId") associationId: option<associationId>,
}
type failureDetails = {
  @as("Details") details: option<automationParameterMap>,
  @as("FailureType") failureType: option<string_>,
  @as("FailureStage") failureStage: option<string_>,
}
type effectivePatch = {
  @as("PatchStatus") patchStatus: option<patchStatus>,
  @as("Patch") patch: option<patch>,
}
type documentReviews = {
  @as("Comment") comment: option<documentReviewCommentList>,
  @as("Action") action: documentReviewAction,
}
type documentReviewerResponseSource = {
  @as("Reviewer") reviewer: option<reviewer>,
  @as("Comment") comment: option<documentReviewCommentList>,
  @as("ReviewStatus") reviewStatus: option<reviewStatus>,
  @as("UpdatedTime") updatedTime: option<dateTime>,
  @as("CreateTime") createTime: option<dateTime>,
}
type documentKeyValuesFilterList = array<documentKeyValuesFilter>
type documentIdentifier = {
  @as("Author") author: option<documentAuthor>,
  @as("ReviewStatus") reviewStatus: option<reviewStatus>,
  @as("Requires") requires: option<documentRequiresList>,
  @as("Tags") tags: option<tagList_>,
  @as("TargetType") targetType: option<targetType>,
  @as("DocumentFormat") documentFormat: option<documentFormat>,
  @as("SchemaVersion") schemaVersion: option<documentSchemaVersion>,
  @as("DocumentType") documentType: option<documentType>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("PlatformTypes") platformTypes: option<platformTypeList>,
  @as("VersionName") versionName: option<documentVersionName>,
  @as("Owner") owner: option<documentOwner>,
  @as("DisplayName") displayName: option<documentDisplayName>,
  @as("CreatedDate") createdDate: option<dateTime>,
  @as("Name") name: option<documentARN>,
}
type documentDescription = {
  @as("ReviewStatus") reviewStatus: option<reviewStatus>,
  @as("PendingReviewVersion") pendingReviewVersion: option<documentVersion>,
  @as("ApprovedVersion") approvedVersion: option<documentVersion>,
  @as("ReviewInformation") reviewInformation: option<reviewInformationList>,
  @as("Author") author: option<documentAuthor>,
  @as("Requires") requires: option<documentRequiresList>,
  @as("AttachmentsInformation") attachmentsInformation: option<attachmentInformationList>,
  @as("Tags") tags: option<tagList_>,
  @as("TargetType") targetType: option<targetType>,
  @as("DocumentFormat") documentFormat: option<documentFormat>,
  @as("DefaultVersion") defaultVersion: option<documentVersion>,
  @as("LatestVersion") latestVersion: option<documentVersion>,
  @as("SchemaVersion") schemaVersion: option<documentSchemaVersion>,
  @as("DocumentType") documentType: option<documentType>,
  @as("PlatformTypes") platformTypes: option<platformTypeList>,
  @as("Parameters") parameters: option<documentParameterList>,
  @as("Description") description: option<descriptionInDocument>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("StatusInformation") statusInformation: option<documentStatusInformation>,
  @as("Status") status: option<documentStatus>,
  @as("CreatedDate") createdDate: option<dateTime>,
  @as("Owner") owner: option<documentOwner>,
  @as("VersionName") versionName: option<documentVersionName>,
  @as("DisplayName") displayName: option<documentDisplayName>,
  @as("Name") name: option<documentARN>,
  @as("HashType") hashType: option<documentHashType>,
  @as("Hash") hash: option<documentHash>,
  @as("Sha1") sha1: option<documentSha1>,
}
type describeActivationsFilterList = array<describeActivationsFilter>
type complianceSummaryItem = {
  @as("NonCompliantSummary") nonCompliantSummary: option<nonCompliantSummary>,
  @as("CompliantSummary") compliantSummary: option<compliantSummary>,
  @as("ComplianceType") complianceType: option<complianceTypeName>,
}
type complianceStringFilterList = array<complianceStringFilter>
type complianceItemList = array<complianceItem>
type complianceItemEntryList = array<complianceItemEntry>
type commandInvocation = {
  @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @as("NotificationConfig") notificationConfig: option<notificationConfig>,
  @as("ServiceRole") serviceRole: option<serviceRole>,
  @as("CommandPlugins") commandPlugins: option<commandPluginList>,
  @as("StandardErrorUrl") standardErrorUrl: option<url>,
  @as("StandardOutputUrl") standardOutputUrl: option<url>,
  @as("TraceOutput") traceOutput: option<invocationTraceOutput>,
  @as("StatusDetails") statusDetails: option<statusDetails>,
  @as("Status") status: option<commandInvocationStatus>,
  @as("RequestedDateTime") requestedDateTime: option<dateTime>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentName") documentName: option<documentName>,
  @as("Comment") comment: option<comment>,
  @as("InstanceName") instanceName: option<instanceTagName>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("CommandId") commandId: option<commandId>,
}
type automationExecutionFilterList = array<automationExecutionFilter>
type attachmentsSourceList = array<attachmentsSource>
type associationExecutionTargetsList = array<associationExecutionTarget>
type activation = {
  @as("Tags") tags: option<tagList_>,
  @as("CreatedDate") createdDate: option<createdDate>,
  @as("Expired") expired: option<boolean_>,
  @as("ExpirationDate") expirationDate: option<expirationDate>,
  @as("RegistrationsCount") registrationsCount: option<registrationsCount>,
  @as("RegistrationLimit") registrationLimit: option<registrationLimit>,
  @as("IamRole") iamRole: option<iamRole>,
  @as("DefaultInstanceName") defaultInstanceName: option<defaultInstanceName>,
  @as("Description") description: option<activationDescription>,
  @as("ActivationId") activationId: option<activationId>,
}
type stepExecution = {
  @as("TargetLocation") targetLocation: option<targetLocation>,
  @as("Targets") targets: option<targets>,
  @as("ValidNextSteps") validNextSteps: option<validNextStepList>,
  @as("IsCritical") isCritical: option<boolean_>,
  @as("NextStep") nextStep: option<string_>,
  @as("IsEnd") isEnd: option<boolean_>,
  @as("OverriddenParameters") overriddenParameters: option<automationParameterMap>,
  @as("StepExecutionId") stepExecutionId: option<string_>,
  @as("FailureDetails") failureDetails: option<failureDetails>,
  @as("FailureMessage") failureMessage: option<string_>,
  @as("Response") response: option<string_>,
  @as("Outputs") outputs: option<automationParameterMap>,
  @as("Inputs") inputs: option<normalStringMap>,
  @as("ResponseCode") responseCode: option<string_>,
  @as("StepStatus") stepStatus: option<automationExecutionStatus>,
  @as("ExecutionEndTime") executionEndTime: option<dateTime>,
  @as("ExecutionStartTime") executionStartTime: option<dateTime>,
  @as("MaxAttempts") maxAttempts: option<integer_>,
  @as("OnFailure") onFailure: option<string_>,
  @as("TimeoutSeconds") timeoutSeconds: option<long>,
  @as("Action") action: option<automationActionName>,
  @as("StepName") stepName: option<string_>,
}
type runbook = {
  @as("TargetLocations") targetLocations: option<targetLocations>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("Targets") targets: option<targets>,
  @as("TargetParameterName") targetParameterName: option<automationParameterKey>,
  @as("Parameters") parameters: option<automationParameterMap>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentName") documentName: documentARN,
}
type resourceDataSyncSourceWithState = {
  @as("EnableAllOpsDataSources")
  enableAllOpsDataSources: option<resourceDataSyncEnableAllOpsDataSources>,
  @as("State") state: option<resourceDataSyncState>,
  @as("IncludeFutureRegions") includeFutureRegions: option<resourceDataSyncIncludeFutureRegions>,
  @as("SourceRegions") sourceRegions: option<resourceDataSyncSourceRegionList>,
  @as("AwsOrganizationsSource")
  awsOrganizationsSource: option<resourceDataSyncAwsOrganizationsSource>,
  @as("SourceType") sourceType: option<resourceDataSyncSourceType>,
}
type resourceDataSyncSource = {
  @as("EnableAllOpsDataSources")
  enableAllOpsDataSources: option<resourceDataSyncEnableAllOpsDataSources>,
  @as("IncludeFutureRegions") includeFutureRegions: option<resourceDataSyncIncludeFutureRegions>,
  @as("SourceRegions") sourceRegions: resourceDataSyncSourceRegionList,
  @as("AwsOrganizationsSource")
  awsOrganizationsSource: option<resourceDataSyncAwsOrganizationsSource>,
  @as("SourceType") sourceType: resourceDataSyncSourceType,
}
type resourceComplianceSummaryItemList = array<resourceComplianceSummaryItem>
type patchFilterGroup = {@as("PatchFilters") patchFilters: patchFilterList}
type parameterMetadataList = array<parameterMetadata>
type parameterHistoryList = array<parameterHistory>
type opsItemSummaries = array<opsItemSummary>
type opsEntityItemMap = Js.Dict.t<opsEntityItem>
type maintenanceWindowTaskParametersList = array<maintenanceWindowTaskParameters>
type maintenanceWindowTaskInvocationParameters = {
  @as("Lambda") lambda: option<maintenanceWindowLambdaParameters>,
  @as("StepFunctions") stepFunctions: option<maintenanceWindowStepFunctionsParameters>,
  @as("Automation") automation: option<maintenanceWindowAutomationParameters>,
  @as("RunCommand") runCommand: option<maintenanceWindowRunCommandParameters>,
}
type maintenanceWindowTask = {
  @as("Description") description: option<maintenanceWindowDescription>,
  @as("Name") name: option<maintenanceWindowName>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
  @as("LoggingInfo") loggingInfo: option<loggingInfo>,
  @as("Priority") priority: option<maintenanceWindowTaskPriority>,
  @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParameters>,
  @as("Targets") targets: option<targets>,
  @as("Type") type_: option<maintenanceWindowTaskType>,
  @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
  @as("WindowTaskId") windowTaskId: option<maintenanceWindowTaskId>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type maintenanceWindowTarget = {
  @as("Description") description: option<maintenanceWindowDescription>,
  @as("Name") name: option<maintenanceWindowName>,
  @as("OwnerInformation") ownerInformation: option<ownerInformation>,
  @as("Targets") targets: option<targets>,
  @as("ResourceType") resourceType: option<maintenanceWindowResourceType>,
  @as("WindowTargetId") windowTargetId: option<maintenanceWindowTargetId>,
  @as("WindowId") windowId: option<maintenanceWindowId>,
}
type inventoryResultItemMap = Js.Dict.t<inventoryResultItem>
type inventoryItemSchemaResultList = array<inventoryItemSchema>
type inventoryItemList = array<inventoryItem>
type inventoryGroup = {
  @as("Filters") filters: inventoryFilterList,
  @as("Name") name: inventoryGroupName,
}
type inventoryDeletionStatusItem = {
  @as("LastStatusUpdateTime") lastStatusUpdateTime: option<inventoryDeletionLastStatusUpdateTime>,
  @as("DeletionSummary") deletionSummary: option<inventoryDeletionSummary>,
  @as("LastStatusMessage") lastStatusMessage: option<inventoryDeletionLastStatusMessage>,
  @as("LastStatus") lastStatus: option<inventoryDeletionStatus>,
  @as("DeletionStartTime") deletionStartTime: option<inventoryDeletionStartTime>,
  @as("TypeName") typeName: option<inventoryItemTypeName>,
  @as("DeletionId") deletionId: option<uuid>,
}
type instanceInformationList = array<instanceInformation>
type instanceAssociationStatusInfos = array<instanceAssociationStatusInfo>
type effectivePatchList = array<effectivePatch>
type documentReviewerResponseList = array<documentReviewerResponseSource>
type documentIdentifierList = array<documentIdentifier>
type createAssociationBatchRequestEntry = {
  @as("TargetLocations") targetLocations: option<targetLocations>,
  @as("CalendarNames") calendarNames: option<calendarNameOrARNList>,
  @as("ApplyOnlyAtCronInterval") applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @as("SyncCompliance") syncCompliance: option<associationSyncCompliance>,
  @as("ComplianceSeverity") complianceSeverity: option<associationComplianceSeverity>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("AssociationName") associationName: option<associationName>,
  @as("OutputLocation") outputLocation: option<instanceAssociationOutputLocation>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Targets") targets: option<targets>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("AutomationTargetParameterName")
  automationTargetParameterName: option<automationTargetParameterName>,
  @as("Parameters") parameters: option<parameters>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("Name") name: documentARN,
}
type complianceSummaryItemList = array<complianceSummaryItem>
type commandInvocationList = array<commandInvocation>
type command = {
  @as("TimeoutSeconds") timeoutSeconds: option<timeoutSeconds>,
  @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @as("NotificationConfig") notificationConfig: option<notificationConfig>,
  @as("ServiceRole") serviceRole: option<serviceRole>,
  @as("DeliveryTimedOutCount") deliveryTimedOutCount: option<deliveryTimedOutCount>,
  @as("ErrorCount") errorCount: option<errorCount>,
  @as("CompletedCount") completedCount: option<completedCount>,
  @as("TargetCount") targetCount: option<targetCount>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<s3KeyPrefix>,
  @as("OutputS3BucketName") outputS3BucketName: option<s3BucketName>,
  @as("OutputS3Region") outputS3Region: option<s3Region>,
  @as("StatusDetails") statusDetails: option<statusDetails>,
  @as("Status") status: option<commandStatus>,
  @as("RequestedDateTime") requestedDateTime: option<dateTime>,
  @as("Targets") targets: option<targets>,
  @as("InstanceIds") instanceIds: option<instanceIdList>,
  @as("Parameters") parameters: option<parameters>,
  @as("ExpiresAfter") expiresAfter: option<dateTime>,
  @as("Comment") comment: option<comment>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentName") documentName: option<documentName>,
  @as("CommandId") commandId: option<commandId>,
}
type associationVersionInfo = {
  @as("TargetLocations") targetLocations: option<targetLocations>,
  @as("CalendarNames") calendarNames: option<calendarNameOrARNList>,
  @as("ApplyOnlyAtCronInterval") applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @as("SyncCompliance") syncCompliance: option<associationSyncCompliance>,
  @as("ComplianceSeverity") complianceSeverity: option<associationComplianceSeverity>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("AssociationName") associationName: option<associationName>,
  @as("OutputLocation") outputLocation: option<instanceAssociationOutputLocation>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Targets") targets: option<targets>,
  @as("Parameters") parameters: option<parameters>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("Name") name: option<documentARN>,
  @as("CreatedDate") createdDate: option<dateTime>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("AssociationId") associationId: option<associationId>,
}
type associationDescription = {
  @as("TargetLocations") targetLocations: option<targetLocations>,
  @as("CalendarNames") calendarNames: option<calendarNameOrARNList>,
  @as("ApplyOnlyAtCronInterval") applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @as("SyncCompliance") syncCompliance: option<associationSyncCompliance>,
  @as("ComplianceSeverity") complianceSeverity: option<associationComplianceSeverity>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("AssociationName") associationName: option<associationName>,
  @as("LastSuccessfulExecutionDate") lastSuccessfulExecutionDate: option<dateTime>,
  @as("LastExecutionDate") lastExecutionDate: option<dateTime>,
  @as("OutputLocation") outputLocation: option<instanceAssociationOutputLocation>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Targets") targets: option<targets>,
  @as("AssociationId") associationId: option<associationId>,
  @as("Parameters") parameters: option<parameters>,
  @as("AutomationTargetParameterName")
  automationTargetParameterName: option<automationTargetParameterName>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("Overview") overview: option<associationOverview>,
  @as("Status") status: option<associationStatus>,
  @as("LastUpdateAssociationDate") lastUpdateAssociationDate: option<dateTime>,
  @as("Date") date: option<dateTime>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("Name") name: option<documentARN>,
}
type association = {
  @as("AssociationName") associationName: option<associationName>,
  @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
  @as("Overview") overview: option<associationOverview>,
  @as("LastExecutionDate") lastExecutionDate: option<dateTime>,
  @as("Targets") targets: option<targets>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("AssociationVersion") associationVersion: option<associationVersion>,
  @as("AssociationId") associationId: option<associationId>,
  @as("InstanceId") instanceId: option<instanceId>,
  @as("Name") name: option<documentARN>,
}
type activationList = array<activation>
type stepExecutionList = array<stepExecution>
type runbooks = array<runbook>
type resourceDataSyncItem = {
  @as("LastSyncStatusMessage") lastSyncStatusMessage: option<lastResourceDataSyncMessage>,
  @as("SyncCreatedTime") syncCreatedTime: option<resourceDataSyncCreatedTime>,
  @as("LastStatus") lastStatus: option<lastResourceDataSyncStatus>,
  @as("SyncLastModifiedTime") syncLastModifiedTime: option<resourceDataSyncLastModifiedTime>,
  @as("LastSuccessfulSyncTime") lastSuccessfulSyncTime: option<lastSuccessfulResourceDataSyncTime>,
  @as("LastSyncTime") lastSyncTime: option<lastResourceDataSyncTime>,
  @as("S3Destination") s3Destination: option<resourceDataSyncS3Destination>,
  @as("SyncSource") syncSource: option<resourceDataSyncSourceWithState>,
  @as("SyncType") syncType: option<resourceDataSyncType>,
  @as("SyncName") syncName: option<resourceDataSyncName>,
}
type patchRule = {
  @as("EnableNonSecurity") enableNonSecurity: option<boolean_>,
  @as("ApproveUntilDate") approveUntilDate: option<patchStringDateTime>,
  @as("ApproveAfterDays") approveAfterDays: option<approveAfterDays>,
  @as("ComplianceLevel") complianceLevel: option<patchComplianceLevel>,
  @as("PatchFilterGroup") patchFilterGroup: patchFilterGroup,
}
type opsEntity = {
  @as("Data") data: option<opsEntityItemMap>,
  @as("Id") id: option<opsEntityId>,
}
type maintenanceWindowTaskList = array<maintenanceWindowTask>
type maintenanceWindowTargetList = array<maintenanceWindowTarget>
type inventoryResultEntity = {
  @as("Data") data: option<inventoryResultItemMap>,
  @as("Id") id: option<inventoryResultEntityId>,
}
type inventoryGroupList = array<inventoryGroup>
type inventoryDeletionsList = array<inventoryDeletionStatusItem>
type failedCreateAssociation = {
  @as("Fault") fault: option<fault>,
  @as("Message") message: option<batchErrorMessage>,
  @as("Entry") entry: option<createAssociationBatchRequestEntry>,
}
type documentMetadataResponseInfo = {
  @as("ReviewerResponse") reviewerResponse: option<documentReviewerResponseList>,
}
type createAssociationBatchRequestEntries = array<createAssociationBatchRequestEntry>
type commandList = array<command>
type associationVersionList = array<associationVersionInfo>
type associationList = array<association>
type associationDescriptionList = array<associationDescription>
type resourceDataSyncItemList = array<resourceDataSyncItem>
type patchRuleList = array<patchRule>
type opsEntityList = array<opsEntity>
type inventoryResultEntityList = array<inventoryResultEntity>
type failedCreateAssociationList = array<failedCreateAssociation>
type automationExecutionMetadata = {
  @as("ChangeRequestName") changeRequestName: option<changeRequestName>,
  @as("AssociationId") associationId: option<string_>,
  @as("OpsItemId") opsItemId: option<string_>,
  @as("Runbooks") runbooks: option<runbooks>,
  @as("ScheduledTime") scheduledTime: option<dateTime>,
  @as("AutomationSubtype") automationSubtype: option<automationSubtype>,
  @as("AutomationType") automationType: option<automationType>,
  @as("Target") target: option<string_>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("ResolvedTargets") resolvedTargets: option<resolvedTargets>,
  @as("TargetMaps") targetMaps: option<targetMaps>,
  @as("Targets") targets: option<targets>,
  @as("TargetParameterName") targetParameterName: option<automationParameterKey>,
  @as("FailureMessage") failureMessage: option<string_>,
  @as("CurrentAction") currentAction: option<string_>,
  @as("CurrentStepName") currentStepName: option<string_>,
  @as("ParentAutomationExecutionId") parentAutomationExecutionId: option<automationExecutionId>,
  @as("Mode") mode: option<executionMode>,
  @as("Outputs") outputs: option<automationParameterMap>,
  @as("LogFile") logFile: option<string_>,
  @as("ExecutedBy") executedBy: option<string_>,
  @as("ExecutionEndTime") executionEndTime: option<dateTime>,
  @as("ExecutionStartTime") executionStartTime: option<dateTime>,
  @as("AutomationExecutionStatus") automationExecutionStatus: option<automationExecutionStatus>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentName") documentName: option<documentName>,
  @as("AutomationExecutionId") automationExecutionId: option<automationExecutionId>,
}
type automationExecution = {
  @as("ChangeRequestName") changeRequestName: option<changeRequestName>,
  @as("AssociationId") associationId: option<string_>,
  @as("OpsItemId") opsItemId: option<string_>,
  @as("Runbooks") runbooks: option<runbooks>,
  @as("ScheduledTime") scheduledTime: option<dateTime>,
  @as("AutomationSubtype") automationSubtype: option<automationSubtype>,
  @as("ProgressCounters") progressCounters: option<progressCounters>,
  @as("TargetLocations") targetLocations: option<targetLocations>,
  @as("Target") target: option<string_>,
  @as("MaxErrors") maxErrors: option<maxErrors>,
  @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
  @as("ResolvedTargets") resolvedTargets: option<resolvedTargets>,
  @as("TargetMaps") targetMaps: option<targetMaps>,
  @as("Targets") targets: option<targets>,
  @as("TargetParameterName") targetParameterName: option<automationParameterKey>,
  @as("CurrentAction") currentAction: option<string_>,
  @as("CurrentStepName") currentStepName: option<string_>,
  @as("ExecutedBy") executedBy: option<string_>,
  @as("ParentAutomationExecutionId") parentAutomationExecutionId: option<automationExecutionId>,
  @as("Mode") mode: option<executionMode>,
  @as("FailureMessage") failureMessage: option<string_>,
  @as("Outputs") outputs: option<automationParameterMap>,
  @as("Parameters") parameters: option<automationParameterMap>,
  @as("StepExecutionsTruncated") stepExecutionsTruncated: option<boolean_>,
  @as("StepExecutions") stepExecutions: option<stepExecutionList>,
  @as("AutomationExecutionStatus") automationExecutionStatus: option<automationExecutionStatus>,
  @as("ExecutionEndTime") executionEndTime: option<dateTime>,
  @as("ExecutionStartTime") executionStartTime: option<dateTime>,
  @as("DocumentVersion") documentVersion: option<documentVersion>,
  @as("DocumentName") documentName: option<documentName>,
  @as("AutomationExecutionId") automationExecutionId: option<automationExecutionId>,
}
type patchRuleGroup = {@as("PatchRules") patchRules: patchRuleList}
type automationExecutionMetadataList = array<automationExecutionMetadata>
type baselineOverride = {
  @as("Sources") sources: option<patchSourceList>,
  @as("ApprovedPatchesEnableNonSecurity") approvedPatchesEnableNonSecurity: option<boolean_>,
  @as("RejectedPatchesAction") rejectedPatchesAction: option<patchAction>,
  @as("RejectedPatches") rejectedPatches: option<patchIdList>,
  @as("ApprovedPatchesComplianceLevel")
  approvedPatchesComplianceLevel: option<patchComplianceLevel>,
  @as("ApprovedPatches") approvedPatches: option<patchIdList>,
  @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
  @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
  @as("OperatingSystem") operatingSystem: option<operatingSystem>,
}
type rec opsAggregatorList = array<opsAggregator>
and opsAggregator = {
  @as("Aggregators") aggregators: option<opsAggregatorList>,
  @as("Filters") filters: option<opsFilterList>,
  @as("Values") values: option<opsAggregatorValueMap>,
  @as("AttributeName") attributeName: option<opsDataAttributeName>,
  @as("TypeName") typeName: option<opsDataTypeName>,
  @as("AggregatorType") aggregatorType: option<opsAggregatorType>,
}
and inventoryAggregatorList = array<inventoryAggregator>
and inventoryAggregator = {
  @as("Groups") groups: option<inventoryGroupList>,
  @as("Aggregators") aggregators: option<inventoryAggregatorList>,
  @as("Expression") expression: option<inventoryAggregatorExpression>,
}

module UpdateServiceSetting = {
  type t
  type request = {
    @as("SettingValue") settingValue: serviceSettingValue,
    @as("SettingId") settingId: serviceSettingId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateServiceSettingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateManagedInstanceRole = {
  type t
  type request = {
    @as("IamRole") iamRole: iamRole,
    @as("InstanceId") instanceId: managedInstanceId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "UpdateManagedInstanceRoleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMaintenanceWindow = {
  type t
  type request = {
    @as("Replace") replace: option<boolean_>,
    @as("Enabled") enabled: option<maintenanceWindowEnabled>,
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @as("Cutoff") cutoff: option<maintenanceWindowCutoff>,
    @as("Duration") duration: option<maintenanceWindowDurationHours>,
    @as("ScheduleOffset") scheduleOffset: option<maintenanceWindowOffset>,
    @as("ScheduleTimezone") scheduleTimezone: option<maintenanceWindowTimezone>,
    @as("Schedule") schedule: option<maintenanceWindowSchedule>,
    @as("EndDate") endDate: option<maintenanceWindowStringDateTime>,
    @as("StartDate") startDate: option<maintenanceWindowStringDateTime>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("Enabled") enabled: option<maintenanceWindowEnabled>,
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @as("Cutoff") cutoff: option<maintenanceWindowCutoff>,
    @as("Duration") duration: option<maintenanceWindowDurationHours>,
    @as("ScheduleOffset") scheduleOffset: option<maintenanceWindowOffset>,
    @as("ScheduleTimezone") scheduleTimezone: option<maintenanceWindowTimezone>,
    @as("Schedule") schedule: option<maintenanceWindowSchedule>,
    @as("EndDate") endDate: option<maintenanceWindowStringDateTime>,
    @as("StartDate") startDate: option<maintenanceWindowStringDateTime>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateSession = {
  type t
  type request = {@as("SessionId") sessionId: sessionId}
  type response = {@as("SessionId") sessionId: option<sessionId>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "TerminateSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopAutomationExecution = {
  type t
  type request = {
    @as("Type") type_: option<stopType>,
    @as("AutomationExecutionId") automationExecutionId: automationExecutionId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "StopAutomationExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeSession = {
  type t
  type request = {@as("SessionId") sessionId: sessionId}
  type response = {
    @as("StreamUrl") streamUrl: option<streamUrl>,
    @as("TokenValue") tokenValue: option<tokenValue>,
    @as("SessionId") sessionId: option<sessionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ResumeSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterPatchBaselineForPatchGroup = {
  type t
  type request = {
    @as("PatchGroup") patchGroup: patchGroup,
    @as("BaselineId") baselineId: baselineId,
  }
  type response = {
    @as("PatchGroup") patchGroup: option<patchGroup>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "RegisterPatchBaselineForPatchGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDefaultPatchBaseline = {
  type t
  type request = {@as("BaselineId") baselineId: baselineId}
  type response = {@as("BaselineId") baselineId: option<baselineId>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "RegisterDefaultPatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPatchBaselineForPatchGroup = {
  type t
  type request = {
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("PatchGroup") patchGroup: patchGroup,
  }
  type response = {
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("PatchGroup") patchGroup: option<patchGroup>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetPatchBaselineForPatchGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecutionTaskInvocation = {
  type t
  type request = {
    @as("InvocationId") invocationId: maintenanceWindowExecutionTaskInvocationId,
    @as("TaskId") taskId: maintenanceWindowExecutionTaskId,
    @as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @as("WindowTargetId") windowTargetId: option<maintenanceWindowTaskTargetId>,
    @as("OwnerInformation") ownerInformation: option<ownerInformation>,
    @as("EndTime") endTime: option<dateTime>,
    @as("StartTime") startTime: option<dateTime>,
    @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @as("Status") status: option<maintenanceWindowExecutionStatus>,
    @as("Parameters") parameters: option<maintenanceWindowExecutionTaskInvocationParameters>,
    @as("TaskType") taskType: option<maintenanceWindowTaskType>,
    @as("ExecutionId") executionId: option<maintenanceWindowExecutionTaskExecutionId>,
    @as("InvocationId") invocationId: option<maintenanceWindowExecutionTaskInvocationId>,
    @as("TaskExecutionId") taskExecutionId: option<maintenanceWindowExecutionTaskId>,
    @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetMaintenanceWindowExecutionTaskInvocationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindow = {
  type t
  type request = {@as("WindowId") windowId: maintenanceWindowId}
  type response = {
    @as("ModifiedDate") modifiedDate: option<dateTime>,
    @as("CreatedDate") createdDate: option<dateTime>,
    @as("Enabled") enabled: option<maintenanceWindowEnabled>,
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @as("Cutoff") cutoff: option<maintenanceWindowCutoff>,
    @as("Duration") duration: option<maintenanceWindowDurationHours>,
    @as("NextExecutionTime") nextExecutionTime: option<maintenanceWindowStringDateTime>,
    @as("ScheduleOffset") scheduleOffset: option<maintenanceWindowOffset>,
    @as("ScheduleTimezone") scheduleTimezone: option<maintenanceWindowTimezone>,
    @as("Schedule") schedule: option<maintenanceWindowSchedule>,
    @as("EndDate") endDate: option<maintenanceWindowStringDateTime>,
    @as("StartDate") startDate: option<maintenanceWindowStringDateTime>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDefaultPatchBaseline = {
  type t
  type request = {@as("OperatingSystem") operatingSystem: option<operatingSystem>}
  type response = {
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetDefaultPatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectionStatus = {
  type t
  type request = {@as("Target") target: sessionTarget}
  type response = {
    @as("Status") status: option<connectionStatus>,
    @as("Target") target: option<sessionTarget>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetConnectionStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchGroupState = {
  type t
  type request = {@as("PatchGroup") patchGroup: patchGroup}
  type response = {
    @as("InstancesWithOtherNonCompliantPatches")
    instancesWithOtherNonCompliantPatches: option<instancesCount>,
    @as("InstancesWithSecurityNonCompliantPatches")
    instancesWithSecurityNonCompliantPatches: option<instancesCount>,
    @as("InstancesWithCriticalNonCompliantPatches")
    instancesWithCriticalNonCompliantPatches: option<instancesCount>,
    @as("InstancesWithUnreportedNotApplicablePatches")
    instancesWithUnreportedNotApplicablePatches: option<integer_>,
    @as("InstancesWithNotApplicablePatches") instancesWithNotApplicablePatches: option<integer_>,
    @as("InstancesWithFailedPatches") instancesWithFailedPatches: option<integer_>,
    @as("InstancesWithMissingPatches") instancesWithMissingPatches: option<integer_>,
    @as("InstancesWithInstalledRejectedPatches")
    instancesWithInstalledRejectedPatches: option<instancesCount>,
    @as("InstancesWithInstalledPendingRebootPatches")
    instancesWithInstalledPendingRebootPatches: option<instancesCount>,
    @as("InstancesWithInstalledOtherPatches") instancesWithInstalledOtherPatches: option<integer_>,
    @as("InstancesWithInstalledPatches") instancesWithInstalledPatches: option<integer_>,
    @as("Instances") instances: option<integer_>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribePatchGroupStateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTaskFromMaintenanceWindow = {
  type t
  type request = {
    @as("WindowTaskId") windowTaskId: maintenanceWindowTaskId,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("WindowTaskId") windowTaskId: option<maintenanceWindowTaskId>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DeregisterTaskFromMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTargetFromMaintenanceWindow = {
  type t
  type request = {
    @as("Safe") safe: option<boolean_>,
    @as("WindowTargetId") windowTargetId: maintenanceWindowTargetId,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("WindowTargetId") windowTargetId: option<maintenanceWindowTargetId>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DeregisterTargetFromMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterPatchBaselineForPatchGroup = {
  type t
  type request = {
    @as("PatchGroup") patchGroup: patchGroup,
    @as("BaselineId") baselineId: baselineId,
  }
  type response = {
    @as("PatchGroup") patchGroup: option<patchGroup>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DeregisterPatchBaselineForPatchGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterManagedInstance = {
  type t
  type request = {@as("InstanceId") instanceId: managedInstanceId}
  type response = unit
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DeregisterManagedInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourceDataSync = {
  type t
  type request = {
    @as("SyncType") syncType: option<resourceDataSyncType>,
    @as("SyncName") syncName: resourceDataSyncName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteResourceDataSyncCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePatchBaseline = {
  type t
  type request = {@as("BaselineId") baselineId: baselineId}
  type response = {@as("BaselineId") baselineId: option<baselineId>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeletePatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteParameter = {
  type t
  type request = {@as("Name") name: psparameterName}
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteParameterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOpsMetadata = {
  type t
  type request = {@as("OpsMetadataArn") opsMetadataArn: opsMetadataArn}
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteOpsMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMaintenanceWindow = {
  type t
  type request = {@as("WindowId") windowId: maintenanceWindowId}
  type response = {@as("WindowId") windowId: option<maintenanceWindowId>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDocument = {
  type t
  type request = {
    @as("Force") force: option<boolean_>,
    @as("VersionName") versionName: option<documentVersionName>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: documentName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAssociation = {
  type t
  type request = {
    @as("AssociationId") associationId: option<associationId>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("Name") name: option<documentARN>,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteActivation = {
  type t
  type request = {@as("ActivationId") activationId: activationId}
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteActivationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelMaintenanceWindowExecution = {
  type t
  type request = {@as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId}
  type response = {@as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "CancelMaintenanceWindowExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentDefaultVersion = {
  type t
  type request = {
    @as("DocumentVersion") documentVersion: documentVersionNumber,
    @as("Name") name: documentName,
  }
  type response = {@as("Description") description: option<documentDefaultVersionDescription>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "UpdateDocumentDefaultVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnlabelParameterVersion = {
  type t
  type request = {
    @as("Labels") labels: parameterLabelList,
    @as("ParameterVersion") parameterVersion: psparameterVersion,
    @as("Name") name: psparameterName,
  }
  type response = {
    @as("InvalidLabels") invalidLabels: option<parameterLabelList>,
    @as("RemovedLabels") removedLabels: option<parameterLabelList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UnlabelParameterVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAssociationsOnce = {
  type t
  type request = {@as("AssociationIds") associationIds: associationIdList}
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "StartAssociationsOnceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetServiceSetting = {
  type t
  type request = {@as("SettingId") settingId: serviceSettingId}
  type response = {@as("ServiceSetting") serviceSetting: option<serviceSetting>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ResetServiceSettingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: keyList,
    @as("ResourceId") resourceId: resourceId,
    @as("ResourceType") resourceType: resourceTypeForTagging,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "RemoveTagsFromResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDocumentPermission = {
  type t
  type request = {
    @as("SharedDocumentVersion") sharedDocumentVersion: option<sharedDocumentVersion>,
    @as("AccountIdsToRemove") accountIdsToRemove: option<accountIdList>,
    @as("AccountIdsToAdd") accountIdsToAdd: option<accountIdList>,
    @as("PermissionType") permissionType: documentPermissionType,
    @as("Name") name: documentName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "ModifyDocumentPermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module LabelParameterVersion = {
  type t
  type request = {
    @as("Labels") labels: parameterLabelList,
    @as("ParameterVersion") parameterVersion: option<psparameterVersion>,
    @as("Name") name: psparameterName,
  }
  type response = {
    @as("ParameterVersion") parameterVersion: option<psparameterVersion>,
    @as("InvalidLabels") invalidLabels: option<parameterLabelList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "LabelParameterVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceSetting = {
  type t
  type request = {@as("SettingId") settingId: serviceSettingId}
  type response = {@as("ServiceSetting") serviceSetting: option<serviceSetting>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetServiceSettingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameter = {
  type t
  type request = {
    @as("WithDecryption") withDecryption: option<boolean_>,
    @as("Name") name: psparameterName,
  }
  type response = {@as("Parameter") parameter: option<parameter>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetParameterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecution = {
  type t
  type request = {@as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId}
  type response = {
    @as("EndTime") endTime: option<dateTime>,
    @as("StartTime") startTime: option<dateTime>,
    @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @as("Status") status: option<maintenanceWindowExecutionStatus>,
    @as("TaskIds") taskIds: option<maintenanceWindowExecutionTaskIdList>,
    @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetMaintenanceWindowExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommandInvocation = {
  type t
  type request = {
    @as("PluginName") pluginName: option<commandPluginName>,
    @as("InstanceId") instanceId: instanceId,
    @as("CommandId") commandId: commandId,
  }
  type response = {
    @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
    @as("StandardErrorUrl") standardErrorUrl: option<url>,
    @as("StandardErrorContent") standardErrorContent: option<standardErrorContent>,
    @as("StandardOutputUrl") standardOutputUrl: option<url>,
    @as("StandardOutputContent") standardOutputContent: option<standardOutputContent>,
    @as("StatusDetails") statusDetails: option<statusDetails>,
    @as("Status") status: option<commandInvocationStatus>,
    @as("ExecutionEndDateTime") executionEndDateTime: option<stringDateTime>,
    @as("ExecutionElapsedTime") executionElapsedTime: option<stringDateTime>,
    @as("ExecutionStartDateTime") executionStartDateTime: option<stringDateTime>,
    @as("ResponseCode") responseCode: option<responseCode>,
    @as("PluginName") pluginName: option<commandPluginName>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("DocumentName") documentName: option<documentName>,
    @as("Comment") comment: option<comment>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("CommandId") commandId: option<commandId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetCommandInvocationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCalendarState = {
  type t
  type request = {
    @as("AtTime") atTime: option<iso8601String>,
    @as("CalendarNames") calendarNames: calendarNameOrARNList,
  }
  type response = {
    @as("NextTransitionTime") nextTransitionTime: option<iso8601String>,
    @as("AtTime") atTime: option<iso8601String>,
    @as("State") state: option<calendarState>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetCalendarStateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateOpsItemRelatedItem = {
  type t
  type request = {
    @as("AssociationId") associationId: opsItemRelatedItemAssociationId,
    @as("OpsItemId") opsItemId: opsItemId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DisassociateOpsItemRelatedItemCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteParameters = {
  type t
  type request = {@as("Names") names: parameterNameList}
  type response = {
    @as("InvalidParameters") invalidParameters: option<parameterNameList>,
    @as("DeletedParameters") deletedParameters: option<parameterNameList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelCommand = {
  type t
  type request = {
    @as("InstanceIds") instanceIds: option<instanceIdList>,
    @as("CommandId") commandId: commandId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CancelCommandCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateOpsItemRelatedItem = {
  type t
  type request = {
    @as("ResourceUri") resourceUri: opsItemRelatedItemAssociationResourceUri,
    @as("ResourceType") resourceType: opsItemRelatedItemAssociationResourceType,
    @as("AssociationType") associationType: opsItemRelatedItemAssociationType,
    @as("OpsItemId") opsItemId: opsItemId,
  }
  type response = {@as("AssociationId") associationId: option<opsItemRelatedItemAssociationId>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "AssociateOpsItemRelatedItemCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOpsMetadata = {
  type t
  type request = {
    @as("KeysToDelete") keysToDelete: option<metadataKeysToDeleteList>,
    @as("MetadataToUpdate") metadataToUpdate: option<metadataMap>,
    @as("OpsMetadataArn") opsMetadataArn: opsMetadataArn,
  }
  type response = {@as("OpsMetadataArn") opsMetadataArn: option<opsMetadataArn>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateOpsMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOpsItem = {
  type t
  type request = {
    @as("PlannedEndTime") plannedEndTime: option<dateTime>,
    @as("PlannedStartTime") plannedStartTime: option<dateTime>,
    @as("ActualEndTime") actualEndTime: option<dateTime>,
    @as("ActualStartTime") actualStartTime: option<dateTime>,
    @as("Severity") severity: option<opsItemSeverity>,
    @as("Category") category: option<opsItemCategory>,
    @as("Title") title: option<opsItemTitle>,
    @as("OpsItemId") opsItemId: opsItemId,
    @as("Status") status: option<opsItemStatus>,
    @as("RelatedOpsItems") relatedOpsItems: option<relatedOpsItems>,
    @as("Priority") priority: option<opsItemPriority>,
    @as("Notifications") notifications: option<opsItemNotifications>,
    @as("OperationalDataToDelete") operationalDataToDelete: option<opsItemOpsDataKeysList>,
    @as("OperationalData") operationalData: option<opsItemOperationalData>,
    @as("Description") description: option<opsItemDescription>,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateOpsItemCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSession = {
  type t
  type request = {
    @as("Parameters") parameters: option<sessionManagerParameters>,
    @as("DocumentName") documentName: option<documentARN>,
    @as("Target") target: sessionTarget,
  }
  type response = {
    @as("StreamUrl") streamUrl: option<streamUrl>,
    @as("TokenValue") tokenValue: option<tokenValue>,
    @as("SessionId") sessionId: option<sessionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "StartSessionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendAutomationSignal = {
  type t
  type request = {
    @as("Payload") payload: option<automationParameterMap>,
    @as("SignalType") signalType: signalType,
    @as("AutomationExecutionId") automationExecutionId: automationExecutionId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "SendAutomationSignalCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutParameter = {
  type t
  type request = {
    @as("DataType") dataType: option<parameterDataType>,
    @as("Policies") policies: option<parameterPolicies>,
    @as("Tier") tier: option<parameterTier>,
    @as("Tags") tags: option<tagList_>,
    @as("AllowedPattern") allowedPattern: option<allowedPattern>,
    @as("Overwrite") overwrite: option<boolean_>,
    @as("KeyId") keyId: option<parameterKeyId>,
    @as("Type") type_: option<parameterType>,
    @as("Value") value: psparameterValue,
    @as("Description") description: option<parameterDescription>,
    @as("Name") name: psparameterName,
  }
  type response = {
    @as("Tier") tier: option<parameterTier>,
    @as("Version") version: option<psparameterVersion>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "PutParameterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("ResourceId") resourceId: resourceId,
    @as("ResourceType") resourceType: resourceTypeForTagging,
  }
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Name") name: documentARN,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DocumentVersions") documentVersions: option<documentVersionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListDocumentVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameters = {
  type t
  type request = {
    @as("WithDecryption") withDecryption: option<boolean_>,
    @as("Names") names: parameterNameList,
  }
  type response = {
    @as("InvalidParameters") invalidParameters: option<parameterNameList>,
    @as("Parameters") parameters: option<parameterList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsMetadata = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<getOpsMetadataMaxResults>,
    @as("OpsMetadataArn") opsMetadataArn: opsMetadataArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Metadata") metadata: option<metadataMap>,
    @as("ResourceId") resourceId: option<opsMetadataResourceId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetOpsMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocument = {
  type t
  type request = {
    @as("DocumentFormat") documentFormat: option<documentFormat>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("VersionName") versionName: option<documentVersionName>,
    @as("Name") name: documentARN,
  }
  type response = {
    @as("ReviewStatus") reviewStatus: option<reviewStatus>,
    @as("AttachmentsContent") attachmentsContent: option<attachmentContentList>,
    @as("Requires") requires: option<documentRequiresList>,
    @as("DocumentFormat") documentFormat: option<documentFormat>,
    @as("DocumentType") documentType: option<documentType>,
    @as("Content") content: option<documentContent>,
    @as("StatusInformation") statusInformation: option<documentStatusInformation>,
    @as("Status") status: option<documentStatus>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("VersionName") versionName: option<documentVersionName>,
    @as("DisplayName") displayName: option<documentDisplayName>,
    @as("CreatedDate") createdDate: option<dateTime>,
    @as("Name") name: option<documentARN>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchProperties = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("PatchSet") patchSet: option<patchSet>,
    @as("Property") property: patchProperty,
    @as("OperatingSystem") operatingSystem: operatingSystem,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Properties") properties: option<patchPropertiesList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribePatchPropertiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatchStates = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<patchComplianceMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceIds") instanceIds: instanceIdList,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstancePatchStates") instancePatchStates: option<instancePatchStateList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeInstancePatchStatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEffectiveInstanceAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<effectiveInstanceAssociationMaxResults>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Associations") associations: option<instanceAssociationList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeEffectiveInstanceAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocumentPermission = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<documentPermissionMaxResults>,
    @as("PermissionType") permissionType: documentPermissionType,
    @as("Name") name: documentName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AccountSharingInfoList") accountSharingInfoList: option<accountSharingInfoList>,
    @as("AccountIds") accountIds: option<accountIdList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeDocumentPermissionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociationExecutions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<associationExecutionFilterList>,
    @as("AssociationId") associationId: associationId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AssociationExecutions") associationExecutions: option<associationExecutionsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeAssociationExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOpsMetadata = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Metadata") metadata: option<metadataMap>,
    @as("ResourceId") resourceId: opsMetadataResourceId,
  }
  type response = {@as("OpsMetadataArn") opsMetadataArn: option<opsMetadataArn>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateOpsMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOpsItem = {
  type t
  type request = {
    @as("PlannedEndTime") plannedEndTime: option<dateTime>,
    @as("PlannedStartTime") plannedStartTime: option<dateTime>,
    @as("ActualEndTime") actualEndTime: option<dateTime>,
    @as("ActualStartTime") actualStartTime: option<dateTime>,
    @as("Severity") severity: option<opsItemSeverity>,
    @as("Category") category: option<opsItemCategory>,
    @as("Tags") tags: option<tagList_>,
    @as("Title") title: opsItemTitle,
    @as("Source") source: opsItemSource,
    @as("RelatedOpsItems") relatedOpsItems: option<relatedOpsItems>,
    @as("Priority") priority: option<opsItemPriority>,
    @as("Notifications") notifications: option<opsItemNotifications>,
    @as("OperationalData") operationalData: option<opsItemOperationalData>,
    @as("OpsItemType") opsItemType: option<opsItemType>,
    @as("Description") description: opsItemDescription,
  }
  type response = {@as("OpsItemId") opsItemId: option<string_>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateOpsItemCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMaintenanceWindow = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: maintenanceWindowAllowUnassociatedTargets,
    @as("Cutoff") cutoff: maintenanceWindowCutoff,
    @as("Duration") duration: maintenanceWindowDurationHours,
    @as("ScheduleOffset") scheduleOffset: option<maintenanceWindowOffset>,
    @as("ScheduleTimezone") scheduleTimezone: option<maintenanceWindowTimezone>,
    @as("Schedule") schedule: maintenanceWindowSchedule,
    @as("EndDate") endDate: option<maintenanceWindowStringDateTime>,
    @as("StartDate") startDate: option<maintenanceWindowStringDateTime>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: maintenanceWindowName,
  }
  type response = {@as("WindowId") windowId: option<maintenanceWindowId>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateActivation = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ExpirationDate") expirationDate: option<expirationDate>,
    @as("RegistrationLimit") registrationLimit: option<registrationLimit>,
    @as("IamRole") iamRole: iamRole,
    @as("DefaultInstanceName") defaultInstanceName: option<defaultInstanceName>,
    @as("Description") description: option<activationDescription>,
  }
  type response = {
    @as("ActivationCode") activationCode: option<activationCode>,
    @as("ActivationId") activationId: option<activationId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateActivationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceId") resourceId: resourceId,
    @as("ResourceType") resourceType: resourceTypeForTagging,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "AddTagsToResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMaintenanceWindowTarget = {
  type t
  type request = {
    @as("Replace") replace: option<boolean_>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("OwnerInformation") ownerInformation: option<ownerInformation>,
    @as("Targets") targets: option<targets>,
    @as("WindowTargetId") windowTargetId: maintenanceWindowTargetId,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("OwnerInformation") ownerInformation: option<ownerInformation>,
    @as("Targets") targets: option<targets>,
    @as("WindowTargetId") windowTargetId: option<maintenanceWindowTargetId>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "UpdateMaintenanceWindowTargetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentMetadata = {
  type t
  type request = {
    @as("DocumentReviews") documentReviews: documentReviews,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: documentName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateDocumentMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocument = {
  type t
  type request = {
    @as("TargetType") targetType: option<targetType>,
    @as("DocumentFormat") documentFormat: option<documentFormat>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("VersionName") versionName: option<documentVersionName>,
    @as("DisplayName") displayName: option<documentDisplayName>,
    @as("Name") name: documentName,
    @as("Attachments") attachments: option<attachmentsSourceList>,
    @as("Content") content: documentContent,
  }
  type response = {@as("DocumentDescription") documentDescription: option<documentDescription>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAutomationExecution = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetLocations") targetLocations: option<targetLocations>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("TargetMaps") targetMaps: option<targetMaps>,
    @as("Targets") targets: option<targets>,
    @as("TargetParameterName") targetParameterName: option<automationParameterKey>,
    @as("Mode") mode: option<executionMode>,
    @as("ClientToken") clientToken: option<idempotencyToken>,
    @as("Parameters") parameters: option<automationParameterMap>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("DocumentName") documentName: documentARN,
  }
  type response = {
    @as("AutomationExecutionId") automationExecutionId: option<automationExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "StartAutomationExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTargetWithMaintenanceWindow = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("OwnerInformation") ownerInformation: option<ownerInformation>,
    @as("Targets") targets: targets,
    @as("ResourceType") resourceType: maintenanceWindowResourceType,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {@as("WindowTargetId") windowTargetId: option<maintenanceWindowTargetId>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "RegisterTargetWithMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutComplianceItems = {
  type t
  type request = {
    @as("UploadType") uploadType: option<complianceUploadType>,
    @as("ItemContentHash") itemContentHash: option<complianceItemContentHash>,
    @as("Items") items: complianceItemEntryList,
    @as("ExecutionSummary") executionSummary: complianceExecutionSummary,
    @as("ComplianceType") complianceType: complianceTypeName,
    @as("ResourceType") resourceType: complianceResourceType,
    @as("ResourceId") resourceId: complianceResourceId,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "PutComplianceItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpsMetadata = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<listOpsMetadataMaxResults>,
    @as("Filters") filters: option<opsMetadataFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("OpsMetadataList") opsMetadataList: option<opsMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListOpsMetadataCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpsItemRelatedItems = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<opsItemRelatedItemsMaxResults>,
    @as("Filters") filters: option<opsItemRelatedItemsFilters>,
    @as("OpsItemId") opsItemId: option<opsItemId>,
  }
  type response = {
    @as("Summaries") summaries: option<opsItemRelatedItemSummaries>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListOpsItemRelatedItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpsItemEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<opsItemEventMaxResults>,
    @as("Filters") filters: option<opsItemEventFilters>,
  }
  type response = {
    @as("Summaries") summaries: option<opsItemEventSummaries>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListOpsItemEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInventoryEntries = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<inventoryFilterList>,
    @as("TypeName") typeName: inventoryItemTypeName,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Entries") entries: option<inventoryItemEntryList>,
    @as("CaptureTime") captureTime: option<inventoryItemCaptureTime>,
    @as("SchemaVersion") schemaVersion: option<inventoryItemSchemaVersion>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("TypeName") typeName: option<inventoryItemTypeName>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListInventoryEntriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComplianceItems = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceTypes") resourceTypes: option<complianceResourceTypeList>,
    @as("ResourceIds") resourceIds: option<complianceResourceIdList>,
    @as("Filters") filters: option<complianceStringFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ComplianceItems") complianceItems: option<complianceItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListComplianceItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParametersByPath = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<getParametersByPathMaxResults>,
    @as("WithDecryption") withDecryption: option<boolean_>,
    @as("ParameterFilters") parameterFilters: option<parameterStringFilterList>,
    @as("Recursive") recursive: option<boolean_>,
    @as("Path") path: psparameterName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Parameters") parameters: option<parameterList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetParametersByPathCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsItem = {
  type t
  type request = {@as("OpsItemId") opsItemId: opsItemId}
  type response = {@as("OpsItem") opsItem: option<opsItem>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetOpsItemCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSessions = {
  type t
  type request = {
    @as("Filters") filters: option<sessionFilterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<sessionMaxResults>,
    @as("State") state: sessionState,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Sessions") sessions: option<sessionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeSessionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchGroups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<patchOrchestratorFilterList>,
    @as("MaxResults") maxResults: option<patchBaselineMaxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Mappings") mappings: option<patchGroupPatchBaselineMappingList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribePatchGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchBaselines = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<patchBaselineMaxResults>,
    @as("Filters") filters: option<patchOrchestratorFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("BaselineIdentities") baselineIdentities: option<patchBaselineIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribePatchBaselinesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowsForTarget = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowSearchMaxResults>,
    @as("ResourceType") resourceType: maintenanceWindowResourceType,
    @as("Targets") targets: targets,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WindowIdentities") windowIdentities: option<maintenanceWindowsForTargetList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowsForTargetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindows = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WindowIdentities") windowIdentities: option<maintenanceWindowIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowSchedule = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowSearchMaxResults>,
    @as("Filters") filters: option<patchOrchestratorFilterList>,
    @as("ResourceType") resourceType: option<maintenanceWindowResourceType>,
    @as("Targets") targets: option<targets>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ScheduledWindowExecutions")
    scheduledWindowExecutions: option<scheduledWindowExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowScheduleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WindowExecutions") windowExecutions: option<maintenanceWindowExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutionTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
    @as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WindowExecutionTaskIdentities")
    windowExecutionTaskIdentities: option<maintenanceWindowExecutionTaskIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowExecutionTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutionTaskInvocations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
    @as("TaskId") taskId: maintenanceWindowExecutionTaskId,
    @as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WindowExecutionTaskInvocationIdentities")
    windowExecutionTaskInvocationIdentities: option<
      maintenanceWindowExecutionTaskInvocationIdentityList,
    >,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowExecutionTaskInvocationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatches = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<patchComplianceMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<patchOrchestratorFilterList>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Patches") patches: option<patchComplianceDataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeInstancePatchesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatchStatesForPatchGroup = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<patchComplianceMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<instancePatchStateFilterList>,
    @as("PatchGroup") patchGroup: patchGroup,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstancePatchStates") instancePatchStates: option<instancePatchStatesList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeInstancePatchStatesForPatchGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocument = {
  type t
  type request = {
    @as("VersionName") versionName: option<documentVersionName>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: documentARN,
  }
  type response = {@as("Document") document: option<documentDescription>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAvailablePatches = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<patchBaselineMaxResults>,
    @as("Filters") filters: option<patchOrchestratorFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Patches") patches: option<patchList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeAvailablePatchesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociationExecutionTargets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<associationExecutionTargetsFilterList>,
    @as("ExecutionId") executionId: associationExecutionId,
    @as("AssociationId") associationId: associationId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AssociationExecutionTargets")
    associationExecutionTargets: option<associationExecutionTargetsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeAssociationExecutionTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInventory = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<uuid>,
    @as("DryRun") dryRun: option<dryRun>,
    @as("SchemaDeleteOption") schemaDeleteOption: option<inventorySchemaDeleteOption>,
    @as("TypeName") typeName: inventoryItemTypeName,
  }
  type response = {
    @as("DeletionSummary") deletionSummary: option<inventoryDeletionSummary>,
    @as("TypeName") typeName: option<inventoryItemTypeName>,
    @as("DeletionId") deletionId: option<uuid>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DeleteInventoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDocument = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetType") targetType: option<targetType>,
    @as("DocumentFormat") documentFormat: option<documentFormat>,
    @as("DocumentType") documentType: option<documentType>,
    @as("VersionName") versionName: option<documentVersionName>,
    @as("DisplayName") displayName: option<documentDisplayName>,
    @as("Name") name: documentName,
    @as("Attachments") attachments: option<attachmentsSourceList>,
    @as("Requires") requires: option<documentRequiresList>,
    @as("Content") content: documentContent,
  }
  type response = {@as("DocumentDescription") documentDescription: option<documentDescription>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateDocumentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceDataSync = {
  type t
  type request = {
    @as("SyncSource") syncSource: resourceDataSyncSource,
    @as("SyncType") syncType: resourceDataSyncType,
    @as("SyncName") syncName: resourceDataSyncName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateResourceDataSyncCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMaintenanceWindowTask = {
  type t
  type request = {
    @as("Replace") replace: option<boolean_>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("Priority") priority: option<maintenanceWindowTaskPriority>,
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParameters>,
    @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
    @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
    @as("Targets") targets: option<targets>,
    @as("WindowTaskId") windowTaskId: maintenanceWindowTaskId,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("Priority") priority: option<maintenanceWindowTaskPriority>,
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParameters>,
    @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
    @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
    @as("Targets") targets: option<targets>,
    @as("WindowTaskId") windowTaskId: option<maintenanceWindowTaskId>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "UpdateMaintenanceWindowTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssociationStatus = {
  type t
  type request = {
    @as("AssociationStatus") associationStatus: associationStatus,
    @as("InstanceId") instanceId: instanceId,
    @as("Name") name: documentARN,
  }
  type response = {
    @as("AssociationDescription") associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateAssociationStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssociation = {
  type t
  type request = {
    @as("TargetLocations") targetLocations: option<targetLocations>,
    @as("CalendarNames") calendarNames: option<calendarNameOrARNList>,
    @as("ApplyOnlyAtCronInterval") applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
    @as("SyncCompliance") syncCompliance: option<associationSyncCompliance>,
    @as("ComplianceSeverity") complianceSeverity: option<associationComplianceSeverity>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("AutomationTargetParameterName")
    automationTargetParameterName: option<automationTargetParameterName>,
    @as("AssociationVersion") associationVersion: option<associationVersion>,
    @as("AssociationName") associationName: option<associationName>,
    @as("Targets") targets: option<targets>,
    @as("Name") name: option<documentARN>,
    @as("OutputLocation") outputLocation: option<instanceAssociationOutputLocation>,
    @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Parameters") parameters: option<parameters>,
    @as("AssociationId") associationId: associationId,
  }
  type response = {
    @as("AssociationDescription") associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdateAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendCommand = {
  type t
  type request = {
    @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
    @as("NotificationConfig") notificationConfig: option<notificationConfig>,
    @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("OutputS3KeyPrefix") outputS3KeyPrefix: option<s3KeyPrefix>,
    @as("OutputS3BucketName") outputS3BucketName: option<s3BucketName>,
    @as("OutputS3Region") outputS3Region: option<s3Region>,
    @as("Parameters") parameters: option<parameters>,
    @as("Comment") comment: option<comment>,
    @as("TimeoutSeconds") timeoutSeconds: option<timeoutSeconds>,
    @as("DocumentHashType") documentHashType: option<documentHashType>,
    @as("DocumentHash") documentHash: option<documentHash>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("DocumentName") documentName: documentARN,
    @as("Targets") targets: option<targets>,
    @as("InstanceIds") instanceIds: option<instanceIdList>,
  }
  type response = {@as("Command") command: option<command>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "SendCommandCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTaskWithMaintenanceWindow = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("Priority") priority: option<maintenanceWindowTaskPriority>,
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParameters>,
    @as("TaskType") taskType: maintenanceWindowTaskType,
    @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
    @as("TaskArn") taskArn: maintenanceWindowTaskArn,
    @as("Targets") targets: option<targets>,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {@as("WindowTaskId") windowTaskId: option<maintenanceWindowTaskId>}
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "RegisterTaskWithMaintenanceWindowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInventory = {
  type t
  type request = {
    @as("Items") items: inventoryItemList,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {@as("Message") message: option<putInventoryMessage>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "PutInventoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceComplianceSummaries = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<complianceStringFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceComplianceSummaryItems")
    resourceComplianceSummaryItems: option<resourceComplianceSummaryItemList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "ListResourceComplianceSummariesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocuments = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<documentKeyValuesFilterList>,
    @as("DocumentFilterList") documentFilterList: option<documentFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DocumentIdentifiers") documentIdentifiers: option<documentIdentifierList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListDocumentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComplianceSummaries = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<complianceStringFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ComplianceSummaryItems") complianceSummaryItems: option<complianceSummaryItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListComplianceSummariesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCommandInvocations = {
  type t
  type request = {
    @as("Details") details: option<boolean_>,
    @as("Filters") filters: option<commandFilterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<commandMaxResults>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("CommandId") commandId: option<commandId>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("CommandInvocations") commandInvocations: option<commandInvocationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListCommandInvocationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameterHistory = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("WithDecryption") withDecryption: option<boolean_>,
    @as("Name") name: psparameterName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Parameters") parameters: option<parameterHistoryList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetParameterHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowTask = {
  type t
  type request = {
    @as("WindowTaskId") windowTaskId: maintenanceWindowTaskId,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("Description") description: option<maintenanceWindowDescription>,
    @as("Name") name: option<maintenanceWindowName>,
    @as("LoggingInfo") loggingInfo: option<loggingInfo>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("Priority") priority: option<maintenanceWindowTaskPriority>,
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParameters>,
    @as("TaskType") taskType: option<maintenanceWindowTaskType>,
    @as("ServiceRoleArn") serviceRoleArn: option<serviceRole>,
    @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
    @as("Targets") targets: option<targets>,
    @as("WindowTaskId") windowTaskId: option<maintenanceWindowTaskId>,
    @as("WindowId") windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetMaintenanceWindowTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecutionTask = {
  type t
  type request = {
    @as("TaskId") taskId: maintenanceWindowExecutionTaskId,
    @as("WindowExecutionId") windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @as("EndTime") endTime: option<dateTime>,
    @as("StartTime") startTime: option<dateTime>,
    @as("StatusDetails") statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @as("Status") status: option<maintenanceWindowExecutionStatus>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("Priority") priority: option<maintenanceWindowTaskPriority>,
    @as("TaskParameters") taskParameters: option<maintenanceWindowTaskParametersList>,
    @as("Type") type_: option<maintenanceWindowTaskType>,
    @as("ServiceRole") serviceRole: option<serviceRole>,
    @as("TaskArn") taskArn: option<maintenanceWindowTaskArn>,
    @as("TaskExecutionId") taskExecutionId: option<maintenanceWindowExecutionTaskId>,
    @as("WindowExecutionId") windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetMaintenanceWindowExecutionTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInventorySchema = {
  type t
  type request = {
    @as("SubType") subType: option<isSubTypeSchema>,
    @as("Aggregator") aggregator: option<aggregatorSchemaOnly>,
    @as("MaxResults") maxResults: option<getInventorySchemaMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("TypeName") typeName: option<inventoryItemTypeNameFilter>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Schemas") schemas: option<inventoryItemSchemaResultList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetInventorySchemaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ParameterFilters") parameterFilters: option<parameterStringFilterList>,
    @as("Filters") filters: option<parametersFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Parameters") parameters: option<parameterMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOpsItems = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<opsItemMaxResults>,
    @as("OpsItemFilters") opsItemFilters: option<opsItemFilters>,
  }
  type response = {
    @as("OpsItemSummaries") opsItemSummaries: option<opsItemSummaries>,
    @as("NextToken") nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeOpsItemsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceInformation = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResultsEC2Compatible>,
    @as("Filters") filters: option<instanceInformationStringFilterList>,
    @as("InstanceInformationFilterList")
    instanceInformationFilterList: option<instanceInformationFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceInformationList") instanceInformationList: option<instanceInformationList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeInstanceInformationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceAssociationsStatus = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceAssociationStatusInfos")
    instanceAssociationStatusInfos: option<instanceAssociationStatusInfos>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeInstanceAssociationsStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEffectivePatchesForPatchBaseline = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<patchBaselineMaxResults>,
    @as("BaselineId") baselineId: baselineId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("EffectivePatches") effectivePatches: option<effectivePatchList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeEffectivePatchesForPatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociation = {
  type t
  type request = {
    @as("AssociationVersion") associationVersion: option<associationVersion>,
    @as("AssociationId") associationId: option<associationId>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("Name") name: option<documentARN>,
  }
  type response = {
    @as("AssociationDescription") associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeActivations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<describeActivationsFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ActivationList") activationList: option<activationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "DescribeActivationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceDataSync = {
  type t
  type request = {
    @as("SyncSource") syncSource: option<resourceDataSyncSource>,
    @as("SyncType") syncType: option<resourceDataSyncType>,
    @as("S3Destination") s3Destination: option<resourceDataSyncS3Destination>,
    @as("SyncName") syncName: resourceDataSyncName,
  }
  type response = unit
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateResourceDataSyncCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssociation = {
  type t
  type request = {
    @as("TargetLocations") targetLocations: option<targetLocations>,
    @as("CalendarNames") calendarNames: option<calendarNameOrARNList>,
    @as("ApplyOnlyAtCronInterval") applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
    @as("SyncCompliance") syncCompliance: option<associationSyncCompliance>,
    @as("ComplianceSeverity") complianceSeverity: option<associationComplianceSeverity>,
    @as("MaxConcurrency") maxConcurrency: option<maxConcurrency>,
    @as("MaxErrors") maxErrors: option<maxErrors>,
    @as("AutomationTargetParameterName")
    automationTargetParameterName: option<automationTargetParameterName>,
    @as("AssociationName") associationName: option<associationName>,
    @as("OutputLocation") outputLocation: option<instanceAssociationOutputLocation>,
    @as("ScheduleExpression") scheduleExpression: option<scheduleExpression>,
    @as("Targets") targets: option<targets>,
    @as("Parameters") parameters: option<parameters>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: documentARN,
  }
  type response = {
    @as("AssociationDescription") associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateAssociationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartChangeRequestExecution = {
  type t
  type request = {
    @as("ChangeDetails") changeDetails: option<changeDetailsValue>,
    @as("ScheduledEndTime") scheduledEndTime: option<dateTime>,
    @as("Tags") tags: option<tagList_>,
    @as("Runbooks") runbooks: runbooks,
    @as("ClientToken") clientToken: option<idempotencyToken>,
    @as("ChangeRequestName") changeRequestName: option<changeRequestName>,
    @as("Parameters") parameters: option<automationParameterMap>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("DocumentName") documentName: documentARN,
    @as("ScheduledTime") scheduledTime: option<dateTime>,
  }
  type response = {
    @as("AutomationExecutionId") automationExecutionId: option<automationExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "StartChangeRequestExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentMetadataHistory = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Metadata") metadata: documentMetadataEnum,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: documentName,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Metadata") metadata: option<documentMetadataResponseInfo>,
    @as("Author") author: option<documentAuthor>,
    @as("DocumentVersion") documentVersion: option<documentVersion>,
    @as("Name") name: option<documentName>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "ListDocumentMetadataHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCommands = {
  type t
  type request = {
    @as("Filters") filters: option<commandFilterList>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<commandMaxResults>,
    @as("InstanceId") instanceId: option<instanceId>,
    @as("CommandId") commandId: option<commandId>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Commands") commands: option<commandList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListCommandsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AssociationFilterList") associationFilterList: option<associationFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Associations") associations: option<associationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListAssociationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociationVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AssociationId") associationId: associationId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AssociationVersions") associationVersions: option<associationVersionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListAssociationVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tasks") tasks: option<maintenanceWindowTaskList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowTargets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maintenanceWindowMaxResults>,
    @as("Filters") filters: option<maintenanceWindowFilterList>,
    @as("WindowId") windowId: maintenanceWindowId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Targets") targets: option<maintenanceWindowTargetList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeMaintenanceWindowTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInventoryDeletions = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("DeletionId") deletionId: option<uuid>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InventoryDeletions") inventoryDeletions: option<inventoryDeletionsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeInventoryDeletionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutomationStepExecutions = {
  type t
  type request = {
    @as("ReverseOrder") reverseOrder: option<boolean_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("Filters") filters: option<stepExecutionFilterList>,
    @as("AutomationExecutionId") automationExecutionId: automationExecutionId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("StepExecutions") stepExecutions: option<stepExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeAutomationStepExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceDataSync = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SyncType") syncType: option<resourceDataSyncType>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceDataSyncItems") resourceDataSyncItems: option<resourceDataSyncItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "ListResourceDataSyncCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAutomationExecution = {
  type t
  type request = {@as("AutomationExecutionId") automationExecutionId: automationExecutionId}
  type response = {@as("AutomationExecution") automationExecution: option<automationExecution>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetAutomationExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssociationBatch = {
  type t
  type request = {@as("Entries") entries: createAssociationBatchRequestEntries}
  type response = {
    @as("Failed") failed: option<failedCreateAssociationList>,
    @as("Successful") successful: option<associationDescriptionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreateAssociationBatchCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePatchBaseline = {
  type t
  type request = {
    @as("Replace") replace: option<boolean_>,
    @as("Sources") sources: option<patchSourceList>,
    @as("Description") description: option<baselineDescription>,
    @as("RejectedPatchesAction") rejectedPatchesAction: option<patchAction>,
    @as("RejectedPatches") rejectedPatches: option<patchIdList>,
    @as("ApprovedPatchesEnableNonSecurity") approvedPatchesEnableNonSecurity: option<boolean_>,
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @as("ApprovedPatches") approvedPatches: option<patchIdList>,
    @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
    @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
    @as("Name") name: option<baselineName>,
    @as("BaselineId") baselineId: baselineId,
  }
  type response = {
    @as("Sources") sources: option<patchSourceList>,
    @as("Description") description: option<baselineDescription>,
    @as("ModifiedDate") modifiedDate: option<dateTime>,
    @as("CreatedDate") createdDate: option<dateTime>,
    @as("RejectedPatchesAction") rejectedPatchesAction: option<patchAction>,
    @as("RejectedPatches") rejectedPatches: option<patchIdList>,
    @as("ApprovedPatchesEnableNonSecurity") approvedPatchesEnableNonSecurity: option<boolean_>,
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @as("ApprovedPatches") approvedPatches: option<patchIdList>,
    @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
    @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("Name") name: option<baselineName>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "UpdatePatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPatchBaseline = {
  type t
  type request = {@as("BaselineId") baselineId: baselineId}
  type response = {
    @as("Sources") sources: option<patchSourceList>,
    @as("Description") description: option<baselineDescription>,
    @as("ModifiedDate") modifiedDate: option<dateTime>,
    @as("CreatedDate") createdDate: option<dateTime>,
    @as("PatchGroups") patchGroups: option<patchGroupList>,
    @as("RejectedPatchesAction") rejectedPatchesAction: option<patchAction>,
    @as("RejectedPatches") rejectedPatches: option<patchIdList>,
    @as("ApprovedPatchesEnableNonSecurity") approvedPatchesEnableNonSecurity: option<boolean_>,
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @as("ApprovedPatches") approvedPatches: option<patchIdList>,
    @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
    @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
    @as("Name") name: option<baselineName>,
    @as("BaselineId") baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetPatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutomationExecutions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<automationExecutionFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AutomationExecutionMetadataList")
    automationExecutionMetadataList: option<automationExecutionMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "DescribeAutomationExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePatchBaseline = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Sources") sources: option<patchSourceList>,
    @as("Description") description: option<baselineDescription>,
    @as("RejectedPatchesAction") rejectedPatchesAction: option<patchAction>,
    @as("RejectedPatches") rejectedPatches: option<patchIdList>,
    @as("ApprovedPatchesEnableNonSecurity") approvedPatchesEnableNonSecurity: option<boolean_>,
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @as("ApprovedPatches") approvedPatches: option<patchIdList>,
    @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
    @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
    @as("Name") name: baselineName,
    @as("OperatingSystem") operatingSystem: option<operatingSystem>,
  }
  type response = {@as("BaselineId") baselineId: option<baselineId>}
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "CreatePatchBaselineCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployablePatchSnapshotForInstance = {
  type t
  type request = {
    @as("BaselineOverride") baselineOverride: option<baselineOverride>,
    @as("SnapshotId") snapshotId: snapshotId,
    @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @as("Product") product: option<product>,
    @as("SnapshotDownloadUrl") snapshotDownloadUrl: option<snapshotDownloadUrl>,
    @as("SnapshotId") snapshotId: option<snapshotId>,
    @as("InstanceId") instanceId: option<instanceId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new_: request => t = "GetDeployablePatchSnapshotForInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsSummary = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResultAttributes") resultAttributes: option<opsResultAttributeList>,
    @as("Aggregators") aggregators: option<opsAggregatorList>,
    @as("Filters") filters: option<opsFilterList>,
    @as("SyncName") syncName: option<resourceDataSyncName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Entities") entities: option<opsEntityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetOpsSummaryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInventory = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResultAttributes") resultAttributes: option<resultAttributeList>,
    @as("Aggregators") aggregators: option<inventoryAggregatorList>,
    @as("Filters") filters: option<inventoryFilterList>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Entities") entities: option<inventoryResultEntityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new_: request => t = "GetInventoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
