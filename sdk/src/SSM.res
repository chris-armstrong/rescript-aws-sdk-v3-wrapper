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
type sourceType = [
  | @as("AWS::SSM::ManagedInstance") #AWS_SSM_ManagedInstance
  | @as("AWS::IoT::Thing") #AWS_IoT_Thing
  | @as("AWS::EC2::Instance") #AWS_EC2_Instance
]
type sourceId = string
type snapshotId = string
type snapshotDownloadUrl = string
type signalType = [
  | @as("Resume") #Resume
  | @as("StopStep") #StopStep
  | @as("StartStep") #StartStep
  | @as("Reject") #Reject
  | @as("Approve") #Approve
]
@ocaml.doc("<p>The document version shared with other accounts. You can share <code>Latest</code>,
    <code>Default</code> or <code>All versions</code>.</p>")
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
type sessionReason = string
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
  | @as("Automation") #Automation
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
type registrationMetadataValue = string
type registrationMetadataKey = string
type registrationLimit = int
type region = string
type rebootOption = [@as("NoReboot") #NoReboot | @as("RebootIfNeeded") #RebootIfNeeded]
type putInventoryMessage = string
type product = string
type platformType = [@as("MacOS") #MacOS | @as("Linux") #Linux | @as("Windows") #Windows]
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
  | @as("Closed") #Closed
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
  | @as("InsightByType") #InsightByType
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
  | @as("ROCKY_LINUX") #ROCKY_LINUX
  | @as("RASPBIAN") #RASPBIAN
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
type maxSessionDuration = string
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
type maintenanceWindowTaskCutoffBehavior = [
  | @as("CANCEL_TASK") #CANCEL_TASK
  | @as("CONTINUE_TASK") #CONTINUE_TASK
]
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
@ocaml.doc("<p>The status of a document.</p>")
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
type category = string
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
@ocaml.doc("<p>Metadata that you assign to your Amazon Web Services resources. Tags enable you to categorize your
   resources in different ways, for example, by purpose, owner, or environment. In Amazon Web Services Systems Manager, you
   can apply tags to Systems Manager documents (SSM documents), managed nodes, maintenance windows,
   parameters, patch baselines, OpsItems, and OpsMetadata.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The name of the tag.</p>") @as("Key") key: tagKey,
}
type stringList = array<string_>
type stepExecutionFilterValueList = array<stepExecutionFilterValue>
@ocaml.doc("<p>The number of managed nodes found for each patch severity level defined in the request
   filter.</p>")
type severitySummary = {
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of unspecified.
   Unspecified severity is determined by the organization that published the compliance
   items.</p>")
  @as("UnspecifiedCount")
  unspecifiedCount: option<complianceSummaryCount>,
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of
   informational. Informational severity is determined by the organization that published the
   compliance items.</p>")
  @as("InformationalCount")
  informationalCount: option<complianceSummaryCount>,
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of low. Low
   severity is determined by the organization that published the compliance items.</p>")
  @as("LowCount")
  lowCount: option<complianceSummaryCount>,
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of medium.
   Medium severity is determined by the organization that published the compliance items.</p>")
  @as("MediumCount")
  mediumCount: option<complianceSummaryCount>,
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of high. High
   severity is determined by the organization that published the compliance items.</p>")
  @as("HighCount")
  highCount: option<complianceSummaryCount>,
  @ocaml.doc("<p>The total number of resources or compliance items that have a severity level of critical.
   Critical severity is determined by the organization that published the compliance items.</p>")
  @as("CriticalCount")
  criticalCount: option<complianceSummaryCount>,
}
type sessionManagerParameterValueList = array<sessionManagerParameterValue>
@ocaml.doc("<p>Reserved for future use.</p>")
type sessionManagerOutputUrl = {
  @ocaml.doc("<p>Reserved for future use.</p>") @as("CloudWatchOutputUrl")
  cloudWatchOutputUrl: option<sessionManagerCloudWatchOutputUrl>,
  @ocaml.doc("<p>Reserved for future use.</p>") @as("S3OutputUrl")
  s3OutputUrl: option<sessionManagerS3OutputUrl>,
}
@ocaml.doc("<p>Describes a filter for Session Manager information.</p>")
type sessionFilter = {
  @ocaml.doc("<p>The filter value. Valid values for each filter key are as follows:</p>
         <ul>
            <li>
               <p>InvokedAfter: Specify a timestamp to limit your results. For example, specify
     2018-08-29T00:00:00Z to see sessions that started August 29, 2018, and later.</p>
            </li>
            <li>
               <p>InvokedBefore: Specify a timestamp to limit your results. For example, specify
     2018-08-29T00:00:00Z to see sessions that started before August 29, 2018.</p>
            </li>
            <li>
               <p>Target: Specify a managed node to which session connections have been made.</p>
            </li>
            <li>
               <p>Owner: Specify an Amazon Web Services user account to see a list of sessions started by that
     user.</p>
            </li>
            <li>
               <p>Status: Specify a valid session status to see a list of all sessions with that status.
     Status values you can specify include:</p>
               <ul>
                  <li>
                     <p>Connected</p>
                  </li>
                  <li>
                     <p>Connecting</p>
                  </li>
                  <li>
                     <p>Disconnected</p>
                  </li>
                  <li>
                     <p>Terminated</p>
                  </li>
                  <li>
                     <p>Terminating</p>
                  </li>
                  <li>
                     <p>Failed</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>SessionId: Specify a session ID to return details about the session.</p>
            </li>
         </ul>")
  value: sessionFilterValue,
  @ocaml.doc("<p>The name of the filter.</p>") key: sessionFilterKey,
}
@ocaml.doc("<p>The service setting data structure.</p>
         <p>
            <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
   defines how a user interacts with or uses a service or a feature of a service. For example, if an
   Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
   service team might create a default setting of \"false\". This means the user can't use this
   feature unless they change the setting to \"true\" and intentionally opt in for a paid
   feature.</p>
         <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
   the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
   but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
   permission for the setting. Use the <a>UpdateServiceSetting</a> API operation to
   change the default setting. Or, use the <a>ResetServiceSetting</a> to change the value
   back to the original value defined by the Amazon Web Services service team.</p>")
type serviceSetting = {
  @ocaml.doc("<p>The status of the service setting. The value can be Default, Customized or
   PendingUpdate.</p>
         <ul>
            <li>
               <p>Default: The current setting uses a default value provisioned by the Amazon Web Services service
     team.</p>
            </li>
            <li>
               <p>Customized: The current setting use a custom value specified by the customer.</p>
            </li>
            <li>
               <p>PendingUpdate: The current setting uses a default or custom value, but a setting change
     request is pending approval.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The ARN of the service setting.</p>") @as("ARN") arn: option<string_>,
  @ocaml.doc("<p>The ARN of the last modified user. This field is populated only if the setting value was
   overwritten.</p>")
  @as("LastModifiedUser")
  lastModifiedUser: option<string_>,
  @ocaml.doc("<p>The last time the service setting was modified.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<dateTime>,
  @ocaml.doc("<p>The value of the service setting.</p>") @as("SettingValue")
  settingValue: option<serviceSettingValue>,
  @ocaml.doc("<p>The ID of the service setting.</p>") @as("SettingId")
  settingId: option<serviceSettingId>,
}
@ocaml.doc("<p>Information about a scheduled execution for a maintenance window.</p>")
type scheduledWindowExecution = {
  @ocaml.doc("<p>The time, in ISO-8601 Extended format, that the maintenance window is scheduled to be
   run.</p>")
  @as("ExecutionTime")
  executionTime: option<maintenanceWindowStringDateTime>,
  @ocaml.doc("<p>The name of the maintenance window to be run.</p>") @as("Name")
  name: option<maintenanceWindowName>,
  @ocaml.doc("<p>The ID of the maintenance window to be run.</p>") @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
@ocaml.doc("<p>A URL for the Amazon Web Services Systems Manager (Systems Manager) bucket where you want to store the
   results of this request.</p>")
type s3OutputUrl = {
  @ocaml.doc("<p>A URL for an S3 bucket where you want to store the results of this request.</p>")
  @as("OutputUrl")
  outputUrl: option<url>,
}
@ocaml.doc("<p>An S3 bucket where you want to store the results of this request.</p>")
type s3OutputLocation = {
  @ocaml.doc("<p>The S3 bucket subfolder.</p>") @as("OutputS3KeyPrefix")
  outputS3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") @as("OutputS3BucketName")
  outputS3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>The Amazon Web Services Region of the S3 bucket.</p>") @as("OutputS3Region")
  outputS3Region: option<s3Region>,
}
@ocaml.doc("<p>Information about the result of a document review request.</p>")
type reviewInformation = {
  @ocaml.doc("<p>The reviewer assigned to take action on the document review request.</p>")
  @as("Reviewer")
  reviewer: option<reviewer>,
  @ocaml.doc("<p>The current status of the document review request.</p>") @as("Status")
  status: option<reviewStatus>,
  @ocaml.doc("<p>The time that the reviewer took action on the document review request.</p>")
  @as("ReviewedTime")
  reviewedTime: option<dateTime>,
}
@ocaml.doc("<p>The inventory item result attribute.</p>")
type resultAttribute = {
  @ocaml.doc("<p>Name of the inventory item type. Valid value: <code>AWS:InstanceInformation</code>. Default
   Value: <code>AWS:InstanceInformation</code>.</p>")
  @as("TypeName")
  typeName: inventoryItemTypeName,
}
type resourceDataSyncSourceRegionList = array<resourceDataSyncSourceRegion>
@ocaml.doc("<p>The Organizations organizational unit data source for the sync.</p>")
type resourceDataSyncOrganizationalUnit = {
  @ocaml.doc("<p>The Organizations unit ID data source for the sync.</p>")
  @as("OrganizationalUnitId")
  organizationalUnitId: option<resourceDataSyncOrganizationalUnitId>,
}
@ocaml.doc("<p>Synchronize Amazon Web Services Systems Manager Inventory data from multiple Amazon Web Services accounts defined in Organizations to a
   centralized Amazon S3 bucket. Data is synchronized to individual key prefixes in the
   central bucket. Each key prefix represents a different Amazon Web Services account ID.</p>")
type resourceDataSyncDestinationDataSharing = {
  @ocaml.doc("<p>The sharing data type. Only <code>Organization</code> is supported.</p>")
  @as("DestinationDataSharingType")
  destinationDataSharingType: option<resourceDataSyncDestinationDataSharingType>,
}
@ocaml.doc("<p>An OpsItems that shares something in common with the current OpsItem. For example, related
   OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for
   the impacted resource.</p>")
type relatedOpsItem = {
  @ocaml.doc("<p>The ID of an OpsItem related to the current OpsItem.</p>") @as("OpsItemId")
  opsItemId: string_,
}
@ocaml.doc("<p>Reserved for internal use.</p>")
type registrationMetadataItem = {
  @ocaml.doc("<p>Reserved for internal use.</p>") @as("Value") value: registrationMetadataValue,
  @ocaml.doc("<p>Reserved for internal use.</p>") @as("Key") key: registrationMetadataKey,
}
type regions = array<region>
@ocaml.doc("<p>An aggregate of step execution statuses displayed in the Amazon Web Services Systems Manager console for a
   multi-Region and multi-account Automation execution.</p>")
type progressCounters = {
  @ocaml.doc("<p>The total number of steps that timed out in all specified Amazon Web Services Regions and Amazon Web Services accounts
   for the current Automation execution.</p>")
  @as("TimedOutSteps")
  timedOutSteps: option<integer_>,
  @ocaml.doc("<p>The total number of steps that the system cancelled in all specified Amazon Web Services Regions and
   Amazon Web Services accounts for the current Automation execution.</p>")
  @as("CancelledSteps")
  cancelledSteps: option<integer_>,
  @ocaml.doc("<p>The total number of steps that failed to run in all specified Amazon Web Services Regions and
   Amazon Web Services accounts for the current Automation execution.</p>")
  @as("FailedSteps")
  failedSteps: option<integer_>,
  @ocaml.doc("<p>The total number of steps that successfully completed in all specified Amazon Web Services Regions and
   Amazon Web Services accounts for the current Automation execution.</p>")
  @as("SuccessSteps")
  successSteps: option<integer_>,
  @ocaml.doc("<p>The total number of steps run in all specified Amazon Web Services Regions and Amazon Web Services accounts for the
   current Automation execution.</p>")
  @as("TotalSteps")
  totalSteps: option<integer_>,
}
type platformTypeList = array<platformType>
@ocaml.doc("<p>Information about the approval status of a patch.</p>")
type patchStatus = {
  @ocaml.doc("<p>The date the patch was approved (or will be approved if the status is
    <code>PENDING_APPROVAL</code>).</p>")
  @as("ApprovalDate")
  approvalDate: option<dateTime>,
  @ocaml.doc("<p>The compliance severity level for a patch.</p>") @as("ComplianceLevel")
  complianceLevel: option<patchComplianceLevel>,
  @ocaml.doc("<p>The approval status of a patch.</p>") @as("DeploymentStatus")
  deploymentStatus: option<patchDeploymentStatus>,
}
type patchSourceProductList = array<patchSourceProduct>
type patchPropertyEntry = Js.Dict.t<attributeValue>
type patchOrchestratorFilterValues = array<patchOrchestratorFilterValue>
type patchIdList = array<patchId>
type patchGroupList = array<patchGroup>
type patchFilterValueList = array<patchFilterValue>
@ocaml.doc("<p>Information about the state of a patch on a particular managed node as it relates to the
   patch baseline used to patch the node.</p>")
type patchComplianceData = {
  @ocaml.doc("<p>The IDs of one or more Common Vulnerabilities and Exposure (CVE) issues that are resolved by
   the patch.</p>")
  @as("CVEIds")
  cveids: option<patchCVEIds>,
  @ocaml.doc("<p>The date/time the patch was installed on the managed node. Not all operating systems provide
   this level of information.</p>")
  @as("InstalledTime")
  installedTime: dateTime,
  @ocaml.doc("<p>The state of the patch on the managed node, such as INSTALLED or FAILED.</p>
         <p>For descriptions of each patch state, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-compliance-about.html#sysman-compliance-monitor-patch\">About patch compliance</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("State")
  state: patchComplianceDataState,
  @ocaml.doc("<p>The severity of the patch such as <code>Critical</code>, <code>Important</code>, and
    <code>Moderate</code>.</p>")
  @as("Severity")
  severity: patchSeverity,
  @ocaml.doc("<p>The classification of the patch, such as <code>SecurityUpdates</code>, <code>Updates</code>,
   and <code>CriticalUpdates</code>.</p>")
  @as("Classification")
  classification: patchClassification,
  @ocaml.doc("<p>The operating system-specific ID of the patch.</p>") @as("KBId")
  kbid: patchKbNumber,
  @ocaml.doc("<p>The title of the patch.</p>") @as("Title") title: patchTitle,
}
type patchCVEIdList = array<patchCVEId>
type patchBugzillaIdList = array<patchBugzillaId>
@ocaml.doc("<p>Defines the basic information about a patch baseline.</p>")
type patchBaselineIdentity = {
  @ocaml.doc("<p>Whether this is the default baseline. Amazon Web Services Systems Manager supports creating multiple default patch
   baselines. For example, you can create a default patch baseline for each operating system.</p>")
  @as("DefaultBaseline")
  defaultBaseline: option<defaultBaseline>,
  @ocaml.doc("<p>The description of the patch baseline.</p>") @as("BaselineDescription")
  baselineDescription: option<baselineDescription>,
  @ocaml.doc("<p>Defines the operating system the patch baseline applies to. The default value is
    <code>WINDOWS</code>. </p>")
  @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
  @ocaml.doc("<p>The name of the patch baseline.</p>") @as("BaselineName")
  baselineName: option<baselineName>,
  @ocaml.doc("<p>The ID of the patch baseline.</p>") @as("BaselineId")
  baselineId: option<baselineId>,
}
type patchAdvisoryIdList = array<patchAdvisoryId>
type parametersFilterValueList = array<parametersFilterValue>
type parameterValueList = array<parameterValue>
type parameterStringFilterValueList = array<parameterStringFilterValue>
type parameterNameList = array<psparameterName>
type parameterLabelList = array<parameterLabel>
@ocaml.doc("<p>One or more policies assigned to a parameter.</p>")
type parameterInlinePolicy = {
  @ocaml.doc("<p>The status of the policy. Policies report the following statuses: Pending (the policy hasn't
   been enforced or applied yet), Finished (the policy was applied), Failed (the policy wasn't
   applied), or InProgress (the policy is being applied now). </p>")
  @as("PolicyStatus")
  policyStatus: option<string_>,
  @ocaml.doc("<p>The type of policy. Parameter Store, a capability of Amazon Web Services Systems Manager, supports the following
   policy types: Expiration, ExpirationNotification, and NoChangeNotification. </p>")
  @as("PolicyType")
  policyType: option<string_>,
  @ocaml.doc("<p>The JSON text of the policy.</p>") @as("PolicyText") policyText: option<string_>,
}
@ocaml.doc("<p>An Amazon Web Services Systems Manager parameter in Parameter Store.</p>")
type parameter = {
  @ocaml.doc("<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
   default is <code>text</code>.</p>")
  @as("DataType")
  dataType: option<parameterDataType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the parameter.</p>") @as("ARN")
  arn: option<string_>,
  @ocaml.doc(
    "<p>Date the parameter was last changed or updated and the parameter version was created.</p>"
  )
  @as("LastModifiedDate")
  lastModifiedDate: option<dateTime>,
  @ocaml.doc("<p>Applies to parameters that reference information in other Amazon Web Services services.
    <code>SourceResult</code> is the raw result or response from the source.</p>")
  @as("SourceResult")
  sourceResult: option<string_>,
  @ocaml.doc("<p>Either the version number or the label used to retrieve the parameter value. Specify
   selectors by using one of the following formats:</p>
         <p>parameter_name:version</p>
         <p>parameter_name:label</p>")
  @as("Selector")
  selector: option<psparameterSelector>,
  @ocaml.doc("<p>The parameter version.</p>") @as("Version") version: option<psparameterVersion>,
  @ocaml.doc("<p>The parameter value.</p>
         <note>
            <p>If type is <code>StringList</code>, the system returns a comma-separated string with no
    spaces between commas in the <code>Value</code> field.</p>
         </note>")
  @as("Value")
  value: option<psparameterValue>,
  @ocaml.doc("<p>The type of parameter. Valid values include the following: <code>String</code>,
    <code>StringList</code>, and <code>SecureString</code>.</p>
         <note>
            <p>If type is <code>StringList</code>, the system returns a comma-separated string with no
    spaces between commas in the <code>Value</code> field.</p>
         </note>")
  @as("Type")
  type_: option<parameterType>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("Name") name: option<psparameterName>,
}
@ocaml.doc(
  "<p>Information about the source where the association execution details are stored.</p>"
)
type outputSource = {
  @ocaml.doc(
    "<p>The type of source where the association execution details are stored, for example, Amazon S3.</p>"
  )
  @as("OutputSourceType")
  outputSourceType: option<outputSourceType>,
  @ocaml.doc("<p>The ID of the output source, for example the URL of an S3 bucket.</p>")
  @as("OutputSourceId")
  outputSourceId: option<outputSourceId>,
}
@ocaml.doc("<p>The OpsItem data type to return.</p>")
type opsResultAttribute = {
  @ocaml.doc("<p>Name of the data type. Valid value: <code>AWS:OpsItem</code>,
    <code>AWS:EC2InstanceInformation</code>, <code>AWS:OpsItemTrendline</code>, or
    <code>AWS:ComplianceSummary</code>.</p>")
  @as("TypeName")
  typeName: opsDataTypeName,
}
type opsMetadataFilterValueList = array<opsMetadataFilterValue>
@ocaml.doc("<p>Operational metadata for an application in Application Manager.</p>")
type opsMetadata = {
  @ocaml.doc("<p>The date the OpsMetadata objects was created.</p>") @as("CreationDate")
  creationDate: option<dateTime>,
  @ocaml.doc("<p>The user name who last updated the OpsMetadata object.</p>")
  @as("LastModifiedUser")
  lastModifiedUser: option<string_>,
  @ocaml.doc("<p>The date the OpsMetadata object was last updated.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the OpsMetadata Object or blob.</p>")
  @as("OpsMetadataArn")
  opsMetadataArn: option<opsMetadataArn>,
  @ocaml.doc("<p>The ID of the Application Manager application.</p>") @as("ResourceId")
  resourceId: option<opsMetadataResourceId>,
}
type opsItemRelatedItemsFilterValues = array<opsItemRelatedItemsFilterValue>
type opsItemParameterNamesList = array<string_>
type opsItemOpsDataKeysList = array<string_>
@ocaml.doc("<p>A notification about the OpsItem.</p>")
type opsItemNotification = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon Simple Notification Service (Amazon SNS) topic where
   notifications are sent when this OpsItem is edited or changed.</p>")
  @as("Arn")
  arn: option<string_>,
}
@ocaml.doc("<p>Information about the user or resource that created an OpsItem event.</p>")
type opsItemIdentity = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem
   event.</p>")
  @as("Arn")
  arn: option<string_>,
}
type opsItemFilterValues = array<opsItemFilterValue>
type opsItemEventFilterValues = array<opsItemEventFilterValue>
@ocaml.doc(
  "<p>An object that defines the value of the key and its type in the OperationalData map.</p>"
)
type opsItemDataValue = {
  @ocaml.doc("<p>The type of key-value pair. Valid types include <code>SearchableString</code> and
    <code>String</code>.</p>")
  @as("Type")
  type_: option<opsItemDataType>,
  @ocaml.doc("<p>The value of the OperationalData key.</p>") @as("Value")
  value: option<opsItemDataValueString>,
}
type opsFilterValueList = array<opsFilterValue>
type opsEntityItemEntry = Js.Dict.t<attributeValue>
type opsAggregatorValueMap = Js.Dict.t<opsAggregatorValue>
type notificationEventList = array<notificationEvent>
type normalStringMap = Js.Dict.t<string_>
@ocaml.doc("<p>Metadata to assign to an Application Manager application.</p>")
type metadataValue = {
  @ocaml.doc("<p>Metadata value to assign to an Application Manager application.</p>") @as("Value")
  value: option<metadataValueString>,
}
type metadataKeysToDeleteList = array<metadataKey>
type maintenanceWindowTaskParameterValueList = array<maintenanceWindowTaskParameterValue>
@ocaml.doc("<p>The parameters for a <code>STEP_FUNCTIONS</code> task.</p>
         <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
   
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
            <p>For Step Functions tasks, Systems Manager ignores any values specified for
     <code>TaskParameters</code> and <code>LoggingInfo</code>.</p>
         </note>")
type maintenanceWindowStepFunctionsParameters = {
  @ocaml.doc("<p>The name of the <code>STEP_FUNCTIONS</code> task.</p>") @as("Name")
  name: option<maintenanceWindowStepFunctionsName>,
  @ocaml.doc("<p>The inputs for the <code>STEP_FUNCTIONS</code> task.</p>") @as("Input")
  input: option<maintenanceWindowStepFunctionsInput>,
}
@ocaml.doc("<p>The parameters for a <code>LAMBDA</code> task type.</p>
         <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
   
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
            <p>For Lambda tasks, Systems Manager ignores any values specified for TaskParameters and
    LoggingInfo.</p>
         </note>")
type maintenanceWindowLambdaParameters = {
  @ocaml.doc("<p>JSON to provide to your Lambda function as input.</p>") @as("Payload")
  payload: option<maintenanceWindowLambdaPayload>,
  @ocaml.doc("<p>(Optional) Specify an Lambda function version or alias name. If you specify a
   function version, the operation uses the qualified function Amazon Resource Name (ARN) to invoke
   a specific Lambda function. If you specify an alias name, the operation uses the
   alias ARN to invoke the Lambda function version to which the alias points.</p>")
  @as("Qualifier")
  qualifier: option<maintenanceWindowLambdaQualifier>,
  @ocaml.doc("<p>Pass client-specific information to the Lambda function that you are
   invoking. You can then process the client information in your Lambda function as you
   choose through the context variable.</p>")
  @as("ClientContext")
  clientContext: option<maintenanceWindowLambdaClientContext>,
}
@ocaml.doc("<p>The maintenance window to which the specified target belongs.</p>")
type maintenanceWindowIdentityForTarget = {
  @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
  name: option<maintenanceWindowName>,
  @ocaml.doc("<p>The ID of the maintenance window.</p>") @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
@ocaml.doc("<p>Information about the maintenance window.</p>")
type maintenanceWindowIdentity = {
  @ocaml.doc("<p>The next time the maintenance window will actually run, taking into account any specified
   times for the maintenance window to become active or inactive.</p>")
  @as("NextExecutionTime")
  nextExecutionTime: option<maintenanceWindowStringDateTime>,
  @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become active.</p>")
  @as("StartDate")
  startDate: option<maintenanceWindowStringDateTime>,
  @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become inactive.</p>")
  @as("EndDate")
  endDate: option<maintenanceWindowStringDateTime>,
  @ocaml.doc("<p>The number of days to wait to run a maintenance window after the scheduled cron expression
   date and time.</p>")
  @as("ScheduleOffset")
  scheduleOffset: option<maintenanceWindowOffset>,
  @ocaml.doc("<p>The time zone that the scheduled maintenance window executions are based on, in Internet
   Assigned Numbers Authority (IANA) format.</p>")
  @as("ScheduleTimezone")
  scheduleTimezone: option<maintenanceWindowTimezone>,
  @ocaml.doc(
    "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
  )
  @as("Schedule")
  schedule: option<maintenanceWindowSchedule>,
  @ocaml.doc("<p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
   new tasks for execution.</p>")
  @as("Cutoff")
  cutoff: option<maintenanceWindowCutoff>,
  @ocaml.doc("<p>The duration of the maintenance window in hours.</p>") @as("Duration")
  duration: option<maintenanceWindowDurationHours>,
  @ocaml.doc("<p>Indicates whether the maintenance window is enabled.</p>") @as("Enabled")
  enabled: option<maintenanceWindowEnabled>,
  @ocaml.doc("<p>A description of the maintenance window.</p>") @as("Description")
  description: option<maintenanceWindowDescription>,
  @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
  name: option<maintenanceWindowName>,
  @ocaml.doc("<p>The ID of the maintenance window.</p>") @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
type maintenanceWindowFilterValues = array<maintenanceWindowFilterValue>
@ocaml.doc("<p>Describes the information about a task invocation for a particular target as part of a task
   execution performed as part of a maintenance window execution.</p>")
type maintenanceWindowExecutionTaskInvocationIdentity = {
  @ocaml.doc("<p>The ID of the target definition in this maintenance window the invocation was performed
   for.</p>")
  @as("WindowTargetId")
  windowTargetId: option<maintenanceWindowTaskTargetId>,
  @ocaml.doc("<p>User-provided value that was specified when the target was registered with the maintenance
   window. This was also included in any Amazon CloudWatch Events events raised during the task
   invocation.</p>")
  @as("OwnerInformation")
  ownerInformation: option<ownerInformation>,
  @ocaml.doc("<p>The time the invocation finished.</p>") @as("EndTime") endTime: option<dateTime>,
  @ocaml.doc("<p>The time the invocation started.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>The details explaining the status of the task invocation. Not available for all status
   values. </p>")
  @as("StatusDetails")
  statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @ocaml.doc("<p>The status of the task invocation.</p>") @as("Status")
  status: option<maintenanceWindowExecutionStatus>,
  @ocaml.doc("<p>The parameters that were provided for the invocation when it was run.</p>")
  @as("Parameters")
  parameters: option<maintenanceWindowExecutionTaskInvocationParameters>,
  @ocaml.doc("<p>The task type.</p>") @as("TaskType") taskType: option<maintenanceWindowTaskType>,
  @ocaml.doc("<p>The ID of the action performed in the service that actually handled the task invocation. If
   the task type is <code>RUN_COMMAND</code>, this value is the command ID.</p>")
  @as("ExecutionId")
  executionId: option<maintenanceWindowExecutionTaskExecutionId>,
  @ocaml.doc("<p>The ID of the task invocation.</p>") @as("InvocationId")
  invocationId: option<maintenanceWindowExecutionTaskInvocationId>,
  @ocaml.doc("<p>The ID of the specific task execution in the maintenance window execution.</p>")
  @as("TaskExecutionId")
  taskExecutionId: option<maintenanceWindowExecutionTaskId>,
  @ocaml.doc("<p>The ID of the maintenance window execution that ran the task.</p>")
  @as("WindowExecutionId")
  windowExecutionId: option<maintenanceWindowExecutionId>,
}
@ocaml.doc("<p>Information about a task execution performed as part of a maintenance window
   execution.</p>")
type maintenanceWindowExecutionTaskIdentity = {
  @ocaml.doc("<p>The type of task that ran.</p>") @as("TaskType")
  taskType: option<maintenanceWindowTaskType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that ran.</p>") @as("TaskArn")
  taskArn: option<maintenanceWindowTaskArn>,
  @ocaml.doc("<p>The time the task execution finished.</p>") @as("EndTime")
  endTime: option<dateTime>,
  @ocaml.doc("<p>The time the task execution started.</p>") @as("StartTime")
  startTime: option<dateTime>,
  @ocaml.doc("<p>The details explaining the status of the task execution. Not available for all status
   values.</p>")
  @as("StatusDetails")
  statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @ocaml.doc("<p>The status of the task execution.</p>") @as("Status")
  status: option<maintenanceWindowExecutionStatus>,
  @ocaml.doc("<p>The ID of the specific task execution in the maintenance window execution.</p>")
  @as("TaskExecutionId")
  taskExecutionId: option<maintenanceWindowExecutionTaskId>,
  @ocaml.doc("<p>The ID of the maintenance window execution that ran the task.</p>")
  @as("WindowExecutionId")
  windowExecutionId: option<maintenanceWindowExecutionId>,
}
type maintenanceWindowExecutionTaskIdList = array<maintenanceWindowExecutionTaskId>
@ocaml.doc("<p>Describes the information about an execution of a maintenance window. </p>")
type maintenanceWindowExecution = {
  @ocaml.doc("<p>The time the execution finished.</p>") @as("EndTime") endTime: option<dateTime>,
  @ocaml.doc("<p>The time the execution started.</p>") @as("StartTime") startTime: option<dateTime>,
  @ocaml.doc("<p>The details explaining the status. Not available for all status values.</p>")
  @as("StatusDetails")
  statusDetails: option<maintenanceWindowExecutionStatusDetails>,
  @ocaml.doc("<p>The status of the execution.</p>") @as("Status")
  status: option<maintenanceWindowExecutionStatus>,
  @ocaml.doc("<p>The ID of the maintenance window execution.</p>") @as("WindowExecutionId")
  windowExecutionId: option<maintenanceWindowExecutionId>,
  @ocaml.doc("<p>The ID of the maintenance window.</p>") @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
@ocaml.doc("<p>Information about an Amazon Simple Storage Service (Amazon S3) bucket to write managed
   node-level logs to.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
type loggingInfo = {
  @ocaml.doc("<p>The Amazon Web Services Region where the S3 bucket is located.</p>")
  @as("S3Region")
  s3Region: s3Region,
  @ocaml.doc("<p>(Optional) The S3 bucket subfolder. </p>") @as("S3KeyPrefix")
  s3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of an S3 bucket where execution logs are stored .</p>")
  @as("S3BucketName")
  s3BucketName: s3BucketName,
}
type keyList = array<tagKey>
type inventoryItemEntry = Js.Dict.t<attributeValue>
type inventoryItemContentContext = Js.Dict.t<attributeValue>
@ocaml.doc("<p>Attributes are the entries within the inventory item content. It contains name and
   value.</p>")
type inventoryItemAttribute = {
  @ocaml.doc("<p>The data type of the inventory item attribute. </p>") @as("DataType")
  dataType: inventoryAttributeDataType,
  @ocaml.doc("<p>Name of the inventory item attribute.</p>") @as("Name")
  name: inventoryItemAttributeName,
}
type inventoryFilterValueList = array<inventoryFilterValue>
@ocaml.doc(
  "<p>Either a count, remaining count, or a version number in a delete inventory summary.</p>"
)
type inventoryDeletionSummaryItem = {
  @ocaml.doc("<p>The remaining number of items to delete.</p>") @as("RemainingCount")
  remainingCount: option<remainingCount>,
  @ocaml.doc("<p>A count of the number of deleted items.</p>") @as("Count")
  count: option<resourceCount>,
  @ocaml.doc("<p>The inventory type version.</p>") @as("Version")
  version: option<inventoryItemSchemaVersion>,
}
type instancePatchStateFilterValues = array<instancePatchStateFilterValue>
@ocaml.doc("<p>Defines the high-level patch compliance state for a managed node, providing information
   about the number of installed, missing, not applicable, and failed patches along with metadata
   about the operation when this information was gathered for the managed node.</p>")
type instancePatchState = {
  @ocaml.doc("<p>The number of managed nodes with patches installed that are specified as other than
    <code>Critical</code> or <code>Security</code> but aren't compliant with the patch baseline. The
   status of these managed nodes is <code>NON_COMPLIANT</code>.</p>")
  @as("OtherNonCompliantCount")
  otherNonCompliantCount: option<patchOtherNonCompliantCount>,
  @ocaml.doc("<p>The number of managed nodes where patches that are specified as <code>Security</code> in a
   patch advisory aren't installed. These patches might be missing, have failed installation, were
   rejected, or were installed but awaiting a required managed node reboot. The status of these
   managed nodes is <code>NON_COMPLIANT</code>.</p>")
  @as("SecurityNonCompliantCount")
  securityNonCompliantCount: option<patchSecurityNonCompliantCount>,
  @ocaml.doc("<p>The number of managed nodes where patches that are specified as <code>Critical</code> for
   compliance reporting in the patch baseline aren't installed. These patches might be missing, have
   failed installation, were rejected, or were installed but awaiting a required managed node
   reboot. The status of these managed nodes is <code>NON_COMPLIANT</code>.</p>")
  @as("CriticalNonCompliantCount")
  criticalNonCompliantCount: option<patchCriticalNonCompliantCount>,
  @ocaml.doc("<p>Indicates the reboot option specified in the patch baseline.</p>
         <note>
            <p>Reboot options apply to <code>Install</code> operations only. Reboots aren't attempted for
    Patch Manager <code>Scan</code> operations.</p>
         </note>
         <ul>
            <li>
               <p>
                  <code>RebootIfNeeded</code>: Patch Manager tries to reboot the managed node if it
     installed any patches, or if any patches are detected with a status of
      <code>InstalledPendingReboot</code>.</p>
            </li>
            <li>
               <p>
                  <code>NoReboot</code>: Patch Manager attempts to install missing packages without trying
     to reboot the system. Patches installed with this option are assigned a status of
      <code>InstalledPendingReboot</code>. These patches might not be in effect until a reboot is
     performed.</p>
            </li>
         </ul>")
  @as("RebootOption")
  rebootOption: option<rebootOption>,
  @ocaml.doc("<p>The time of the last attempt to patch the managed node with <code>NoReboot</code> specified
   as the reboot option.</p>")
  @as("LastNoRebootInstallOperationTime")
  lastNoRebootInstallOperationTime: option<dateTime>,
  @ocaml.doc("<p>The type of patching operation that was performed: or </p>
         <ul>
            <li>
               <p>
                  <code>SCAN</code> assesses the patch compliance state.</p>
            </li>
            <li>
               <p>
                  <code>INSTALL</code> installs missing patches.</p>
            </li>
         </ul>")
  @as("Operation")
  operation: patchOperationType,
  @ocaml.doc("<p>The time the most recent patching operation completed on the managed node.</p>")
  @as("OperationEndTime")
  operationEndTime: dateTime,
  @ocaml.doc("<p>The time the most recent patching operation was started on the managed node.</p>")
  @as("OperationStartTime")
  operationStartTime: dateTime,
  @ocaml.doc("<p>The number of patches from the patch baseline that aren't applicable for the managed node
   and therefore aren't installed on the node. This number may be truncated if the list of patch
   names is very large. The number of patches beyond this limit are reported in
    <code>UnreportedNotApplicableCount</code>.</p>")
  @as("NotApplicableCount")
  notApplicableCount: option<patchNotApplicableCount>,
  @ocaml.doc("<p>The number of patches beyond the supported limit of <code>NotApplicableCount</code> that
   aren't reported by name to Inventory. Inventory is a capability of Amazon Web Services Systems Manager.</p>")
  @as("UnreportedNotApplicableCount")
  unreportedNotApplicableCount: option<patchUnreportedNotApplicableCount>,
  @ocaml.doc("<p>The number of patches from the patch baseline that were attempted to be installed during the
   last patching operation, but failed to install.</p>")
  @as("FailedCount")
  failedCount: option<patchFailedCount>,
  @ocaml.doc("<p>The number of patches from the patch baseline that are applicable for the managed node but
   aren't currently installed.</p>")
  @as("MissingCount")
  missingCount: option<patchMissingCount>,
  @ocaml.doc("<p>The number of patches installed on a managed node that are specified in a
    <code>RejectedPatches</code> list. Patches with a status of <code>InstalledRejected</code> were
   typically installed before they were added to a <code>RejectedPatches</code> list.</p>
         <note>
            <p>If <code>ALLOW_AS_DEPENDENCY</code> is the specified option for
     <code>RejectedPatchesAction</code>, the value of <code>InstalledRejectedCount</code> will
    always be <code>0</code> (zero).</p>
         </note>")
  @as("InstalledRejectedCount")
  installedRejectedCount: option<patchInstalledRejectedCount>,
  @ocaml.doc("<p>The number of patches installed by Patch Manager since the last time the managed node was
   rebooted.</p>")
  @as("InstalledPendingRebootCount")
  installedPendingRebootCount: option<patchInstalledPendingRebootCount>,
  @ocaml.doc("<p>The number of patches not specified in the patch baseline that are installed on the managed
   node.</p>")
  @as("InstalledOtherCount")
  installedOtherCount: option<patchInstalledOtherCount>,
  @ocaml.doc(
    "<p>The number of patches from the patch baseline that are installed on the managed node.</p>"
  )
  @as("InstalledCount")
  installedCount: option<patchInstalledCount>,
  @ocaml.doc("<p>Placeholder information. This field will always be empty in the current release of the
   service.</p>")
  @as("OwnerInformation")
  ownerInformation: option<ownerInformation>,
  @ocaml.doc("<p>An https URL or an Amazon Simple Storage Service (Amazon S3) path-style URL to a list of
   patches to be installed. This patch installation list, which you maintain in an S3 bucket in YAML
   format and specify in the SSM document <code>AWS-RunPatchBaseline</code>, overrides the patches
   specified by the default patch baseline.</p>
         <p>For more information about the <code>InstallOverrideList</code> parameter, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-about-aws-runpatchbaseline.html\">About the
     <code>AWS-RunPatchBaseline</code>
            </a> SSM document in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("InstallOverrideList")
  installOverrideList: option<installOverrideList>,
  @ocaml.doc("<p>The ID of the patch baseline snapshot used during the patching operation when this
   compliance data was collected.</p>")
  @as("SnapshotId")
  snapshotId: option<snapshotId>,
  @ocaml.doc("<p>The ID of the patch baseline used to patch the managed node.</p>")
  @as("BaselineId")
  baselineId: baselineId,
  @ocaml.doc("<p>The name of the patch group the managed node belongs to.</p>") @as("PatchGroup")
  patchGroup: patchGroup,
  @ocaml.doc("<p>The ID of the managed node the high-level patch compliance information was collected
   for.</p>")
  @as("InstanceId")
  instanceId: instanceId,
}
type instanceInformationFilterValueSet = array<instanceInformationFilterValue>
type instanceIdList = array<instanceId>
type instanceAssociationStatusAggregatedCount = Js.Dict.t<instanceCount>
@ocaml.doc("<p>One or more association documents on the managed node. </p>")
type instanceAssociation = {
  @ocaml.doc("<p>Version information for the association on the managed node.</p>")
  @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The content of the association document for the managed node(s).</p>")
  @as("Content")
  content: option<documentContent>,
  @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<associationId>,
}
@ocaml.doc("<p>Version information about the document.</p>")
type documentVersionInfo = {
  @ocaml.doc(
    "<p>The current status of the approval review for the latest version of the document.</p>"
  )
  @as("ReviewStatus")
  reviewStatus: option<reviewStatus>,
  @ocaml.doc("<p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
   \"The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct.\"</p>")
  @as("StatusInformation")
  statusInformation: option<documentStatusInformation>,
  @ocaml.doc("<p>The status of the SSM document, such as <code>Creating</code>, <code>Active</code>,
    <code>Failed</code>, and <code>Deleting</code>.</p>")
  @as("Status")
  status: option<documentStatus>,
  @ocaml.doc("<p>The document format, either JSON or YAML.</p>") @as("DocumentFormat")
  documentFormat: option<documentFormat>,
  @ocaml.doc("<p>An identifier for the default version of the document.</p>")
  @as("IsDefaultVersion")
  isDefaultVersion: option<boolean_>,
  @ocaml.doc("<p>The date the document was created.</p>") @as("CreatedDate")
  createdDate: option<dateTime>,
  @ocaml.doc("<p>The version of the artifact associated with the document. For example, \"Release 12, Update
   6\". This value is unique across all versions of a document, and can't be changed.</p>")
  @as("VersionName")
  versionName: option<documentVersionName>,
  @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The friendly name of the SSM document. This value can differ for each version of the
   document. If you want to update this value, see <a>UpdateDocument</a>.</p>")
  @as("DisplayName")
  displayName: option<documentDisplayName>,
  @ocaml.doc("<p>The document name.</p>") @as("Name") name: option<documentName>,
}
@ocaml.doc("<p>Information about comments added to a document review request.</p>")
type documentReviewCommentSource = {
  @ocaml.doc("<p>The content of a comment entered by a user who requests a review of a new document version,
   or who reviews the new version.</p>")
  @as("Content")
  content: option<documentReviewComment>,
  @ocaml.doc("<p>The type of information added to a review request. Currently, only the value
    <code>Comment</code> is supported.</p>")
  @as("Type")
  type_: option<documentReviewCommentType>,
}
@ocaml.doc("<p>An SSM document required by the current document.</p>")
type documentRequires = {
  @ocaml.doc("<p>The document version required by the current document.</p>") @as("Version")
  version: option<documentVersion>,
  @ocaml.doc(
    "<p>The name of the required SSM document. The name can be an Amazon Resource Name (ARN).</p>"
  )
  @as("Name")
  name: documentARN,
}
@ocaml.doc("<p>Parameters specified in a System Manager document that run on the server when the command is
   run. </p>")
type documentParameter = {
  @ocaml.doc("<p>If specified, the default values for the parameters. Parameters without a default value are
   required. Parameters with a default value are optional.</p>")
  @as("DefaultValue")
  defaultValue: option<documentParameterDefaultValue>,
  @ocaml.doc("<p>A description of what the parameter does, how to use it, the default value, and whether or
   not the parameter is optional.</p>")
  @as("Description")
  description: option<documentParameterDescrption>,
  @ocaml.doc("<p>The type of parameter. The type can be either String or StringList.</p>")
  @as("Type")
  type_: option<documentParameterType>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("Name") name: option<documentParameterName>,
}
type documentKeyValuesFilterValues = array<documentKeyValuesFilterValue>
@ocaml.doc("<p>This data type is deprecated. Instead, use <a>DocumentKeyValuesFilter</a>.</p>")
type documentFilter = {
  @ocaml.doc("<p>The value of the filter.</p>") value: documentFilterValue,
  @ocaml.doc("<p>The name of the filter.</p>") key: documentFilterKey,
}
@ocaml.doc("<p>A default version of a document.</p>")
type documentDefaultVersionDescription = {
  @ocaml.doc("<p>The default version of the artifact associated with the document.</p>")
  @as("DefaultVersionName")
  defaultVersionName: option<documentVersionName>,
  @ocaml.doc("<p>The default version of the document.</p>") @as("DefaultVersion")
  defaultVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the document.</p>") @as("Name") name: option<documentName>,
}
type complianceStringFilterValueList = array<complianceFilterValue>
type complianceResourceTypeList = array<complianceResourceType>
type complianceResourceIdList = array<complianceResourceId>
type complianceItemDetails = Js.Dict.t<attributeValue>
@ocaml.doc("<p>A summary of the call execution that includes an execution ID, the type of execution (for
   example, <code>Command</code>), and the date/time of the execution using a datetime object that
   is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>")
type complianceExecutionSummary = {
  @ocaml.doc(
    "<p>The type of execution. For example, <code>Command</code> is a valid execution type.</p>"
  )
  @as("ExecutionType")
  executionType: option<complianceExecutionType>,
  @ocaml.doc("<p>An ID created by the system when <code>PutComplianceItems</code> was called. For example,
    <code>CommandID</code> is a valid execution ID. You can use this ID in subsequent calls.</p>")
  @as("ExecutionId")
  executionId: option<complianceExecutionId>,
  @ocaml.doc("<p>The time the execution ran as a datetime object that is saved in the following format:
   yyyy-MM-dd'T'HH:mm:ss'Z'.</p>")
  @as("ExecutionTime")
  executionTime: dateTime,
}
@ocaml.doc("<p>Describes plugin details.</p>")
type commandPlugin = {
  @ocaml.doc("<p>The S3 directory path inside the bucket where the responses to the command executions should
   be stored. This was requested when issuing the command. For example, in the following
   response:</p>
         <p>
            <code>doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript</code>
         </p>
         <p>
            <code>doc-example-bucket</code> is the name of the S3 bucket;</p>
         <p>
            <code>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix</code> is the name of the S3 prefix;</p>
         <p>
            <code>i-02573cafcfEXAMPLE</code> is the managed node ID;</p>
         <p>
            <code>awsrunShellScript</code> is the name of the plugin.</p>")
  @as("OutputS3KeyPrefix")
  outputS3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The S3 bucket where the responses to the command executions should be stored. This was
   requested when issuing the command. For example, in the following response:</p>
         <p>
            <code>doc-example-bucket/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-02573cafcfEXAMPLE/awsrunShellScript</code>
         </p>
         <p>
            <code>doc-example-bucket</code> is the name of the S3 bucket;</p>
         <p>
            <code>ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix</code> is the name of the S3 prefix;</p>
         <p>
            <code>i-02573cafcfEXAMPLE</code> is the managed node ID;</p>
         <p>
            <code>awsrunShellScript</code> is the name of the plugin.</p>")
  @as("OutputS3BucketName")
  outputS3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead,
   Amazon Web Services Systems Manager automatically determines the S3 bucket region.</p>")
  @as("OutputS3Region")
  outputS3Region: option<s3Region>,
  @ocaml.doc("<p>The URL for the complete text written by the plugin to stderr. If execution isn't yet
   complete, then this string is empty.</p>")
  @as("StandardErrorUrl")
  standardErrorUrl: option<url>,
  @ocaml.doc("<p>The URL for the complete text written by the plugin to stdout in Amazon S3. If the
   S3 bucket for the command wasn't specified, then this string is empty.</p>")
  @as("StandardOutputUrl")
  standardOutputUrl: option<url>,
  @ocaml.doc("<p>Output of the plugin execution.</p>") @as("Output")
  output: option<commandPluginOutput>,
  @ocaml.doc("<p>The time the plugin stopped running. Could stop prematurely if, for example, a cancel
   command was sent. </p>")
  @as("ResponseFinishDateTime")
  responseFinishDateTime: option<dateTime>,
  @ocaml.doc("<p>The time the plugin started running. </p>") @as("ResponseStartDateTime")
  responseStartDateTime: option<dateTime>,
  @ocaml.doc("<p>A numeric response code generated after running the plugin. </p>")
  @as("ResponseCode")
  responseCode: option<responseCode>,
  @ocaml.doc("<p>A detailed status of the plugin execution. <code>StatusDetails</code> includes more
   information than Status because it includes states resulting from error and concurrency control
   parameters. StatusDetails can show different results than Status. For more information about
   these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command
    statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
   following values:</p>
         <ul>
            <li>
               <p>Pending: The command hasn't been sent to the managed node.</p>
            </li>
            <li>
               <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
     state.</p>
            </li>
            <li>
               <p>Success: The execution of the command or plugin was successfully completed. This is a
     terminal state.</p>
            </li>
            <li>
               <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
     timeout expired. Delivery timeouts don't count against the parent command's
      <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
     Success or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Execution Timed Out: Command execution started on the managed node, but the execution
     wasn't complete before the execution timeout expired. Execution timeouts count against the
      <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Failed: The command wasn't successful on the managed node. For a plugin, this indicates
     that the result code wasn't zero. For a command invocation, this indicates that the result code
     for one or more plugins wasn't zero. Invocation failures count against the MaxErrors limit of
     the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Cancelled: The command was terminated before it was completed. This is a terminal
     state.</p>
            </li>
            <li>
               <p>Undeliverable: The command can't be delivered to the managed node. The managed node might
     not exist, or it might not be responding. Undeliverable invocations don't count against the
     parent command's MaxErrors limit, and they don't contribute to whether the parent command
     status is Success or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command
     invocations were canceled by the system. This is a terminal state.</p>
            </li>
         </ul>")
  @as("StatusDetails")
  statusDetails: option<statusDetails>,
  @ocaml.doc("<p>The status of this plugin. You can run a document with multiple plugins.</p>")
  @as("Status")
  status: option<commandPluginStatus>,
  @ocaml.doc("<p>The name of the plugin. Must be one of the following: <code>aws:updateAgent</code>,
    <code>aws:domainjoin</code>, <code>aws:applications</code>,
   <code>aws:runPowerShellScript</code>, <code>aws:psmodule</code>, <code>aws:cloudWatch</code>,
    <code>aws:runShellScript</code>, or <code>aws:updateSSMAgent</code>. </p>")
  @as("Name")
  name: option<commandPluginName>,
}
@ocaml.doc("<p>Describes a command filter.</p>
         <note>
            <p>A managed node ID can't be specified when a command status is <code>Pending</code> because
    the command hasn't run on the node yet.</p>
         </note>")
type commandFilter = {
  @ocaml.doc("<p>The filter value. Valid values for each filter key are as follows:</p>
         <ul>
            <li>
               <p>
                  <b>InvokedAfter</b>: Specify a timestamp to limit your results.
     For example, specify <code>2021-07-07T00:00:00Z</code> to see a list of command executions
     occurring July 7, 2021, and later.</p>
            </li>
            <li>
               <p>
                  <b>InvokedBefore</b>: Specify a timestamp to limit your results.
     For example, specify <code>2021-07-07T00:00:00Z</code> to see a list of command executions from
     before July 7, 2021.</p>
            </li>
            <li>
               <p>
                  <b>Status</b>: Specify a valid command status to see a list of
     all command executions with that status. The status choices depend on the API you call.</p>
               <p>The status values you can specify for <code>ListCommands</code> are:</p>
               <ul>
                  <li>
                     <p>
                        <code>Pending</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>InProgress</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Success</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Cancelled</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Failed</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>TimedOut</code> (this includes both Delivery and Execution time outs) </p>
                  </li>
                  <li>
                     <p>
                        <code>AccessDenied</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>DeliveryTimedOut</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>ExecutionTimedOut</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Incomplete</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>NoInstancesInTag</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>LimitExceeded</code>
                     </p>
                  </li>
               </ul>
               <p>The status values you can specify for <code>ListCommandInvocations</code> are:</p>
               <ul>
                  <li>
                     <p>
                        <code>Pending</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>InProgress</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Delayed</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Success</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Cancelled</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Failed</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>TimedOut</code> (this includes both Delivery and Execution time outs) </p>
                  </li>
                  <li>
                     <p>
                        <code>AccessDenied</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>DeliveryTimedOut</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>ExecutionTimedOut</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Undeliverable</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>InvalidPlatform</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Terminated</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <b>DocumentName</b>: Specify name of the Amazon Web Services Systems Manager document (SSM
     document) for which you want to see command execution results. For example, specify
      <code>AWS-RunPatchBaseline</code> to see command executions that used this SSM document to
     perform security patching operations on managed nodes. </p>
            </li>
            <li>
               <p>
                  <b>ExecutionStage</b>: Specify one of the following values
      (<code>ListCommands</code> operations only):</p>
               <ul>
                  <li>
                     <p>
                        <code>Executing</code>: Returns a list of command executions that are currently still
       running.</p>
                  </li>
                  <li>
                     <p>
                        <code>Complete</code>: Returns a list of command executions that have already completed.
      </p>
                  </li>
               </ul>
            </li>
         </ul>")
  value: commandFilterValue,
  @ocaml.doc("<p>The name of the filter.</p>
         <note>
            <p>The <code>ExecutionStage</code> filter can't be used with the
     <code>ListCommandInvocations</code> operation, only with <code>ListCommands</code>.</p>
         </note>")
  key: commandFilterKey,
}
@ocaml.doc("<p>Configuration options for sending command output to Amazon CloudWatch Logs.</p>")
type cloudWatchOutputConfig = {
  @ocaml.doc("<p>Enables Systems Manager to send command output to CloudWatch Logs.</p>")
  @as("CloudWatchOutputEnabled")
  cloudWatchOutputEnabled: option<cloudWatchOutputEnabled>,
  @ocaml.doc("<p>The name of the CloudWatch Logs log group where you want to send command output. If you
   don't specify a group name, Amazon Web Services Systems Manager automatically creates a log group for you. The log group
   uses the following naming format:</p>
         <p>
            <code>aws/ssm/<i>SystemsManagerDocumentName</i>
            </code>
         </p>")
  @as("CloudWatchLogGroupName")
  cloudWatchLogGroupName: option<cloudWatchLogGroupName>,
}
type categoryList = array<category>
type categoryEnumList = array<category>
type calendarNameOrARNList = array<calendarNameOrARN>
type automationParameterValueList = array<automationParameterValue>
type automationExecutionFilterValueList = array<automationExecutionFilterValue>
type attachmentsSourceValues = array<attachmentsSourceValue>
@ocaml.doc("<p>An attribute of an attachment, such as the attachment name.</p>")
type attachmentInformation = {
  @ocaml.doc("<p>The name of the attachment.</p>") @as("Name") name: option<attachmentName>,
}
@ocaml.doc("<p>A structure that includes attributes that describe a document attachment.</p>")
type attachmentContent = {
  @ocaml.doc("<p>The URL location of the attachment content.</p>") @as("Url")
  url: option<attachmentUrl>,
  @ocaml.doc("<p>The hash algorithm used to calculate the hash value.</p>") @as("HashType")
  hashType: option<attachmentHashType>,
  @ocaml.doc("<p>The cryptographic hash value of the document content.</p>") @as("Hash")
  hash: option<attachmentHash>,
  @ocaml.doc("<p>The size of an attachment in bytes.</p>") @as("Size") size: option<contentLength>,
  @ocaml.doc("<p>The name of an attachment.</p>") @as("Name") name: option<attachmentName>,
}
type associationStatusAggregatedCount = Js.Dict.t<instanceCount>
@ocaml.doc("<p>Describes an association status.</p>")
type associationStatus = {
  @ocaml.doc("<p>A user-defined string.</p>") @as("AdditionalInfo")
  additionalInfo: option<statusAdditionalInfo>,
  @ocaml.doc("<p>The reason for the status.</p>") @as("Message") message: statusMessage,
  @ocaml.doc("<p>The status.</p>") @as("Name") name: associationStatusName,
  @ocaml.doc("<p>The date when the status changed.</p>") @as("Date") date: dateTime,
}
type associationIdList = array<associationId>
@ocaml.doc("<p>Describes a filter.</p>")
type associationFilter = {
  @ocaml.doc("<p>The filter value.</p>") value: associationFilterValue,
  @ocaml.doc("<p>The name of the filter.</p>
         <note>
            <p>
               <code>InstanceId</code> has been deprecated.</p>
         </note>")
  key: associationFilterKey,
}
@ocaml.doc("<p>Filters for the association execution.</p>")
type associationExecutionTargetsFilter = {
  @ocaml.doc("<p>The value specified for the key.</p>") @as("Value")
  value: associationExecutionTargetsFilterValue,
  @ocaml.doc("<p>The key value used in the request.</p>") @as("Key")
  key: associationExecutionTargetsFilterKey,
}
@ocaml.doc("<p>Filters used in the request.</p>")
type associationExecutionFilter = {
  @ocaml.doc("<p>The filter type specified in the request.</p>") @as("Type")
  type_: associationFilterOperatorType,
  @ocaml.doc("<p>The value specified for the key.</p>") @as("Value")
  value: associationExecutionFilterValue,
  @ocaml.doc("<p>The key value used in the request.</p>") @as("Key")
  key: associationExecutionFilterKey,
}
@ocaml.doc("<p>Includes information about the specified association.</p>")
type associationExecution = {
  @ocaml.doc(
    "<p>An aggregate status of the resources in the execution based on the status type.</p>"
  )
  @as("ResourceCountByStatus")
  resourceCountByStatus: option<resourceCountByStatus>,
  @ocaml.doc("<p>The date of the last execution.</p>") @as("LastExecutionDate")
  lastExecutionDate: option<dateTime>,
  @ocaml.doc("<p>The time the execution started.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>Detailed status information about the execution.</p>") @as("DetailedStatus")
  detailedStatus: option<statusName>,
  @ocaml.doc("<p>The status of the association execution.</p>") @as("Status")
  status: option<statusName>,
  @ocaml.doc("<p>The execution ID for the association.</p>") @as("ExecutionId")
  executionId: option<associationExecutionId>,
  @ocaml.doc("<p>The association version.</p>") @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<associationId>,
}
type accounts = array<account>
@ocaml.doc("<p>Information includes the Amazon Web Services account ID where the current document is shared and the
   version shared with that account.</p>")
type accountSharingInfo = {
  @ocaml.doc("<p>The version of the current document shared with the account.</p>")
  @as("SharedDocumentVersion")
  sharedDocumentVersion: option<sharedDocumentVersion>,
  @ocaml.doc("<p>The Amazon Web Services account ID where the current document is shared.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
type accountIdList = array<accountId>
type targetMap = Js.Dict.t<targetMapValueList>
@ocaml.doc("<p>The combination of Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Automation
   execution.</p>")
type targetLocation = {
  @ocaml.doc("<p>The Automation execution role used by the currently running Automation. If not specified,
   the default value is <code>AWS-SystemsManager-AutomationExecutionRole</code>.</p>")
  @as("ExecutionRoleName")
  executionRoleName: option<executionRoleName>,
  @ocaml.doc("<p>The maximum number of errors allowed before the system stops queueing additional Automation
   executions for the currently running Automation.</p>")
  @as("TargetLocationMaxErrors")
  targetLocationMaxErrors: option<maxErrors>,
  @ocaml.doc("<p>The maximum number of Amazon Web Services Regions and Amazon Web Services accounts allowed to run the Automation
   concurrently.</p>")
  @as("TargetLocationMaxConcurrency")
  targetLocationMaxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The Amazon Web Services Regions targeted by the current Automation execution.</p>")
  @as("Regions")
  regions: option<regions>,
  @ocaml.doc(
    "<p>The Amazon Web Services accounts targeted by the current Automation execution.</p>"
  )
  @as("Accounts")
  accounts: option<accounts>,
}
@ocaml.doc("<p>An array of search criteria that targets managed nodes using a key-value pair that you
   specify.</p>
         <note>
            <p> One or more targets must be specified for maintenance window Run Command-type tasks.
    Depending on the task, targets are optional for other maintenance window task types (Automation,
     Lambda, and Step Functions). For more information about running tasks
    that don't specify targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">Registering
     maintenance window tasks without targets</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         </note>
         <p>Supported formats include the following.</p>
         <ul>
            <li>
               <p>
                  <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
               </p>
            </li>
            <li>
               <p>
                  <b>Run Command and Maintenance window targets only</b>:
      <code>Key=resource-groups:Name,Values=<resource-group-name></code>
               </p>
            </li>
            <li>
               <p>
                  <b>Maintenance window targets only</b>:
      <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
               </p>
            </li>
            <li>
               <p>
                  <b>Automation targets only</b>:
      <code>Key=ResourceGroup;Values=<resource-group-name></code>
               </p>
            </li>
         </ul>
         <p>For example:</p>
         <ul>
            <li>
               <p>
                  <code>Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=tag-key,Values=Name,Instance-Type,CostCenter</code>
               </p>
            </li>
            <li>
               <p>
                  <b>Run Command and Maintenance window targets only</b>:
      <code>Key=resource-groups:Name,Values=ProductionResourceGroup</code>
               </p>
               <p>This example demonstrates how to target all resources in the resource group <b>ProductionResourceGroup</b> in your maintenance window.</p>
            </li>
            <li>
               <p>
                  <b>Maintenance window targets only</b>:
      <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
               </p>
               <p>This example demonstrates how to target only Amazon Elastic Compute Cloud (Amazon EC2)
     instances and VPCs in your maintenance window.</p>
            </li>
            <li>
               <p>
                  <b>Automation targets only</b>:
      <code>Key=ResourceGroup,Values=MyResourceGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <b>State Manager association targets only</b>:
      <code>Key=InstanceIds,Values=*</code>
               </p>
               <p>This example demonstrates how to target all managed instances in the Amazon Web Services Region where
     the association was created.</p>
            </li>
         </ul>
         <p>For more information about how to send commands that target managed nodes using
    <code>Key,Value</code> parameters, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting\">Targeting multiple instances</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
type target = {
  @ocaml.doc("<p>User-defined criteria that maps to <code>Key</code>. For example, if you specified
    <code>tag:ServerRole</code>, you could specify <code>value:WebServer</code> to run a command on
   instances that include EC2 tags of <code>ServerRole,WebServer</code>. </p>
         <p>Depending on the type of target, the maximum number of values for a key might be lower than
   the global maximum of 50.</p>")
  @as("Values")
  values: option<targetValues>,
  @ocaml.doc("<p>User-defined criteria for sending commands that target managed nodes that meet the
   criteria.</p>")
  @as("Key")
  key: option<targetKey>,
}
type tagList_ = array<tag>
@ocaml.doc(
  "<p>A filter to limit the amount of step execution information returned by the call.</p>"
)
type stepExecutionFilter = {
  @ocaml.doc("<p>The values of the filter key.</p>") @as("Values")
  values: stepExecutionFilterValueList,
  @ocaml.doc("<p>One or more keys to limit the results. Valid filter keys include the following: StepName,
   Action, StepExecutionId, StepExecutionStatus, StartTimeBefore, StartTimeAfter.</p>")
  @as("Key")
  key: stepExecutionFilterKey,
}
type sessionManagerParameters = Js.Dict.t<sessionManagerParameterValueList>
type sessionFilterList = array<sessionFilter>
@ocaml.doc("<p>Information about a Session Manager connection to a managed node.</p>")
type session = {
  @ocaml.doc("<p>The maximum duration of a session before it terminates.</p>")
  @as("MaxSessionDuration")
  maxSessionDuration: option<maxSessionDuration>,
  @ocaml.doc("<p>Reserved for future use.</p>") @as("OutputUrl")
  outputUrl: option<sessionManagerOutputUrl>,
  @ocaml.doc("<p>Reserved for future use.</p>") @as("Details") details: option<sessionDetails>,
  @ocaml.doc("<p>The reason for connecting to the instance.</p>") @as("Reason")
  reason: option<sessionReason>,
  @ocaml.doc("<p>The ID of the Amazon Web Services user account that started the session.</p>")
  @as("Owner")
  owner: option<sessionOwner>,
  @ocaml.doc("<p>The name of the Session Manager SSM document used to define the parameters and plugin settings for the
   session. For example, <code>SSM-SessionManagerRunShell</code>.</p>")
  @as("DocumentName")
  documentName: option<documentName>,
  @ocaml.doc(
    "<p>The date and time, in ISO-8601 Extended format, when the session was terminated.</p>"
  )
  @as("EndDate")
  endDate: option<dateTime>,
  @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, when the session began.</p>")
  @as("StartDate")
  startDate: option<dateTime>,
  @ocaml.doc("<p>The status of the session. For example, \"Connected\" or \"Terminated\".</p>")
  @as("Status")
  status: option<sessionStatus>,
  @ocaml.doc("<p>The managed node that the Session Manager session connected to.</p>") @as("Target")
  target: option<sessionTarget>,
  @ocaml.doc("<p>The ID of the session.</p>") @as("SessionId") sessionId: option<sessionId>,
}
type scheduledWindowExecutionList = array<scheduledWindowExecution>
type reviewInformationList = array<reviewInformation>
type resultAttributeList = array<resultAttribute>
@ocaml.doc("<p>Information about the target S3 bucket for the resource data sync.</p>")
type resourceDataSyncS3Destination = {
  @ocaml.doc(
    "<p>Enables destination data sharing. By default, this field is <code>null</code>.</p>"
  )
  @as("DestinationDataSharing")
  destinationDataSharing: option<resourceDataSyncDestinationDataSharing>,
  @ocaml.doc("<p>The ARN of an encryption key for a destination in Amazon S3. Must belong to the same
   Region as the destination S3 bucket.</p>")
  @as("AWSKMSKeyARN")
  awskmskeyARN: option<resourceDataSyncAWSKMSKeyARN>,
  @ocaml.doc(
    "<p>The Amazon Web Services Region with the S3 bucket targeted by the resource data sync.</p>"
  )
  @as("Region")
  region: resourceDataSyncS3Region,
  @ocaml.doc(
    "<p>A supported sync format. The following format is currently supported: JsonSerDe</p>"
  )
  @as("SyncFormat")
  syncFormat: resourceDataSyncS3Format,
  @ocaml.doc("<p>An Amazon S3 prefix for the bucket.</p>") @as("Prefix")
  prefix: option<resourceDataSyncS3Prefix>,
  @ocaml.doc("<p>The name of the S3 bucket where the aggregated data is stored.</p>")
  @as("BucketName")
  bucketName: resourceDataSyncS3BucketName,
}
type resourceDataSyncOrganizationalUnitList = array<resourceDataSyncOrganizationalUnit>
@ocaml.doc("<p>Information about targets that resolved during the Automation execution.</p>")
type resolvedTargets = {
  @ocaml.doc("<p>A boolean value indicating whether the resolved target list is truncated.</p>")
  @as("Truncated")
  truncated: option<boolean_>,
  @ocaml.doc("<p>A list of parameter values sent to targets that resolved during the Automation
   execution.</p>")
  @as("ParameterValues")
  parameterValues: option<targetParameterList>,
}
type relatedOpsItems = array<relatedOpsItem>
type registrationMetadataList = array<registrationMetadataItem>
@ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repository. Applies to Linux managed nodes only.</p>")
type patchSource = {
  @ocaml.doc("<p>The value of the yum repo configuration. For example:</p>
         <p>
            <code>[main]</code>
         </p>
         <p>
            <code>name=MyCustomRepository</code>
         </p>
         <p>
            <code>baseurl=https://my-custom-repository</code>
         </p>
         <p>
            <code>enabled=1</code>
         </p>
         <note>
            <p>For information about other options available for your yum repository configuration, see
     <a href=\"https://man7.org/linux/man-pages/man5/dnf.conf.5.html\">dnf.conf(5)</a>.</p>
         </note>")
  @as("Configuration")
  configuration: patchSourceConfiguration,
  @ocaml.doc("<p>The specific operating system versions a patch repository applies to, such as \"Ubuntu16.04\",
   \"AmazonLinux2016.09\", \"RedhatEnterpriseLinux7.2\" or \"Suse12.7\". For lists of supported product
   values, see <a>PatchFilter</a>.</p>")
  @as("Products")
  products: patchSourceProductList,
  @ocaml.doc("<p>The name specified to identify the patch source.</p>") @as("Name")
  name: patchSourceName,
}
type patchPropertiesList = array<patchPropertyEntry>
@ocaml.doc("<p>Defines a filter used in Patch Manager APIs. Supported filter keys depend on the API
   operation that includes the filter. Patch Manager API operations that use
    <code>PatchOrchestratorFilter</code> include the following:</p>
         <ul>
            <li>
               <p>
                  <a>DescribeAvailablePatches</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeInstancePatches</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribePatchBaselines</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribePatchGroups</a>
               </p>
            </li>
         </ul>")
type patchOrchestratorFilter = {
  @ocaml.doc("<p>The value for the filter.</p>") @as("Values")
  values: option<patchOrchestratorFilterValues>,
  @ocaml.doc("<p>The key for the filter.</p>") @as("Key") key: option<patchOrchestratorFilterKey>,
}
@ocaml.doc("<p>The mapping between a patch group and the patch baseline the patch group is registered
   with.</p>")
type patchGroupPatchBaselineMapping = {
  @ocaml.doc("<p>The patch baseline the patch group is registered with.</p>")
  @as("BaselineIdentity")
  baselineIdentity: option<patchBaselineIdentity>,
  @ocaml.doc("<p>The name of the patch group registered with the patch baseline.</p>")
  @as("PatchGroup")
  patchGroup: option<patchGroup>,
}
@ocaml.doc("<p> Defines which patches should be included in a patch baseline.</p>
         <p>A patch filter consists of a key and a set of values. The filter key is a patch property.
   For example, the available filter keys for <code>WINDOWS</code> are <code>PATCH_SET</code>,
    <code>PRODUCT</code>, <code>PRODUCT_FAMILY</code>, <code>CLASSIFICATION</code>, and
    <code>MSRC_SEVERITY</code>.</p>
         <p>The filter values define a matching criterion for the patch property indicated by the key.
   For example, if the filter key is <code>PRODUCT</code> and the filter values are <code>[\"Office
    2013\", \"Office 2016\"]</code>, then the filter accepts all patches where product name is either
   \"Office 2013\" or \"Office 2016\". The filter values can be exact values for the patch property
   given as a key, or a wildcard (*), which matches all values.</p>
         <p>You can view lists of valid values for the patch properties by running the
    <code>DescribePatchProperties</code> command. For information about which patch properties can
   be used with each major operating system, see <a>DescribePatchProperties</a>.</p>")
type patchFilter = {
  @ocaml.doc("<p>The value for the filter key.</p>
         <p>Run the <a>DescribePatchProperties</a> command to view lists of valid values for
   each key based on operating system type.</p>")
  @as("Values")
  values: patchFilterValueList,
  @ocaml.doc("<p>The key for the filter.</p>
         <p>Run the <a>DescribePatchProperties</a> command to view lists of valid keys for
   each operating system type.</p>")
  @as("Key")
  key: patchFilterKey,
}
type patchComplianceDataList = array<patchComplianceData>
type patchBaselineIdentityList = array<patchBaselineIdentity>
@ocaml.doc("<p>Represents metadata about a patch.</p>")
type patch = {
  @ocaml.doc("<p>The source patch repository for the operating system and version, such as
    <code>trusty-security</code> for Ubuntu Server 14.04 LTE and <code>focal-security</code> for
   Ubuntu Server 20.04 LTE. Applies to Linux-based managed nodes only.</p>")
  @as("Repository")
  repository: option<patchRepository>,
  @ocaml.doc("<p>The severity level of the patch. For example, <code>CRITICAL</code> or
   <code>MODERATE</code>.</p>")
  @as("Severity")
  severity: option<patchSeverity>,
  @ocaml.doc("<p>The architecture of the patch. For example, in
    <code>example-pkg-0.710.10-2.7.abcd.x86_64</code>, the architecture is indicated by
    <code>x86_64</code>. Applies to Linux-based managed nodes only.</p>")
  @as("Arch")
  arch: option<patchArch>,
  @ocaml.doc("<p>The particular release of a patch. For example, in
    <code>pkg-example-EE-20180914-2.2.amzn1.noarch</code>, the release is <code>2.amaz1</code>.
   Applies to Linux-based managed nodes only.</p>")
  @as("Release")
  release: option<patchRelease>,
  @ocaml.doc("<p>The version number of the patch. For example, in
    <code>example-pkg-1.710.10-2.7.abcd.x86_64</code>, the version number is indicated by
    <code>-1</code>. Applies to Linux-based managed nodes only.</p>")
  @as("Version")
  version: option<patchVersion>,
  @ocaml.doc("<p>The epoch of the patch. For example in
   <code>pkg-example-EE-20180914-2.2.amzn1.noarch</code>, the epoch value is
   <code>20180914-2</code>. Applies to Linux-based managed nodes only.</p>")
  @as("Epoch")
  epoch: option<patchEpoch>,
  @ocaml.doc("<p>The name of the patch. Applies to Linux-based managed nodes only.</p>") @as("Name")
  name: option<patchName>,
  @ocaml.doc("<p>The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example,
    <code>CVE-2011-3192</code>. Applies to Linux-based managed nodes only.</p>")
  @as("CVEIds")
  cveids: option<patchCVEIdList>,
  @ocaml.doc("<p>The Bugzilla ID of the patch. For example, <code>1600646</code>. Applies to Linux-based
   managed nodes only.</p>")
  @as("BugzillaIds")
  bugzillaIds: option<patchBugzillaIdList>,
  @ocaml.doc("<p>The Advisory ID of the patch. For example, <code>RHSA-2020:3779</code>. Applies to
   Linux-based managed nodes only.</p>")
  @as("AdvisoryIds")
  advisoryIds: option<patchAdvisoryIdList>,
  @ocaml.doc("<p>The language of the patch if it's language-specific.</p>") @as("Language")
  language: option<patchLanguage>,
  @ocaml.doc("<p>The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to.
   For example, <code>MS14-045</code>. Applies to Windows patches only.</p>")
  @as("MsrcNumber")
  msrcNumber: option<patchMsrcNumber>,
  @ocaml.doc(
    "<p>The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.</p>"
  )
  @as("KbNumber")
  kbNumber: option<patchKbNumber>,
  @ocaml.doc("<p>The severity of the patch, such as <code>Critical</code>, <code>Important</code>, or
    <code>Moderate</code>. Applies to Windows patches only.</p>")
  @as("MsrcSeverity")
  msrcSeverity: option<patchMsrcSeverity>,
  @ocaml.doc("<p>The classification of the patch. For example, <code>SecurityUpdates</code>,
    <code>Updates</code>, or <code>CriticalUpdates</code>.</p>")
  @as("Classification")
  classification: option<patchClassification>,
  @ocaml.doc("<p>The specific product the patch is applicable for. For example,
    <code>WindowsServer2016</code> or <code>AmazonLinux2018.03</code>.</p>")
  @as("Product")
  product: option<patchProduct>,
  @ocaml.doc("<p>The product family the patch is applicable for. For example, <code>Windows</code> or
    <code>Amazon Linux 2</code>.</p>")
  @as("ProductFamily")
  productFamily: option<patchProductFamily>,
  @ocaml.doc("<p>The name of the vendor providing the patch.</p>") @as("Vendor")
  vendor: option<patchVendor>,
  @ocaml.doc("<p>The URL where more information can be obtained about the patch.</p>")
  @as("ContentUrl")
  contentUrl: option<patchContentUrl>,
  @ocaml.doc("<p>The description of the patch.</p>") @as("Description")
  description: option<patchDescription>,
  @ocaml.doc("<p>The title of the patch.</p>") @as("Title") title: option<patchTitle>,
  @ocaml.doc("<p>The date the patch was released.</p>") @as("ReleaseDate")
  releaseDate: option<dateTime>,
  @ocaml.doc("<p>The ID of the patch. Applies to Windows patches only.</p>
         <note>
            <p>This ID isn't the same as the Microsoft Knowledge Base ID.</p>
         </note>")
  @as("Id")
  id: option<patchId>,
}
@ocaml.doc("<p>This data type is deprecated. Instead, use <a>ParameterStringFilter</a>.</p>")
type parametersFilter = {
  @ocaml.doc("<p>The filter values.</p>") @as("Values") values: parametersFilterValueList,
  @ocaml.doc("<p>The name of the filter.</p>") @as("Key") key: parametersFilterKey,
}
type parameters = Js.Dict.t<parameterValueList>
@ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of results.</p>")
type parameterStringFilter = {
  @ocaml.doc("<p>The value you want to search for.</p>") @as("Values")
  values: option<parameterStringFilterValueList>,
  @ocaml.doc("<p>For all filters used with <a>DescribeParameters</a>, valid options include
    <code>Equals</code> and <code>BeginsWith</code>. The <code>Name</code> filter additionally
   supports the <code>Contains</code> option. (Exception: For filters using the key
    <code>Path</code>, valid options include <code>Recursive</code> and
   <code>OneLevel</code>.)</p>
         <p>For filters used with <a>GetParametersByPath</a>, valid options include
    <code>Equals</code> and <code>BeginsWith</code>. (Exception: For filters using
    <code>Label</code> as the Key name, the only valid option is <code>Equals</code>.)</p>")
  @as("Option")
  option_: option<parameterStringQueryOption>,
  @ocaml.doc("<p>The name of the filter.</p>
         <p>The <code>ParameterStringFilter</code> object is used by the <a>DescribeParameters</a> and <a>GetParametersByPath</a> API operations.
   However, not all of the pattern values listed for <code>Key</code> can be used with both
   operations.</p>
         <p>For <code>DescribeParameters</code>, all of the listed patterns are valid except
    <code>Label</code>.</p>
         <p>For <code>GetParametersByPath</code>, the following patterns listed for <code>Key</code>
   aren't valid: <code>tag</code>, <code>DataType</code>, <code>Name</code>, <code>Path</code>, and
    <code>Tier</code>.</p>
         <p>For examples of Amazon Web Services CLI commands demonstrating valid parameter filter constructions, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-search.html\">Searching for Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("Key")
  key: parameterStringFilterKey,
}
type parameterPolicyList = array<parameterInlinePolicy>
type parameterList = array<parameter>
type opsResultAttributeList = array<opsResultAttribute>
type opsMetadataList = array<opsMetadata>
@ocaml.doc("<p>A filter to limit the number of OpsMetadata objects displayed.</p>")
type opsMetadataFilter = {
  @ocaml.doc("<p>A filter value.</p>") @as("Values") values: opsMetadataFilterValueList,
  @ocaml.doc("<p>A filter key.</p>") @as("Key") key: opsMetadataFilterKey,
}
@ocaml.doc("<p>Describes a filter for a specific list of related-item resources. </p>")
type opsItemRelatedItemsFilter = {
  @ocaml.doc("<p>The operator used by the filter call. The only supported operator is
   <code>EQUAL</code>.</p>")
  @as("Operator")
  operator: opsItemRelatedItemsFilterOperator,
  @ocaml.doc("<p>The values for the filter.</p>") @as("Values")
  values: opsItemRelatedItemsFilterValues,
  @ocaml.doc("<p>The name of the filter key. Supported values include <code>ResourceUri</code>,
    <code>ResourceType</code>, or <code>AssociationId</code>.</p>")
  @as("Key")
  key: opsItemRelatedItemsFilterKey,
}
@ocaml.doc("<p>Summary information about related-item resources for an OpsItem.</p>")
type opsItemRelatedItemSummary = {
  @ocaml.doc("<p>The time the related-item association was last updated.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @as("LastModifiedBy") lastModifiedBy: option<opsItemIdentity>,
  @ocaml.doc("<p>The time the related-item association was created.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @as("CreatedBy") createdBy: option<opsItemIdentity>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the related-item resource.</p>")
  @as("ResourceUri")
  resourceUri: option<opsItemRelatedItemAssociationResourceUri>,
  @ocaml.doc("<p>The association type.</p>") @as("AssociationType")
  associationType: option<opsItemRelatedItemAssociationType>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<opsItemRelatedItemAssociationResourceType>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<opsItemRelatedItemAssociationId>,
  @ocaml.doc("<p>The OpsItem ID.</p>") @as("OpsItemId") opsItemId: option<opsItemId>,
}
type opsItemOperationalData = Js.Dict.t<opsItemDataValue>
type opsItemNotifications = array<opsItemNotification>
@ocaml.doc("<p>Describes an OpsItem filter.</p>")
type opsItemFilter = {
  @ocaml.doc("<p>The operator used by the filter call.</p>") @as("Operator")
  operator: opsItemFilterOperator,
  @ocaml.doc("<p>The filter value.</p>") @as("Values") values: opsItemFilterValues,
  @ocaml.doc("<p>The name of the filter.</p>") @as("Key") key: opsItemFilterKey,
}
@ocaml.doc("<p>Summary information about an OpsItem event or that associated an OpsItem with a related
   item.</p>")
type opsItemEventSummary = {
  @ocaml.doc("<p>The date and time the OpsItem event was created.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>Information about the user or resource that created the OpsItem event.</p>")
  @as("CreatedBy")
  createdBy: option<opsItemIdentity>,
  @ocaml.doc("<p>Specific information about the OpsItem event.</p>") @as("Detail")
  detail: option<string_>,
  @ocaml.doc("<p>The type of information provided as a detail.</p>") @as("DetailType")
  detailType: option<string_>,
  @ocaml.doc("<p>The source of the OpsItem event.</p>") @as("Source") source: option<string_>,
  @ocaml.doc("<p>The ID of the OpsItem event.</p>") @as("EventId") eventId: option<string_>,
  @ocaml.doc("<p>The ID of the OpsItem.</p>") @as("OpsItemId") opsItemId: option<string_>,
}
@ocaml.doc("<p>Describes a filter for a specific list of OpsItem events. You can filter event information
   by using tags. You specify tags by using a key-value pair mapping. </p>")
type opsItemEventFilter = {
  @ocaml.doc("<p>The operator used by the filter call. Currently, the only supported value is
    <code>Equal</code>.</p>")
  @as("Operator")
  operator: opsItemEventFilterOperator,
  @ocaml.doc("<p>The values for the filter, consisting of one or more OpsItem IDs.</p>")
  @as("Values")
  values: opsItemEventFilterValues,
  @ocaml.doc("<p>The name of the filter key. Currently, the only supported value is
   <code>OpsItemId</code>.</p>")
  @as("Key")
  key: opsItemEventFilterKey,
}
@ocaml.doc("<p>A filter for viewing OpsData summaries.</p>")
type opsFilter = {
  @ocaml.doc("<p>The type of filter.</p>") @as("Type") type_: option<opsFilterOperatorType>,
  @ocaml.doc("<p>The filter value.</p>") @as("Values") values: opsFilterValueList,
  @ocaml.doc("<p>The name of the filter.</p>") @as("Key") key: opsFilterKey,
}
type opsEntityItemEntryList = array<opsEntityItemEntry>
@ocaml.doc("<p>Configurations for sending notifications.</p>")
type notificationConfig = {
  @ocaml.doc("<p>The type of notification.</p>
         <ul>
            <li>
               <p>
                  <code>Command</code>: Receive notification when the status of a command changes.</p>
            </li>
            <li>
               <p>
                  <code>Invocation</code>: For commands sent to multiple managed nodes, receive notification
     on a per-node basis when the status of a command changes. </p>
            </li>
         </ul>")
  @as("NotificationType")
  notificationType: option<notificationType>,
  @ocaml.doc("<p>The different events for which you can receive notifications. To learn more about these
   events, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html\">Monitoring Systems Manager status
    changes using Amazon SNS notifications</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("NotificationEvents")
  notificationEvents: option<notificationEventList>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) for an Amazon Simple Notification Service (Amazon SNS) topic. Run
   Command pushes notifications about command status changes to this topic.</p>")
  @as("NotificationArn")
  notificationArn: option<notificationArn>,
}
@ocaml.doc("<p>A summary of resources that aren't compliant. The summary is organized according to resource
   type.</p>")
type nonCompliantSummary = {
  @ocaml.doc("<p>A summary of the non-compliance severity by compliance type</p>")
  @as("SeveritySummary")
  severitySummary: option<severitySummary>,
  @ocaml.doc("<p>The total number of compliance items that aren't compliant.</p>")
  @as("NonCompliantCount")
  nonCompliantCount: option<complianceSummaryCount>,
}
type metadataMap = Js.Dict.t<metadataValue>
type maintenanceWindowsForTargetList = array<maintenanceWindowIdentityForTarget>
@ocaml.doc("<p>Defines the values for a task parameter.</p>")
type maintenanceWindowTaskParameterValueExpression = {
  @ocaml.doc("<p>This field contains an array of 0 or more strings, each 1 to 255 characters in
   length.</p>")
  @as("Values")
  values: option<maintenanceWindowTaskParameterValueList>,
}
type maintenanceWindowIdentityList = array<maintenanceWindowIdentity>
@ocaml.doc("<p>Filter used in the request. Supported filter keys depend on the API operation that includes
   the filter. API operations that use <code>MaintenanceWindowFilter></code> include the
   following:</p>
         <ul>
            <li>
               <p>
                  <a>DescribeMaintenanceWindowExecutions</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceWindowExecutionTaskInvocations</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceWindowExecutionTasks</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceWindows</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceWindowTargets</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceWindowTasks</a>
               </p>
            </li>
         </ul>")
type maintenanceWindowFilter = {
  @ocaml.doc("<p>The filter values.</p>") @as("Values")
  values: option<maintenanceWindowFilterValues>,
  @ocaml.doc("<p>The name of the filter.</p>") @as("Key") key: option<maintenanceWindowFilterKey>,
}
type maintenanceWindowExecutionTaskInvocationIdentityList = array<
  maintenanceWindowExecutionTaskInvocationIdentity,
>
type maintenanceWindowExecutionTaskIdentityList = array<maintenanceWindowExecutionTaskIdentity>
type maintenanceWindowExecutionList = array<maintenanceWindowExecution>
type inventoryItemEntryList = array<inventoryItemEntry>
type inventoryItemAttributeList = array<inventoryItemAttribute>
@ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of results.</p>")
type inventoryFilter = {
  @ocaml.doc("<p>The type of filter.</p>
         <note>
            <p>The <code>Exists</code> filter must be used with aggregators. For more information, see
     <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-aggregate.html\">Aggregating inventory
     data</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         </note>")
  @as("Type")
  type_: option<inventoryQueryOperatorType>,
  @ocaml.doc("<p>Inventory filter values. Example: inventory filter where managed node IDs are specified as
   values <code>Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g,
    i-1a2b3c4d5e6,Type=Equal</code>. </p>")
  @as("Values")
  values: inventoryFilterValueList,
  @ocaml.doc("<p>The name of the filter key.</p>") @as("Key") key: inventoryFilterKey,
}
type inventoryDeletionSummaryItems = array<inventoryDeletionSummaryItem>
type instancePatchStatesList = array<instancePatchState>
type instancePatchStateList = array<instancePatchState>
@ocaml.doc("<p>Defines a filter used in <a>DescribeInstancePatchStatesForPatchGroup</a> to scope
   down the information returned by the API.</p>
         <p>
            <b>Example</b>: To filter for all managed nodes in a patch group
   having more than three patches with a <code>FailedCount</code> status, use the following for the
   filter:</p>
         <ul>
            <li>
               <p>Value for <code>Key</code>: <code>FailedCount</code>
               </p>
            </li>
            <li>
               <p>Value for <code>Type</code>: <code>GreaterThan</code>
               </p>
            </li>
            <li>
               <p>Value for <code>Values</code>: <code>3</code>
               </p>
            </li>
         </ul>")
type instancePatchStateFilter = {
  @ocaml.doc("<p>The type of comparison that should be performed for the value.</p>") @as("Type")
  type_: instancePatchStateOperatorType,
  @ocaml.doc("<p>The value for the filter. Must be an integer greater than or equal to 0.</p>")
  @as("Values")
  values: instancePatchStateFilterValues,
  @ocaml.doc("<p>The key for the filter. Supported values include the following:</p>
         <ul>
            <li>
               <p>
                  <code>InstalledCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>InstalledOtherCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>InstalledPendingRebootCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>InstalledRejectedCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MissingCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>FailedCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UnreportedNotApplicableCount</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NotApplicableCount</code>
               </p>
            </li>
         </ul>")
  @as("Key")
  key: instancePatchStateFilterKey,
}
@ocaml.doc("<p>The filters to describe or get information about your managed nodes.</p>")
type instanceInformationStringFilter = {
  @ocaml.doc("<p>The filter values.</p>") @as("Values") values: instanceInformationFilterValueSet,
  @ocaml.doc("<p>The filter key name to describe your managed nodes. For example:</p>
         <p>\"InstanceIds\"|\"AgentVersion\"|\"PingStatus\"|\"PlatformTypes\"|\"ActivationIds\"|\"IamRole\"|\"ResourceType\"|\"AssociationStatus\"|\"Tag
   Key\"</p>
         <important>
            <p>
               <code>Tag key</code> isn't a valid filter. You must specify either <code>tag-key</code> or
     <code>tag:keyname</code> and a string. Here are some valid examples: tag-key, tag:123, tag:al!,
    tag:Windows. Here are some <i>invalid</i> examples: tag-keys, Tag Key, tag:,
    tagKey, abc:keyname.</p>
         </important>")
  @as("Key")
  key: instanceInformationStringFilterKey,
}
@ocaml.doc("<p>Describes a filter for a specific list of managed nodes. You can filter node information by
   using tags. You specify tags by using a key-value mapping.</p>
         <p>Use this operation instead of the <a>DescribeInstanceInformationRequest$InstanceInformationFilterList</a> method. The
    <code>InstanceInformationFilterList</code> method is a legacy method and doesn't support tags.
  </p>")
type instanceInformationFilter = {
  @ocaml.doc("<p>The filter values.</p>") valueSet: instanceInformationFilterValueSet,
  @ocaml.doc("<p>The name of the filter. </p>") key: instanceInformationFilterKey,
}
@ocaml.doc("<p>The URL of S3 bucket where you want to store the results of this request.</p>")
type instanceAssociationOutputUrl = {
  @ocaml.doc("<p>The URL of S3 bucket where you want to store the results of this request.</p>")
  @as("S3OutputUrl")
  s3OutputUrl: option<s3OutputUrl>,
}
@ocaml.doc("<p>An S3 bucket where you want to store the results of this request.</p>
         <p>For the minimal permissions required to enable Amazon S3 output for an association,
   see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-state-assoc.html\">Creating associations</a> in the <i>Systems Manager User Guide</i>. </p>")
type instanceAssociationOutputLocation = {
  @ocaml.doc("<p>An S3 bucket where you want to store the results of this request.</p>")
  @as("S3Location")
  s3Location: option<s3OutputLocation>,
}
type instanceAssociationList = array<instanceAssociation>
@ocaml.doc("<p>Status information about the aggregated associations.</p>")
type instanceAggregatedAssociationOverview = {
  @ocaml.doc("<p>The number of associations for the managed node(s).</p>")
  @as("InstanceAssociationStatusAggregatedCount")
  instanceAssociationStatusAggregatedCount: option<instanceAssociationStatusAggregatedCount>,
  @ocaml.doc("<p>Detailed status information about the aggregated associations.</p>")
  @as("DetailedStatus")
  detailedStatus: option<statusName>,
}
type documentVersionList = array<documentVersionInfo>
type documentReviewCommentList = array<documentReviewCommentSource>
type documentRequiresList = array<documentRequires>
type documentParameterList = array<documentParameter>
@ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of documents.</p>
         <p>For keys, you can specify one or more tags that have been applied to a document. </p>
         <p>You can also use Amazon Web Services-provided keys, some of which have specific allowed values. These keys
   and their associated values are as follows:</p>
         <dl>
            <dt>DocumentType</dt>
            <dd>
               <ul>
                  <li>
                     <p>
                        <code>ApplicationConfiguration</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>ApplicationConfigurationSchema</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Automation</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>ChangeCalendar</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Command</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Package</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Policy</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Session</code>
                     </p>
                  </li>
               </ul>
            </dd>
            <dt>Owner</dt>
            <dd>
               <p>Note that only one <code>Owner</code> can be specified in a request. For example:
       <code>Key=Owner,Values=Self</code>.</p>
               <ul>
                  <li>
                     <p>
                        <code>Amazon</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Private</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Public</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Self</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>ThirdParty</code>
                     </p>
                  </li>
               </ul>
            </dd>
            <dt>PlatformTypes</dt>
            <dd>
               <ul>
                  <li>
                     <p>
                        <code>Linux</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Windows</code>
                     </p>
                  </li>
               </ul>
            </dd>
         </dl>
         <p>
            <code>Name</code> is another Amazon Web Services-provided key. If you use <code>Name</code> as a key, you
   can use a name prefix to return a list of documents. For example, in the Amazon Web Services CLI, to return a list
   of all documents that begin with <code>Te</code>, run the following command:</p>
         <p>
            <code>aws ssm list-documents --filters Key=Name,Values=Te</code>
         </p>
         <p>You can also use the <code>TargetType</code> Amazon Web Services-provided key. For a list of valid
   resource type values that can be used with this key, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services resource and
    property types reference</a> in the <i>CloudFormation User Guide</i>.</p>
         <p>If you specify more than two keys, only documents that are identified by all the tags are
   returned in the results. If you specify more than two values for a key, documents that are
   identified by any of the values are returned in the results.</p>
         <p>To specify a custom key-value pair, use the format
    <code>Key=tag:tagName,Values=valueName</code>.</p>
         <p>For example, if you created a key called region and are using the Amazon Web Services CLI to call the
    <code>list-documents</code> command: </p>
         <p>
            <code>aws ssm list-documents --filters Key=tag:region,Values=east,west
    Key=Owner,Values=Self</code>
         </p>")
type documentKeyValuesFilter = {
  @ocaml.doc("<p>The value for the filter key.</p>") @as("Values")
  values: option<documentKeyValuesFilterValues>,
  @ocaml.doc("<p>The name of the filter key.</p>") @as("Key")
  key: option<documentKeyValuesFilterKey>,
}
type documentFilterList = array<documentFilter>
@ocaml.doc("<p>Filter for the DescribeActivation API.</p>")
type describeActivationsFilter = {
  @ocaml.doc("<p>The filter values.</p>") @as("FilterValues") filterValues: option<stringList>,
  @ocaml.doc("<p>The name of the filter.</p>") @as("FilterKey")
  filterKey: option<describeActivationsFilterKeys>,
}
@ocaml.doc("<p>A summary of resources that are compliant. The summary is organized according to the
   resource count for each compliance type.</p>")
type compliantSummary = {
  @ocaml.doc("<p>A summary of the compliance severity by compliance type.</p>")
  @as("SeveritySummary")
  severitySummary: option<severitySummary>,
  @ocaml.doc("<p>The total number of resources that are compliant.</p>") @as("CompliantCount")
  compliantCount: option<complianceSummaryCount>,
}
@ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of results.</p>")
type complianceStringFilter = {
  @ocaml.doc("<p>The type of comparison that should be performed for the value: Equal, NotEqual, BeginWith,
   LessThan, or GreaterThan.</p>")
  @as("Type")
  type_: option<complianceQueryOperatorType>,
  @ocaml.doc("<p>The value for which to search.</p>") @as("Values")
  values: option<complianceStringFilterValueList>,
  @ocaml.doc("<p>The name of the filter.</p>") @as("Key") key: option<complianceStringFilterKey>,
}
@ocaml.doc("<p>Information about a compliance item.</p>")
type complianceItemEntry = {
  @ocaml.doc("<p>A \"Key\": \"Value\" tag combination for the compliance item.</p>") @as("Details")
  details: option<complianceItemDetails>,
  @ocaml.doc(
    "<p>The status of the compliance item. An item is either COMPLIANT or NON_COMPLIANT.</p>"
  )
  @as("Status")
  status: complianceStatus,
  @ocaml.doc("<p>The severity of the compliance status. Severity can be one of the following: Critical, High,
   Medium, Low, Informational, Unspecified.</p>")
  @as("Severity")
  severity: complianceSeverity,
  @ocaml.doc("<p>The title of the compliance item. For example, if the compliance item is a Windows patch,
   the title could be the title of the KB article for the patch; for example: Security Update for
   Active Directory Federation Services. </p>")
  @as("Title")
  title: option<complianceItemTitle>,
  @ocaml.doc("<p>The compliance item ID. For example, if the compliance item is a Windows patch, the ID could
   be the number of the KB article.</p>")
  @as("Id")
  id: option<complianceItemId>,
}
@ocaml.doc("<p>Information about the compliance as defined by the resource type. For example, for a patch
   resource type, <code>Items</code> includes information about the PatchSeverity, Classification,
   and so on.</p>")
type complianceItem = {
  @ocaml.doc("<p>A \"Key\": \"Value\" tag combination for the compliance item.</p>") @as("Details")
  details: option<complianceItemDetails>,
  @ocaml.doc("<p>A summary for the compliance item. The summary includes an execution ID, the execution type
   (for example, command), and the execution time.</p>")
  @as("ExecutionSummary")
  executionSummary: option<complianceExecutionSummary>,
  @ocaml.doc("<p>The severity of the compliance status. Severity can be one of the following: Critical, High,
   Medium, Low, Informational, Unspecified.</p>")
  @as("Severity")
  severity: option<complianceSeverity>,
  @ocaml.doc("<p>The status of the compliance item. An item is either COMPLIANT, NON_COMPLIANT, or an empty
   string (for Windows patches that aren't applicable).</p>")
  @as("Status")
  status: option<complianceStatus>,
  @ocaml.doc("<p>A title for the compliance item. For example, if the compliance item is a Windows patch, the
   title could be the title of the KB article for the patch; for example: Security Update for Active
   Directory Federation Services.</p>")
  @as("Title")
  title: option<complianceItemTitle>,
  @ocaml.doc("<p>An ID for the compliance item. For example, if the compliance item is a Windows patch, the
   ID could be the number of the KB article; for example: KB4010320.</p>")
  @as("Id")
  id: option<complianceItemId>,
  @ocaml.doc("<p>An ID for the resource. For a managed node, this is the node ID.</p>")
  @as("ResourceId")
  resourceId: option<complianceResourceId>,
  @ocaml.doc("<p>The type of resource. <code>ManagedInstance</code> is currently the only supported resource
   type.</p>")
  @as("ResourceType")
  resourceType: option<complianceResourceType>,
  @ocaml.doc("<p>The compliance type. For example, Association (for a State Manager association), Patch, or
    Custom:<code>string</code> are all valid compliance types.</p>")
  @as("ComplianceType")
  complianceType: option<complianceTypeName>,
}
type commandPluginList = array<commandPlugin>
type commandFilterList = array<commandFilter>
type automationParameterMap = Js.Dict.t<automationParameterValueList>
@ocaml.doc("<p>A filter used to match specific automation executions. This is used to limit the scope of
   Automation execution information returned.</p>")
type automationExecutionFilter = {
  @ocaml.doc(
    "<p>The values used to limit the execution information associated with the filter's key.</p>"
  )
  @as("Values")
  values: automationExecutionFilterValueList,
  @ocaml.doc("<p>One or more keys to limit the results.</p>") @as("Key")
  key: automationExecutionFilterKey,
}
@ocaml.doc("<p>Identifying information about a document attachment, including the file name and a key-value
   pair that identifies the location of an attachment to a document.</p>")
type attachmentsSource = {
  @ocaml.doc("<p>The name of the document attachment file.</p>") @as("Name")
  name: option<attachmentIdentifier>,
  @ocaml.doc("<p>The value of a key-value pair that identifies the location of an attachment to a document.
   The format for <b>Value</b> depends on the type of key you
   specify.</p>
         <ul>
            <li>
               <p>For the key <i>SourceUrl</i>, the value is an S3 bucket location. For
     example:</p>
               <p>
                  <code>\"Values\": [ \"s3://doc-example-bucket/my-folder\" ]</code>
               </p>
            </li>
            <li>
               <p>For the key <i>S3FileUrl</i>, the value is a file in an S3 bucket. For
     example:</p>
               <p>
                  <code>\"Values\": [ \"s3://doc-example-bucket/my-folder/my-file.py\" ]</code>
               </p>
            </li>
            <li>
               <p>For the key <i>AttachmentReference</i>, the value is constructed from the
     name of another SSM document in your account, a version number of that document, and a file
     attached to that document version that you want to reuse. For example:</p>
               <p>
                  <code>\"Values\": [ \"MyOtherDocument/3/my-other-file.py\" ]</code>
               </p>
               <p>However, if the SSM document is shared with you from another account, the full SSM
     document ARN must be specified instead of the document name only. For example:</p>
               <p>
                  <code>\"Values\": [
      \"arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py\"
      ]</code>
               </p>
            </li>
         </ul>")
  @as("Values")
  values: option<attachmentsSourceValues>,
  @ocaml.doc("<p>The key of a key-value pair that identifies the location of an attachment to a
   document.</p>")
  @as("Key")
  key: option<attachmentsSourceKey>,
}
type attachmentInformationList = array<attachmentInformation>
type attachmentContentList = array<attachmentContent>
@ocaml.doc("<p>Information about the association.</p>")
type associationOverview = {
  @ocaml.doc("<p>Returns the number of targets for the association status. For example, if you created an
   association with two managed nodes, and one of them was successful, this would return the count
   of managed nodes by status.</p>")
  @as("AssociationStatusAggregatedCount")
  associationStatusAggregatedCount: option<associationStatusAggregatedCount>,
  @ocaml.doc("<p>A detailed status of the association.</p>") @as("DetailedStatus")
  detailedStatus: option<statusName>,
  @ocaml.doc("<p>The status of the association. Status can be: Pending, Success, or Failed.</p>")
  @as("Status")
  status: option<statusName>,
}
type associationFilterList = array<associationFilter>
type associationExecutionsList = array<associationExecution>
type associationExecutionTargetsFilterList = array<associationExecutionTargetsFilter>
@ocaml.doc("<p>Includes information about the specified association execution.</p>")
type associationExecutionTarget = {
  @ocaml.doc("<p>The location where the association details are saved.</p>") @as("OutputSource")
  outputSource: option<outputSource>,
  @ocaml.doc("<p>The date of the last execution.</p>") @as("LastExecutionDate")
  lastExecutionDate: option<dateTime>,
  @ocaml.doc("<p>Detailed information about the execution status.</p>") @as("DetailedStatus")
  detailedStatus: option<statusName>,
  @ocaml.doc("<p>The association execution status.</p>") @as("Status") status: option<statusName>,
  @ocaml.doc("<p>The resource type, for example, EC2.</p>") @as("ResourceType")
  resourceType: option<associationResourceType>,
  @ocaml.doc("<p>The resource ID, for example, the managed node ID where the association ran.</p>")
  @as("ResourceId")
  resourceId: option<associationResourceId>,
  @ocaml.doc("<p>The execution ID.</p>") @as("ExecutionId")
  executionId: option<associationExecutionId>,
  @ocaml.doc("<p>The association version.</p>") @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<associationId>,
}
type associationExecutionFilterList = array<associationExecutionFilter>
@ocaml.doc("<p>A list of Amazon Web Services accounts where the current document is shared and the version shared with
   each account.</p>")
type accountSharingInfoList = array<accountSharingInfo>
type targets = array<target>
type targetMaps = array<targetMap>
type targetLocations = array<targetLocation>
type stepExecutionFilterList = array<stepExecutionFilter>
type sessionList = array<session>
@ocaml.doc("<p>Information about the <code>AwsOrganizationsSource</code> resource data sync source. A sync
   source of this type can synchronize data from Organizations or, if an Amazon Web Services organization isn't
   present, from multiple Amazon Web Services Regions.</p>")
type resourceDataSyncAwsOrganizationsSource = {
  @ocaml.doc("<p>The Organizations organization units included in the sync.</p>")
  @as("OrganizationalUnits")
  organizationalUnits: option<resourceDataSyncOrganizationalUnitList>,
  @ocaml.doc("<p>If an Amazon Web Services organization is present, this is either <code>OrganizationalUnits</code> or
    <code>EntireOrganization</code>. For <code>OrganizationalUnits</code>, the data is aggregated
   from a set of organization units. For <code>EntireOrganization</code>, the data is aggregated
   from the entire Amazon Web Services organization.</p>")
  @as("OrganizationSourceType")
  organizationSourceType: resourceDataSyncOrganizationSourceType,
}
@ocaml.doc("<p>Compliance summary information for a specific resource. </p>")
type resourceComplianceSummaryItem = {
  @ocaml.doc("<p>A list of items that aren't compliant for the resource.</p>")
  @as("NonCompliantSummary")
  nonCompliantSummary: option<nonCompliantSummary>,
  @ocaml.doc("<p>A list of items that are compliant for the resource.</p>") @as("CompliantSummary")
  compliantSummary: option<compliantSummary>,
  @ocaml.doc("<p>Information about the execution.</p>") @as("ExecutionSummary")
  executionSummary: option<complianceExecutionSummary>,
  @ocaml.doc("<p>The highest severity item found for the resource. The resource is compliant for this
   item.</p>")
  @as("OverallSeverity")
  overallSeverity: option<complianceSeverity>,
  @ocaml.doc("<p>The compliance status for the resource.</p>") @as("Status")
  status: option<complianceStatus>,
  @ocaml.doc("<p>The resource ID.</p>") @as("ResourceId") resourceId: option<complianceResourceId>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<complianceResourceType>,
  @ocaml.doc("<p>The compliance type.</p>") @as("ComplianceType")
  complianceType: option<complianceTypeName>,
}
type patchSourceList = array<patchSource>
type patchOrchestratorFilterList = array<patchOrchestratorFilter>
type patchList = array<patch>
type patchGroupPatchBaselineMappingList = array<patchGroupPatchBaselineMapping>
type patchFilterList = array<patchFilter>
type parametersFilterList = array<parametersFilter>
type parameterStringFilterList = array<parameterStringFilter>
@ocaml.doc("<p>Metadata includes information like the ARN of the last user and the date/time the parameter
   was last used.</p>")
type parameterMetadata = {
  @ocaml.doc("<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
   default is <code>text</code>.</p>")
  @as("DataType")
  dataType: option<parameterDataType>,
  @ocaml.doc("<p>A list of policies associated with a parameter.</p>") @as("Policies")
  policies: option<parameterPolicyList>,
  @ocaml.doc("<p>The parameter tier.</p>") @as("Tier") tier: option<parameterTier>,
  @ocaml.doc("<p>The parameter version.</p>") @as("Version") version: option<psparameterVersion>,
  @ocaml.doc("<p>A parameter name can include only the following letters and symbols.</p>
         <p>a-zA-Z0-9_.-</p>")
  @as("AllowedPattern")
  allowedPattern: option<allowedPattern>,
  @ocaml.doc("<p>Description of the parameter actions.</p>") @as("Description")
  description: option<parameterDescription>,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the Amazon Web Services user who last changed the parameter.</p>"
  )
  @as("LastModifiedUser")
  lastModifiedUser: option<string_>,
  @ocaml.doc("<p>Date the parameter was last changed or updated.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<dateTime>,
  @ocaml.doc("<p>The ID of the query key used for this parameter.</p>") @as("KeyId")
  keyId: option<parameterKeyId>,
  @ocaml.doc("<p>The type of parameter. Valid parameter types include the following: <code>String</code>,
    <code>StringList</code>, and <code>SecureString</code>.</p>")
  @as("Type")
  type_: option<parameterType>,
  @ocaml.doc("<p>The parameter name.</p>") @as("Name") name: option<psparameterName>,
}
@ocaml.doc("<p>Information about parameter usage.</p>")
type parameterHistory = {
  @ocaml.doc("<p>The data type of the parameter, such as <code>text</code> or <code>aws:ec2:image</code>. The
   default is <code>text</code>.</p>")
  @as("DataType")
  dataType: option<parameterDataType>,
  @ocaml.doc("<p>Information about the policies assigned to a parameter.</p>
         <p>
            <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html\">Assigning parameter
    policies</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("Policies")
  policies: option<parameterPolicyList>,
  @ocaml.doc("<p>The parameter tier.</p>") @as("Tier") tier: option<parameterTier>,
  @ocaml.doc("<p>Labels assigned to the parameter version.</p>") @as("Labels")
  labels: option<parameterLabelList>,
  @ocaml.doc("<p>The parameter version.</p>") @as("Version") version: option<psparameterVersion>,
  @ocaml.doc("<p>Parameter names can include the following letters and symbols.</p>
         <p>a-zA-Z0-9_.-</p>")
  @as("AllowedPattern")
  allowedPattern: option<allowedPattern>,
  @ocaml.doc("<p>The parameter value.</p>") @as("Value") value: option<psparameterValue>,
  @ocaml.doc("<p>Information about the parameter.</p>") @as("Description")
  description: option<parameterDescription>,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the Amazon Web Services user who last changed the parameter.</p>"
  )
  @as("LastModifiedUser")
  lastModifiedUser: option<string_>,
  @ocaml.doc("<p>Date the parameter was last changed or updated.</p>") @as("LastModifiedDate")
  lastModifiedDate: option<dateTime>,
  @ocaml.doc("<p>The ID of the query key used for this parameter.</p>") @as("KeyId")
  keyId: option<parameterKeyId>,
  @ocaml.doc("<p>The type of parameter used.</p>") @as("Type") type_: option<parameterType>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("Name") name: option<psparameterName>,
}
type opsMetadataFilterList = array<opsMetadataFilter>
@ocaml.doc("<p>A count of OpsItems.</p>")
type opsItemSummary = {
  @ocaml.doc("<p>The time specified in a change request for a runbook workflow to end. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
  @as("PlannedEndTime")
  plannedEndTime: option<dateTime>,
  @ocaml.doc("<p>The time specified in a change request for a runbook workflow to start. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
  @as("PlannedStartTime")
  plannedStartTime: option<dateTime>,
  @ocaml.doc("<p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
  @as("ActualEndTime")
  actualEndTime: option<dateTime>,
  @ocaml.doc("<p>The time a runbook workflow started. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
  @as("ActualStartTime")
  actualStartTime: option<dateTime>,
  @ocaml.doc("<p>The type of OpsItem. Currently, the only valid values are <code>/aws/changerequest</code>
   and <code>/aws/issue</code>.</p>")
  @as("OpsItemType")
  opsItemType: option<opsItemType>,
  @ocaml.doc("<p>A list of OpsItems by severity.</p>") @as("Severity")
  severity: option<opsItemSeverity>,
  @ocaml.doc("<p>A list of OpsItems by category.</p>") @as("Category")
  category: option<opsItemCategory>,
  @ocaml.doc("<p>Operational data is custom data that provides useful reference details about the OpsItem.
  </p>")
  @as("OperationalData")
  operationalData: option<opsItemOperationalData>,
  @ocaml.doc(
    "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
  )
  @as("Title")
  title: option<opsItemTitle>,
  @ocaml.doc("<p>The ID of the OpsItem.</p>") @as("OpsItemId") opsItemId: option<opsItemId>,
  @ocaml.doc("<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    <code>Resolved</code>.</p>")
  @as("Status")
  status: option<opsItemStatus>,
  @ocaml.doc("<p>The impacted Amazon Web Services resource.</p>") @as("Source")
  source: option<opsItemSource>,
  @ocaml.doc("<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>")
  @as("Priority")
  priority: option<opsItemPriority>,
  @ocaml.doc("<p>The date and time the OpsItem was last updated.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM entity that created the
   OpsItem.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<string_>,
  @ocaml.doc("<p>The date and time the OpsItem was created.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM entity that created the
   OpsItem.</p>")
  @as("CreatedBy")
  createdBy: option<string_>,
}
type opsItemRelatedItemsFilters = array<opsItemRelatedItemsFilter>
type opsItemRelatedItemSummaries = array<opsItemRelatedItemSummary>
type opsItemFilters = array<opsItemFilter>
type opsItemEventSummaries = array<opsItemEventSummary>
type opsItemEventFilters = array<opsItemEventFilter>
@ocaml.doc("<p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
   remediate operational work items (OpsItems) impacting the performance and health of their Amazon Web Services
   resources. OpsCenter is integrated with Amazon EventBridge and Amazon CloudWatch. This
   means you can configure these services to automatically create an OpsItem in OpsCenter when a
    CloudWatch alarm enters the ALARM state or when EventBridge processes an event from
   any Amazon Web Services service that publishes events. Configuring Amazon CloudWatch alarms and EventBridge events to automatically create OpsItems allows you to quickly diagnose and remediate
   issues with Amazon Web Services resources from a single console.</p>
         <p>To help you diagnose issues, each OpsItem includes contextually relevant information such as
   the name and ID of the Amazon Web Services resource that generated the OpsItem, alarm or event details, alarm
   history, and an alarm timeline graph. For the Amazon Web Services resource, OpsCenter aggregates information
   from Config, CloudTrail logs, and EventBridge, so you don't have
   to navigate across multiple console pages during your investigation. For more information, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html\">OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>")
type opsItem = {
  @ocaml.doc("<p>The time specified in a change request for a runbook workflow to end. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
  @as("PlannedEndTime")
  plannedEndTime: option<dateTime>,
  @ocaml.doc("<p>The time specified in a change request for a runbook workflow to start. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
  @as("PlannedStartTime")
  plannedStartTime: option<dateTime>,
  @ocaml.doc("<p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
  @as("ActualEndTime")
  actualEndTime: option<dateTime>,
  @ocaml.doc("<p>The time a runbook workflow started. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
  @as("ActualStartTime")
  actualStartTime: option<dateTime>,
  @ocaml.doc("<p>The severity of the OpsItem. Severity options range from 1 to 4.</p>")
  @as("Severity")
  severity: option<opsItemSeverity>,
  @ocaml.doc("<p>An OpsItem category. Category options include: Availability, Cost, Performance, Recovery,
   Security.</p>")
  @as("Category")
  category: option<opsItemCategory>,
  @ocaml.doc("<p>Operational data is custom data that provides useful reference details about the OpsItem.
   For example, you can specify log files, error strings, license keys, troubleshooting tips, or
   other relevant data. You enter operational data as key-value pairs. The key has a maximum length
   of 128 characters. The value has a maximum size of 20 KB.</p>
         <important>
            <p>Operational data keys <i>can't</i> begin with the following:
     <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
     <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
         </important>
         <p>You can choose to make the data searchable by other users in the account or you can restrict
   search access. Searchable data means that all users with access to the OpsItem Overview page (as
   provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
   specified data. Operational data that isn't searchable is only viewable by users who have access
   to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
         <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
   the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
   Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("OperationalData")
  operationalData: option<opsItemOperationalData>,
  @ocaml.doc("<p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager. The impacted resource is a subset of
   source.</p>")
  @as("Source")
  source: option<opsItemSource>,
  @ocaml.doc(
    "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
  )
  @as("Title")
  title: option<opsItemTitle>,
  @ocaml.doc("<p>The version of this OpsItem. Each time the OpsItem is edited the version number increments
   by one.</p>")
  @as("Version")
  version: option<string_>,
  @ocaml.doc("<p>The ID of the OpsItem.</p>") @as("OpsItemId") opsItemId: option<opsItemId>,
  @ocaml.doc("<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    <code>Resolved</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html\">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("Status")
  status: option<opsItemStatus>,
  @ocaml.doc("<p>One or more OpsItems that share something in common with the current OpsItem. For example,
   related OpsItems can include OpsItems with similar error messages, impacted resources, or
   statuses for the impacted resource.</p>")
  @as("RelatedOpsItems")
  relatedOpsItems: option<relatedOpsItems>,
  @ocaml.doc("<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>")
  @as("Priority")
  priority: option<opsItemPriority>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon Simple Notification Service (Amazon SNS) topic where
   notifications are sent when this OpsItem is edited or changed.</p>")
  @as("Notifications")
  notifications: option<opsItemNotifications>,
  @ocaml.doc("<p>The date and time the OpsItem was last updated.</p>") @as("LastModifiedTime")
  lastModifiedTime: option<dateTime>,
  @ocaml.doc("<p>The ARN of the Amazon Web Services account that last updated the OpsItem.</p>")
  @as("LastModifiedBy")
  lastModifiedBy: option<string_>,
  @ocaml.doc("<p>The OpsItem description.</p>") @as("Description")
  description: option<opsItemDescription>,
  @ocaml.doc("<p>The date and time the OpsItem was created.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>The type of OpsItem. Currently, the only valid values are <code>/aws/changerequest</code>
   and <code>/aws/issue</code>.</p>")
  @as("OpsItemType")
  opsItemType: option<opsItemType>,
  @ocaml.doc("<p>The ARN of the Amazon Web Services account that created the OpsItem.</p>")
  @as("CreatedBy")
  createdBy: option<string_>,
}
type opsFilterList = array<opsFilter>
@ocaml.doc("<p>The OpsData summary.</p>")
type opsEntityItem = {
  @ocaml.doc("<p>The details of an OpsData summary.</p>") @as("Content")
  content: option<opsEntityItemEntryList>,
  @ocaml.doc("<p>The time the OpsData was captured.</p>") @as("CaptureTime")
  captureTime: option<opsEntityItemCaptureTime>,
}
type maintenanceWindowTaskParameters = Js.Dict.t<maintenanceWindowTaskParameterValueExpression>
@ocaml.doc("<p>The parameters for a <code>RUN_COMMAND</code> task type.</p>
         <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
   
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
            <p>For <code>RUN_COMMAND</code> tasks, Systems Manager uses specified values for
     <code>TaskParameters</code> and <code>LoggingInfo</code> only if no values are specified for
     <code>TaskInvocationParameters</code>. </p>
         </note>")
type maintenanceWindowRunCommandParameters = {
  @ocaml.doc("<p>If this time is reached and the command hasn't already started running, it doesn't
   run.</p>")
  @as("TimeoutSeconds")
  timeoutSeconds: option<timeoutSeconds>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service 
(Amazon SNS) notifications for maintenance window Run Command tasks.</p>")
  @as("ServiceRoleArn")
  serviceRoleArn: option<serviceRole>,
  @ocaml.doc("<p>The parameters for the <code>RUN_COMMAND</code> task execution.</p>")
  @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>The S3 bucket subfolder.</p>") @as("OutputS3KeyPrefix")
  outputS3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The name of the Amazon Simple Storage Service (Amazon S3) bucket.</p>")
  @as("OutputS3BucketName")
  outputS3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>Configurations for sending notifications about command status changes on a per-managed node
   basis.</p>")
  @as("NotificationConfig")
  notificationConfig: option<notificationConfig>,
  @ocaml.doc("<p>The Amazon Web Services Systems Manager document (SSM document) version to use in the request. You can specify
    <code>$DEFAULT</code>, <code>$LATEST</code>, or a specific version number. If you run commands
   by using the Amazon Web Services CLI, then you must escape the first two options by using a backslash. If you
   specify a version number, then you don't need to use the backslash. For example:</p>
         <p>
            <code>--document-version \"\\$DEFAULT\"</code>
         </p>
         <p>
            <code>--document-version \"\\$LATEST\"</code>
         </p>
         <p>
            <code>--document-version \"3\"</code>
         </p>")
  @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>SHA-256 or SHA-1. SHA-1 hashes have been deprecated.</p>") @as("DocumentHashType")
  documentHashType: option<documentHashType>,
  @ocaml.doc("<p>The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes
   have been deprecated.</p>")
  @as("DocumentHash")
  documentHash: option<documentHash>,
  @as("CloudWatchOutputConfig") cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @ocaml.doc("<p>Information about the commands to run.</p>") @as("Comment")
  comment: option<comment>,
}
type maintenanceWindowFilterList = array<maintenanceWindowFilter>
@ocaml.doc("<p>The parameters for an <code>AUTOMATION</code> task type.</p>")
type maintenanceWindowAutomationParameters = {
  @ocaml.doc("<p>The parameters for the <code>AUTOMATION</code> task.</p>
         <p>For information about specifying and updating task parameters, see <a>RegisterTaskWithMaintenanceWindow</a> and <a>UpdateMaintenanceWindowTask</a>.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
   
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
            <p>For <code>AUTOMATION</code> task types, Amazon Web Services Systems Manager ignores any values specified for these
    parameters.</p>
         </note>")
  @as("Parameters")
  parameters: option<automationParameterMap>,
  @ocaml.doc("<p>The version of an Automation runbook to use during task execution.</p>")
  @as("DocumentVersion")
  documentVersion: option<documentVersion>,
}
@ocaml.doc("<p>The inventory result item.</p>")
type inventoryResultItem = {
  @ocaml.doc("<p>Contains all the inventory data of the item type. Results include attribute names and
   values. </p>")
  @as("Content")
  content: inventoryItemEntryList,
  @ocaml.doc("<p>MD5 hash of the inventory item type contents. The content hash is used to determine whether
   to update inventory information. The PutInventory API doesn't update the inventory item type
   contents if the MD5 hash hasn't changed since last update. </p>")
  @as("ContentHash")
  contentHash: option<inventoryItemContentHash>,
  @ocaml.doc("<p>The time inventory item data was captured.</p>") @as("CaptureTime")
  captureTime: option<inventoryItemCaptureTime>,
  @ocaml.doc("<p>The schema version for the inventory result item/</p>") @as("SchemaVersion")
  schemaVersion: inventoryItemSchemaVersion,
  @ocaml.doc("<p>The name of the inventory result item type.</p>") @as("TypeName")
  typeName: inventoryItemTypeName,
}
@ocaml.doc("<p>The inventory item schema definition. Users can use this to compose inventory query
   filters.</p>")
type inventoryItemSchema = {
  @ocaml.doc(
    "<p>The alias name of the inventory type. The alias name is used for display purposes.</p>"
  )
  @as("DisplayName")
  displayName: option<inventoryTypeDisplayName>,
  @ocaml.doc(
    "<p>The schema attributes for inventory. This contains data type and attribute name.</p>"
  )
  @as("Attributes")
  attributes: inventoryItemAttributeList,
  @ocaml.doc("<p>The schema version for the inventory item.</p>") @as("Version")
  version: option<inventoryItemSchemaVersion>,
  @ocaml.doc("<p>The name of the inventory type. Default inventory item type names start with Amazon Web Services. Custom
   inventory type names will start with Custom. Default inventory item types include the following:
    <code>AWS:AWSComponent</code>, <code>AWS:Application</code>,
    <code>AWS:InstanceInformation</code>, <code>AWS:Network</code>, and
    <code>AWS:WindowsUpdate</code>.</p>")
  @as("TypeName")
  typeName: inventoryItemTypeName,
}
@ocaml.doc(
  "<p>Information collected from managed nodes based on your inventory policy document</p>"
)
type inventoryItem = {
  @ocaml.doc("<p>A map of associated properties for a specified inventory type. For example, with this
   attribute, you can specify the <code>ExecutionId</code>, <code>ExecutionType</code>,
    <code>ComplianceType</code> properties of the <code>AWS:ComplianceItem</code> type.</p>")
  @as("Context")
  context: option<inventoryItemContentContext>,
  @ocaml.doc("<p>The inventory data of the inventory type.</p>") @as("Content")
  content: option<inventoryItemEntryList>,
  @ocaml.doc("<p>MD5 hash of the inventory item type contents. The content hash is used to determine whether
   to update inventory information. The PutInventory API doesn't update the inventory item type
   contents if the MD5 hash hasn't changed since last update. </p>")
  @as("ContentHash")
  contentHash: option<inventoryItemContentHash>,
  @ocaml.doc("<p>The time the inventory information was collected.</p>") @as("CaptureTime")
  captureTime: inventoryItemCaptureTime,
  @ocaml.doc("<p>The schema version for the inventory item.</p>") @as("SchemaVersion")
  schemaVersion: inventoryItemSchemaVersion,
  @ocaml.doc("<p>The name of the inventory type. Default inventory item type names start with
    <code>AWS</code>. Custom inventory type names will start with Custom. Default inventory item
   types include the following: <code>AWS:AWSComponent</code>, <code>AWS:Application</code>,
    <code>AWS:InstanceInformation</code>, <code>AWS:Network</code>, and
    <code>AWS:WindowsUpdate</code>.</p>")
  @as("TypeName")
  typeName: inventoryItemTypeName,
}
type inventoryFilterList = array<inventoryFilter>
@ocaml.doc("<p>Information about the delete operation.</p>")
type inventoryDeletionSummary = {
  @ocaml.doc("<p>A list of counts and versions for deleted items.</p>") @as("SummaryItems")
  summaryItems: option<inventoryDeletionSummaryItems>,
  @ocaml.doc("<p>Remaining number of items to delete.</p>") @as("RemainingCount")
  remainingCount: option<remainingCount>,
  @ocaml.doc("<p>The total number of items to delete. This count doesn't change during the delete
   operation.</p>")
  @as("TotalCount")
  totalCount: option<totalCount>,
}
type instancePatchStateFilterList = array<instancePatchStateFilter>
type instanceInformationStringFilterList = array<instanceInformationStringFilter>
type instanceInformationFilterList = array<instanceInformationFilter>
@ocaml.doc("<p>Describes a filter for a specific list of managed nodes. </p>")
type instanceInformation = {
  @ocaml.doc("<p>The type of the source resource. For IoT Greengrass devices, <code>SourceType</code>
   is <code>AWS::IoT::Thing</code>. </p>")
  @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>The ID of the source resource. For IoT Greengrass devices, <code>SourceId</code> is
   the Thing name. </p>")
  @as("SourceId")
  sourceId: option<sourceId>,
  @ocaml.doc("<p>Information about the association.</p>") @as("AssociationOverview")
  associationOverview: option<instanceAggregatedAssociationOverview>,
  @ocaml.doc("<p>The last date the association was successfully run.</p>")
  @as("LastSuccessfulAssociationExecutionDate")
  lastSuccessfulAssociationExecutionDate: option<dateTime>,
  @ocaml.doc("<p>The date the association was last run.</p>") @as("LastAssociationExecutionDate")
  lastAssociationExecutionDate: option<dateTime>,
  @ocaml.doc("<p>The status of the association.</p>") @as("AssociationStatus")
  associationStatus: option<statusName>,
  @ocaml.doc("<p>The fully qualified host name of the managed node.</p>") @as("ComputerName")
  computerName: option<computerName>,
  @ocaml.doc("<p>The IP address of the managed node.</p>") @as("IPAddress")
  ipaddress: option<ipaddress>,
  @ocaml.doc("<p>The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is
   activated as a Systems Manager managed node. The name is specified as the <code>DefaultInstanceName</code>
   property using the <a>CreateActivation</a> command. It is applied to the managed node
   by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as
   explained in <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html\">Install SSM Agent for a
    hybrid environment (Linux)</a> and <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html\">Install SSM Agent for a
    hybrid environment (Windows)</a>. To retrieve the <code>Name</code> tag of an EC2 instance,
   use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href=\"https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html\">describe-instances</a> in
   the <i>Amazon Web Services CLI Command Reference</i>.</p>")
  @as("Name")
  name: option<string_>,
  @ocaml.doc(
    "<p>The type of instance. Instances are either EC2 instances or managed instances. </p>"
  )
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc(
    "<p>The date the server or VM was registered with Amazon Web Services as a managed node.</p>"
  )
  @as("RegistrationDate")
  registrationDate: option<dateTime>,
  @ocaml.doc("<p>The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager
   managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud
    (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use
   the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href=\"https://docs.aws.amazon.com/cli/latest/ec2/describe-instances.html\">describe-instances</a> in
   the <i>Amazon Web Services CLI Command Reference</i>.</p>")
  @as("IamRole")
  iamRole: option<iamRole>,
  @ocaml.doc("<p>The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was
   registered.</p>")
  @as("ActivationId")
  activationId: option<activationId>,
  @ocaml.doc("<p>The version of the OS platform running on your managed node. </p>")
  @as("PlatformVersion")
  platformVersion: option<string_>,
  @ocaml.doc("<p>The name of the operating system platform running on your managed node. </p>")
  @as("PlatformName")
  platformName: option<string_>,
  @ocaml.doc("<p>The operating system platform type. </p>") @as("PlatformType")
  platformType: option<platformType>,
  @ocaml.doc("<p>Indicates whether the latest version of SSM Agent is running on your Linux managed node. This
   field doesn't indicate whether or not the latest version is installed on Windows managed nodes,
   because some older versions of Windows Server use the EC2Config service to process Systems Manager
   requests.</p>")
  @as("IsLatestVersion")
  isLatestVersion: option<boolean_>,
  @ocaml.doc("<p>The version of SSM Agent running on your Linux managed node. </p>")
  @as("AgentVersion")
  agentVersion: option<version>,
  @ocaml.doc("<p>The date and time when the agent last pinged the Systems Manager service. </p>")
  @as("LastPingDateTime")
  lastPingDateTime: option<dateTime>,
  @ocaml.doc("<p>Connection status of SSM Agent. </p>
         <note>
            <p>The status <code>Inactive</code> has been deprecated and is no longer in use.</p>
         </note>")
  @as("PingStatus")
  pingStatus: option<pingStatus>,
  @ocaml.doc("<p>The managed node ID. </p>") @as("InstanceId") instanceId: option<instanceId>,
}
@ocaml.doc("<p>Status information about the association.</p>")
type instanceAssociationStatusInfo = {
  @ocaml.doc("<p>The name of the association applied to the managed node.</p>")
  @as("AssociationName")
  associationName: option<associationName>,
  @ocaml.doc("<p>A URL for an S3 bucket where you want to store the results of this request.</p>")
  @as("OutputUrl")
  outputUrl: option<instanceAssociationOutputUrl>,
  @ocaml.doc("<p>An error code returned by the request to create the association.</p>")
  @as("ErrorCode")
  errorCode: option<agentErrorCode>,
  @ocaml.doc("<p>Summary information about association execution.</p>") @as("ExecutionSummary")
  executionSummary: option<instanceAssociationExecutionSummary>,
  @ocaml.doc("<p>Detailed status information about the association.</p>") @as("DetailedStatus")
  detailedStatus: option<statusName>,
  @ocaml.doc("<p>Status information about the association.</p>") @as("Status")
  status: option<statusName>,
  @ocaml.doc("<p>The date the association ran. </p>") @as("ExecutionDate")
  executionDate: option<dateTime>,
  @ocaml.doc("<p>The managed node ID where the association was created.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc("<p>The version of the association applied to the managed node.</p>")
  @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The association document versions.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the association.</p>") @as("Name") name: option<documentARN>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<associationId>,
}
@ocaml.doc("<p>Information about an Automation failure.</p>")
type failureDetails = {
  @ocaml.doc("<p>Detailed information about the Automation step failure.</p>") @as("Details")
  details: option<automationParameterMap>,
  @ocaml.doc("<p>The type of Automation failure. Failure types include the following: Action, Permission,
   Throttling, Verification, Internal.</p>")
  @as("FailureType")
  failureType: option<string_>,
  @ocaml.doc("<p>The stage of the Automation execution when the failure occurred. The stages include the
   following: InputValidation, PreVerification, Invocation, PostVerification.</p>")
  @as("FailureStage")
  failureStage: option<string_>,
}
@ocaml.doc("<p>The <code>EffectivePatch</code> structure defines metadata about a patch along with the
   approval state of the patch in a particular patch baseline. The approval state includes
   information about whether the patch is currently approved, due to be approved by a rule,
   explicitly approved, or explicitly rejected and the date the patch was or will be
   approved.</p>")
type effectivePatch = {
  @ocaml.doc("<p>The status of the patch in a patch baseline. This includes information about whether the
   patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly
   rejected and the date the patch was or will be approved.</p>")
  @as("PatchStatus")
  patchStatus: option<patchStatus>,
  @ocaml.doc("<p>Provides metadata for a patch, including information such as the KB ID, severity,
   classification and a URL for where more information can be obtained about the patch.</p>")
  @as("Patch")
  patch: option<patch>,
}
@ocaml.doc("<p>Information about a document approval review.</p>")
type documentReviews = {
  @ocaml.doc(
    "<p>A comment entered by a user in your organization about the document review request.</p>"
  )
  @as("Comment")
  comment: option<documentReviewCommentList>,
  @ocaml.doc("<p>The action to take on a document approval review request.</p>") @as("Action")
  action: documentReviewAction,
}
@ocaml.doc("<p>Information about a reviewer's response to a document review request.</p>")
type documentReviewerResponseSource = {
  @ocaml.doc("<p>The user in your organization assigned to review a document request.</p>")
  @as("Reviewer")
  reviewer: option<reviewer>,
  @ocaml.doc("<p>The comment entered by a reviewer as part of their document review response.</p>")
  @as("Comment")
  comment: option<documentReviewCommentList>,
  @ocaml.doc("<p>The current review status of a new custom SSM document created by a member of your
   organization, or of the latest version of an existing SSM document.</p>
         <p>Only one version of a document can be in the APPROVED state at a time. When a new version is
   approved, the status of the previous version changes to REJECTED.</p>
         <p>Only one version of a document can be in review, or PENDING, at a time.</p>")
  @as("ReviewStatus")
  reviewStatus: option<reviewStatus>,
  @ocaml.doc("<p>The date and time that a reviewer last updated a response to a document review
   request.</p>")
  @as("UpdatedTime")
  updatedTime: option<dateTime>,
  @ocaml.doc(
    "<p>The date and time that a reviewer entered a response to a document review request.</p>"
  )
  @as("CreateTime")
  createTime: option<dateTime>,
}
type documentKeyValuesFilterList = array<documentKeyValuesFilter>
@ocaml.doc("<p>Describes the name of a SSM document.</p>")
type documentIdentifier = {
  @ocaml.doc("<p>The user in your organization who created the document.</p>") @as("Author")
  author: option<documentAuthor>,
  @ocaml.doc("<p>The current status of a document review.</p>") @as("ReviewStatus")
  reviewStatus: option<reviewStatus>,
  @ocaml.doc("<p>A list of SSM documents required by a document. For example, an
    <code>ApplicationConfiguration</code> document requires an
    <code>ApplicationConfigurationSchema</code> document.</p>")
  @as("Requires")
  requires: option<documentRequiresList>,
  @ocaml.doc("<p>The tags, or metadata, that have been applied to the document.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The target type which defines the kinds of resources the document can run on. For example,
    <code>/AWS::EC2::Instance</code>. For a list of valid resource types, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services resource and
    property types reference</a> in the <i>CloudFormation User Guide</i>. </p>")
  @as("TargetType")
  targetType: option<targetType>,
  @ocaml.doc("<p>The document format, either JSON or YAML.</p>") @as("DocumentFormat")
  documentFormat: option<documentFormat>,
  @ocaml.doc("<p>The schema version.</p>") @as("SchemaVersion")
  schemaVersion: option<documentSchemaVersion>,
  @ocaml.doc("<p>The document type.</p>") @as("DocumentType") documentType: option<documentType>,
  @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The operating system platform. </p>") @as("PlatformTypes")
  platformTypes: option<platformTypeList>,
  @ocaml.doc("<p>An optional field specifying the version of the artifact associated with the document. For
   example, \"Release 12, Update 6\". This value is unique across all versions of a document, and
   can't be changed.</p>")
  @as("VersionName")
  versionName: option<documentVersionName>,
  @ocaml.doc("<p>The Amazon Web Services user account that created the document.</p>") @as("Owner")
  owner: option<documentOwner>,
  @ocaml.doc("<p>An optional field where you can specify a friendly name for the SSM document. This value can
   differ for each version of the document. If you want to update this value, see <a>UpdateDocument</a>.</p>")
  @as("DisplayName")
  displayName: option<documentDisplayName>,
  @ocaml.doc("<p>The date the SSM document was created.</p>") @as("CreatedDate")
  createdDate: option<dateTime>,
  @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
}
@ocaml.doc("<p>Describes an Amazon Web Services Systems Manager document (SSM document). </p>")
type documentDescription = {
  @ocaml.doc("<p>The value that identifies a document's category.</p>") @as("CategoryEnum")
  categoryEnum: option<categoryEnumList>,
  @ocaml.doc("<p>The classification of a document to help you identify and categorize its use.</p>")
  @as("Category")
  category: option<categoryList>,
  @ocaml.doc("<p>The current status of the review.</p>") @as("ReviewStatus")
  reviewStatus: option<reviewStatus>,
  @ocaml.doc("<p>The version of the document that is currently under review.</p>")
  @as("PendingReviewVersion")
  pendingReviewVersion: option<documentVersion>,
  @ocaml.doc("<p>The version of the document currently approved for use in the organization.</p>")
  @as("ApprovedVersion")
  approvedVersion: option<documentVersion>,
  @ocaml.doc("<p>Details about the review of a document.</p>") @as("ReviewInformation")
  reviewInformation: option<reviewInformationList>,
  @ocaml.doc("<p>The user in your organization who created the document.</p>") @as("Author")
  author: option<documentAuthor>,
  @ocaml.doc("<p>A list of SSM documents required by a document. For example, an
    <code>ApplicationConfiguration</code> document requires an
    <code>ApplicationConfigurationSchema</code> document.</p>")
  @as("Requires")
  requires: option<documentRequiresList>,
  @ocaml.doc(
    "<p>Details about the document attachments, including names, locations, sizes, and so on.</p>"
  )
  @as("AttachmentsInformation")
  attachmentsInformation: option<attachmentInformationList>,
  @ocaml.doc("<p>The tags, or metadata, that have been applied to the document.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The target type which defines the kinds of resources the document can run on. For example,
    <code>/AWS::EC2::Instance</code>. For a list of valid resource types, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services resource and
    property types reference</a> in the <i>CloudFormation User Guide</i>. </p>")
  @as("TargetType")
  targetType: option<targetType>,
  @ocaml.doc("<p>The document format, either JSON or YAML.</p>") @as("DocumentFormat")
  documentFormat: option<documentFormat>,
  @ocaml.doc("<p>The default version.</p>") @as("DefaultVersion")
  defaultVersion: option<documentVersion>,
  @ocaml.doc("<p>The latest version of the document.</p>") @as("LatestVersion")
  latestVersion: option<documentVersion>,
  @ocaml.doc("<p>The schema version.</p>") @as("SchemaVersion")
  schemaVersion: option<documentSchemaVersion>,
  @ocaml.doc("<p>The type of document.</p>") @as("DocumentType") documentType: option<documentType>,
  @ocaml.doc(
    "<p>The list of operating system (OS) platforms compatible with this SSM document. </p>"
  )
  @as("PlatformTypes")
  platformTypes: option<platformTypeList>,
  @ocaml.doc("<p>A description of the parameters for a document.</p>") @as("Parameters")
  parameters: option<documentParameterList>,
  @ocaml.doc("<p>A description of the document. </p>") @as("Description")
  description: option<descriptionInDocument>,
  @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
   \"The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct.\"</p>")
  @as("StatusInformation")
  statusInformation: option<documentStatusInformation>,
  @ocaml.doc("<p>The status of the SSM document.</p>") @as("Status") status: option<documentStatus>,
  @ocaml.doc("<p>The date when the document was created.</p>") @as("CreatedDate")
  createdDate: option<dateTime>,
  @ocaml.doc("<p>The Amazon Web Services user account that created the document.</p>") @as("Owner")
  owner: option<documentOwner>,
  @ocaml.doc("<p>The version of the artifact associated with the document.</p>") @as("VersionName")
  versionName: option<documentVersionName>,
  @ocaml.doc("<p>The friendly name of the SSM document. This value can differ for each version of the
   document. If you want to update this value, see <a>UpdateDocument</a>.</p>")
  @as("DisplayName")
  displayName: option<documentDisplayName>,
  @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
  @ocaml.doc("<p>The hash type of the document. Valid values include <code>Sha256</code> or
   <code>Sha1</code>.</p>
         <note>
            <p>Sha1 hashes have been deprecated.</p>
         </note>")
  @as("HashType")
  hashType: option<documentHashType>,
  @ocaml.doc("<p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
         <note>
            <p>Sha1 hashes have been deprecated.</p>
         </note>")
  @as("Hash")
  hash: option<documentHash>,
  @ocaml.doc("<p>The SHA1 hash of the document, which you can use for verification.</p>")
  @as("Sha1")
  sha1: option<documentSha1>,
}
type describeActivationsFilterList = array<describeActivationsFilter>
@ocaml.doc("<p>A summary of compliance information by compliance type.</p>")
type complianceSummaryItem = {
  @ocaml.doc("<p>A list of NON_COMPLIANT items for the specified compliance type.</p>")
  @as("NonCompliantSummary")
  nonCompliantSummary: option<nonCompliantSummary>,
  @ocaml.doc("<p>A list of COMPLIANT items for the specified compliance type.</p>")
  @as("CompliantSummary")
  compliantSummary: option<compliantSummary>,
  @ocaml.doc("<p>The type of compliance item. For example, the compliance type can be Association, Patch, or
   Custom:string.</p>")
  @as("ComplianceType")
  complianceType: option<complianceTypeName>,
}
type complianceStringFilterList = array<complianceStringFilter>
type complianceItemList = array<complianceItem>
type complianceItemEntryList = array<complianceItemEntry>
@ocaml.doc("<p>An invocation is a copy of a command sent to a specific managed node. A command can apply to
   one or more managed nodes. A command invocation applies to one managed node. For example, if a
   user runs <code>SendCommand</code> against three managed nodes, then a command invocation is
   created for each requested managed node ID. A command invocation returns status and detail
   information about a command you ran. </p>")
type commandInvocation = {
  @ocaml.doc("<p>Amazon CloudWatch Logs information where you want Amazon Web Services Systems Manager to send the command
   output.</p>")
  @as("CloudWatchOutputConfig")
  cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @ocaml.doc("<p>Configurations for sending notifications about command status changes on a per managed node
   basis.</p>")
  @as("NotificationConfig")
  notificationConfig: option<notificationConfig>,
  @ocaml.doc("<p>The Identity and Access Management (IAM) service role that Run Command, a capability
   of Amazon Web Services Systems Manager, uses to act on your behalf when sending notifications about command status changes
   on a per managed node basis.</p>")
  @as("ServiceRole")
  serviceRole: option<serviceRole>,
  @ocaml.doc("<p>Plugins processed by the command.</p>") @as("CommandPlugins")
  commandPlugins: option<commandPluginList>,
  @ocaml.doc("<p>The URL to the plugin's StdErr file in Amazon Simple Storage Service (Amazon S3), if the S3
   bucket was defined for the parent command. For an invocation, <code>StandardErrorUrl</code> is
   populated if there is just one plugin defined for the command, and the S3 bucket was defined for
   the command.</p>")
  @as("StandardErrorUrl")
  standardErrorUrl: option<url>,
  @ocaml.doc("<p>The URL to the plugin's StdOut file in Amazon Simple Storage Service (Amazon S3), if the S3
   bucket was defined for the parent command. For an invocation, <code>StandardOutputUrl</code> is
   populated if there is just one plugin defined for the command, and the S3 bucket was defined for
   the command.</p>")
  @as("StandardOutputUrl")
  standardOutputUrl: option<url>,
  @ocaml.doc("<p> Gets the trace output sent by the agent. </p>") @as("TraceOutput")
  traceOutput: option<invocationTraceOutput>,
  @ocaml.doc("<p>A detailed status of the command execution for each invocation (each managed node targeted
   by the command). StatusDetails includes more information than Status because it includes states
   resulting from error and concurrency control parameters. StatusDetails can show different results
   than Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command
    statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
   following values:</p>
         <ul>
            <li>
               <p>Pending: The command hasn't been sent to the managed node.</p>
            </li>
            <li>
               <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
     state.</p>
            </li>
            <li>
               <p>Success: The execution of the command or plugin was successfully completed. This is a
     terminal state.</p>
            </li>
            <li>
               <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
     timeout expired. Delivery timeouts don't count against the parent command's
      <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
     Success or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Execution Timed Out: Command execution started on the managed node, but the execution
     wasn't complete before the execution timeout expired. Execution timeouts count against the
      <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Failed: The command wasn't successful on the managed node. For a plugin, this indicates
     that the result code wasn't zero. For a command invocation, this indicates that the result code
     for one or more plugins wasn't zero. Invocation failures count against the
      <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Cancelled: The command was terminated before it was completed. This is a terminal
     state.</p>
            </li>
            <li>
               <p>Undeliverable: The command can't be delivered to the managed node. The managed node might
     not exist or might not be responding. Undeliverable invocations don't count against the parent
     command's MaxErrors limit and don't contribute to whether the parent command status is Success
     or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command
     invocations were canceled by the system. This is a terminal state.</p>
            </li>
         </ul>")
  @as("StatusDetails")
  statusDetails: option<statusDetails>,
  @ocaml.doc("<p>Whether or not the invocation succeeded, failed, or is pending.</p>") @as("Status")
  status: option<commandInvocationStatus>,
  @ocaml.doc("<p>The time and date the request was sent to this managed node.</p>")
  @as("RequestedDateTime")
  requestedDateTime: option<dateTime>,
  @ocaml.doc("<p>The Systems Manager document (SSM document) version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The document name that was requested for execution.</p>") @as("DocumentName")
  documentName: option<documentName>,
  @ocaml.doc("<p>User-specified information about the command, such as a brief description of what the
   command should do.</p>")
  @as("Comment")
  comment: option<comment>,
  @ocaml.doc("<p>The fully qualified host name of the managed node.</p>") @as("InstanceName")
  instanceName: option<instanceTagName>,
  @ocaml.doc("<p>The managed node ID in which this invocation was requested.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc("<p>The command against which this invocation was requested.</p>") @as("CommandId")
  commandId: option<commandId>,
}
type automationExecutionFilterList = array<automationExecutionFilter>
type attachmentsSourceList = array<attachmentsSource>
type associationExecutionTargetsList = array<associationExecutionTarget>
@ocaml.doc("<p>An activation registers one or more on-premises servers or virtual machines (VMs) with Amazon Web Services
   so that you can configure those servers or VMs using Run Command. A server or VM that has been
   registered with Amazon Web Services Systems Manager is called a managed node.</p>")
type activation = {
  @ocaml.doc("<p>Tags assigned to the activation.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The date the activation was created.</p>") @as("CreatedDate")
  createdDate: option<createdDate>,
  @ocaml.doc("<p>Whether or not the activation is expired.</p>") @as("Expired")
  expired: option<boolean_>,
  @ocaml.doc(
    "<p>The date when this activation can no longer be used to register managed nodes.</p>"
  )
  @as("ExpirationDate")
  expirationDate: option<expirationDate>,
  @ocaml.doc("<p>The number of managed nodes already registered with this activation.</p>")
  @as("RegistrationsCount")
  registrationsCount: option<registrationsCount>,
  @ocaml.doc(
    "<p>The maximum number of managed nodes that can be registered using this activation.</p>"
  )
  @as("RegistrationLimit")
  registrationLimit: option<registrationLimit>,
  @ocaml.doc("<p>The Identity and Access Management (IAM) role to assign to the managed node.</p>")
  @as("IamRole")
  iamRole: option<iamRole>,
  @ocaml.doc("<p>A name for the managed node when it is created.</p>") @as("DefaultInstanceName")
  defaultInstanceName: option<defaultInstanceName>,
  @ocaml.doc("<p>A user defined description of the activation.</p>") @as("Description")
  description: option<activationDescription>,
  @ocaml.doc("<p>The ID created by Systems Manager when you submitted the activation.</p>")
  @as("ActivationId")
  activationId: option<activationId>,
}
@ocaml.doc("<p>Detailed information about an the execution state of an Automation step.</p>")
type stepExecution = {
  @ocaml.doc("<p>The combination of Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Automation
   execution.</p>")
  @as("TargetLocation")
  targetLocation: option<targetLocation>,
  @ocaml.doc("<p>The targets for the step execution.</p>") @as("Targets") targets: option<targets>,
  @ocaml.doc("<p>Strategies used when step fails, we support Continue and Abort. Abort will fail the
   automation when the step fails. Continue will ignore the failure of current step and allow
   automation to run the next step. With conditional branching, we add step:stepName to support the
   automation to go to another specific step.</p>")
  @as("ValidNextSteps")
  validNextSteps: option<validNextStepList>,
  @ocaml.doc("<p>The flag which can be used to help decide whether the failure of current step leads to the
   Automation failure.</p>")
  @as("IsCritical")
  isCritical: option<boolean_>,
  @ocaml.doc("<p>The next step after the step succeeds.</p>") @as("NextStep")
  nextStep: option<string_>,
  @ocaml.doc("<p>The flag which can be used to end automation no matter whether the step succeeds or
   fails.</p>")
  @as("IsEnd")
  isEnd: option<boolean_>,
  @ocaml.doc("<p>A user-specified list of parameters to override when running a step.</p>")
  @as("OverriddenParameters")
  overriddenParameters: option<automationParameterMap>,
  @ocaml.doc("<p>The unique ID of a step execution.</p>") @as("StepExecutionId")
  stepExecutionId: option<string_>,
  @ocaml.doc("<p>Information about the Automation failure.</p>") @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>If a step failed, this message explains why the execution failed.</p>")
  @as("FailureMessage")
  failureMessage: option<string_>,
  @ocaml.doc("<p>A message associated with the response code for an execution.</p>") @as("Response")
  response: option<string_>,
  @ocaml.doc("<p>Returned values from the execution of the step.</p>") @as("Outputs")
  outputs: option<automationParameterMap>,
  @ocaml.doc("<p>Fully-resolved values passed into the step before execution.</p>") @as("Inputs")
  inputs: option<normalStringMap>,
  @ocaml.doc("<p>The response code returned by the execution of the step.</p>") @as("ResponseCode")
  responseCode: option<string_>,
  @ocaml.doc("<p>The execution status for this step.</p>") @as("StepStatus")
  stepStatus: option<automationExecutionStatus>,
  @ocaml.doc("<p>If a step has finished execution, this contains the time the execution ended. If the step
   hasn't yet concluded, this field isn't populated.</p>")
  @as("ExecutionEndTime")
  executionEndTime: option<dateTime>,
  @ocaml.doc("<p>If a step has begun execution, this contains the time the step started. If the step is in
   Pending status, this field isn't populated.</p>")
  @as("ExecutionStartTime")
  executionStartTime: option<dateTime>,
  @ocaml.doc("<p>The maximum number of tries to run the action of the step. The default value is
    <code>1</code>.</p>")
  @as("MaxAttempts")
  maxAttempts: option<integer_>,
  @ocaml.doc(
    "<p>The action to take if the step fails. The default value is <code>Abort</code>.</p>"
  )
  @as("OnFailure")
  onFailure: option<string_>,
  @ocaml.doc("<p>The timeout seconds of the step.</p>") @as("TimeoutSeconds")
  timeoutSeconds: option<long>,
  @ocaml.doc(
    "<p>The action this step performs. The action determines the behavior of the step.</p>"
  )
  @as("Action")
  action: option<automationActionName>,
  @ocaml.doc("<p>The name of this execution step.</p>") @as("StepName") stepName: option<string_>,
}
@ocaml.doc("<p>Information about an Automation runbook used in a runbook workflow in Change Manager.</p>
         <note>
            <p>The Automation runbooks specified for the runbook workflow can't run until all required
    approvals for the change request have been received.</p>
         </note>")
type runbook = {
  @ocaml.doc("<p>Information about the Amazon Web Services Regions and Amazon Web Services accounts targeted by the current Runbook
   operation.</p>")
  @as("TargetLocations")
  targetLocations: option<targetLocations>,
  @ocaml.doc("<p>The <code>MaxErrors</code> value specified by the user when the execution started,
   indicating the maximum number of errors that can occur during the operation before the updates
   are stopped or rolled back.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The <code>MaxConcurrency</code> value specified by the user when the operation started,
   indicating the maximum number of resources that the runbook operation can run on at the same
   time.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>A key-value mapping to target resources that the runbook operation performs tasks on.
   Required if you specify <code>TargetParameterName</code>.</p>")
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The name of the parameter used as the target resource for the rate-controlled
   runbook workflow. Required if you specify <code>Targets</code>. </p>")
  @as("TargetParameterName")
  targetParameterName: option<automationParameterKey>,
  @ocaml.doc("<p>The key-value map of execution parameters, which were supplied when calling
    <code>StartChangeRequestExecution</code>.</p>")
  @as("Parameters")
  parameters: option<automationParameterMap>,
  @ocaml.doc("<p>The version of the Automation runbook used in a runbook workflow.</p>")
  @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the Automation runbook used in a runbook workflow.</p>")
  @as("DocumentName")
  documentName: documentARN,
}
@ocaml.doc("<p>The data type name for including resource data sync state. There are four sync
   states:</p>
         <p>
            <code>OrganizationNotExists</code> (Your organization doesn't exist)</p>
         <p>
            <code>NoPermissions</code> (The system can't locate the service-linked role. This role is
   automatically created when a user creates a resource data sync in Amazon Web Services Systems Manager Explorer.)</p>
         <p>
            <code>InvalidOrganizationalUnit</code> (You specified or selected an invalid unit in the
   resource data sync configuration.)</p>
         <p>
            <code>TrustedAccessDisabled</code> (You disabled Systems Manager access in the organization in
   Organizations.)</p>")
type resourceDataSyncSourceWithState = {
  @ocaml.doc("<p>When you create a resource data sync, if you choose one of the Organizations options, then Systems Manager
   automatically enables all OpsData sources in the selected Amazon Web Services Regions for all Amazon Web Services accounts in
   your organization (or in the selected organization units). For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html\">About multiple account and Region resource data syncs</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("EnableAllOpsDataSources")
  enableAllOpsDataSources: option<resourceDataSyncEnableAllOpsDataSources>,
  @ocaml.doc("<p>The data type name for including resource data sync state. There are four sync
   states:</p>
         <p>
            <code>OrganizationNotExists</code>: Your organization doesn't exist.</p>
         <p>
            <code>NoPermissions</code>: The system can't locate the service-linked role. This role is
   automatically created when a user creates a resource data sync in Explorer.</p>
         <p>
            <code>InvalidOrganizationalUnit</code>: You specified or selected an invalid unit in the
   resource data sync configuration.</p>
         <p>
            <code>TrustedAccessDisabled</code>: You disabled Systems Manager access in the organization in
   Organizations.</p>")
  @as("State")
  state: option<resourceDataSyncState>,
  @ocaml.doc("<p>Whether to automatically synchronize and aggregate data from new Amazon Web Services Regions when those
   Regions come online.</p>")
  @as("IncludeFutureRegions")
  includeFutureRegions: option<resourceDataSyncIncludeFutureRegions>,
  @ocaml.doc(
    "<p>The <code>SyncSource</code> Amazon Web Services Regions included in the resource data sync.</p>"
  )
  @as("SourceRegions")
  sourceRegions: option<resourceDataSyncSourceRegionList>,
  @ocaml.doc("<p>The field name in <code>SyncSource</code> for the
    <code>ResourceDataSyncAwsOrganizationsSource</code> type.</p>")
  @as("AwsOrganizationsSource")
  awsOrganizationsSource: option<resourceDataSyncAwsOrganizationsSource>,
  @ocaml.doc("<p>The type of data source for the resource data sync. <code>SourceType</code> is either
    <code>AwsOrganizations</code> (if an organization is present in Organizations) or
    <code>singleAccountMultiRegions</code>.</p>")
  @as("SourceType")
  sourceType: option<resourceDataSyncSourceType>,
}
@ocaml.doc("<p>Information about the source of the data included in the resource data sync.</p>")
type resourceDataSyncSource = {
  @ocaml.doc("<p>When you create a resource data sync, if you choose one of the Organizations options, then Systems Manager
   automatically enables all OpsData sources in the selected Amazon Web Services Regions for all Amazon Web Services accounts in
   your organization (or in the selected organization units). For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html\">About multiple account and Region resource data syncs</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("EnableAllOpsDataSources")
  enableAllOpsDataSources: option<resourceDataSyncEnableAllOpsDataSources>,
  @ocaml.doc("<p>Whether to automatically synchronize and aggregate data from new Amazon Web Services Regions when those
   Regions come online.</p>")
  @as("IncludeFutureRegions")
  includeFutureRegions: option<resourceDataSyncIncludeFutureRegions>,
  @ocaml.doc(
    "<p>The <code>SyncSource</code> Amazon Web Services Regions included in the resource data sync.</p>"
  )
  @as("SourceRegions")
  sourceRegions: resourceDataSyncSourceRegionList,
  @ocaml.doc("<p>Information about the <code>AwsOrganizationsSource</code> resource data sync source. A sync
   source of this type can synchronize data from Organizations.</p>")
  @as("AwsOrganizationsSource")
  awsOrganizationsSource: option<resourceDataSyncAwsOrganizationsSource>,
  @ocaml.doc("<p>The type of data source for the resource data sync. <code>SourceType</code> is either
    <code>AwsOrganizations</code> (if an organization is present in Organizations) or
    <code>SingleAccountMultiRegions</code>.</p>")
  @as("SourceType")
  sourceType: resourceDataSyncSourceType,
}
type resourceComplianceSummaryItemList = array<resourceComplianceSummaryItem>
@ocaml.doc("<p>A set of patch filters, typically used for approval rules.</p>")
type patchFilterGroup = {
  @ocaml.doc("<p>The set of patch filters that make up the group.</p>") @as("PatchFilters")
  patchFilters: patchFilterList,
}
type parameterMetadataList = array<parameterMetadata>
type parameterHistoryList = array<parameterHistory>
type opsItemSummaries = array<opsItemSummary>
type opsEntityItemMap = Js.Dict.t<opsEntityItem>
type maintenanceWindowTaskParametersList = array<maintenanceWindowTaskParameters>
@ocaml.doc("<p>The parameters for task execution.</p>")
type maintenanceWindowTaskInvocationParameters = {
  @ocaml.doc("<p>The parameters for a <code>LAMBDA</code> task type.</p>") @as("Lambda")
  lambda: option<maintenanceWindowLambdaParameters>,
  @ocaml.doc("<p>The parameters for a <code>STEP_FUNCTIONS</code> task type.</p>")
  @as("StepFunctions")
  stepFunctions: option<maintenanceWindowStepFunctionsParameters>,
  @ocaml.doc("<p>The parameters for an <code>AUTOMATION</code> task type.</p>") @as("Automation")
  automation: option<maintenanceWindowAutomationParameters>,
  @ocaml.doc("<p>The parameters for a <code>RUN_COMMAND</code> task type.</p>") @as("RunCommand")
  runCommand: option<maintenanceWindowRunCommandParameters>,
}
@ocaml.doc("<p>Information about a task defined for a maintenance window.</p>")
type maintenanceWindowTask = {
  @ocaml.doc("<p>The specification for whether tasks should continue to run after the cutoff time specified
   in the maintenance windows is reached. </p>")
  @as("CutoffBehavior")
  cutoffBehavior: option<maintenanceWindowTaskCutoffBehavior>,
  @ocaml.doc("<p>A description of the task.</p>") @as("Description")
  description: option<maintenanceWindowDescription>,
  @ocaml.doc("<p>The task name.</p>") @as("Name") name: option<maintenanceWindowName>,
  @ocaml.doc("<p>The maximum number of errors allowed before this task stops being scheduled.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The maximum number of targets this task can be run for, in parallel.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service 
(Amazon SNS) notifications for maintenance window Run Command tasks.</p>")
  @as("ServiceRoleArn")
  serviceRoleArn: option<serviceRole>,
  @ocaml.doc("<p>Information about an S3 bucket to write task-level logs to.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
  @as("LoggingInfo")
  loggingInfo: option<loggingInfo>,
  @ocaml.doc("<p>The priority of the task in the maintenance window. The lower the number, the higher the
   priority. Tasks that have the same priority are scheduled in parallel.</p>")
  @as("Priority")
  priority: option<maintenanceWindowTaskPriority>,
  @ocaml.doc("<p>The parameters that should be passed to the task when it is run.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
  @as("TaskParameters")
  taskParameters: option<maintenanceWindowTaskParameters>,
  @ocaml.doc("<p>The targets (either managed nodes or tags). Managed nodes are specified using
    <code>Key=instanceids,Values=<instanceid1>,<instanceid2></code>. Tags are specified
   using <code>Key=<tag name>,Values=<tag value></code>.</p>")
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The type of task.</p>") @as("Type") type_: option<maintenanceWindowTaskType>,
  @ocaml.doc("<p>The resource that the task uses during execution. For <code>RUN_COMMAND</code> and
    <code>AUTOMATION</code> task types, <code>TaskArn</code> is the Amazon Web Services Systems Manager (SSM document) name or
   ARN. For <code>LAMBDA</code> tasks, it's the function name or ARN. For
    <code>STEP_FUNCTIONS</code> tasks, it's the state machine ARN.</p>")
  @as("TaskArn")
  taskArn: option<maintenanceWindowTaskArn>,
  @ocaml.doc("<p>The task ID.</p>") @as("WindowTaskId")
  windowTaskId: option<maintenanceWindowTaskId>,
  @ocaml.doc("<p>The ID of the maintenance window where the task is registered.</p>")
  @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
@ocaml.doc("<p>The target registered with the maintenance window.</p>")
type maintenanceWindowTarget = {
  @ocaml.doc("<p>A description for the target.</p>") @as("Description")
  description: option<maintenanceWindowDescription>,
  @ocaml.doc("<p>The name for the maintenance window target.</p>") @as("Name")
  name: option<maintenanceWindowName>,
  @ocaml.doc("<p>A user-provided value that will be included in any Amazon CloudWatch Events events that are
   raised while running tasks for these targets in this maintenance window.</p>")
  @as("OwnerInformation")
  ownerInformation: option<ownerInformation>,
  @ocaml.doc("<p>The targets, either managed nodes or tags.</p>
         <p>Specify managed nodes using the following format:</p>
         <p>
            <code>Key=instanceids,Values=<instanceid1>,<instanceid2></code>
         </p>
         <p>Tags are specified using the following format:</p>
         <p>
            <code>Key=<tag name>,Values=<tag value></code>.</p>")
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The type of target that is being registered with the maintenance window.</p>")
  @as("ResourceType")
  resourceType: option<maintenanceWindowResourceType>,
  @ocaml.doc("<p>The ID of the target.</p>") @as("WindowTargetId")
  windowTargetId: option<maintenanceWindowTargetId>,
  @ocaml.doc("<p>The ID of the maintenance window to register the target with.</p>") @as("WindowId")
  windowId: option<maintenanceWindowId>,
}
type inventoryResultItemMap = Js.Dict.t<inventoryResultItem>
type inventoryItemSchemaResultList = array<inventoryItemSchema>
type inventoryItemList = array<inventoryItem>
@ocaml.doc("<p>A user-defined set of one or more filters on which to aggregate inventory data. Groups
   return a count of resources that match and don't match the specified criteria.</p>")
type inventoryGroup = {
  @ocaml.doc("<p>Filters define the criteria for the group. The <code>matchingCount</code> field displays the
   number of resources that match the criteria. The <code>notMatchingCount</code> field displays the
   number of resources that don't match the criteria. </p>")
  @as("Filters")
  filters: inventoryFilterList,
  @ocaml.doc("<p>The name of the group.</p>") @as("Name") name: inventoryGroupName,
}
@ocaml.doc("<p>Status information returned by the <code>DeleteInventory</code> operation.</p>")
type inventoryDeletionStatusItem = {
  @ocaml.doc("<p>The UTC timestamp of when the last status report.</p>") @as("LastStatusUpdateTime")
  lastStatusUpdateTime: option<inventoryDeletionLastStatusUpdateTime>,
  @ocaml.doc("<p>Information about the delete operation. For more information about this summary, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete\">Understanding the delete inventory summary</a> in the
   <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("DeletionSummary")
  deletionSummary: option<inventoryDeletionSummary>,
  @ocaml.doc("<p>Information about the status.</p>") @as("LastStatusMessage")
  lastStatusMessage: option<inventoryDeletionLastStatusMessage>,
  @ocaml.doc("<p>The status of the operation. Possible values are InProgress and Complete.</p>")
  @as("LastStatus")
  lastStatus: option<inventoryDeletionStatus>,
  @ocaml.doc("<p>The UTC timestamp when the delete operation started.</p>") @as("DeletionStartTime")
  deletionStartTime: option<inventoryDeletionStartTime>,
  @ocaml.doc("<p>The name of the inventory data type.</p>") @as("TypeName")
  typeName: option<inventoryItemTypeName>,
  @ocaml.doc("<p>The deletion ID returned by the <code>DeleteInventory</code> operation.</p>")
  @as("DeletionId")
  deletionId: option<uuid>,
}
type instanceInformationList = array<instanceInformation>
type instanceAssociationStatusInfos = array<instanceAssociationStatusInfo>
type effectivePatchList = array<effectivePatch>
type documentReviewerResponseList = array<documentReviewerResponseSource>
type documentIdentifierList = array<documentIdentifier>
@ocaml.doc(
  "<p>Describes the association of a Amazon Web Services Systems Manager document (SSM document) and a managed node.</p>"
)
type createAssociationBatchRequestEntry = {
  @ocaml.doc(
    "<p>Use this action to create an association in multiple Regions and multiple accounts.</p>"
  )
  @as("TargetLocations")
  targetLocations: option<targetLocations>,
  @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
   associations are gated under. The associations only run when that Change Calendar is open. For
   more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar\">Amazon Web Services Systems Manager Change
    Calendar</a>.</p>")
  @as("CalendarNames")
  calendarNames: option<calendarNameOrARNList>,
  @ocaml.doc("<p>By default, when you create a new associations, the system runs it immediately after it is
   created and then according to the schedule you specified. Specify this option if you don't want
   an association to run immediately after you create it. This parameter isn't supported for rate
   expressions.</p>")
  @as("ApplyOnlyAtCronInterval")
  applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @ocaml.doc("<p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
   execution to determine the compliance status. If the association execution runs successfully,
   then the association is <code>COMPLIANT</code>. If the association execution doesn't run
   successfully, the association is <code>NON-COMPLIANT</code>. </p>
         <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
   for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
   managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    <a>PutComplianceItems</a> API operation.</p>
         <p>By default, all associations use <code>AUTO</code> mode.</p>")
  @as("SyncCompliance")
  syncCompliance: option<associationSyncCompliance>,
  @ocaml.doc("<p>The severity level to assign to the association.</p>") @as("ComplianceSeverity")
  complianceSeverity: option<associationComplianceSeverity>,
  @ocaml.doc("<p>The maximum number of targets allowed to run the association at the same time. You can
   specify a number, for example 10, or a percentage of the target set, for example 10%. The default
   value is 100%, which means all targets run the association at the same time.</p>
         <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
   association interval, the new managed node will process its association within the limit
   specified for <code>MaxConcurrency</code>.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The number of errors that are allowed before the system stops sending requests to run the
   association on additional targets. You can specify either an absolute number of errors, for
   example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
   the system stops sending requests when the fourth error is received. If you specify 0, then the
   system stops sending requests after the first error is returned. If you run an association on 50
   managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
   when the sixth error is received.</p>
         <p>Executions that are already running an association when <code>MaxErrors</code> is reached
   are allowed to complete, but some of these executions may fail as well. If you need to ensure
   that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
   so that executions proceed one at a time.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>Specify a descriptive name for the association.</p>") @as("AssociationName")
  associationName: option<associationName>,
  @ocaml.doc("<p>An S3 bucket where you want to store the results of this request.</p>")
  @as("OutputLocation")
  outputLocation: option<instanceAssociationOutputLocation>,
  @ocaml.doc("<p>A cron expression that specifies a schedule when the association runs.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpression>,
  @ocaml.doc("<p>The managed nodes targeted by the request.</p>") @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>Specify the target for the association. This target is required for associations that use an
   Automation runbook and target resources by using rate controls. Automation is a capability of
   Amazon Web Services Systems Manager.</p>")
  @as("AutomationTargetParameterName")
  automationTargetParameterName: option<automationTargetParameterName>,
  @ocaml.doc("<p>A description of the parameters for a document. </p>") @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>The managed node ID.</p>
         <note>
            <p>
               <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    association, use the <code>Targets</code> parameter. Requests that
    include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    schema version 2.0 or later will fail. In addition, if you use the
    parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
     <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
     <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    must use the <code>Targets</code> parameter.</p>
         </note>")
  @as("InstanceId")
  instanceId: option<instanceId>,
  @ocaml.doc("<p>The name of the SSM document that contains the configuration information for the managed
   node. You can specify Command or Automation runbooks.</p>
         <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
   shared with you from another account.</p>
         <p>For SSM documents that are shared with you from other Amazon Web Services accounts, you must specify the
   complete SSM document ARN, in the following format:</p>
         <p>
            <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
            </code>
         </p>
         <p>For example:</p>
         <p>
            <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
         </p>
         <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
   to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    <code>My-Document</code>.</p>")
  @as("Name")
  name: documentARN,
}
type complianceSummaryItemList = array<complianceSummaryItem>
type commandInvocationList = array<commandInvocation>
@ocaml.doc("<p>Describes a command request.</p>")
type command = {
  @ocaml.doc("<p>The <code>TimeoutSeconds</code> value specified for a command.</p>")
  @as("TimeoutSeconds")
  timeoutSeconds: option<timeoutSeconds>,
  @ocaml.doc("<p>Amazon CloudWatch Logs information where you want Amazon Web Services Systems Manager to send the command
   output.</p>")
  @as("CloudWatchOutputConfig")
  cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
  @ocaml.doc("<p>Configurations for sending notifications about command status changes. </p>")
  @as("NotificationConfig")
  notificationConfig: option<notificationConfig>,
  @ocaml.doc("<p>The Identity and Access Management (IAM) service role that Run Command, a capability
   of Amazon Web Services Systems Manager, uses to act on your behalf when sending notifications about command status changes.
  </p>")
  @as("ServiceRole")
  serviceRole: option<serviceRole>,
  @ocaml.doc("<p>The number of targets for which the status is Delivery Timed Out.</p>")
  @as("DeliveryTimedOutCount")
  deliveryTimedOutCount: option<deliveryTimedOutCount>,
  @ocaml.doc("<p>The number of targets for which the status is Failed or Execution Timed Out.</p>")
  @as("ErrorCount")
  errorCount: option<errorCount>,
  @ocaml.doc("<p>The number of targets for which the command invocation reached a terminal state. Terminal
   states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out,
   Cancelled, Terminated, or Undeliverable.</p>")
  @as("CompletedCount")
  completedCount: option<completedCount>,
  @ocaml.doc("<p>The number of targets for the command.</p>") @as("TargetCount")
  targetCount: option<targetCount>,
  @ocaml.doc("<p>The maximum number of errors allowed before the system stops sending the command to
   additional targets. You can specify a number of errors, such as 10, or a percentage or errors,
   such as 10%. The default value is <code>0</code>. For more information about how to use
    <code>MaxErrors</code>, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html\">Running commands using Systems Manager Run
    Command</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The maximum number of managed nodes that are allowed to run the command at the same time.
   You can specify a number of managed nodes, such as 10, or a percentage of nodes, such as 10%. The
   default value is 50. For more information about how to use <code>MaxConcurrency</code>, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html\">Running
    commands using Systems Manager Run Command</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The S3 directory path inside the bucket where the responses to the command executions should
   be stored. This was requested when issuing the command.</p>")
  @as("OutputS3KeyPrefix")
  outputS3KeyPrefix: option<s3KeyPrefix>,
  @ocaml.doc("<p>The S3 bucket where the responses to the command executions should be stored. This was
   requested when issuing the command.</p>")
  @as("OutputS3BucketName")
  outputS3BucketName: option<s3BucketName>,
  @ocaml.doc("<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
   automatically determines the Amazon Web Services Region of the S3 bucket.</p>")
  @as("OutputS3Region")
  outputS3Region: option<s3Region>,
  @ocaml.doc("<p>A detailed status of the command execution. <code>StatusDetails</code> includes more
   information than <code>Status</code> because it includes states resulting from error and
   concurrency control parameters. <code>StatusDetails</code> can show different results than
   Status. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding command
    statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. StatusDetails can be one of the
   following values:</p>
         <ul>
            <li>
               <p>Pending: The command hasn't been sent to any managed nodes.</p>
            </li>
            <li>
               <p>In Progress: The command has been sent to at least one managed node but hasn't reached a
     final state on all managed nodes.</p>
            </li>
            <li>
               <p>Success: The command successfully ran on all invocations. This is a terminal state.</p>
            </li>
            <li>
               <p>Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of
     Delivery Timed Out. This is a terminal state.</p>
            </li>
            <li>
               <p>Execution Timed Out: The value of MaxErrors or more command invocations shows a status of
     Execution Timed Out. This is a terminal state.</p>
            </li>
            <li>
               <p>Failed: The value of MaxErrors or more command invocations shows a status of Failed. This
     is a terminal state.</p>
            </li>
            <li>
               <p>Incomplete: The command was attempted on all managed nodes and one or more invocations
     doesn't have a value of Success but not enough invocations failed for the status to be Failed.
     This is a terminal state.</p>
            </li>
            <li>
               <p>Cancelled: The command was terminated before it was completed. This is a terminal
     state.</p>
            </li>
            <li>
               <p>Rate Exceeded: The number of managed nodes targeted by the command exceeded the account
     limit for pending invocations. The system has canceled the command before running it on any
     managed node. This is a terminal state.</p>
            </li>
         </ul>")
  @as("StatusDetails")
  statusDetails: option<statusDetails>,
  @ocaml.doc("<p>The status of the command.</p>") @as("Status") status: option<commandStatus>,
  @ocaml.doc("<p>The date and time the command was requested.</p>") @as("RequestedDateTime")
  requestedDateTime: option<dateTime>,
  @ocaml.doc("<p>An array of search criteria that targets managed nodes using a Key,Value combination that
   you specify. Targets is required if you don't provide one or more managed node IDs in the
   call.</p>")
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The managed node IDs against which this command was requested.</p>")
  @as("InstanceIds")
  instanceIds: option<instanceIdList>,
  @ocaml.doc("<p>The parameter values to be inserted in the document when running the command.</p>")
  @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>If this time is reached and the command hasn't already started running, it won't run.
   Calculated based on the <code>ExpiresAfter</code> user input provided as part of the
    <code>SendCommand</code> API operation.</p>")
  @as("ExpiresAfter")
  expiresAfter: option<dateTime>,
  @ocaml.doc("<p>User-specified information about the command, such as a brief description of what the
   command should do.</p>")
  @as("Comment")
  comment: option<comment>,
  @ocaml.doc("<p>The Systems Manager document (SSM document) version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the document requested for execution.</p>") @as("DocumentName")
  documentName: option<documentName>,
  @ocaml.doc("<p>A unique identifier for this command.</p>") @as("CommandId")
  commandId: option<commandId>,
}
@ocaml.doc("<p>Information about the association version.</p>")
type associationVersionInfo = {
  @ocaml.doc("<p>The combination of Amazon Web Services Regions and Amazon Web Services accounts where you wanted to run the association
   when this association version was created.</p>")
  @as("TargetLocations")
  targetLocations: option<targetLocations>,
  @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
   associations are gated under. The associations for this version only run when that Change
   Calendar is open. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar\">Amazon Web Services Systems Manager Change
    Calendar</a>.</p>")
  @as("CalendarNames")
  calendarNames: option<calendarNameOrARNList>,
  @ocaml.doc("<p>By default, when you create a new associations, the system runs it immediately after it is
   created and then according to the schedule you specified. Specify this option if you don't want
   an association to run immediately after you create it. This parameter isn't supported for rate
   expressions.</p>")
  @as("ApplyOnlyAtCronInterval")
  applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @ocaml.doc("<p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
   execution to determine the compliance status. If the association execution runs successfully,
   then the association is <code>COMPLIANT</code>. If the association execution doesn't run
   successfully, the association is <code>NON-COMPLIANT</code>.</p>
         <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
   for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
   managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    <a>PutComplianceItems</a> API operation.</p>
         <p>By default, all associations use <code>AUTO</code> mode.</p>")
  @as("SyncCompliance")
  syncCompliance: option<associationSyncCompliance>,
  @ocaml.doc("<p>The severity level that is assigned to the association.</p>")
  @as("ComplianceSeverity")
  complianceSeverity: option<associationComplianceSeverity>,
  @ocaml.doc("<p>The maximum number of targets allowed to run the association at the same time. You can
   specify a number, for example 10, or a percentage of the target set, for example 10%. The default
   value is 100%, which means all targets run the association at the same time.</p>
         <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
   association interval, the new managed node will process its association within the limit
   specified for <code>MaxConcurrency</code>.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The number of errors that are allowed before the system stops sending requests to run the
   association on additional targets. You can specify either an absolute number of errors, for
   example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
   the system stops sending requests when the fourth error is received. If you specify 0, then the
   system stops sending requests after the first error is returned. If you run an association on 50
   managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
   when the sixth error is received.</p>
         <p>Executions that are already running an association when <code>MaxErrors</code> is reached
   are allowed to complete, but some of these executions may fail as well. If you need to ensure
   that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
   so that executions proceed one at a time.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The name specified for the association version when the association version was
   created.</p>")
  @as("AssociationName")
  associationName: option<associationName>,
  @ocaml.doc("<p>The location in Amazon S3 specified for the association when the association version
   was created.</p>")
  @as("OutputLocation")
  outputLocation: option<instanceAssociationOutputLocation>,
  @ocaml.doc("<p>The cron or rate schedule specified for the association when the association version was
   created.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpression>,
  @ocaml.doc(
    "<p>The targets specified for the association when the association version was created. </p>"
  )
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>Parameters specified when the association version was created.</p>")
  @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>The version of an Amazon Web Services Systems Manager document (SSM document) used when the association version was
   created.</p>")
  @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name specified when the association was created.</p>") @as("Name")
  name: option<documentARN>,
  @ocaml.doc("<p>The date the association version was created.</p>") @as("CreatedDate")
  createdDate: option<dateTime>,
  @ocaml.doc("<p>The association version.</p>") @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The ID created by the system when the association was created.</p>")
  @as("AssociationId")
  associationId: option<associationId>,
}
@ocaml.doc("<p>Describes the parameters for a document.</p>")
type associationDescription = {
  @ocaml.doc("<p>The combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
   association.</p>")
  @as("TargetLocations")
  targetLocations: option<targetLocations>,
  @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents your
   associations are gated under. The associations only run when that change calendar is open. For
   more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar\">Amazon Web Services Systems Manager Change
    Calendar</a>.</p>")
  @as("CalendarNames")
  calendarNames: option<calendarNameOrARNList>,
  @ocaml.doc("<p>By default, when you create a new associations, the system runs it immediately after it is
   created and then according to the schedule you specified. Specify this option if you don't want
   an association to run immediately after you create it. This parameter isn't supported for rate
   expressions.</p>")
  @as("ApplyOnlyAtCronInterval")
  applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
  @ocaml.doc("<p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
   execution to determine the compliance status. If the association execution runs successfully,
   then the association is <code>COMPLIANT</code>. If the association execution doesn't run
   successfully, the association is <code>NON-COMPLIANT</code>.</p>
         <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
   for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
   managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    <a>PutComplianceItems</a> API operation.</p>
         <p>By default, all associations use <code>AUTO</code> mode.</p>")
  @as("SyncCompliance")
  syncCompliance: option<associationSyncCompliance>,
  @ocaml.doc("<p>The severity level that is assigned to the association.</p>")
  @as("ComplianceSeverity")
  complianceSeverity: option<associationComplianceSeverity>,
  @ocaml.doc("<p>The maximum number of targets allowed to run the association at the same time. You can
   specify a number, for example 10, or a percentage of the target set, for example 10%. The default
   value is 100%, which means all targets run the association at the same time.</p>
         <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
   association interval, the new managed node will process its association within the limit
   specified for <code>MaxConcurrency</code>.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The number of errors that are allowed before the system stops sending requests to run the
   association on additional targets. You can specify either an absolute number of errors, for
   example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
   the system stops sending requests when the fourth error is received. If you specify 0, then the
   system stops sending requests after the first error is returned. If you run an association on 50
   managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
   when the sixth error is received.</p>
         <p>Executions that are already running an association when <code>MaxErrors</code> is reached
   are allowed to complete, but some of these executions may fail as well. If you need to ensure
   that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
   so that executions proceed one at a time.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The association name.</p>") @as("AssociationName")
  associationName: option<associationName>,
  @ocaml.doc("<p>The last date on which the association was successfully run.</p>")
  @as("LastSuccessfulExecutionDate")
  lastSuccessfulExecutionDate: option<dateTime>,
  @ocaml.doc("<p>The date on which the association was last run.</p>") @as("LastExecutionDate")
  lastExecutionDate: option<dateTime>,
  @ocaml.doc("<p>An S3 bucket where you want to store the output details of the request.</p>")
  @as("OutputLocation")
  outputLocation: option<instanceAssociationOutputLocation>,
  @ocaml.doc("<p>A cron expression that specifies a schedule when the association runs.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpression>,
  @ocaml.doc("<p>The managed nodes targeted by the request. </p>") @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
  associationId: option<associationId>,
  @ocaml.doc("<p>A description of the parameters for a document. </p>") @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>Choose the parameter that will define how your automation will branch out. This target is
   required for associations that use an Automation runbook and target resources by using rate
   controls. Automation is a capability of Amazon Web Services Systems Manager.</p>")
  @as("AutomationTargetParameterName")
  automationTargetParameterName: option<automationTargetParameterName>,
  @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>Information about the association.</p>") @as("Overview")
  overview: option<associationOverview>,
  @ocaml.doc("<p>The association status.</p>") @as("Status") status: option<associationStatus>,
  @ocaml.doc("<p>The date when the association was last updated.</p>")
  @as("LastUpdateAssociationDate")
  lastUpdateAssociationDate: option<dateTime>,
  @ocaml.doc("<p>The date when the association was made.</p>") @as("Date") date: option<dateTime>,
  @ocaml.doc("<p>The association version.</p>") @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
  @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
}
@ocaml.doc(
  "<p>Describes an association of a Amazon Web Services Systems Manager document (SSM document) and a managed node.</p>"
)
type association = {
  @ocaml.doc("<p>The association name.</p>") @as("AssociationName")
  associationName: option<associationName>,
  @ocaml.doc("<p>A cron expression that specifies a schedule when the association runs. The schedule runs in
   Coordinated Universal Time (UTC).</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpression>,
  @ocaml.doc("<p>Information about the association.</p>") @as("Overview")
  overview: option<associationOverview>,
  @ocaml.doc("<p>The date on which the association was last run.</p>") @as("LastExecutionDate")
  lastExecutionDate: option<dateTime>,
  @ocaml.doc("<p>The managed nodes targeted by the request to create an association. You can target all
   managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    <code>*</code>.</p>")
  @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The version of the document used in the association. If you change a document version for a
   State Manager association, Systems Manager immediately runs the association unless you previously specifed
   the <code>apply-only-at-cron-interval</code> parameter.</p>

         <important>
            <p>State Manager doesn't support running associations that use a new version of a document if
    that document is shared from another account. State Manager always runs the <code>default</code>
    version of a document if shared from another account, even though the Systems Manager console shows that a
    new version was processed. If you want to run an association using a new version of a document
    shared form another account, you must set the document version to <code>default</code>.</p>
         </important>")
  @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The association version.</p>") @as("AssociationVersion")
  associationVersion: option<associationVersion>,
  @ocaml.doc("<p>The ID created by the system when you create an association. An association is a binding
   between a document and a set of targets with a schedule.</p>")
  @as("AssociationId")
  associationId: option<associationId>,
  @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
  @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
}
type activationList = array<activation>
type stepExecutionList = array<stepExecution>
type runbooks = array<runbook>
@ocaml.doc("<p>Information about a resource data sync configuration, including its current status and last
   successful sync.</p>")
type resourceDataSyncItem = {
  @ocaml.doc("<p>The status message details reported by the last sync.</p>")
  @as("LastSyncStatusMessage")
  lastSyncStatusMessage: option<lastResourceDataSyncMessage>,
  @ocaml.doc("<p>The date and time the configuration was created (UTC).</p>") @as("SyncCreatedTime")
  syncCreatedTime: option<resourceDataSyncCreatedTime>,
  @ocaml.doc("<p>The status reported by the last sync.</p>") @as("LastStatus")
  lastStatus: option<lastResourceDataSyncStatus>,
  @ocaml.doc("<p>The date and time the resource data sync was changed. </p>")
  @as("SyncLastModifiedTime")
  syncLastModifiedTime: option<resourceDataSyncLastModifiedTime>,
  @ocaml.doc(
    "<p>The last time the sync operations returned a status of <code>SUCCESSFUL</code> (UTC).</p>"
  )
  @as("LastSuccessfulSyncTime")
  lastSuccessfulSyncTime: option<lastSuccessfulResourceDataSyncTime>,
  @ocaml.doc("<p>The last time the configuration attempted to sync (UTC).</p>") @as("LastSyncTime")
  lastSyncTime: option<lastResourceDataSyncTime>,
  @ocaml.doc("<p>Configuration information for the target S3 bucket.</p>") @as("S3Destination")
  s3Destination: option<resourceDataSyncS3Destination>,
  @ocaml.doc("<p>Information about the source where the data was synchronized. </p>")
  @as("SyncSource")
  syncSource: option<resourceDataSyncSourceWithState>,
  @ocaml.doc("<p>The type of resource data sync. If <code>SyncType</code> is <code>SyncToDestination</code>,
   then the resource data sync synchronizes data to an S3 bucket. If the <code>SyncType</code> is
    <code>SyncFromSource</code> then the resource data sync synchronizes data from Organizations or from
   multiple Amazon Web Services Regions.</p>")
  @as("SyncType")
  syncType: option<resourceDataSyncType>,
  @ocaml.doc("<p>The name of the resource data sync.</p>") @as("SyncName")
  syncName: option<resourceDataSyncName>,
}
@ocaml.doc("<p>Defines an approval rule for a patch baseline.</p>")
type patchRule = {
  @ocaml.doc("<p>For managed nodes identified by the approval rule filters, enables a patch baseline to apply
   non-security updates available in the specified repository. The default value is
    <code>false</code>. Applies to Linux managed nodes only.</p>")
  @as("EnableNonSecurity")
  enableNonSecurity: option<boolean_>,
  @ocaml.doc("<p>The cutoff date for auto approval of released patches. Any patches released on or before
   this date are installed automatically. Not supported on Debian Server or Ubuntu Server.</p>
         <p>Enter dates in the format <code>YYYY-MM-DD</code>. For example,
   <code>2021-12-31</code>.</p>")
  @as("ApproveUntilDate")
  approveUntilDate: option<patchStringDateTime>,
  @ocaml.doc("<p>The number of days after the release date of each patch matched by the rule that the patch
   is marked as approved in the patch baseline. For example, a value of <code>7</code> means that
   patches are approved seven days after they are released. Not supported on Debian Server or Ubuntu
   Server.</p>")
  @as("ApproveAfterDays")
  approveAfterDays: option<approveAfterDays>,
  @ocaml.doc("<p>A compliance severity level for all approved patches in a patch baseline.</p>")
  @as("ComplianceLevel")
  complianceLevel: option<patchComplianceLevel>,
  @ocaml.doc("<p>The patch filter group that defines the criteria for the rule.</p>")
  @as("PatchFilterGroup")
  patchFilterGroup: patchFilterGroup,
}
@ocaml.doc("<p>The result of the query.</p>")
type opsEntity = {
  @ocaml.doc("<p>The data returned by the query.</p>") @as("Data") data: option<opsEntityItemMap>,
  @ocaml.doc("<p>The query ID.</p>") @as("Id") id: option<opsEntityId>,
}
type maintenanceWindowTaskList = array<maintenanceWindowTask>
type maintenanceWindowTargetList = array<maintenanceWindowTarget>
@ocaml.doc("<p>Inventory query results.</p>")
type inventoryResultEntity = {
  @ocaml.doc("<p>The data section in the inventory result entity JSON.</p>") @as("Data")
  data: option<inventoryResultItemMap>,
  @ocaml.doc("<p>ID of the inventory result entity. For example, for managed node inventory the result will
   be the managed node ID. For EC2 instance inventory, the result will be the instance ID. </p>")
  @as("Id")
  id: option<inventoryResultEntityId>,
}
type inventoryGroupList = array<inventoryGroup>
type inventoryDeletionsList = array<inventoryDeletionStatusItem>
@ocaml.doc("<p>Describes a failed association.</p>")
type failedCreateAssociation = {
  @ocaml.doc("<p>The source of the failure.</p>") @as("Fault") fault: option<fault>,
  @ocaml.doc("<p>A description of the failure.</p>") @as("Message")
  message: option<batchErrorMessage>,
  @ocaml.doc("<p>The association.</p>") @as("Entry")
  entry: option<createAssociationBatchRequestEntry>,
}
@ocaml.doc("<p>Details about the response to a document review request.</p>")
type documentMetadataResponseInfo = {
  @ocaml.doc("<p>Details about a reviewer's response to a document review request.</p>")
  @as("ReviewerResponse")
  reviewerResponse: option<documentReviewerResponseList>,
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
@ocaml.doc("<p>Details about a specific Automation execution.</p>")
type automationExecutionMetadata = {
  @ocaml.doc("<p>The name of the Change Manager change request.</p>") @as("ChangeRequestName")
  changeRequestName: option<changeRequestName>,
  @ocaml.doc("<p>The ID of a State Manager association used in the Automation operation.</p>")
  @as("AssociationId")
  associationId: option<string_>,
  @ocaml.doc(
    "<p>The ID of an OpsItem that is created to represent a Change Manager change request.</p>"
  )
  @as("OpsItemId")
  opsItemId: option<string_>,
  @ocaml.doc("<p>Information about the Automation runbooks that are run during a runbook workflow in
   Change Manager.</p>
         <note>
            <p>The Automation runbooks specified for the runbook workflow can't run until all required
    approvals for the change request have been received.</p>
         </note>")
  @as("Runbooks")
  runbooks: option<runbooks>,
  @ocaml.doc("<p>The date and time the Automation operation is scheduled to start.</p>")
  @as("ScheduledTime")
  scheduledTime: option<dateTime>,
  @ocaml.doc("<p>The subtype of the Automation operation. Currently, the only supported value is
    <code>ChangeRequest</code>.</p>")
  @as("AutomationSubtype")
  automationSubtype: option<automationSubtype>,
  @ocaml.doc("<p>Use this filter with <a>DescribeAutomationExecutions</a>. Specify either Local or
   CrossAccount. CrossAccount is an Automation that runs in multiple Amazon Web Services Regions and
   Amazon Web Services accounts. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html\">Running Automation workflows in multiple Amazon Web Services Regions and accounts</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>. </p>")
  @as("AutomationType")
  automationType: option<automationType>,
  @ocaml.doc("<p>The list of execution outputs as defined in the Automation runbook.</p>")
  @as("Target")
  target: option<string_>,
  @ocaml.doc(
    "<p>The <code>MaxErrors</code> value specified by the user when starting the automation.</p>"
  )
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The <code>MaxConcurrency</code> value specified by the user when starting the
   automation.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>A list of targets that resolved during the execution.</p>") @as("ResolvedTargets")
  resolvedTargets: option<resolvedTargets>,
  @ocaml.doc("<p>The specified key-value mapping of document parameters to target resources.</p>")
  @as("TargetMaps")
  targetMaps: option<targetMaps>,
  @ocaml.doc("<p>The targets defined by the user when starting the automation.</p>") @as("Targets")
  targets: option<targets>,
  @ocaml.doc("<p>The list of execution outputs as defined in the Automation runbook.</p>")
  @as("TargetParameterName")
  targetParameterName: option<automationParameterKey>,
  @ocaml.doc("<p>The list of execution outputs as defined in the Automation runbook.</p>")
  @as("FailureMessage")
  failureMessage: option<string_>,
  @ocaml.doc("<p>The action of the step that is currently running.</p>") @as("CurrentAction")
  currentAction: option<string_>,
  @ocaml.doc("<p>The name of the step that is currently running.</p>") @as("CurrentStepName")
  currentStepName: option<string_>,
  @ocaml.doc("<p>The execution ID of the parent automation.</p>") @as("ParentAutomationExecutionId")
  parentAutomationExecutionId: option<automationExecutionId>,
  @ocaml.doc("<p>The Automation execution mode.</p>") @as("Mode") mode: option<executionMode>,
  @ocaml.doc("<p>The list of execution outputs as defined in the Automation runbook.</p>")
  @as("Outputs")
  outputs: option<automationParameterMap>,
  @ocaml.doc("<p>An S3 bucket where execution information is stored.</p>") @as("LogFile")
  logFile: option<string_>,
  @ocaml.doc("<p>The IAM role ARN of the user who ran the automation.</p>") @as("ExecutedBy")
  executedBy: option<string_>,
  @ocaml.doc("<p>The time the execution finished. This isn't populated if the execution is still in
   progress.</p>")
  @as("ExecutionEndTime")
  executionEndTime: option<dateTime>,
  @ocaml.doc("<p>The time the execution started.</p>") @as("ExecutionStartTime")
  executionStartTime: option<dateTime>,
  @ocaml.doc("<p>The status of the execution.</p>") @as("AutomationExecutionStatus")
  automationExecutionStatus: option<automationExecutionStatus>,
  @ocaml.doc("<p>The document version used during the execution.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the Automation runbook used during execution.</p>") @as("DocumentName")
  documentName: option<documentName>,
  @ocaml.doc("<p>The execution ID.</p>") @as("AutomationExecutionId")
  automationExecutionId: option<automationExecutionId>,
}
@ocaml.doc(
  "<p>Detailed information about the current state of an individual Automation execution.</p>"
)
type automationExecution = {
  @ocaml.doc("<p>The name of the Change Manager change request.</p>") @as("ChangeRequestName")
  changeRequestName: option<changeRequestName>,
  @ocaml.doc("<p>The ID of a State Manager association used in the Automation operation.</p>")
  @as("AssociationId")
  associationId: option<string_>,
  @ocaml.doc(
    "<p>The ID of an OpsItem that is created to represent a Change Manager change request.</p>"
  )
  @as("OpsItemId")
  opsItemId: option<string_>,
  @ocaml.doc("<p>Information about the Automation runbooks that are run as part of a runbook workflow.</p>
         <note>
            <p>The Automation runbooks specified for the runbook workflow can't run until all required
    approvals for the change request have been received.</p>
         </note>")
  @as("Runbooks")
  runbooks: option<runbooks>,
  @ocaml.doc("<p>The date and time the Automation operation is scheduled to start.</p>")
  @as("ScheduledTime")
  scheduledTime: option<dateTime>,
  @ocaml.doc("<p>The subtype of the Automation operation. Currently, the only supported value is
    <code>ChangeRequest</code>.</p>")
  @as("AutomationSubtype")
  automationSubtype: option<automationSubtype>,
  @ocaml.doc("<p>An aggregate of step execution statuses displayed in the Amazon Web Services Systems Manager console for a
   multi-Region and multi-account Automation execution.</p>")
  @as("ProgressCounters")
  progressCounters: option<progressCounters>,
  @ocaml.doc("<p>The combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
   Automation.</p>")
  @as("TargetLocations")
  targetLocations: option<targetLocations>,
  @ocaml.doc("<p>The target of the execution.</p>") @as("Target") target: option<string_>,
  @ocaml.doc("<p>The MaxErrors value specified by the user when the execution started.</p>")
  @as("MaxErrors")
  maxErrors: option<maxErrors>,
  @ocaml.doc("<p>The <code>MaxConcurrency</code> value specified by the user when the execution
   started.</p>")
  @as("MaxConcurrency")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>A list of resolved targets in the rate control execution.</p>")
  @as("ResolvedTargets")
  resolvedTargets: option<resolvedTargets>,
  @ocaml.doc("<p>The specified key-value mapping of document parameters to target resources.</p>")
  @as("TargetMaps")
  targetMaps: option<targetMaps>,
  @ocaml.doc("<p>The specified targets.</p>") @as("Targets") targets: option<targets>,
  @ocaml.doc("<p>The parameter name.</p>") @as("TargetParameterName")
  targetParameterName: option<automationParameterKey>,
  @ocaml.doc("<p>The action of the step that is currently running.</p>") @as("CurrentAction")
  currentAction: option<string_>,
  @ocaml.doc("<p>The name of the step that is currently running.</p>") @as("CurrentStepName")
  currentStepName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who ran the automation.</p>")
  @as("ExecutedBy")
  executedBy: option<string_>,
  @ocaml.doc("<p>The AutomationExecutionId of the parent automation.</p>")
  @as("ParentAutomationExecutionId")
  parentAutomationExecutionId: option<automationExecutionId>,
  @ocaml.doc("<p>The automation execution mode.</p>") @as("Mode") mode: option<executionMode>,
  @ocaml.doc(
    "<p>A message describing why an execution has failed, if the status is set to Failed.</p>"
  )
  @as("FailureMessage")
  failureMessage: option<string_>,
  @ocaml.doc("<p>The list of execution outputs as defined in the Automation runbook.</p>")
  @as("Outputs")
  outputs: option<automationParameterMap>,
  @ocaml.doc(
    "<p>The key-value map of execution parameters, which were supplied when calling <a>StartAutomationExecution</a>.</p>"
  )
  @as("Parameters")
  parameters: option<automationParameterMap>,
  @ocaml.doc("<p>A boolean value that indicates if the response contains the full list of the Automation step
   executions. If true, use the DescribeAutomationStepExecutions API operation to get the full list
   of step executions.</p>")
  @as("StepExecutionsTruncated")
  stepExecutionsTruncated: option<boolean_>,
  @ocaml.doc("<p>A list of details about the current state of all steps that comprise an execution. An
   Automation runbook contains a list of steps that are run in order.</p>")
  @as("StepExecutions")
  stepExecutions: option<stepExecutionList>,
  @ocaml.doc("<p>The execution status of the Automation.</p>") @as("AutomationExecutionStatus")
  automationExecutionStatus: option<automationExecutionStatus>,
  @ocaml.doc("<p>The time the execution finished.</p>") @as("ExecutionEndTime")
  executionEndTime: option<dateTime>,
  @ocaml.doc("<p>The time the execution started.</p>") @as("ExecutionStartTime")
  executionStartTime: option<dateTime>,
  @ocaml.doc("<p>The version of the document to use during execution.</p>") @as("DocumentVersion")
  documentVersion: option<documentVersion>,
  @ocaml.doc("<p>The name of the Automation runbook used during the execution.</p>")
  @as("DocumentName")
  documentName: option<documentName>,
  @ocaml.doc("<p>The execution ID.</p>") @as("AutomationExecutionId")
  automationExecutionId: option<automationExecutionId>,
}
@ocaml.doc("<p>A set of rules defining the approval rules for a patch baseline.</p>")
type patchRuleGroup = {
  @ocaml.doc("<p>The rules that make up the rule group.</p>") @as("PatchRules")
  patchRules: patchRuleList,
}
type automationExecutionMetadataList = array<automationExecutionMetadata>
@ocaml.doc("<p>Defines the basic information about a patch baseline override.</p>")
type baselineOverride = {
  @ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repositories. Applies to Linux managed nodes only.</p>")
  @as("Sources")
  sources: option<patchSourceList>,
  @ocaml.doc("<p>Indicates whether the list of approved patches includes non-security updates that should be
   applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
   nodes only.</p>")
  @as("ApprovedPatchesEnableNonSecurity")
  approvedPatchesEnableNonSecurity: option<boolean_>,
  @ocaml.doc("<p>The action for Patch Manager to take on patches included in the
    <code>RejectedPackages</code> list. A patch can be allowed only if it is a dependency of another
   package, or blocked entirely along with packages that include it as a dependency.</p>")
  @as("RejectedPatchesAction")
  rejectedPatchesAction: option<patchAction>,
  @ocaml.doc("<p>A list of explicitly rejected patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("RejectedPatches")
  rejectedPatches: option<patchIdList>,
  @ocaml.doc("<p>Defines the compliance level for approved patches. When an approved patch is reported as
   missing, this value describes the severity of the compliance violation.</p>")
  @as("ApprovedPatchesComplianceLevel")
  approvedPatchesComplianceLevel: option<patchComplianceLevel>,
  @ocaml.doc("<p>A list of explicitly approved patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
  @as("ApprovedPatches")
  approvedPatches: option<patchIdList>,
  @as("ApprovalRules") approvalRules: option<patchRuleGroup>,
  @as("GlobalFilters") globalFilters: option<patchFilterGroup>,
  @ocaml.doc("<p>The operating system rule used by the patch baseline override.</p>")
  @as("OperatingSystem")
  operatingSystem: option<operatingSystem>,
}
type rec opsAggregatorList = array<opsAggregator>
and opsAggregator = {
  @ocaml.doc("<p>A nested aggregator for viewing counts of OpsData.</p>") @as("Aggregators")
  aggregators: option<opsAggregatorList>,
  @ocaml.doc("<p>The aggregator filters.</p>") @as("Filters") filters: option<opsFilterList>,
  @ocaml.doc("<p>The aggregator value.</p>") @as("Values") values: option<opsAggregatorValueMap>,
  @ocaml.doc("<p>The name of an OpsData attribute on which to limit the count of OpsData.</p>")
  @as("AttributeName")
  attributeName: option<opsDataAttributeName>,
  @ocaml.doc("<p>The data type name to use for viewing counts of OpsData.</p>") @as("TypeName")
  typeName: option<opsDataTypeName>,
  @ocaml.doc("<p>Either a <code>Range</code> or <code>Count</code> aggregator for limiting an OpsData
   summary.</p>")
  @as("AggregatorType")
  aggregatorType: option<opsAggregatorType>,
}
and inventoryAggregatorList = array<inventoryAggregator>
and inventoryAggregator = {
  @ocaml.doc("<p>A user-defined set of one or more filters on which to aggregate inventory data. Groups
   return a count of resources that match and don't match the specified criteria.</p>")
  @as("Groups")
  groups: option<inventoryGroupList>,
  @ocaml.doc("<p>Nested aggregators to further refine aggregation for an inventory type.</p>")
  @as("Aggregators")
  aggregators: option<inventoryAggregatorList>,
  @ocaml.doc("<p>The inventory type and attribute name for aggregation.</p>") @as("Expression")
  expression: option<inventoryAggregatorExpression>,
}
@ocaml.doc("<p>Amazon Web Services Systems Manager is a collection of capabilities that helps you automate management tasks such as
   collecting system inventory, applying operating system (OS) patches, automating the creation of
   Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale.
   Systems Manager lets you remotely and securely manage the configuration of your managed nodes. A
    <i>managed node</i> is any Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, or on-premises
   server or virtual machine (VM) that has been configured for Systems Manager. </p>
         <note>
            <p>With support for IoT Greengrass core devices, the phrase <i>managed
     instance</i> has been changed to <i>managed node</i> in most of the Systems Manager
    documentation. The Systems Manager console, API calls, error messages, and SSM documents still use the
    term <i>instance</i>.</p>
         </note>
         <p>This reference is intended to be used with the <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/\">Amazon Web Services Systems Manager User Guide</a>.</p>
         <p>To get started, verify prerequisites and configure managed nodes. For more information, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html\">Setting up
    Amazon Web Services Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <p class=\"title\">
            <b>Related resources</b>
         </p>
         <ul>
            <li>
               <p>For information about how to use a Query API, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html\">Making API requests</a>. </p>
            </li>
            <li>
               <p>For information about other API operations you can perform on EC2 instances, see the
      <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/\">Amazon EC2 API Reference</a>.</p>
            </li>
            <li>
               <p>For information about AppConfig, a capability of Systems Manager, see the <a href=\"https://docs.aws.amazon.com/appconfig/latest/userguide/\">AppConfig User Guide</a> and the <a href=\"https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/\">AppConfig API
     Reference</a>.</p>
            </li>
            <li>
               <p>For information about Incident Manager, a capability of Systems Manager, see the <a href=\"https://docs.aws.amazon.com/incident-manager/latest/userguide/\">Incident Manager User Guide</a>
     and the <a href=\"https://docs.aws.amazon.com/incident-manager/latest/APIReference/\">Incident Manager API
      Reference</a>.</p>
            </li>
         </ul>")
module UpdateServiceSetting = {
  type t
  @ocaml.doc("<p>The request body of the UpdateServiceSetting API operation.</p>")
  type request = {
    @ocaml.doc("<p>The new value to specify for the service setting. The following list specifies the available
   values for each setting.</p>
         <ul>
            <li>
               <p>
                  <code>/ssm/parameter-store/default-parameter-tier</code>: <code>Standard</code>,
      <code>Advanced</code>, <code>Intelligent-Tiering</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/high-throughput-enabled</code>: <code>true</code> or
      <code>false</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/managed-instance/activation-tier</code>: <code>true</code> or
      <code>false</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-destination</code>: <code>CloudWatch</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-group-name</code>: the name of an Amazon CloudWatch Logs log group</p>
            </li>
            <li>
               <p>
                  <code>/ssm/documents/console/public-sharing-permission</code>: <code>Enable</code> or
      <code>Disable</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/managed-instance/activation-tier</code>: <code>standard</code> or
      <code>advanced</code>
               </p>
            </li>
         </ul>")
    @as("SettingValue")
    settingValue: serviceSettingValue,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service setting to reset. For example,
    <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.
   The setting ID can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-destination</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-group-name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/documents/console/public-sharing-permission</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/default-parameter-tier</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/high-throughput-enabled</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/managed-instance/activation-tier</code>
               </p>
            </li>
         </ul>")
    @as("SettingId")
    settingId: serviceSettingId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateServiceSettingCommand"
  let make = (~settingValue, ~settingId, ()) =>
    new({settingValue: settingValue, settingId: settingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateManagedInstanceRole = {
  type t
  type request = {
    @ocaml.doc("<p>The IAM role you want to assign or change.</p>") @as("IamRole") iamRole: iamRole,
    @ocaml.doc("<p>The ID of the managed node where you want to update the role.</p>")
    @as("InstanceId")
    instanceId: managedInstanceId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "UpdateManagedInstanceRoleCommand"
  let make = (~iamRole, ~instanceId, ()) => new({iamRole: iamRole, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, then all fields that are required by the <a>CreateMaintenanceWindow</a> operation are also required for this API request. Optional
   fields that aren't specified are set to null. </p>")
    @as("Replace")
    replace: option<boolean_>,
    @ocaml.doc("<p>Whether the maintenance window is enabled.</p>") @as("Enabled")
    enabled: option<maintenanceWindowEnabled>,
    @ocaml.doc("<p>Whether targets must be registered with the maintenance window before tasks can be defined
   for those targets.</p>")
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @ocaml.doc("<p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
   new tasks for execution.</p>")
    @as("Cutoff")
    cutoff: option<maintenanceWindowCutoff>,
    @ocaml.doc("<p>The duration of the maintenance window in hours.</p>") @as("Duration")
    duration: option<maintenanceWindowDurationHours>,
    @ocaml.doc("<p>The number of days to wait after the date and time specified by a cron expression before
   running the maintenance window.</p>
         <p>For example, the following cron expression schedules a maintenance window to run the third
   Tuesday of every month at 11:30 PM.</p>
         <p>
            <code>cron(30 23 ? * TUE#3 *)</code>
         </p>
         <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
   later.</p>")
    @as("ScheduleOffset")
    scheduleOffset: option<maintenanceWindowOffset>,
    @ocaml.doc("<p>The time zone that the scheduled maintenance window executions are based on, in Internet
   Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or
   \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time
    Zone Database</a> on the IANA website.</p>")
    @as("ScheduleTimezone")
    scheduleTimezone: option<maintenanceWindowTimezone>,
    @ocaml.doc(
      "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
    )
    @as("Schedule")
    schedule: option<maintenanceWindowSchedule>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
   become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
   maintenance window will no longer run.</p>")
    @as("EndDate")
    endDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
   become active. <code>StartDate</code> allows you to delay activation of the maintenance window
   until the specified future date.</p>")
    @as("StartDate")
    startDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>An optional description for the update request.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The ID of the maintenance window to update.</p>") @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>Whether the maintenance window is enabled.</p>") @as("Enabled")
    enabled: option<maintenanceWindowEnabled>,
    @ocaml.doc("<p>Whether targets must be registered with the maintenance window before tasks can be defined
   for those targets.</p>")
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @ocaml.doc("<p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
   new tasks for execution.</p>")
    @as("Cutoff")
    cutoff: option<maintenanceWindowCutoff>,
    @ocaml.doc("<p>The duration of the maintenance window in hours.</p>") @as("Duration")
    duration: option<maintenanceWindowDurationHours>,
    @ocaml.doc("<p>The number of days to wait to run a maintenance window after the scheduled cron expression
   date and time.</p>")
    @as("ScheduleOffset")
    scheduleOffset: option<maintenanceWindowOffset>,
    @ocaml.doc("<p>The time zone that the scheduled maintenance window executions are based on, in Internet
   Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or
   \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time
    Zone Database</a> on the IANA website.</p>")
    @as("ScheduleTimezone")
    scheduleTimezone: option<maintenanceWindowTimezone>,
    @ocaml.doc(
      "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
    )
    @as("Schedule")
    schedule: option<maintenanceWindowSchedule>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become inactive. The maintenance window won't run after this specified time.</p>")
    @as("EndDate")
    endDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become active. The maintenance window won't run before this specified time.</p>")
    @as("StartDate")
    startDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>An optional description of the update.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The ID of the created maintenance window.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateMaintenanceWindowCommand"
  let make = (
    ~windowId,
    ~replace=?,
    ~enabled=?,
    ~allowUnassociatedTargets=?,
    ~cutoff=?,
    ~duration=?,
    ~scheduleOffset=?,
    ~scheduleTimezone=?,
    ~schedule=?,
    ~endDate=?,
    ~startDate=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      replace: replace,
      enabled: enabled,
      allowUnassociatedTargets: allowUnassociatedTargets,
      cutoff: cutoff,
      duration: duration,
      scheduleOffset: scheduleOffset,
      scheduleTimezone: scheduleTimezone,
      schedule: schedule,
      endDate: endDate,
      startDate: startDate,
      description: description,
      name: name,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateSession = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the session to terminate.</p>") @as("SessionId") sessionId: sessionId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the session that has been terminated.</p>") @as("SessionId")
    sessionId: option<sessionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "TerminateSessionCommand"
  let make = (~sessionId, ()) => new({sessionId: sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopAutomationExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The stop request type. Valid types include the following: Cancel and Complete. The default
   type is Cancel.</p>")
    @as("Type")
    type_: option<stopType>,
    @ocaml.doc("<p>The execution ID of the Automation to stop.</p>") @as("AutomationExecutionId")
    automationExecutionId: automationExecutionId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "StopAutomationExecutionCommand"
  let make = (~automationExecutionId, ~type_=?, ()) =>
    new({type_: type_, automationExecutionId: automationExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResumeSession = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the disconnected session to resume.</p>") @as("SessionId")
    sessionId: sessionId,
  }
  type response = {
    @ocaml.doc("<p>A URL back to SSM Agent on the managed node that the Session Manager client uses to send commands and
   receive output from the managed node. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code>.</p>
         <p>
            <b>region</b> represents the Region identifier for an
						Amazon Web Services Region supported by Amazon Web Services Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region.
						For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href=\"https://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region\">Systems Manager service endpoints</a> in the
        <i>Amazon Web Services General Reference</i>.</p>
         <p>
            <b>session-id</b> represents the ID of a Session Manager session, such as
    <code>1a2b3c4dEXAMPLE</code>.</p>")
    @as("StreamUrl")
    streamUrl: option<streamUrl>,
    @ocaml.doc("<p>An encrypted token value containing session and caller information. Used to authenticate the
   connection to the managed node.</p>")
    @as("TokenValue")
    tokenValue: option<tokenValue>,
    @ocaml.doc("<p>The ID of the session.</p>") @as("SessionId") sessionId: option<sessionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ResumeSessionCommand"
  let make = (~sessionId, ()) => new({sessionId: sessionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterPatchBaselineForPatchGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the patch group to be registered with the patch baseline.</p>")
    @as("PatchGroup")
    patchGroup: patchGroup,
    @ocaml.doc("<p>The ID of the patch baseline to register with the patch group.</p>")
    @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>The name of the patch group registered with the patch baseline.</p>")
    @as("PatchGroup")
    patchGroup: option<patchGroup>,
    @ocaml.doc("<p>The ID of the patch baseline the patch group was registered with.</p>")
    @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "RegisterPatchBaselineForPatchGroupCommand"
  let make = (~patchGroup, ~baselineId, ()) => new({patchGroup: patchGroup, baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDefaultPatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the patch baseline that should be the default patch baseline.</p>")
    @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the default patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "RegisterDefaultPatchBaselineCommand"
  let make = (~baselineId, ()) => new({baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPatchBaselineForPatchGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Returns the operating system rule specified for patch groups using the patch
   baseline.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>The name of the patch group whose patch baseline should be retrieved.</p>")
    @as("PatchGroup")
    patchGroup: patchGroup,
  }
  type response = {
    @ocaml.doc(
      "<p>The operating system rule specified for patch groups using the patch baseline.</p>"
    )
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>The name of the patch group.</p>") @as("PatchGroup")
    patchGroup: option<patchGroup>,
    @ocaml.doc("<p>The ID of the patch baseline that should be used for the patch group.</p>")
    @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "GetPatchBaselineForPatchGroupCommand"
  let make = (~patchGroup, ~operatingSystem=?, ()) =>
    new({operatingSystem: operatingSystem, patchGroup: patchGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecutionTaskInvocation = {
  type t
  type request = {
    @ocaml.doc("<p>The invocation ID to retrieve.</p>") @as("InvocationId")
    invocationId: maintenanceWindowExecutionTaskInvocationId,
    @ocaml.doc(
      "<p>The ID of the specific task in the maintenance window task that should be retrieved. </p>"
    )
    @as("TaskId")
    taskId: maintenanceWindowExecutionTaskId,
    @ocaml.doc("<p>The ID of the maintenance window execution for which the task is a part.</p>")
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The maintenance window target ID.</p>") @as("WindowTargetId")
    windowTargetId: option<maintenanceWindowTaskTargetId>,
    @ocaml.doc("<p>User-provided value to be included in any Amazon CloudWatch Events or Amazon EventBridge
   events raised while running tasks for these targets in this maintenance window.</p>")
    @as("OwnerInformation")
    ownerInformation: option<ownerInformation>,
    @ocaml.doc("<p>The time that the task finished running on the target.</p>") @as("EndTime")
    endTime: option<dateTime>,
    @ocaml.doc("<p>The time that the task started running on the target.</p>") @as("StartTime")
    startTime: option<dateTime>,
    @ocaml.doc("<p>The details explaining the status. Details are only available for certain status
   values.</p>")
    @as("StatusDetails")
    statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @ocaml.doc("<p>The task status for an invocation.</p>") @as("Status")
    status: option<maintenanceWindowExecutionStatus>,
    @ocaml.doc("<p>The parameters used at the time that the task ran.</p>") @as("Parameters")
    parameters: option<maintenanceWindowExecutionTaskInvocationParameters>,
    @ocaml.doc("<p>Retrieves the task type for a maintenance window.</p>") @as("TaskType")
    taskType: option<maintenanceWindowTaskType>,
    @ocaml.doc("<p>The execution ID.</p>") @as("ExecutionId")
    executionId: option<maintenanceWindowExecutionTaskExecutionId>,
    @ocaml.doc("<p>The invocation ID.</p>") @as("InvocationId")
    invocationId: option<maintenanceWindowExecutionTaskInvocationId>,
    @ocaml.doc("<p>The task execution ID.</p>") @as("TaskExecutionId")
    taskExecutionId: option<maintenanceWindowExecutionTaskId>,
    @ocaml.doc("<p>The maintenance window execution ID.</p>") @as("WindowExecutionId")
    windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "GetMaintenanceWindowExecutionTaskInvocationCommand"
  let make = (~invocationId, ~taskId, ~windowExecutionId, ()) =>
    new({invocationId: invocationId, taskId: taskId, windowExecutionId: windowExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the maintenance window for which you want to retrieve information.</p>"
    )
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The date the maintenance window was last modified.</p>") @as("ModifiedDate")
    modifiedDate: option<dateTime>,
    @ocaml.doc("<p>The date the maintenance window was created.</p>") @as("CreatedDate")
    createdDate: option<dateTime>,
    @ocaml.doc("<p>Indicates whether the maintenance window is enabled.</p>") @as("Enabled")
    enabled: option<maintenanceWindowEnabled>,
    @ocaml.doc("<p>Whether targets must be registered with the maintenance window before tasks can be defined
   for those targets.</p>")
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: option<maintenanceWindowAllowUnassociatedTargets>,
    @ocaml.doc("<p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
   new tasks for execution.</p>")
    @as("Cutoff")
    cutoff: option<maintenanceWindowCutoff>,
    @ocaml.doc("<p>The duration of the maintenance window in hours.</p>") @as("Duration")
    duration: option<maintenanceWindowDurationHours>,
    @ocaml.doc("<p>The next time the maintenance window will actually run, taking into account any specified
   times for the maintenance window to become active or inactive.</p>")
    @as("NextExecutionTime")
    nextExecutionTime: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The number of days to wait to run a maintenance window after the scheduled cron expression
   date and time.</p>")
    @as("ScheduleOffset")
    scheduleOffset: option<maintenanceWindowOffset>,
    @ocaml.doc("<p>The time zone that the scheduled maintenance window executions are based on, in Internet
   Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or
   \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time
    Zone Database</a> on the IANA website.</p>")
    @as("ScheduleTimezone")
    scheduleTimezone: option<maintenanceWindowTimezone>,
    @ocaml.doc(
      "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
    )
    @as("Schedule")
    schedule: option<maintenanceWindowSchedule>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become inactive. The maintenance window won't run after this specified time.</p>")
    @as("EndDate")
    endDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled
   to become active. The maintenance window won't run before this specified time.</p>")
    @as("StartDate")
    startDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The description of the maintenance window.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The ID of the created maintenance window.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetMaintenanceWindowCommand"
  let make = (~windowId, ()) => new({windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDefaultPatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>Returns the default patch baseline for the specified operating system.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
  }
  type response = {
    @ocaml.doc("<p>The operating system for the returned patch baseline. </p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>The ID of the default patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetDefaultPatchBaselineCommand"
  let make = (~operatingSystem=?, ()) => new({operatingSystem: operatingSystem})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnectionStatus = {
  type t
  type request = {@ocaml.doc("<p>The managed node ID.</p>") @as("Target") target: sessionTarget}
  type response = {
    @ocaml.doc("<p>The status of the connection to the managed node. For example, 'Connected' or 'Not
   Connected'.</p>")
    @as("Status")
    status: option<connectionStatus>,
    @ocaml.doc("<p>The ID of the managed node to check connection status. </p>") @as("Target")
    target: option<sessionTarget>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetConnectionStatusCommand"
  let make = (~target, ()) => new({target: target})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchGroupState = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the patch group whose patch snapshot should be retrieved.</p>")
    @as("PatchGroup")
    patchGroup: patchGroup,
  }
  type response = {
    @ocaml.doc("<p>The number of managed nodes with patches installed that are specified as other than
    <code>Critical</code> or <code>Security</code> but aren't compliant with the patch baseline. The
   status of these managed nodes is <code>NON_COMPLIANT</code>.</p>")
    @as("InstancesWithOtherNonCompliantPatches")
    instancesWithOtherNonCompliantPatches: option<instancesCount>,
    @ocaml.doc("<p>The number of managed nodes where patches that are specified as <code>Security</code> in a
   patch advisory aren't installed. These patches might be missing, have failed installation, were
   rejected, or were installed but awaiting a required managed node reboot. The status of these
   managed nodes is <code>NON_COMPLIANT</code>.</p>")
    @as("InstancesWithSecurityNonCompliantPatches")
    instancesWithSecurityNonCompliantPatches: option<instancesCount>,
    @ocaml.doc("<p>The number of managed nodes where patches that are specified as <code>Critical</code> for
   compliance reporting in the patch baseline aren't installed. These patches might be missing, have
   failed installation, were rejected, or were installed but awaiting a required managed node
   reboot. The status of these managed nodes is <code>NON_COMPLIANT</code>.</p>")
    @as("InstancesWithCriticalNonCompliantPatches")
    instancesWithCriticalNonCompliantPatches: option<instancesCount>,
    @ocaml.doc("<p>The number of managed nodes with <code>NotApplicable</code> patches beyond the supported
   limit, which aren't reported by name to Inventory. Inventory is a capability of Amazon Web Services Systems Manager.</p>")
    @as("InstancesWithUnreportedNotApplicablePatches")
    instancesWithUnreportedNotApplicablePatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes with patches that aren't applicable.</p>")
    @as("InstancesWithNotApplicablePatches")
    instancesWithNotApplicablePatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes with patches from the patch baseline that failed to
   install.</p>")
    @as("InstancesWithFailedPatches")
    instancesWithFailedPatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes with missing patches from the patch baseline.</p>")
    @as("InstancesWithMissingPatches")
    instancesWithMissingPatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes with patches installed that are specified in a
    <code>RejectedPatches</code> list. Patches with a status of <code>INSTALLED_REJECTED</code> were
   typically installed before they were added to a <code>RejectedPatches</code> list.</p>
         <note>
            <p>If <code>ALLOW_AS_DEPENDENCY</code> is the specified option for
     <code>RejectedPatchesAction</code>, the value of
     <code>InstancesWithInstalledRejectedPatches</code> will always be <code>0</code> (zero).</p>
         </note>")
    @as("InstancesWithInstalledRejectedPatches")
    instancesWithInstalledRejectedPatches: option<instancesCount>,
    @ocaml.doc("<p>The number of managed nodes with patches installed by Patch Manager that haven't been
   rebooted after the patch installation. The status of these managed nodes is
    <code>NON_COMPLIANT</code>.</p>")
    @as("InstancesWithInstalledPendingRebootPatches")
    instancesWithInstalledPendingRebootPatches: option<instancesCount>,
    @ocaml.doc("<p>The number of managed nodes with patches installed that aren't defined in the patch
   baseline.</p>")
    @as("InstancesWithInstalledOtherPatches")
    instancesWithInstalledOtherPatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes with installed patches.</p>")
    @as("InstancesWithInstalledPatches")
    instancesWithInstalledPatches: option<integer_>,
    @ocaml.doc("<p>The number of managed nodes in the patch group.</p>") @as("Instances")
    instances: option<integer_>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribePatchGroupStateCommand"
  let make = (~patchGroup, ()) => new({patchGroup: patchGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTaskFromMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the task to remove from the maintenance window.</p>")
    @as("WindowTaskId")
    windowTaskId: maintenanceWindowTaskId,
    @ocaml.doc("<p>The ID of the maintenance window the task should be removed from.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the task removed from the maintenance window.</p>") @as("WindowTaskId")
    windowTaskId: option<maintenanceWindowTaskId>,
    @ocaml.doc("<p>The ID of the maintenance window the task was removed from.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DeregisterTaskFromMaintenanceWindowCommand"
  let make = (~windowTaskId, ~windowId, ()) => new({windowTaskId: windowTaskId, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTargetFromMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>The system checks if the target is being referenced by a task. If the target is being
   referenced, the system returns an error and doesn't deregister the target from the maintenance
   window.</p>")
    @as("Safe")
    safe: option<boolean_>,
    @ocaml.doc("<p>The ID of the target definition to remove.</p>") @as("WindowTargetId")
    windowTargetId: maintenanceWindowTargetId,
    @ocaml.doc("<p>The ID of the maintenance window the target should be removed from.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the removed target definition.</p>") @as("WindowTargetId")
    windowTargetId: option<maintenanceWindowTargetId>,
    @ocaml.doc("<p>The ID of the maintenance window the target was removed from.</p>")
    @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DeregisterTargetFromMaintenanceWindowCommand"
  let make = (~windowTargetId, ~windowId, ~safe=?, ()) =>
    new({safe: safe, windowTargetId: windowTargetId, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterPatchBaselineForPatchGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the patch group that should be deregistered from the patch baseline.</p>"
    )
    @as("PatchGroup")
    patchGroup: patchGroup,
    @ocaml.doc("<p>The ID of the patch baseline to deregister the patch group from.</p>")
    @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>The name of the patch group deregistered from the patch baseline.</p>")
    @as("PatchGroup")
    patchGroup: option<patchGroup>,
    @ocaml.doc("<p>The ID of the patch baseline the patch group was deregistered from.</p>")
    @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DeregisterPatchBaselineForPatchGroupCommand"
  let make = (~patchGroup, ~baselineId, ()) => new({patchGroup: patchGroup, baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterManagedInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ID assigned to the managed node when you registered it using the activation process.
  </p>")
    @as("InstanceId")
    instanceId: managedInstanceId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DeregisterManagedInstanceCommand"
  let make = (~instanceId, ()) => new({instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourceDataSync = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the type of resource data sync to delete.</p>") @as("SyncType")
    syncType: option<resourceDataSyncType>,
    @ocaml.doc("<p>The name of the configuration to delete.</p>") @as("SyncName")
    syncName: resourceDataSyncName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteResourceDataSyncCommand"
  let make = (~syncName, ~syncType=?, ()) => new({syncType: syncType, syncName: syncName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the patch baseline to delete.</p>") @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the deleted patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeletePatchBaselineCommand"
  let make = (~baselineId, ()) => new({baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the parameter to delete.</p>") @as("Name") name: psparameterName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteParameterCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOpsMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.</p>")
    @as("OpsMetadataArn")
    opsMetadataArn: opsMetadataArn,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteOpsMetadataCommand"
  let make = (~opsMetadataArn, ()) => new({opsMetadataArn: opsMetadataArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the maintenance window to delete.</p>") @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the deleted maintenance window.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteMaintenanceWindowCommand"
  let make = (~windowId, ()) => new({windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDocument = {
  type t
  type request = {
    @ocaml.doc("<p>Some SSM document types require that you specify a <code>Force</code> flag before you can
   delete the document. For example, you must specify a <code>Force</code> flag to delete a document
   of type <code>ApplicationConfigurationSchema</code>. You can restrict access to the
    <code>Force</code> flag in an Identity and Access Management (IAM) policy.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The version name of the document that you want to delete. If not provided, all versions of
   the document are deleted.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>The version of the document that you want to delete. If not provided, all versions of the
   document are deleted.</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the document.</p>") @as("Name") name: documentName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteDocumentCommand"
  let make = (~name, ~force=?, ~versionName=?, ~documentVersion=?, ()) =>
    new({force: force, versionName: versionName, documentVersion: documentVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The association ID that you want to delete.</p>") @as("AssociationId")
    associationId: option<associationId>,
    @ocaml.doc("<p>The managed node ID.</p>
         <note>
            <p>
               <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    association, use the <code>Targets</code> parameter. Requests that include the parameter
     <code>InstanceID</code> with Systems Manager documents (SSM documents) that use schema version 2.0 or
    later will fail. In addition, if you use the parameter <code>InstanceId</code>, you can't use
    the parameters <code>AssociationName</code>, <code>DocumentVersion</code>,
     <code>MaxErrors</code>, <code>MaxConcurrency</code>, <code>OutputLocation</code>, or
     <code>ScheduleExpression</code>. To use these parameters, you must use the <code>Targets</code>
    parameter.</p>
         </note>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteAssociationCommand"
  let make = (~associationId=?, ~instanceId=?, ~name=?, ()) =>
    new({associationId: associationId, instanceId: instanceId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteActivation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the activation that you want to delete.</p>") @as("ActivationId")
    activationId: activationId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteActivationCommand"
  let make = (~activationId, ()) => new({activationId: activationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelMaintenanceWindowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the maintenance window execution to stop.</p>")
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the maintenance window execution that has been stopped.</p>")
    @as("WindowExecutionId")
    windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "CancelMaintenanceWindowExecutionCommand"
  let make = (~windowExecutionId, ()) => new({windowExecutionId: windowExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentDefaultVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of a custom document that you want to set as the default version.</p>"
    )
    @as("DocumentVersion")
    documentVersion: documentVersionNumber,
    @ocaml.doc("<p>The name of a custom document that you want to set as the default version.</p>")
    @as("Name")
    name: documentName,
  }
  type response = {
    @ocaml.doc(
      "<p>The description of a custom document that you want to set as the default version.</p>"
    )
    @as("Description")
    description: option<documentDefaultVersionDescription>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "UpdateDocumentDefaultVersionCommand"
  let make = (~documentVersion, ~name, ()) => new({documentVersion: documentVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnlabelParameterVersion = {
  type t
  type request = {
    @ocaml.doc("<p>One or more labels to delete from the specified parameter version.</p>")
    @as("Labels")
    labels: parameterLabelList,
    @ocaml.doc("<p>The specific version of the parameter which you want to delete one or more labels from. If
   it isn't present, the call will fail.</p>")
    @as("ParameterVersion")
    parameterVersion: psparameterVersion,
    @ocaml.doc("<p>The name of the parameter from which you want to delete one or more labels.</p>")
    @as("Name")
    name: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>The labels that aren't attached to the given parameter version.</p>")
    @as("InvalidLabels")
    invalidLabels: option<parameterLabelList>,
    @ocaml.doc("<p>A list of all labels deleted from the parameter.</p>") @as("RemovedLabels")
    removedLabels: option<parameterLabelList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UnlabelParameterVersionCommand"
  let make = (~labels, ~parameterVersion, ~name, ()) =>
    new({labels: labels, parameterVersion: parameterVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAssociationsOnce = {
  type t
  type request = {
    @ocaml.doc("<p>The association IDs that you want to run immediately and only one time.</p>")
    @as("AssociationIds")
    associationIds: associationIdList,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "StartAssociationsOnceCommand"
  let make = (~associationIds, ()) => new({associationIds: associationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetServiceSetting = {
  type t
  @ocaml.doc("<p>The request body of the ResetServiceSetting API operation.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be one of
   the following.</p>
         <ul>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-destination</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-group-name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/documents/console/public-sharing-permission</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/default-parameter-tier</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/high-throughput-enabled</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/managed-instance/activation-tier</code>
               </p>
            </li>
         </ul>")
    @as("SettingId")
    settingId: serviceSettingId,
  }
  @ocaml.doc("<p>The result body of the ResetServiceSetting API operation.</p>")
  type response = {
    @ocaml.doc("<p>The current, effective service setting after calling the ResetServiceSetting API
   operation.</p>")
    @as("ServiceSetting")
    serviceSetting: option<serviceSetting>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ResetServiceSettingCommand"
  let make = (~settingId, ()) => new({settingId: settingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>Tag keys that you want to remove from the specified resource.</p>")
    @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The ID of the resource from which you want to remove tags. For example:</p>
         <p>ManagedInstance: mi-012345abcde</p>
         <p>MaintenanceWindow: mw-012345abcde</p>
         <p>PatchBaseline: pb-012345abcde</p>
         <p>OpsMetadata object: <code>ResourceID</code> for tagging is created from the Amazon Resource
   Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from the strings that
   come after the word <code>opsmetadata</code> in the ARN. For example, an OpsMetadata object with
   an ARN of <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
   has a <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    <code>/aws/ssm/MyGroup/appmanager</code>.</p>
         <p>For the Document and Parameter values, use the name of the resource.</p>
         <note>
            <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    managed nodes. Specify the name of the managed node in the following format: mi-ID_number. For
    example, mi-1a2b3c4d5e6f.</p>
         </note>")
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The type of resource from which you want to remove a tag.</p>
         <note>
            <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    managed nodes. Specify the name of the managed node in the following format:
      <code>mi-<i>ID_number</i>
               </code>. For example,
    <code>mi-1a2b3c4d5e6f</code>.</p>
         </note>")
    @as("ResourceType")
    resourceType: resourceTypeForTagging,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceId, ~resourceType, ()) =>
    new({tagKeys: tagKeys, resourceId: resourceId, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyDocumentPermission = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) The version of the document to share. If it isn't specified, the system choose
   the <code>Default</code> version to share.</p>")
    @as("SharedDocumentVersion")
    sharedDocumentVersion: option<sharedDocumentVersion>,
    @ocaml.doc("<p>The Amazon Web Services user accounts that should no longer have access to the document. The Amazon Web Services
   user account can either be a group of account IDs or <i>All</i>. This action has a
   higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add
   and the same ID to remove, the system removes access to the document.</p>")
    @as("AccountIdsToRemove")
    accountIdsToRemove: option<accountIdList>,
    @ocaml.doc("<p>The Amazon Web Services user accounts that should have access to the document. The account IDs can
   either be a group of account IDs or <i>All</i>.</p>")
    @as("AccountIdsToAdd")
    accountIdsToAdd: option<accountIdList>,
    @ocaml.doc("<p>The permission type for the document. The permission type can be
   <i>Share</i>.</p>")
    @as("PermissionType")
    permissionType: documentPermissionType,
    @ocaml.doc("<p>The name of the document that you want to share.</p>") @as("Name")
    name: documentName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ModifyDocumentPermissionCommand"
  let make = (
    ~permissionType,
    ~name,
    ~sharedDocumentVersion=?,
    ~accountIdsToRemove=?,
    ~accountIdsToAdd=?,
    (),
  ) =>
    new({
      sharedDocumentVersion: sharedDocumentVersion,
      accountIdsToRemove: accountIdsToRemove,
      accountIdsToAdd: accountIdsToAdd,
      permissionType: permissionType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module LabelParameterVersion = {
  type t
  type request = {
    @ocaml.doc("<p>One or more labels to attach to the specified parameter version.</p>")
    @as("Labels")
    labels: parameterLabelList,
    @ocaml.doc("<p>The specific version of the parameter on which you want to attach one or more labels. If no
   version is specified, the system attaches the label to the latest version.</p>")
    @as("ParameterVersion")
    parameterVersion: option<psparameterVersion>,
    @ocaml.doc("<p>The parameter name on which you want to attach one or more labels.</p>")
    @as("Name")
    name: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>The version of the parameter that has been labeled.</p>") @as("ParameterVersion")
    parameterVersion: option<psparameterVersion>,
    @ocaml.doc("<p>The label doesn't meet the requirements. For information about parameter label requirements,
   see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html\">Labeling parameters</a>
   in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("InvalidLabels")
    invalidLabels: option<parameterLabelList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "LabelParameterVersionCommand"
  let make = (~labels, ~name, ~parameterVersion=?, ()) =>
    new({labels: labels, parameterVersion: parameterVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceSetting = {
  type t
  @ocaml.doc("<p>The request body of the GetServiceSetting API operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the service setting to get. The setting ID can be one of the following.</p>
         <ul>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-destination</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/automation/customer-script-log-group-name</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/documents/console/public-sharing-permission</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/default-parameter-tier</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/parameter-store/high-throughput-enabled</code>
               </p>
            </li>
            <li>
               <p>
                  <code>/ssm/managed-instance/activation-tier</code>
               </p>
            </li>
         </ul>")
    @as("SettingId")
    settingId: serviceSettingId,
  }
  @ocaml.doc("<p>The query result body of the GetServiceSetting API operation.</p>")
  type response = {
    @ocaml.doc("<p>The query result of the current service setting.</p>") @as("ServiceSetting")
    serviceSetting: option<serviceSetting>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetServiceSettingCommand"
  let make = (~settingId, ()) => new({settingId: settingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameter = {
  type t
  type request = {
    @ocaml.doc("<p>Return decrypted values for secure string parameters. This flag is ignored for
    <code>String</code> and <code>StringList</code> parameter types.</p>")
    @as("WithDecryption")
    withDecryption: option<boolean_>,
    @ocaml.doc("<p>The name of the parameter you want to query.</p>
         <p>To query by parameter label, use <code>\"Name\": \"name:label\"</code>. To query by parameter
   version, use <code>\"Name\": \"name:version\"</code>.</p>")
    @as("Name")
    name: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>Information about a parameter.</p>") @as("Parameter")
    parameter: option<parameter>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetParameterCommand"
  let make = (~name, ~withDecryption=?, ()) => new({withDecryption: withDecryption, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the maintenance window execution that includes the task.</p>")
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The time the maintenance window finished running.</p>") @as("EndTime")
    endTime: option<dateTime>,
    @ocaml.doc("<p>The time the maintenance window started running.</p>") @as("StartTime")
    startTime: option<dateTime>,
    @ocaml.doc("<p>The details explaining the status. Not available for all status values.</p>")
    @as("StatusDetails")
    statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @ocaml.doc("<p>The status of the maintenance window execution.</p>") @as("Status")
    status: option<maintenanceWindowExecutionStatus>,
    @ocaml.doc("<p>The ID of the task executions from the maintenance window execution.</p>")
    @as("TaskIds")
    taskIds: option<maintenanceWindowExecutionTaskIdList>,
    @ocaml.doc("<p>The ID of the maintenance window execution.</p>") @as("WindowExecutionId")
    windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "GetMaintenanceWindowExecutionCommand"
  let make = (~windowExecutionId, ()) => new({windowExecutionId: windowExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommandInvocation = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the plugin for which you want detailed results. If the document contains only
   one plugin, you can omit the name and details for that plugin. If the document contains more than
   one plugin, you must specify the name of the plugin for which you want to view details.</p>
         <p>Plugin names are also referred to as <i>step names</i> in Systems Manager documents (SSM
   documents). For example, <code>aws:RunShellScript</code> is a plugin.</p>
         <p>To find the <code>PluginName</code>, check the document content and find the name of the
   plugin. Alternatively, use <a>ListCommandInvocations</a> with the
    <code>CommandId</code> and <code>Details</code> parameters. The <code>PluginName</code> is the
    <code>Name</code> attribute of the <code>CommandPlugin</code> object in the
    <code>CommandPlugins</code> list.</p>")
    @as("PluginName")
    pluginName: option<commandPluginName>,
    @ocaml.doc("<p>(Required) The ID of the managed node targeted by the command. A <i>managed
    node</i> can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, and on-premises server or VM
   in your hybrid environment that is configured for Amazon Web Services Systems Manager.</p>")
    @as("InstanceId")
    instanceId: instanceId,
    @ocaml.doc("<p>(Required) The parent command ID of the invocation plugin.</p>") @as("CommandId")
    commandId: commandId,
  }
  type response = {
    @ocaml.doc(
      "<p>Amazon CloudWatch Logs information where Systems Manager sent the command output.</p>"
    )
    @as("CloudWatchOutputConfig")
    cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
    @ocaml.doc("<p>The URL for the complete text written by the plugin to <code>stderr</code>. If the command
   hasn't finished running, then this string is empty.</p>")
    @as("StandardErrorUrl")
    standardErrorUrl: option<url>,
    @ocaml.doc("<p>The first 8,000 characters written by the plugin to <code>stderr</code>. If the command
   hasn't finished running, then this string is empty.</p>")
    @as("StandardErrorContent")
    standardErrorContent: option<standardErrorContent>,
    @ocaml.doc("<p>The URL for the complete text written by the plugin to <code>stdout</code> in Amazon Simple Storage Service (Amazon S3). If an S3 bucket wasn't specified, then this string is
   empty.</p>")
    @as("StandardOutputUrl")
    standardOutputUrl: option<url>,
    @ocaml.doc("<p>The first 24,000 characters written by the plugin to <code>stdout</code>. If the command
   hasn't finished running, if <code>ExecutionStatus</code> is neither Succeeded nor Failed, then
   this string is empty.</p>")
    @as("StandardOutputContent")
    standardOutputContent: option<standardOutputContent>,
    @ocaml.doc("<p>A detailed status of the command execution for an invocation. <code>StatusDetails</code>
   includes more information than <code>Status</code> because it includes states resulting from
   error and concurrency control parameters. <code>StatusDetails</code> can show different results
   than <code>Status</code>. For more information about these statuses, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html\">Understanding
    command statuses</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.
    <code>StatusDetails</code> can be one of the following values:</p>
         <ul>
            <li>
               <p>Pending: The command hasn't been sent to the managed node.</p>
            </li>
            <li>
               <p>In Progress: The command has been sent to the managed node but hasn't reached a terminal
     state.</p>
            </li>
            <li>
               <p>Delayed: The system attempted to send the command to the target, but the target wasn't
     available. The managed node might not be available because of network issues, because the node
     was stopped, or for similar reasons. The system will try to send the command again.</p>
            </li>
            <li>
               <p>Success: The command or plugin ran successfully. This is a terminal state.</p>
            </li>
            <li>
               <p>Delivery Timed Out: The command wasn't delivered to the managed node before the delivery
     timeout expired. Delivery timeouts don't count against the parent command's
      <code>MaxErrors</code> limit, but they do contribute to whether the parent command status is
     Success or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Execution Timed Out: The command started to run on the managed node, but the execution
     wasn't complete before the timeout expired. Execution timeouts count against the
      <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Failed: The command wasn't run successfully on the managed node. For a plugin, this
     indicates that the result code wasn't zero. For a command invocation, this indicates that the
     result code for one or more plugins wasn't zero. Invocation failures count against the
      <code>MaxErrors</code> limit of the parent command. This is a terminal state.</p>
            </li>
            <li>
               <p>Cancelled: The command was terminated before it was completed. This is a terminal
     state.</p>
            </li>
            <li>
               <p>Undeliverable: The command can't be delivered to the managed node. The node might not
     exist or might not be responding. Undeliverable invocations don't count against the parent
     command's <code>MaxErrors</code> limit and don't contribute to whether the parent command
     status is Success or Incomplete. This is a terminal state.</p>
            </li>
            <li>
               <p>Terminated: The parent command exceeded its <code>MaxErrors</code> limit and subsequent
     command invocations were canceled by the system. This is a terminal state.</p>
            </li>
         </ul>")
    @as("StatusDetails")
    statusDetails: option<statusDetails>,
    @ocaml.doc("<p>The status of this invocation plugin. This status can be different than
    <code>StatusDetails</code>.</p>")
    @as("Status")
    status: option<commandInvocationStatus>,
    @ocaml.doc("<p>The date and time the plugin finished running. Date and time are written in ISO 8601 format.
   For example, June 7, 2017 is represented as 2017-06-7. The following sample Amazon Web Services CLI command uses
   the <code>InvokedAfter</code> filter.</p>
         <p>
            <code>aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z</code>
         </p>
         <p>If the plugin hasn't started to run, the string is empty.</p>")
    @as("ExecutionEndDateTime")
    executionEndDateTime: option<stringDateTime>,
    @ocaml.doc("<p>Duration since <code>ExecutionStartDateTime</code>.</p>")
    @as("ExecutionElapsedTime")
    executionElapsedTime: option<stringDateTime>,
    @ocaml.doc("<p>The date and time the plugin started running. Date and time are written in ISO 8601 format.
   For example, June 7, 2017 is represented as 2017-06-7. The following sample Amazon Web Services CLI command uses
   the <code>InvokedBefore</code> filter.</p>
         <p>
            <code>aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z</code>
         </p>
         <p>If the plugin hasn't started to run, the string is empty.</p>")
    @as("ExecutionStartDateTime")
    executionStartDateTime: option<stringDateTime>,
    @ocaml.doc("<p>The error level response code for the plugin script. If the response code is
   <code>-1</code>, then the command hasn't started running on the managed node, or it wasn't
   received by the node.</p>")
    @as("ResponseCode")
    responseCode: option<responseCode>,
    @ocaml.doc("<p>The name of the plugin, or <i>step name</i>, for which details are reported.
   For example, <code>aws:RunShellScript</code> is a plugin.</p>")
    @as("PluginName")
    pluginName: option<commandPluginName>,
    @ocaml.doc("<p>The Systems Manager document (SSM document) version used in the request.</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc(
      "<p>The name of the document that was run. For example, <code>AWS-RunShellScript</code>.</p>"
    )
    @as("DocumentName")
    documentName: option<documentName>,
    @ocaml.doc("<p>The comment text for the command.</p>") @as("Comment") comment: option<comment>,
    @ocaml.doc("<p>The ID of the managed node targeted by the command. A <i>managed node</i> can
   be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, or on-premises server or VM in your hybrid
   environment that is configured for Amazon Web Services Systems Manager.</p>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>The parent command ID of the invocation plugin.</p>") @as("CommandId")
    commandId: option<commandId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetCommandInvocationCommand"
  let make = (~instanceId, ~commandId, ~pluginName=?, ()) =>
    new({pluginName: pluginName, instanceId: instanceId, commandId: commandId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCalendarState = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) The specific time for which you want to get calendar state information, in <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> format. If you don't specify a
   value or <code>AtTime</code>, the current time is used.</p>")
    @as("AtTime")
    atTime: option<iso8601String>,
    @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Systems Manager documents (SSM documents) that
   represent the calendar entries for which you want to get the state.</p>")
    @as("CalendarNames")
    calendarNames: calendarNameOrARNList,
  }
  type response = {
    @ocaml.doc("<p>The time, as an <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> string,
   that the calendar state will change. If the current calendar state is <code>OPEN</code>,
    <code>NextTransitionTime</code> indicates when the calendar state changes to
   <code>CLOSED</code>, and vice-versa.</p>")
    @as("NextTransitionTime")
    nextTransitionTime: option<iso8601String>,
    @ocaml.doc("<p>The time, as an <a href=\"https://en.wikipedia.org/wiki/ISO_8601\">ISO 8601</a> string,
   that you specified in your command. If you don't specify a time, <code>GetCalendarState</code>
   uses the current time.</p>")
    @as("AtTime")
    atTime: option<iso8601String>,
    @ocaml.doc("<p>The state of the calendar. An <code>OPEN</code> calendar indicates that actions are allowed
   to proceed, and a <code>CLOSED</code> calendar indicates that actions aren't allowed to
   proceed.</p>")
    @as("State")
    state: option<calendarState>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetCalendarStateCommand"
  let make = (~calendarNames, ~atTime=?, ()) => new({atTime: atTime, calendarNames: calendarNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateOpsItemRelatedItem = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the association for which you want to delete an association between the OpsItem
   and a related item.</p>")
    @as("AssociationId")
    associationId: opsItemRelatedItemAssociationId,
    @ocaml.doc("<p>The ID of the OpsItem for which you want to delete an association between the OpsItem and a
   related item.</p>")
    @as("OpsItemId")
    opsItemId: opsItemId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DisassociateOpsItemRelatedItemCommand"
  let make = (~associationId, ~opsItemId, ()) =>
    new({associationId: associationId, opsItemId: opsItemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the parameters to delete. After deleting a parameter, wait for at least 30
   seconds to create a parameter with the same name.</p>")
    @as("Names")
    names: parameterNameList,
  }
  type response = {
    @ocaml.doc(
      "<p>The names of parameters that weren't deleted because the parameters aren't valid.</p>"
    )
    @as("InvalidParameters")
    invalidParameters: option<parameterNameList>,
    @ocaml.doc("<p>The names of the deleted parameters.</p>") @as("DeletedParameters")
    deletedParameters: option<parameterNameList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteParametersCommand"
  let make = (~names, ()) => new({names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelCommand = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>(Optional) A list of managed node IDs on which you want to cancel the command. If not
   provided, the command is canceled on every node on which it was requested.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIdList>,
    @ocaml.doc("<p>The ID of the command you want to cancel.</p>") @as("CommandId")
    commandId: commandId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CancelCommandCommand"
  let make = (~commandId, ~instanceIds=?, ()) =>
    new({instanceIds: instanceIds, commandId: commandId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateOpsItemRelatedItem = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Web Services resource that you want to associate with the
   OpsItem.</p>")
    @as("ResourceUri")
    resourceUri: opsItemRelatedItemAssociationResourceUri,
    @ocaml.doc("<p>The type of resource that you want to associate with an OpsItem. OpsCenter supports the
   following types:</p>
         <p>
            <code>AWS::SSMIncidents::IncidentRecord</code>: an Incident Manager incident. </p>
         <p>
            <code>AWS::SSM::Document</code>: a Systems Manager (SSM) document.</p>")
    @as("ResourceType")
    resourceType: opsItemRelatedItemAssociationResourceType,
    @ocaml.doc("<p>The type of association that you want to create between an OpsItem and a resource. OpsCenter
   supports <code>IsParentOf</code> and <code>RelatesTo</code> association types.</p>")
    @as("AssociationType")
    associationType: opsItemRelatedItemAssociationType,
    @ocaml.doc(
      "<p>The ID of the OpsItem to which you want to associate a resource as a related item.</p>"
    )
    @as("OpsItemId")
    opsItemId: opsItemId,
  }
  type response = {
    @ocaml.doc("<p>The association ID.</p>") @as("AssociationId")
    associationId: option<opsItemRelatedItemAssociationId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "AssociateOpsItemRelatedItemCommand"
  let make = (~resourceUri, ~resourceType, ~associationType, ~opsItemId, ()) =>
    new({
      resourceUri: resourceUri,
      resourceType: resourceType,
      associationType: associationType,
      opsItemId: opsItemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOpsMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The metadata keys to delete from the OpsMetadata object. </p>")
    @as("KeysToDelete")
    keysToDelete: option<metadataKeysToDeleteList>,
    @ocaml.doc("<p>Metadata to add to an OpsMetadata object.</p>") @as("MetadataToUpdate")
    metadataToUpdate: option<metadataMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the OpsMetadata Object to update.</p>")
    @as("OpsMetadataArn")
    opsMetadataArn: opsMetadataArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the OpsMetadata Object that was updated.</p>")
    @as("OpsMetadataArn")
    opsMetadataArn: option<opsMetadataArn>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateOpsMetadataCommand"
  let make = (~opsMetadataArn, ~keysToDelete=?, ~metadataToUpdate=?, ()) =>
    new({
      keysToDelete: keysToDelete,
      metadataToUpdate: metadataToUpdate,
      opsMetadataArn: opsMetadataArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOpsItem = {
  type t
  type request = {
    @ocaml.doc("<p>The time specified in a change request for a runbook workflow to end. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
    @as("PlannedEndTime")
    plannedEndTime: option<dateTime>,
    @ocaml.doc("<p>The time specified in a change request for a runbook workflow to start. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
    @as("PlannedStartTime")
    plannedStartTime: option<dateTime>,
    @ocaml.doc("<p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
    @as("ActualEndTime")
    actualEndTime: option<dateTime>,
    @ocaml.doc("<p>The time a runbook workflow started. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
    @as("ActualStartTime")
    actualStartTime: option<dateTime>,
    @ocaml.doc("<p>Specify a new severity for an OpsItem.</p>") @as("Severity")
    severity: option<opsItemSeverity>,
    @ocaml.doc("<p>Specify a new category for an OpsItem.</p>") @as("Category")
    category: option<opsItemCategory>,
    @ocaml.doc(
      "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
    )
    @as("Title")
    title: option<opsItemTitle>,
    @ocaml.doc("<p>The ID of the OpsItem.</p>") @as("OpsItemId") opsItemId: opsItemId,
    @ocaml.doc("<p>The OpsItem status. Status can be <code>Open</code>, <code>In Progress</code>, or
    <code>Resolved</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems.html#OpsCenter-working-with-OpsItems-editing-details\">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("Status")
    status: option<opsItemStatus>,
    @ocaml.doc("<p>One or more OpsItems that share something in common with the current OpsItems. For example,
   related OpsItems can include OpsItems with similar error messages, impacted resources, or
   statuses for the impacted resource.</p>")
    @as("RelatedOpsItems")
    relatedOpsItems: option<relatedOpsItems>,
    @ocaml.doc("<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>")
    @as("Priority")
    priority: option<opsItemPriority>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
   OpsItem is edited or changed.</p>")
    @as("Notifications")
    notifications: option<opsItemNotifications>,
    @ocaml.doc("<p>Keys that you want to remove from the OperationalData map.</p>")
    @as("OperationalDataToDelete")
    operationalDataToDelete: option<opsItemOpsDataKeysList>,
    @ocaml.doc("<p>Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem
   object.</p>
         <p>Operational data is custom data that provides useful reference details about the OpsItem.
   For example, you can specify log files, error strings, license keys, troubleshooting tips, or
   other relevant data. You enter operational data as key-value pairs. The key has a maximum length
   of 128 characters. The value has a maximum size of 20 KB.</p>
         <important>
            <p>Operational data keys <i>can't</i> begin with the following:
     <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
     <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
         </important>
         <p>You can choose to make the data searchable by other users in the account or you can restrict
   search access. Searchable data means that all users with access to the OpsItem Overview page (as
   provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
   specified data. Operational data that isn't searchable is only viewable by users who have access
   to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
         <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
   the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
   Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("OperationalData")
    operationalData: option<opsItemOperationalData>,
    @ocaml.doc("<p>Update the information about the OpsItem. Provide enough information so that users reading
   this OpsItem for the first time understand the issue. </p>")
    @as("Description")
    description: option<opsItemDescription>,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateOpsItemCommand"
  let make = (
    ~opsItemId,
    ~plannedEndTime=?,
    ~plannedStartTime=?,
    ~actualEndTime=?,
    ~actualStartTime=?,
    ~severity=?,
    ~category=?,
    ~title=?,
    ~status=?,
    ~relatedOpsItems=?,
    ~priority=?,
    ~notifications=?,
    ~operationalDataToDelete=?,
    ~operationalData=?,
    ~description=?,
    (),
  ) =>
    new({
      plannedEndTime: plannedEndTime,
      plannedStartTime: plannedStartTime,
      actualEndTime: actualEndTime,
      actualStartTime: actualStartTime,
      severity: severity,
      category: category,
      title: title,
      opsItemId: opsItemId,
      status: status,
      relatedOpsItems: relatedOpsItems,
      priority: priority,
      notifications: notifications,
      operationalDataToDelete: operationalDataToDelete,
      operationalData: operationalData,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartSession = {
  type t
  type request = {
    @ocaml.doc("<p>The values you want to specify for the parameters defined in the Session
   document.</p>")
    @as("Parameters")
    parameters: option<sessionManagerParameters>,
    @ocaml.doc("<p>The reason for connecting to the instance. This value is included in the details for the
    Amazon CloudWatch Events event created when you start the session.</p>")
    @as("Reason")
    reason: option<sessionReason>,
    @ocaml.doc("<p>The name of the SSM document to define the parameters and plugin settings for the session.
   For example, <code>SSM-SessionManagerRunShell</code>. You can call the <a>GetDocument</a> API to verify the document exists before attempting to start a session.
   If no document name is provided, a shell to the managed node is launched by default.</p>")
    @as("DocumentName")
    documentName: option<documentARN>,
    @ocaml.doc("<p>The managed node to connect to for the session.</p>") @as("Target")
    target: sessionTarget,
  }
  type response = {
    @ocaml.doc("<p>A URL back to SSM Agent on the managed node that the Session Manager client uses to send commands and
   receive output from the node. Format: <code>wss://ssmmessages.<b>region</b>.amazonaws.com/v1/data-channel/<b>session-id</b>?stream=(input|output)</code>
         </p>
         <p>
            <b>region</b> represents the Region identifier for an
						Amazon Web Services Region supported by Amazon Web Services Systems Manager, such as <code>us-east-2</code> for the US East (Ohio) Region.
						For a list of supported <b>region</b> values, see the <b>Region</b> column in <a href=\"https://docs.aws.amazon.com/general/latest/gr/ssm.html#ssm_region\">Systems Manager service endpoints</a> in the
        <i>Amazon Web Services General Reference</i>.</p>
         <p>
            <b>session-id</b> represents the ID of a Session Manager session, such as
    <code>1a2b3c4dEXAMPLE</code>.</p>")
    @as("StreamUrl")
    streamUrl: option<streamUrl>,
    @ocaml.doc("<p>An encrypted token value containing session and caller information. Used to authenticate the
   connection to the managed node.</p>")
    @as("TokenValue")
    tokenValue: option<tokenValue>,
    @ocaml.doc("<p>The ID of the session.</p>") @as("SessionId") sessionId: option<sessionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "StartSessionCommand"
  let make = (~target, ~parameters=?, ~reason=?, ~documentName=?, ()) =>
    new({parameters: parameters, reason: reason, documentName: documentName, target: target})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendAutomationSignal = {
  type t
  type request = {
    @ocaml.doc("<p>The data sent with the signal. The data schema depends on the type of signal used in the
   request.</p>
         <p>For <code>Approve</code> and <code>Reject</code> signal types, the payload is an optional
   comment that you can send with the signal type. For example:</p>
         <p>
            <code>Comment=\"Looks good\"</code>
         </p>
         <p>For <code>StartStep</code> and <code>Resume</code> signal types, you must send the name of
   the Automation step to start or resume as the payload. For example:</p>
         <p>
            <code>StepName=\"step1\"</code>
         </p>
         <p>For the <code>StopStep</code> signal type, you must send the step execution ID as the
   payload. For example:</p>
         <p>
            <code>StepExecutionId=\"97fff367-fc5a-4299-aed8-0123456789ab\"</code>
         </p>")
    @as("Payload")
    payload: option<automationParameterMap>,
    @ocaml.doc("<p>The type of signal to send to an Automation execution. </p>") @as("SignalType")
    signalType: signalType,
    @ocaml.doc("<p>The unique identifier for an existing Automation execution that you want to send the signal
   to.</p>")
    @as("AutomationExecutionId")
    automationExecutionId: automationExecutionId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "SendAutomationSignalCommand"
  let make = (~signalType, ~automationExecutionId, ~payload=?, ()) =>
    new({payload: payload, signalType: signalType, automationExecutionId: automationExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutParameter = {
  type t
  type request = {
    @ocaml.doc("<p>The data type for a <code>String</code> parameter. Supported data types include plain text
   and Amazon Machine Image (AMI) IDs.</p>
         <p>
            <b>The following data type values are supported.</b>
         </p>
         <ul>
            <li>
               <p>
                  <code>text</code>
               </p>
            </li>
            <li>
               <p>
                  <code>aws:ec2:image</code>
               </p>
            </li>
            <li>
               <p>
                  <code>aws:ssm:integration</code>
               </p>
            </li>
         </ul>
         <p>When you create a <code>String</code> parameter and specify <code>aws:ec2:image</code>,
   Amazon Web Services Systems Manager validates the parameter value is in the required format, such as
    <code>ami-12345abcdeEXAMPLE</code>, and that the specified AMI is available in your
   Amazon Web Services account. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html\">Native parameter support
    for Amazon Machine Image (AMI) IDs</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("DataType")
    dataType: option<parameterDataType>,
    @ocaml.doc("<p>One or more policies to apply to a parameter. This operation takes a JSON array. Parameter
   Store, a capability of Amazon Web Services Systems Manager supports the following policy types:</p>
         <p>Expiration: This policy deletes the parameter after it expires. When you create the policy,
   you specify the expiration date. You can update the expiration date and time by updating the
   policy. Updating the <i>parameter</i> doesn't affect the expiration date and time.
   When the expiration time is reached, Parameter Store deletes the parameter.</p>
         <p>ExpirationNotification: This policy initiates an event in Amazon CloudWatch Events that
   notifies you about the expiration. By using this policy, you can receive notification before or
   after the expiration time is reached, in units of days or hours.</p>
         <p>NoChangeNotification: This policy initiates a CloudWatch Events event if a parameter hasn't
   been modified for a specified period of time. This policy type is useful when, for example, a
   secret needs to be changed within a period of time, but it hasn't been changed.</p>
         <p>All existing policies are preserved until you send new policies or an empty policy. For more
   information about parameter policies, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html\">Assigning parameter
    policies</a>. </p>")
    @as("Policies")
    policies: option<parameterPolicies>,
    @ocaml.doc("<p>The parameter tier to assign to a parameter.</p>
         <p>Parameter Store offers a standard tier and an advanced tier for parameters. Standard
   parameters have a content size limit of 4 KB and can't be configured to use parameter policies.
   You can create a maximum of 10,000 standard parameters for each Region in an Amazon Web Services account.
   Standard parameters are offered at no additional cost. </p>
         <p>Advanced parameters have a content size limit of 8 KB and can be configured to use parameter
   policies. You can create a maximum of 100,000 advanced parameters for each Region in an
   Amazon Web Services account. Advanced parameters incur a charge. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html\">Standard and
    advanced parameter tiers</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <p>You can change a standard parameter to an advanced parameter any time. But you can't revert
   an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard
   parameter would result in data loss because the system would truncate the size of the parameter
   from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly,
   advanced parameters use a different form of encryption than standard parameters. </p>
         <p>If you no longer need an advanced parameter, or if you no longer want to incur charges for
   an advanced parameter, you must delete it and recreate it as a new standard parameter. </p>
         <p>
            <b>Using the Default Tier Configuration</b>
         </p>
         <p>In <code>PutParameter</code> requests, you can specify the tier to create the parameter in.
   Whenever you specify a tier in the request, Parameter Store creates or updates the parameter
   according to that request. However, if you don't specify a tier in a request, Parameter Store
   assigns the tier based on the current Parameter Store default tier configuration.</p>
         <p>The default tier when you begin using Parameter Store is the standard-parameter tier. If you
   use the advanced-parameter tier, you can specify one of the following as the default:</p>
         <ul>
            <li>
               <p>
                  <b>Advanced</b>: With this option, Parameter Store evaluates all
     requests as advanced parameters. </p>
            </li>
            <li>
               <p>
                  <b>Intelligent-Tiering</b>: With this option, Parameter Store
     evaluates each request to determine if the parameter is standard or advanced. </p>
               <p>If the request doesn't include any options that require an advanced parameter, the
     parameter is created in the standard-parameter tier. If one or more options requiring an
     advanced parameter are included in the request, Parameter Store create a parameter in the
     advanced-parameter tier.</p>
               <p>This approach helps control your parameter-related costs by always creating standard
     parameters unless an advanced parameter is necessary. </p>
            </li>
         </ul>
         <p>Options that require an advanced parameter include the following:</p>
         <ul>
            <li>
               <p>The content size of the parameter is more than 4 KB.</p>
            </li>
            <li>
               <p>The parameter uses a parameter policy.</p>
            </li>
            <li>
               <p>More than 10,000 parameters already exist in your Amazon Web Services account in the current
     Amazon Web Services Region.</p>
            </li>
         </ul>
         <p>For more information about configuring the default tier option, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/ps-default-tier.html\">Specifying a
    default parameter tier</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("Tier")
    tier: option<parameterTier>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
   different ways, such as by purpose, owner, or environment. For example, you might want to tag a
   Systems Manager parameter to identify the type of resource to which it applies, the environment, or the
   type of configuration data referenced by the parameter. In this case, you could specify the
   following key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=Resource,Value=S3bucket</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=ParameterType,Value=LicenseKey</code>
               </p>
            </li>
         </ul>
         <note>
            <p>To add tags to an existing Systems Manager parameter, use the <a>AddTagsToResource</a>
    operation.</p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A regular expression used to validate the parameter value. For example, for String types
   with values restricted to numbers, you can specify the following: AllowedPattern=^\\d+$ </p>")
    @as("AllowedPattern")
    allowedPattern: option<allowedPattern>,
    @ocaml.doc("<p>Overwrite an existing parameter. The default value is <code>false</code>.</p>")
    @as("Overwrite")
    overwrite: option<boolean_>,
    @ocaml.doc("<p>The Key Management Service (KMS) ID that you want to use to encrypt a
   parameter. Either the default KMS key automatically assigned to your Amazon Web Services account
   or a custom key. Required for parameters that use the <code>SecureString</code>
   data type.</p>
         <p>If you don't specify a key ID, the system uses the default key associated with your
   Amazon Web Services account.</p>
         <ul>
            <li>
               <p>To use your default KMS key, choose the <code>SecureString</code> data type, and do <i>not</i> specify the <code>Key ID</code> when you create the parameter. The system automatically populates
      <code>Key ID</code> with your default KMS key.</p>
            </li>
            <li>
               <p>To use a custom KMS key, choose the <code>SecureString</code>
     data type with the <code>Key ID</code> parameter.</p>
            </li>
         </ul>")
    @as("KeyId")
    keyId: option<parameterKeyId>,
    @ocaml.doc("<p>The type of parameter that you want to add to the system.</p>
         <note>
            <p>
               <code>SecureString</code> isn't currently supported for CloudFormation templates.</p>
         </note>
         <p>Items in a <code>StringList</code> must be separated by a comma (,). You can't
   use other punctuation or special character to escape items in the list. If you have a parameter
   value that requires a comma, then use the <code>String</code> data type.</p>
         <important>
            <p>Specifying a parameter type isn't required when updating a parameter. You must specify a
    parameter type when creating a parameter.</p>
         </important>")
    @as("Type")
    type_: option<parameterType>,
    @ocaml.doc("<p>The parameter value that you want to add to the system. Standard parameters have a value
   limit of 4 KB. Advanced parameters have a value limit of 8 KB.</p>
         <note>
            <p>Parameters can't be referenced or nested in the values of other parameters. You can't
    include <code>{{}}</code> or <code>{{ssm:<i>parameter-name</i>}}</code> in a
    parameter value.</p>
         </note>")
    @as("Value")
    value: psparameterValue,
    @ocaml.doc("<p>Information about the parameter that you want to add to the system. Optional but
   recommended.</p>
         <important>
            <p>Don't enter personally identifiable information in this field.</p>
         </important>")
    @as("Description")
    description: option<parameterDescription>,
    @ocaml.doc("<p>The fully qualified name of the parameter that you want to add to the system. The fully
   qualified name includes the complete hierarchy of the parameter path and name. For parameters in
   a hierarchy, you must include a leading forward slash character (/) when you create or reference
   a parameter. For example: <code>/Dev/DBServer/MySQL/db-string13</code>
         </p>
         <p>Naming Constraints:</p>
         <ul>
            <li>
               <p>Parameter names are case sensitive.</p>
            </li>
            <li>
               <p>A parameter name must be unique within an Amazon Web Services Region</p>
            </li>
            <li>
               <p>A parameter name can't be prefixed with \"<code>aws</code>\" or \"<code>ssm</code>\"
     (case-insensitive).</p>
            </li>
            <li>
               <p>Parameter names can include only the following symbols and letters:
      <code>a-zA-Z0-9_.-</code>
               </p>
               <p>In addition, the slash character ( / ) is used to delineate hierarchies in parameter
     names. For example: <code>/Dev/Production/East/Project-ABC/MyParameter</code>
               </p>
            </li>
            <li>
               <p>A parameter name can't include spaces.</p>
            </li>
            <li>
               <p>Parameter hierarchies are limited to a maximum depth of fifteen levels.</p>
            </li>
         </ul>
         <p>For additional information about valid values for parameter names, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html\">Creating Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <note>
            <p>The maximum length constraint of 2048 characters listed below includes 1037 characters
    reserved for internal use by Systems Manager. The maximum length for a parameter name that you create is
    1011 characters. This includes the characters in the ARN that precede the name you specify, such
    as <code>arn:aws:ssm:us-east-2:111122223333:parameter/</code>.</p>
         </note>")
    @as("Name")
    name: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>The tier assigned to the parameter.</p>") @as("Tier")
    tier: option<parameterTier>,
    @ocaml.doc("<p>The new version number of a parameter. If you edit a parameter value, Parameter Store
   automatically creates a new version and assigns this new version a unique ID. You can reference a
   parameter version ID in API operations or in Systems Manager documents (SSM documents). By default, if you
   don't specify a specific version, the system returns the latest parameter value when a parameter
   is called.</p>")
    @as("Version")
    version: option<psparameterVersion>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "PutParameterCommand"
  let make = (
    ~value,
    ~name,
    ~dataType=?,
    ~policies=?,
    ~tier=?,
    ~tags=?,
    ~allowedPattern=?,
    ~overwrite=?,
    ~keyId=?,
    ~type_=?,
    ~description=?,
    (),
  ) =>
    new({
      dataType: dataType,
      policies: policies,
      tier: tier,
      tags: tags,
      allowedPattern: allowedPattern,
      overwrite: overwrite,
      keyId: keyId,
      type_: type_,
      value: value,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ID for which you want to see a list of tags.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>Returns a list of tags for a specific resource type.</p>") @as("ResourceType")
    resourceType: resourceTypeForTagging,
  }
  type response = {@ocaml.doc("<p>A list of tags.</p>") @as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceId, ~resourceType, ()) =>
    new({resourceId: resourceId, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the document. You can specify an Amazon Resource Name (ARN).</p>")
    @as("Name")
    name: documentARN,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The document versions.</p>") @as("DocumentVersions")
    documentVersions: option<documentVersionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListDocumentVersionsCommand"
  let make = (~name, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameters = {
  type t
  type request = {
    @ocaml.doc("<p>Return decrypted secure string value. Return decrypted values for secure string parameters.
   This flag is ignored for <code>String</code> and <code>StringList</code> parameter types.</p>")
    @as("WithDecryption")
    withDecryption: option<boolean_>,
    @ocaml.doc("<p>Names of the parameters for which you want to query information.</p>
         <p>To query by parameter label, use <code>\"Name\": \"name:label\"</code>. To query by parameter
   version, use <code>\"Name\": \"name:version\"</code>.</p>")
    @as("Names")
    names: parameterNameList,
  }
  type response = {
    @ocaml.doc("<p>A list of parameters that aren't formatted correctly or don't run during an
   execution.</p>")
    @as("InvalidParameters")
    invalidParameters: option<parameterNameList>,
    @ocaml.doc("<p>A list of details for a parameter.</p>") @as("Parameters")
    parameters: option<parameterList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetParametersCommand"
  let make = (~names, ~withDecryption=?, ()) => new({withDecryption: withDecryption, names: names})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<getOpsMetadataMaxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an OpsMetadata Object to view.</p>")
    @as("OpsMetadataArn")
    opsMetadataArn: opsMetadataArn,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>OpsMetadata for an Application Manager application.</p>") @as("Metadata")
    metadata: option<metadataMap>,
    @ocaml.doc("<p>The resource ID of the Application Manager application.</p>") @as("ResourceId")
    resourceId: option<opsMetadataResourceId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetOpsMetadataCommand"
  let make = (~opsMetadataArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, opsMetadataArn: opsMetadataArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDocument = {
  type t
  type request = {
    @ocaml.doc("<p>Returns the document in the specified format. The document format can be either JSON or
   YAML. JSON is the default format.</p>")
    @as("DocumentFormat")
    documentFormat: option<documentFormat>,
    @ocaml.doc("<p>The document version for which you want information.</p>") @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>An optional field specifying the version of the artifact associated with the document. For
   example, \"Release 12, Update 6\". This value is unique across all versions of a document and can't
   be changed.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: documentARN,
  }
  type response = {
    @ocaml.doc("<p>The current review status of a new custom Systems Manager document (SSM document) created by a member
   of your organization, or of the latest version of an existing SSM document.</p>
         <p>Only one version of an SSM document can be in the APPROVED state at a time. When a new
   version is approved, the status of the previous version changes to REJECTED.</p>
         <p>Only one version of an SSM document can be in review, or PENDING, at a time.</p>")
    @as("ReviewStatus")
    reviewStatus: option<reviewStatus>,
    @ocaml.doc("<p>A description of the document attachments, including names, locations, sizes, and so
   on.</p>")
    @as("AttachmentsContent")
    attachmentsContent: option<attachmentContentList>,
    @ocaml.doc("<p>A list of SSM documents required by a document. For example, an
    <code>ApplicationConfiguration</code> document requires an
    <code>ApplicationConfigurationSchema</code> document.</p>")
    @as("Requires")
    requires: option<documentRequiresList>,
    @ocaml.doc("<p>The document format, either JSON or YAML.</p>") @as("DocumentFormat")
    documentFormat: option<documentFormat>,
    @ocaml.doc("<p>The document type.</p>") @as("DocumentType") documentType: option<documentType>,
    @ocaml.doc("<p>The contents of the SSM document.</p>") @as("Content")
    content: option<documentContent>,
    @ocaml.doc("<p>A message returned by Amazon Web Services Systems Manager that explains the <code>Status</code> value. For example, a
    <code>Failed</code> status might be explained by the <code>StatusInformation</code> message,
   \"The specified S3 bucket doesn't exist. Verify that the URL of the S3 bucket is correct.\"</p>")
    @as("StatusInformation")
    statusInformation: option<documentStatusInformation>,
    @ocaml.doc("<p>The status of the SSM document, such as <code>Creating</code>, <code>Active</code>,
    <code>Updating</code>, <code>Failed</code>, and <code>Deleting</code>.</p>")
    @as("Status")
    status: option<documentStatus>,
    @ocaml.doc("<p>The document version.</p>") @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The version of the artifact associated with the document. For example, \"Release 12, Update
   6\". This value is unique across all versions of a document, and can't be changed.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>The friendly name of the SSM document. This value can differ for each version of the
   document. If you want to update this value, see <a>UpdateDocument</a>.</p>")
    @as("DisplayName")
    displayName: option<documentDisplayName>,
    @ocaml.doc("<p>The date the SSM document was created.</p>") @as("CreatedDate")
    createdDate: option<dateTime>,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetDocumentCommand"
  let make = (~name, ~documentFormat=?, ~documentVersion=?, ~versionName=?, ()) =>
    new({
      documentFormat: documentFormat,
      documentVersion: documentVersion,
      versionName: versionName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchProperties = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Indicates whether to list patches for the Windows operating system or for applications
   released by Microsoft. Not applicable for the Linux or macOS operating systems.</p>")
    @as("PatchSet")
    patchSet: option<patchSet>,
    @ocaml.doc("<p>The patch property for which you want to view patch details. </p>")
    @as("Property")
    property: patchProperty,
    @ocaml.doc("<p>The operating system type for which to list patches.</p>") @as("OperatingSystem")
    operatingSystem: operatingSystem,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of the properties for patches matching the filter request parameters.</p>"
    )
    @as("Properties")
    properties: option<patchPropertiesList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribePatchPropertiesCommand"
  let make = (~property, ~operatingSystem, ~nextToken=?, ~maxResults=?, ~patchSet=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      patchSet: patchSet,
      property: property,
      operatingSystem: operatingSystem,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatchStates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of managed nodes to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchComplianceMaxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The ID of the managed node for which patch state information should be retrieved.</p>"
    )
    @as("InstanceIds")
    instanceIds: instanceIdList,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The high-level patch state for the requested managed nodes.</p>")
    @as("InstancePatchStates")
    instancePatchStates: option<instancePatchStateList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeInstancePatchStatesCommand"
  let make = (~instanceIds, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, instanceIds: instanceIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEffectiveInstanceAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<effectiveInstanceAssociationMaxResults>,
    @ocaml.doc("<p>The managed node ID for which you want to view all associations.</p>")
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The associations for the requested managed node.</p>") @as("Associations")
    associations: option<instanceAssociationList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeEffectiveInstanceAssociationsCommand"
  let make = (~instanceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocumentPermission = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<documentPermissionMaxResults>,
    @ocaml.doc("<p>The permission type for the document. The permission type can be
   <i>Share</i>.</p>")
    @as("PermissionType")
    permissionType: documentPermissionType,
    @ocaml.doc("<p>The name of the document for which you are the owner.</p>") @as("Name")
    name: documentName,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of Amazon Web Services accounts where the current document is shared and the version shared with
   each account.</p>")
    @as("AccountSharingInfoList")
    accountSharingInfoList: option<accountSharingInfoList>,
    @ocaml.doc("<p>The account IDs that have permission to use this document. The ID can be either an
   Amazon Web Services account or <i>All</i>.</p>")
    @as("AccountIds")
    accountIds: option<accountIdList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeDocumentPermissionCommand"
  let make = (~permissionType, ~name, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, permissionType: permissionType, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociationExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters for the request. You can specify the following filters and values.</p>
         <p>ExecutionId (EQUAL)</p>
         <p>Status (EQUAL)</p>
         <p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p>")
    @as("Filters")
    filters: option<associationExecutionFilterList>,
    @ocaml.doc("<p>The association ID for which you want to view execution history details.</p>")
    @as("AssociationId")
    associationId: associationId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the executions for the specified association ID.</p>")
    @as("AssociationExecutions")
    associationExecutions: option<associationExecutionsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeAssociationExecutionsCommand"
  let make = (~associationId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      associationId: associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOpsMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
   an OpsMetadata object. Tags enable you to categorize a resource in different ways, such as by
   purpose, owner, or environment. For example, you might want to tag an OpsMetadata object to
   identify an environment or target Amazon Web Services Region. In this case, you could specify the following
   key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=Environment,Value=Production</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=Region,Value=us-east-2</code>
               </p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Metadata for a new Application Manager application. </p>") @as("Metadata")
    metadata: option<metadataMap>,
    @ocaml.doc("<p>A resource ID for a new Application Manager application.</p>") @as("ResourceId")
    resourceId: opsMetadataResourceId,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the OpsMetadata Object or blob created by the call.</p>"
    )
    @as("OpsMetadataArn")
    opsMetadataArn: option<opsMetadataArn>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateOpsMetadataCommand"
  let make = (~resourceId, ~tags=?, ~metadata=?, ()) =>
    new({tags: tags, metadata: metadata, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOpsItem = {
  type t
  type request = {
    @ocaml.doc("<p>The time specified in a change request for a runbook workflow to end. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
    @as("PlannedEndTime")
    plannedEndTime: option<dateTime>,
    @ocaml.doc("<p>The time specified in a change request for a runbook workflow to start. Currently supported
   only for the OpsItem type <code>/aws/changerequest</code>.</p>")
    @as("PlannedStartTime")
    plannedStartTime: option<dateTime>,
    @ocaml.doc("<p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
    @as("ActualEndTime")
    actualEndTime: option<dateTime>,
    @ocaml.doc("<p>The time a runbook workflow started. Currently reported only for the OpsItem type
    <code>/aws/changerequest</code>.</p>")
    @as("ActualStartTime")
    actualStartTime: option<dateTime>,
    @ocaml.doc("<p>Specify a severity to assign to an OpsItem.</p>") @as("Severity")
    severity: option<opsItemSeverity>,
    @ocaml.doc("<p>Specify a category to assign to an OpsItem. </p>") @as("Category")
    category: option<opsItemCategory>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can restrict access to OpsItems by
   using an inline IAM policy that specifies tags. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-getting-started.html#OpsCenter-getting-started-user-permissions\">Getting started with OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <p>Tags use a key-value pair. For example:</p>
         <p>
            <code>Key=Department,Value=Finance</code>
         </p>
         <important>
            <p>To add tags to a new OpsItem, a user must have IAM permissions for both the
     <code>ssm:CreateOpsItems</code> operation and the <code>ssm:AddTagsToResource</code> operation.
    To add tags to an existing OpsItem, use the <a>AddTagsToResource</a>
    operation.</p>
         </important>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>"
    )
    @as("Title")
    title: opsItemTitle,
    @ocaml.doc("<p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager.</p>
         <note>
            <p>The source name can't contain the following strings: <code>aws</code>, <code>amazon</code>,
    and <code>amzn</code>. </p>
         </note>")
    @as("Source")
    source: opsItemSource,
    @ocaml.doc("<p>One or more OpsItems that share something in common with the current OpsItems. For example,
   related OpsItems can include OpsItems with similar error messages, impacted resources, or
   statuses for the impacted resource.</p>")
    @as("RelatedOpsItems")
    relatedOpsItems: option<relatedOpsItems>,
    @ocaml.doc("<p>The importance of this OpsItem in relation to other OpsItems in the system.</p>")
    @as("Priority")
    priority: option<opsItemPriority>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
   OpsItem is edited or changed.</p>")
    @as("Notifications")
    notifications: option<opsItemNotifications>,
    @ocaml.doc("<p>Operational data is custom data that provides useful reference details about the OpsItem.
   For example, you can specify log files, error strings, license keys, troubleshooting tips, or
   other relevant data. You enter operational data as key-value pairs. The key has a maximum length
   of 128 characters. The value has a maximum size of 20 KB.</p>
         <important>
            <p>Operational data keys <i>can't</i> begin with the following:
     <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
     <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
         </important>
         <p>You can choose to make the data searchable by other users in the account or you can restrict
   search access. Searchable data means that all users with access to the OpsItem Overview page (as
   provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
   specified data. Operational data that isn't searchable is only viewable by users who have access
   to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
         <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
   the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
   Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems\">Creating OpsItems manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("OperationalData")
    operationalData: option<opsItemOperationalData>,
    @ocaml.doc("<p>The type of OpsItem to create. Currently, the only valid values are
    <code>/aws/changerequest</code> and <code>/aws/issue</code>.</p>")
    @as("OpsItemType")
    opsItemType: option<opsItemType>,
    @ocaml.doc("<p>Information about the OpsItem. </p>") @as("Description")
    description: opsItemDescription,
  }
  type response = {
    @ocaml.doc("<p>The ID of the OpsItem.</p>") @as("OpsItemId") opsItemId: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateOpsItemCommand"
  let make = (
    ~title,
    ~source,
    ~description,
    ~plannedEndTime=?,
    ~plannedStartTime=?,
    ~actualEndTime=?,
    ~actualStartTime=?,
    ~severity=?,
    ~category=?,
    ~tags=?,
    ~relatedOpsItems=?,
    ~priority=?,
    ~notifications=?,
    ~operationalData=?,
    ~opsItemType=?,
    (),
  ) =>
    new({
      plannedEndTime: plannedEndTime,
      plannedStartTime: plannedStartTime,
      actualEndTime: actualEndTime,
      actualStartTime: actualStartTime,
      severity: severity,
      category: category,
      tags: tags,
      title: title,
      source: source,
      relatedOpsItems: relatedOpsItems,
      priority: priority,
      notifications: notifications,
      operationalData: operationalData,
      opsItemType: opsItemType,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
   different ways, such as by purpose, owner, or environment. For example, you might want to tag a
   maintenance window to identify the type of tasks it will run, the types of targets, and the
   environment it will run in. In this case, you could specify the following key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=TaskType,Value=AgentUpdate</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=Environment,Value=Production</code>
               </p>
            </li>
         </ul>
         <note>
            <p>To add tags to an existing maintenance window, use the <a>AddTagsToResource</a>
    operation.</p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>User-provided idempotency token.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Enables a maintenance window task to run on managed nodes, even if you haven't registered
   those nodes as targets. If enabled, then you must specify the unregistered managed nodes (by node
   ID) when you register a task with the maintenance window.</p>
         <p>If you don't enable this option, then you must specify previously-registered targets when
   you register a task with the maintenance window.</p>")
    @as("AllowUnassociatedTargets")
    allowUnassociatedTargets: maintenanceWindowAllowUnassociatedTargets,
    @ocaml.doc("<p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
   new tasks for execution.</p>")
    @as("Cutoff")
    cutoff: maintenanceWindowCutoff,
    @ocaml.doc("<p>The duration of the maintenance window in hours.</p>") @as("Duration")
    duration: maintenanceWindowDurationHours,
    @ocaml.doc("<p>The number of days to wait after the date and time specified by a cron expression before
   running the maintenance window.</p>
         <p>For example, the following cron expression schedules a maintenance window to run on the
   third Tuesday of every month at 11:30 PM.</p>
         <p>
            <code>cron(30 23 ? * TUE#3 *)</code>
         </p>
         <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
   later.</p>")
    @as("ScheduleOffset")
    scheduleOffset: option<maintenanceWindowOffset>,
    @ocaml.doc("<p>The time zone that the scheduled maintenance window executions are based on, in Internet
   Assigned Numbers Authority (IANA) format. For example: \"America/Los_Angeles\", \"UTC\", or
   \"Asia/Seoul\". For more information, see the <a href=\"https://www.iana.org/time-zones\">Time
    Zone Database</a> on the IANA website.</p>")
    @as("ScheduleTimezone")
    scheduleTimezone: option<maintenanceWindowTimezone>,
    @ocaml.doc(
      "<p>The schedule of the maintenance window in the form of a cron or rate expression.</p>"
    )
    @as("Schedule")
    schedule: maintenanceWindowSchedule,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
   become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
   maintenance window will no longer run.</p>")
    @as("EndDate")
    endDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
   become active. <code>StartDate</code> allows you to delay activation of the maintenance window
   until the specified future date.</p>")
    @as("StartDate")
    startDate: option<maintenanceWindowStringDateTime>,
    @ocaml.doc("<p>An optional description for the maintenance window. We recommend specifying a description to
   help you organize your maintenance windows. </p>")
    @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The name of the maintenance window.</p>") @as("Name")
    name: maintenanceWindowName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the created maintenance window.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateMaintenanceWindowCommand"
  let make = (
    ~allowUnassociatedTargets,
    ~cutoff,
    ~duration,
    ~schedule,
    ~name,
    ~tags=?,
    ~clientToken=?,
    ~scheduleOffset=?,
    ~scheduleTimezone=?,
    ~endDate=?,
    ~startDate=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      allowUnassociatedTargets: allowUnassociatedTargets,
      cutoff: cutoff,
      duration: duration,
      scheduleOffset: scheduleOffset,
      scheduleTimezone: scheduleTimezone,
      schedule: schedule,
      endDate: endDate,
      startDate: startDate,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateActivation = {
  type t
  type request = {
    @ocaml.doc("<p>Reserved for internal use.</p>") @as("RegistrationMetadata")
    registrationMetadata: option<registrationMetadataList>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
   different ways, such as by purpose, owner, or environment. For example, you might want to tag an
   activation to identify which servers or virtual machines (VMs) in your on-premises environment
   you intend to activate. In this case, you could specify the following key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=Environment,Value=Production</code>
               </p>
            </li>
         </ul>
         <important>
            <p>When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID
    and code. When you specify the activation ID and code, tags assigned to the activation are
    automatically applied to the on-premises servers or VMs.</p>
         </important>
         <p>You can't add tags to or delete tags from an existing activation. You can tag your
   on-premises servers, edge devices, and VMs after they connect to Systems Manager for the first time and are
   assigned a managed node ID. This means they are listed in the Amazon Web Services Systems Manager console with an ID that
   is prefixed with \"mi-\". For information about how to add tags to your managed nodes, see <a>AddTagsToResource</a>. For information about how to remove tags from your managed nodes,
   see <a>RemoveTagsFromResource</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The date by which this activation request should expire, in timestamp format, such as
   \"2021-07-07T00:00:00\". You can specify a date up to 30 days in advance. If you don't provide an
   expiration date, the activation code expires in 24 hours.</p>")
    @as("ExpirationDate")
    expirationDate: option<expirationDate>,
    @ocaml.doc("<p>Specify the maximum number of managed nodes you want to register. The default value is
    <code>1</code>.</p>")
    @as("RegistrationLimit")
    registrationLimit: option<registrationLimit>,
    @ocaml.doc("<p>The name of the Identity and Access Management (IAM) role that you want to assign to
   the managed node. This IAM role must provide AssumeRole permissions for the
   Amazon Web Services Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html\">Create an
     IAM service role for a hybrid environment</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("IamRole")
    iamRole: iamRole,
    @ocaml.doc("<p>The name of the registered, managed node as it will appear in the Amazon Web Services Systems Manager console or when
   you use the Amazon Web Services command line tools to list Systems Manager resources.</p>
         <important>
            <p>Don't enter personally identifiable information in this field.</p>
         </important>")
    @as("DefaultInstanceName")
    defaultInstanceName: option<defaultInstanceName>,
    @ocaml.doc("<p>A user-defined description of the resource that you want to register with Systems Manager. </p>
         <important>
            <p>Don't enter personally identifiable information in this field.</p>
         </important>")
    @as("Description")
    description: option<activationDescription>,
  }
  type response = {
    @ocaml.doc("<p>The code the system generates when it processes the activation. The activation code
   functions like a password to validate the activation ID. </p>")
    @as("ActivationCode")
    activationCode: option<activationCode>,
    @ocaml.doc("<p>The ID number generated by the system when it processed the activation. The activation ID
   functions like a user name.</p>")
    @as("ActivationId")
    activationId: option<activationId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateActivationCommand"
  let make = (
    ~iamRole,
    ~registrationMetadata=?,
    ~tags=?,
    ~expirationDate=?,
    ~registrationLimit=?,
    ~defaultInstanceName=?,
    ~description=?,
    (),
  ) =>
    new({
      registrationMetadata: registrationMetadata,
      tags: tags,
      expirationDate: expirationDate,
      registrationLimit: registrationLimit,
      iamRole: iamRole,
      defaultInstanceName: defaultInstanceName,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags. The value parameter is required.</p>
         <important>
            <p>Don't enter personally identifiable information in this field.</p>
         </important>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The resource ID you want to tag.</p>
         <p>Use the ID of the resource. Here are some examples:</p>
         <p>
            <code>MaintenanceWindow</code>: <code>mw-012345abcde</code>
         </p>
         <p>
            <code>PatchBaseline</code>: <code>pb-012345abcde</code>
         </p>
         <p>
            <code>OpsMetadata</code> object: <code>ResourceID</code> for tagging is created from the
   Amazon Resource Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from
   the strings that come after the word <code>opsmetadata</code> in the ARN. For example, an
   OpsMetadata object with an ARN of
    <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code> has a
    <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    <code>/aws/ssm/MyGroup/appmanager</code>.</p>
         <p>For the <code>Document</code> and <code>Parameter</code> values, use the name of the
   resource.</p>
         <p>
            <code>ManagedInstance</code>: <code>mi-012345abcde</code>
         </p>
         <note>
            <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    managed nodes. You must specify the name of the managed node in the following format:
      <code>mi-<i>ID_number</i>
               </code>. For example,
    <code>mi-1a2b3c4d5e6f</code>.</p>
         </note>")
    @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>Specifies the type of resource you are tagging.</p>
         <note>
            <p>The <code>ManagedInstance</code> type for this API operation is for on-premises managed
    nodes. You must specify the name of the managed node in the following format:
      <code>mi-<i>ID_number</i>
               </code>. For example,
    <code>mi-1a2b3c4d5e6f</code>.</p>
         </note>")
    @as("ResourceType")
    resourceType: resourceTypeForTagging,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceId, ~resourceType, ()) =>
    new({tags: tags, resourceId: resourceId, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMaintenanceWindowTarget = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>True</code>, then all fields that are required by the <a>RegisterTargetWithMaintenanceWindow</a> operation are also required for this API
   request. Optional fields that aren't specified are set to null.</p>")
    @as("Replace")
    replace: option<boolean_>,
    @ocaml.doc("<p>An optional description for the update.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>A name for the update.</p>") @as("Name") name: option<maintenanceWindowName>,
    @ocaml.doc("<p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
   running tasks for these targets in this maintenance window.</p>")
    @as("OwnerInformation")
    ownerInformation: option<ownerInformation>,
    @ocaml.doc("<p>The targets to add or replace.</p>") @as("Targets") targets: option<targets>,
    @ocaml.doc("<p>The target ID to modify.</p>") @as("WindowTargetId")
    windowTargetId: maintenanceWindowTargetId,
    @ocaml.doc("<p>The maintenance window ID with which to modify the target.</p>") @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The updated description.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The updated name.</p>") @as("Name") name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The updated owner.</p>") @as("OwnerInformation")
    ownerInformation: option<ownerInformation>,
    @ocaml.doc("<p>The updated targets.</p>") @as("Targets") targets: option<targets>,
    @ocaml.doc("<p>The target ID specified in the update request.</p>") @as("WindowTargetId")
    windowTargetId: option<maintenanceWindowTargetId>,
    @ocaml.doc("<p>The maintenance window ID specified in the update request.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "UpdateMaintenanceWindowTargetCommand"
  let make = (
    ~windowTargetId,
    ~windowId,
    ~replace=?,
    ~description=?,
    ~name=?,
    ~ownerInformation=?,
    ~targets=?,
    (),
  ) =>
    new({
      replace: replace,
      description: description,
      name: name,
      ownerInformation: ownerInformation,
      targets: targets,
      windowTargetId: windowTargetId,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDocumentMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The change template review details to update.</p>") @as("DocumentReviews")
    documentReviews: documentReviews,
    @ocaml.doc("<p>The version of a change template in which to update approval metadata.</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc(
      "<p>The name of the change template for which a version's metadata is to be updated.</p>"
    )
    @as("Name")
    name: documentName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateDocumentMetadataCommand"
  let make = (~documentReviews, ~name, ~documentVersion=?, ()) =>
    new({documentReviews: documentReviews, documentVersion: documentVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDocument = {
  type t
  type request = {
    @ocaml.doc("<p>Specify a new target type for the document.</p>") @as("TargetType")
    targetType: option<targetType>,
    @ocaml.doc("<p>Specify the document format for the new document version. Systems Manager supports JSON and YAML
   documents. JSON is the default format.</p>")
    @as("DocumentFormat")
    documentFormat: option<documentFormat>,
    @ocaml.doc("<p>The version of the document that you want to update. Currently, Systems Manager supports updating only
   the latest version of the document. You can specify the version number of the latest version or
   use the <code>$LATEST</code> variable.</p>
         <note>
            <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    parameter.</p>
         </note>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>An optional field specifying the version of the artifact you are updating with the document.
   For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and
   can't be changed.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>The friendly name of the SSM document that you want to update. This value can differ for
   each version of the document. If you don't specify a value for this parameter in your request,
   the existing value is applied to the new document version.</p>")
    @as("DisplayName")
    displayName: option<documentDisplayName>,
    @ocaml.doc("<p>The name of the SSM document that you want to update.</p>") @as("Name")
    name: documentName,
    @ocaml.doc(
      "<p>A list of key-value pairs that describe attachments to a version of a document.</p>"
    )
    @as("Attachments")
    attachments: option<attachmentsSourceList>,
    @ocaml.doc("<p>A valid JSON or YAML string.</p>") @as("Content") content: documentContent,
  }
  type response = {
    @ocaml.doc("<p>A description of the document that was updated.</p>") @as("DocumentDescription")
    documentDescription: option<documentDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateDocumentCommand"
  let make = (
    ~name,
    ~content,
    ~targetType=?,
    ~documentFormat=?,
    ~documentVersion=?,
    ~versionName=?,
    ~displayName=?,
    ~attachments=?,
    (),
  ) =>
    new({
      targetType: targetType,
      documentFormat: documentFormat,
      documentVersion: documentVersion,
      versionName: versionName,
      displayName: displayName,
      name: name,
      attachments: attachments,
      content: content,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAutomationExecution = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
   an automation. Tags enable you to categorize a resource in different ways, such as by purpose,
   owner, or environment. For example, you might want to tag an automation to identify an
   environment or operating system. In this case, you could specify the following key-value
   pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=environment,Value=test</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
         </ul>
         <note>
            <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a>
    operation.</p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A location is a combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
   automation. Use this operation to start an automation in multiple Amazon Web Services Regions and multiple
   Amazon Web Services accounts. For more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html\">Running Automation workflows in multiple Amazon Web Services Regions and Amazon Web Services accounts</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>. </p>")
    @as("TargetLocations")
    targetLocations: option<targetLocations>,
    @ocaml.doc("<p>The number of errors that are allowed before the system stops running the automation on
   additional targets. You can specify either an absolute number of errors, for example 10, or a
   percentage of the target set, for example 10%. If you specify 3, for example, the system stops
   running the automation when the fourth error is received. If you specify 0, then the system stops
   running the automation on additional targets after the first error result is returned. If you run
   an automation on 50 resources and set max-errors to 10%, then the system stops running the
   automation on additional targets when the sixth error is received.</p>
         <p>Executions that are already running an automation when max-errors is reached are allowed to
   complete, but some of these executions may fail as well. If you need to ensure that there won't
   be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one
   at a time.</p>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>The maximum number of targets allowed to run this task in parallel. You can specify a
   number, such as 10, or a percentage, such as 10%. The default value is <code>10</code>.</p>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
   can't be specified together.</p>")
    @as("TargetMaps")
    targetMaps: option<targetMaps>,
    @ocaml.doc(
      "<p>A key-value mapping to target resources. Required if you specify TargetParameterName.</p>"
    )
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The name of the parameter used as the target resource for the rate-controlled execution.
   Required if you specify targets.</p>")
    @as("TargetParameterName")
    targetParameterName: option<automationParameterKey>,
    @ocaml.doc("<p>The execution mode of the automation. Valid modes include the following: Auto and
   Interactive. The default mode is Auto.</p>")
    @as("Mode")
    mode: option<executionMode>,
    @ocaml.doc("<p>User-provided idempotency token. The token must be unique, is case insensitive, enforces the
   UUID format, and can't be reused.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>A key-value map of execution parameters, which match the declared parameters in the
   Automation runbook.</p>")
    @as("Parameters")
    parameters: option<automationParameterMap>,
    @ocaml.doc("<p>The version of the Automation runbook to use for this execution.</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the SSM document to run. This can be a public document or a custom document. To
   run a shared document belonging to another account, specify the document ARN. For more
   information about how to use shared documents, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html\">Using shared SSM documents</a>
   in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("DocumentName")
    documentName: documentARN,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of a newly scheduled automation execution.</p>")
    @as("AutomationExecutionId")
    automationExecutionId: option<automationExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "StartAutomationExecutionCommand"
  let make = (
    ~documentName,
    ~tags=?,
    ~targetLocations=?,
    ~maxErrors=?,
    ~maxConcurrency=?,
    ~targetMaps=?,
    ~targets=?,
    ~targetParameterName=?,
    ~mode=?,
    ~clientToken=?,
    ~parameters=?,
    ~documentVersion=?,
    (),
  ) =>
    new({
      tags: tags,
      targetLocations: targetLocations,
      maxErrors: maxErrors,
      maxConcurrency: maxConcurrency,
      targetMaps: targetMaps,
      targets: targets,
      targetParameterName: targetParameterName,
      mode: mode,
      clientToken: clientToken,
      parameters: parameters,
      documentVersion: documentVersion,
      documentName: documentName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTargetWithMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>User-provided idempotency token.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>An optional description for the target.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>An optional name for the target.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
   running tasks for these targets in this maintenance window.</p>")
    @as("OwnerInformation")
    ownerInformation: option<ownerInformation>,
    @ocaml.doc("<p>The targets to register with the maintenance window. In other words, the managed nodes to
   run commands on when the maintenance window runs.</p>
         <note>
            <p>If a single maintenance window task is registered with multiple targets, its task
    invocations occur sequentially and not in parallel. If your task must run on multiple targets at
    the same time, register a task for each target individually and assign each task the same
    priority level.</p>
         </note>
         <p>You can specify targets using managed node IDs, resource group names, or tags that have been
   applied to managed nodes.</p>
         <p>
            <b>Example 1</b>: Specify managed node IDs</p>
         <p>
            <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
         </p>
         <p>
            <b>Example 2</b>: Use tag key-pairs applied to managed
   nodes</p>
         <p>
            <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
         </p>
         <p>
            <b>Example 3</b>: Use tag-keys applied to managed nodes</p>
         <p>
            <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
         </p>
  
         <p>
            <b>Example 4</b>: Use resource group names</p>
         <p>
            <code>Key=resource-groups:Name,Values=<resource-group-name></code>
         </p>
         <p>
            <b>Example 5</b>: Use filters for resource group types</p>
         <p>
            <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
         </p>
         <note>
            <p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify resource types in the
    following format</p>
            <p>
               <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
            </p>
         </note>
  
         <p>For more information about these examples formats, including the best use case for each one,
   see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html\">Examples: Register
    targets with a maintenance window</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("Targets")
    targets: targets,
    @ocaml.doc("<p>The type of target being registered with the maintenance window.</p>")
    @as("ResourceType")
    resourceType: maintenanceWindowResourceType,
    @ocaml.doc("<p>The ID of the maintenance window the target should be registered with.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the target definition in this maintenance window.</p>")
    @as("WindowTargetId")
    windowTargetId: option<maintenanceWindowTargetId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "RegisterTargetWithMaintenanceWindowCommand"
  let make = (
    ~targets,
    ~resourceType,
    ~windowId,
    ~clientToken=?,
    ~description=?,
    ~name=?,
    ~ownerInformation=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      description: description,
      name: name,
      ownerInformation: ownerInformation,
      targets: targets,
      resourceType: resourceType,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutComplianceItems = {
  type t
  type request = {
    @ocaml.doc("<p>The mode for uploading compliance items. You can specify <code>COMPLETE</code> or
    <code>PARTIAL</code>. In <code>COMPLETE</code> mode, the system overwrites all existing
   compliance information for the resource. You must provide a full list of compliance items each
   time you send the request.</p>
         <p>In <code>PARTIAL</code> mode, the system overwrites compliance information for a specific
   association. The association must be configured with <code>SyncCompliance</code> set to
    <code>MANUAL</code>. By default, all requests use <code>COMPLETE</code> mode.</p>
         <note>
            <p>This attribute is only valid for association compliance.</p>
         </note>")
    @as("UploadType")
    uploadType: option<complianceUploadType>,
    @ocaml.doc("<p>MD5 or SHA-256 content hash. The content hash is used to determine if existing information
   should be overwritten or ignored. If the content hashes match, the request to put compliance
   information is ignored.</p>")
    @as("ItemContentHash")
    itemContentHash: option<complianceItemContentHash>,
    @ocaml.doc("<p>Information about the compliance as defined by the resource type. For example, for a patch
   compliance type, <code>Items</code> includes information about the PatchSeverity, Classification,
   and so on.</p>")
    @as("Items")
    items: complianceItemEntryList,
    @ocaml.doc("<p>A summary of the call execution that includes an execution ID, the type of execution (for
   example, <code>Command</code>), and the date/time of the execution using a datetime object that
   is saved in the following format: yyyy-MM-dd'T'HH:mm:ss'Z'.</p>")
    @as("ExecutionSummary")
    executionSummary: complianceExecutionSummary,
    @ocaml.doc("<p>Specify the compliance type. For example, specify Association (for a State Manager
   association), Patch, or Custom:<code>string</code>.</p>")
    @as("ComplianceType")
    complianceType: complianceTypeName,
    @ocaml.doc("<p>Specify the type of resource. <code>ManagedInstance</code> is currently the only supported
   resource type.</p>")
    @as("ResourceType")
    resourceType: complianceResourceType,
    @ocaml.doc("<p>Specify an ID for this resource. For a managed node, this is the node ID.</p>")
    @as("ResourceId")
    resourceId: complianceResourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "PutComplianceItemsCommand"
  let make = (
    ~items,
    ~executionSummary,
    ~complianceType,
    ~resourceType,
    ~resourceId,
    ~uploadType=?,
    ~itemContentHash=?,
    (),
  ) =>
    new({
      uploadType: uploadType,
      itemContentHash: itemContentHash,
      items: items,
      executionSummary: executionSummary,
      complianceType: complianceType,
      resourceType: resourceType,
      resourceId: resourceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListOpsMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<listOpsMetadataMaxResults>,
    @ocaml.doc(
      "<p>One or more filters to limit the number of OpsMetadata objects returned by the call.</p>"
    )
    @as("Filters")
    filters: option<opsMetadataFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of OpsMetadata objects.</p>") @as("OpsMetadataList")
    opsMetadataList: option<opsMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListOpsMetadataCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpsItemRelatedItems = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<opsItemRelatedItemsMaxResults>,
    @ocaml.doc(
      "<p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>"
    )
    @as("Filters")
    filters: option<opsItemRelatedItemsFilters>,
    @ocaml.doc(
      "<p>The ID of the OpsItem for which you want to list all related-item resources.</p>"
    )
    @as("OpsItemId")
    opsItemId: option<opsItemId>,
  }
  type response = {
    @ocaml.doc("<p>A list of related-item resources for the specified OpsItem.</p>")
    @as("Summaries")
    summaries: option<opsItemRelatedItemSummaries>,
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListOpsItemRelatedItemsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~opsItemId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, opsItemId: opsItemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOpsItemEvents = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results. </p>")
    @as("MaxResults")
    maxResults: option<opsItemEventMaxResults>,
    @ocaml.doc(
      "<p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>"
    )
    @as("Filters")
    filters: option<opsItemEventFilters>,
  }
  type response = {
    @ocaml.doc("<p>A list of event information for the specified OpsItems.</p>") @as("Summaries")
    summaries: option<opsItemEventSummaries>,
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results. </p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListOpsItemEventsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInventoryEntries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    )
    @as("Filters")
    filters: option<inventoryFilterList>,
    @ocaml.doc("<p>The type of inventory item for which you want information.</p>") @as("TypeName")
    typeName: inventoryItemTypeName,
    @ocaml.doc("<p>The managed node ID for which you want inventory information.</p>")
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of inventory items on the managed node(s).</p>") @as("Entries")
    entries: option<inventoryItemEntryList>,
    @ocaml.doc("<p>The time that inventory information was collected for the managed node(s).</p>")
    @as("CaptureTime")
    captureTime: option<inventoryItemCaptureTime>,
    @ocaml.doc("<p>The inventory schema version used by the managed node(s).</p>")
    @as("SchemaVersion")
    schemaVersion: option<inventoryItemSchemaVersion>,
    @ocaml.doc("<p>The managed node ID targeted by the request to query inventory information.</p>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>The type of inventory item returned by the request.</p>") @as("TypeName")
    typeName: option<inventoryItemTypeName>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListInventoryEntriesCommand"
  let make = (~typeName, ~instanceId, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      typeName: typeName,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComplianceItems = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of resource from which to get compliance information. Currently, the only supported
   resource type is <code>ManagedInstance</code>.</p>")
    @as("ResourceTypes")
    resourceTypes: option<complianceResourceTypeList>,
    @ocaml.doc("<p>The ID for the resources from which to get compliance information. Currently, you can only
   specify one resource ID.</p>")
    @as("ResourceIds")
    resourceIds: option<complianceResourceIdList>,
    @ocaml.doc("<p>One or more compliance filters. Use a filter to return a more specific list of
   results.</p>")
    @as("Filters")
    filters: option<complianceStringFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of compliance information for the specified resource ID. </p>")
    @as("ComplianceItems")
    complianceItems: option<complianceItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListComplianceItemsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~resourceTypes=?, ~resourceIds=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceTypes: resourceTypes,
      resourceIds: resourceIds,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParametersByPath = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<getParametersByPathMaxResults>,
    @ocaml.doc("<p>Retrieve all parameters in a hierarchy with their value decrypted.</p>")
    @as("WithDecryption")
    withDecryption: option<boolean_>,
    @ocaml.doc("<p>Filters to limit the request results.</p>
         <note>
            <p>The following <code>Key</code> values are supported for <code>GetParametersByPath</code>:
     <code>Type</code>, <code>KeyId</code>, and <code>Label</code>.</p>
            <p>The following <code>Key</code> values aren't supported for
    <code>GetParametersByPath</code>: <code>tag</code>, <code>DataType</code>, <code>Name</code>,
     <code>Path</code>, and <code>Tier</code>.</p>
         </note>")
    @as("ParameterFilters")
    parameterFilters: option<parameterStringFilterList>,
    @ocaml.doc("<p>Retrieve all parameters within a hierarchy.</p>
         <important>
            <p>If a user has access to a path, then the user can access all levels of that path. For
    example, if a user has permission to access path <code>/a</code>, then the user can also access
     <code>/a/b</code>. Even if a user has explicitly been denied access in IAM for
    parameter <code>/a/b</code>, they can still call the GetParametersByPath API operation
    recursively for <code>/a</code> and view <code>/a/b</code>.</p>
         </important>")
    @as("Recursive")
    recursive: option<boolean_>,
    @ocaml.doc("<p>The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy
   is the parameter name except the last part of the parameter. For the API call to succeed, the
   last part of the parameter name can't be in the path. A parameter name hierarchy can have a
   maximum of 15 levels. Here is an example of a hierarchy:
    <code>/Finance/Prod/IAD/WinServ2016/license33 </code>
         </p>")
    @as("Path")
    path: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of parameters found in the specified hierarchy.</p>") @as("Parameters")
    parameters: option<parameterList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetParametersByPathCommand"
  let make = (
    ~path,
    ~nextToken=?,
    ~maxResults=?,
    ~withDecryption=?,
    ~parameterFilters=?,
    ~recursive=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      withDecryption: withDecryption,
      parameterFilters: parameterFilters,
      recursive: recursive,
      path: path,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsItem = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the OpsItem that you want to get.</p>") @as("OpsItemId")
    opsItemId: opsItemId,
  }
  type response = {@ocaml.doc("<p>The OpsItem.</p>") @as("OpsItem") opsItem: option<opsItem>}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetOpsItemCommand"
  let make = (~opsItemId, ()) => new({opsItemId: opsItemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSessions = {
  type t
  type request = {
    @ocaml.doc("<p>One or more filters to limit the type of sessions returned by the request.</p>")
    @as("Filters")
    filters: option<sessionFilterList>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<sessionMaxResults>,
    @ocaml.doc(
      "<p>The session status to retrieve a list of sessions for. For example, \"Active\".</p>"
    )
    @as("State")
    state: sessionState,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of sessions meeting the request parameters.</p>") @as("Sessions")
    sessions: option<sessionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeSessionsCommand"
  let make = (~state, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({filters: filters, nextToken: nextToken, maxResults: maxResults, state: state})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Each element in the array is a structure containing a key-value pair.</p>
         <p>Supported keys for <code>DescribePatchGroups</code> include the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>NAME_PREFIX</code>
                  </b>
               </p>
               <p>Sample values: <code>AWS-</code> | <code>My-</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>OPERATING_SYSTEM</code>
                  </b>
               </p>
               <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<patchOrchestratorFilterList>,
    @ocaml.doc("<p>The maximum number of patch groups to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchBaselineMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Each entry in the array contains:</p>
         <ul>
            <li>
               <p>
                  <code>PatchGroup</code>: string (between 1 and 256 characters. Regex:
      <code>^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$)</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PatchBaselineIdentity</code>: A <code>PatchBaselineIdentity</code> element.</p>
            </li>
         </ul>")
    @as("Mappings")
    mappings: option<patchGroupPatchBaselineMappingList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribePatchGroupsCommand"
  let make = (~nextToken=?, ~filters=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, filters: filters, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePatchBaselines = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of patch baselines to return (per page).</p>")
    @as("MaxResults")
    maxResults: option<patchBaselineMaxResults>,
    @ocaml.doc("<p>Each element in the array is a structure containing a key-value pair.</p>
         <p>Supported keys for <code>DescribePatchBaselines</code> include the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>NAME_PREFIX</code>
                  </b>
               </p>
               <p>Sample values: <code>AWS-</code> | <code>My-</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>OWNER</code>
                  </b>
               </p>
               <p>Sample values: <code>AWS</code> | <code>Self</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>OPERATING_SYSTEM</code>
                  </b>
               </p>
               <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<patchOrchestratorFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>PatchBaselineIdentity</code> elements.</p>")
    @as("BaselineIdentities")
    baselineIdentities: option<patchBaselineIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribePatchBaselinesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowsForTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowSearchMaxResults>,
    @ocaml.doc("<p>The type of resource you want to retrieve information about. For example,
    <code>INSTANCE</code>.</p>")
    @as("ResourceType")
    resourceType: maintenanceWindowResourceType,
    @ocaml.doc("<p>The managed node ID or key-value pair to retrieve information about.</p>")
    @as("Targets")
    targets: targets,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the maintenance window targets and tasks a managed node is associated
   with.</p>")
    @as("WindowIdentities")
    windowIdentities: option<maintenanceWindowsForTargetList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowsForTargetCommand"
  let make = (~resourceType, ~targets, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      resourceType: resourceType,
      targets: targets,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindows = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Optional filters used to narrow down the scope of the returned maintenance windows.
   Supported filter keys are <code>Name</code> and <code>Enabled</code>. For example,
    <code>Name=MyMaintenanceWindow</code> and <code>Enabled=True</code>.</p>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the maintenance windows.</p>") @as("WindowIdentities")
    windowIdentities: option<maintenanceWindowIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowSearchMaxResults>,
    @ocaml.doc("<p>Filters used to limit the range of results. For example, you can limit maintenance window
   executions to only those scheduled before or after a certain date and time.</p>")
    @as("Filters")
    filters: option<patchOrchestratorFilterList>,
    @ocaml.doc("<p>The type of resource you want to retrieve information about. For example,
    <code>INSTANCE</code>.</p>")
    @as("ResourceType")
    resourceType: option<maintenanceWindowResourceType>,
    @ocaml.doc("<p>The managed node ID or key-value pair to retrieve information about.</p>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The ID of the maintenance window to retrieve information about.</p>")
    @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of items to return. (You use this token in the next call.)</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about maintenance window executions scheduled for the specified time
   range.</p>")
    @as("ScheduledWindowExecutions")
    scheduledWindowExecutions: option<scheduledWindowExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowScheduleCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~filters=?,
    ~resourceType=?,
    ~targets=?,
    ~windowId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      resourceType: resourceType,
      targets: targets,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Each entry in the array is a structure containing:</p>
         <ul>
            <li>
               <p>Key. A string between 1 and 128 characters. Supported keys include
      <code>ExecutedBefore</code> and <code>ExecutedAfter</code>.</p>
            </li>
            <li>
               <p>Values. An array of strings, each between 1 and 256 characters. Supported values are
     date/time strings in a valid ISO 8601 date/time format, such as
      <code>2021-11-04T05:00:00Z</code>.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
    @ocaml.doc("<p>The ID of the maintenance window whose executions should be retrieved.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the maintenance window executions.</p>")
    @as("WindowExecutions")
    windowExecutions: option<maintenanceWindowExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowExecutionsCommand"
  let make = (~windowId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutionTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Optional filters used to scope down the returned tasks. The supported filter key is
    <code>STATUS</code> with the corresponding values <code>PENDING</code>,
   <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
    @ocaml.doc(
      "<p>The ID of the maintenance window execution whose task executions should be retrieved.</p>"
    )
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the task executions.</p>") @as("WindowExecutionTaskIdentities")
    windowExecutionTaskIdentities: option<maintenanceWindowExecutionTaskIdentityList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowExecutionTasksCommand"
  let make = (~windowExecutionId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      windowExecutionId: windowExecutionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowExecutionTaskInvocations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Optional filters used to scope down the returned task invocations. The supported filter key
   is <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
    @ocaml.doc(
      "<p>The ID of the specific task in the maintenance window task that should be retrieved.</p>"
    )
    @as("TaskId")
    taskId: maintenanceWindowExecutionTaskId,
    @ocaml.doc("<p>The ID of the maintenance window execution the task is part of.</p>")
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the task invocation results per invocation.</p>")
    @as("WindowExecutionTaskInvocationIdentities")
    windowExecutionTaskInvocationIdentities: option<
      maintenanceWindowExecutionTaskInvocationIdentityList,
    >,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowExecutionTaskInvocationsCommand"
  let make = (~taskId, ~windowExecutionId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      taskId: taskId,
      windowExecutionId: windowExecutionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatches = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of patches to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchComplianceMaxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Each element in the array is a structure containing a key-value pair.</p>
         <p>Supported keys for <code>DescribeInstancePatches</code>include the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Classification</code>
                  </b>
               </p>
               <p>Sample values: <code>Security</code> | <code>SecurityUpdates</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>KBId</code>
                  </b>
               </p>
               <p>Sample values: <code>KB4480056</code> | <code>java-1.7.0-openjdk.x86_64</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Severity</code>
                  </b>
               </p>
               <p>Sample values: <code>Important</code> | <code>Medium</code> | <code>Low</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>State</code>
                  </b>
               </p>
               <p>Sample values: <code>Installed</code> | <code>InstalledOther</code> |
      <code>InstalledPendingReboot</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<patchOrchestratorFilterList>,
    @ocaml.doc(
      "<p>The ID of the managed node whose patch state information should be retrieved.</p>"
    )
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Each entry in the array is a structure containing:</p>
         <ul>
            <li>
               <p>Title (string)</p>
            </li>
            <li>
               <p>KBId (string)</p>
            </li>
            <li>
               <p>Classification (string)</p>
            </li>
            <li>
               <p>Severity (string)</p>
            </li>
            <li>
               <p>State (string, such as \"INSTALLED\" or \"FAILED\")</p>
            </li>
            <li>
               <p>InstalledTime (DateTime)</p>
            </li>
            <li>
               <p>InstalledBy (string)</p>
            </li>
         </ul>")
    @as("Patches")
    patches: option<patchComplianceDataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeInstancePatchesCommand"
  let make = (~instanceId, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancePatchStatesForPatchGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of patches to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchComplianceMaxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Each entry in the array is a structure containing:</p>
         <ul>
            <li>
               <p>Key (string between 1 and 200 characters)</p>
            </li>
            <li>
               <p>Values (array containing a single string)</p>
            </li>
            <li>
               <p>Type (string \"Equal\", \"NotEqual\", \"LessThan\", \"GreaterThan\")</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<instancePatchStateFilterList>,
    @ocaml.doc("<p>The name of the patch group for which the patch state information should be
   retrieved.</p>")
    @as("PatchGroup")
    patchGroup: patchGroup,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The high-level patch state for the requested managed nodes. </p>")
    @as("InstancePatchStates")
    instancePatchStates: option<instancePatchStatesList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeInstancePatchStatesForPatchGroupCommand"
  let make = (~patchGroup, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, patchGroup: patchGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDocument = {
  type t
  type request = {
    @ocaml.doc("<p>An optional field specifying the version of the artifact associated with the document. For
   example, \"Release 12, Update 6\". This value is unique across all versions of a document, and
   can't be changed.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>The document version for which you want information. Can be a specific version or the
   default version.</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: documentARN,
  }
  type response = {
    @ocaml.doc("<p>Information about the SSM document.</p>") @as("Document")
    document: option<documentDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeDocumentCommand"
  let make = (~name, ~versionName=?, ~documentVersion=?, ()) =>
    new({versionName: versionName, documentVersion: documentVersion, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAvailablePatches = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of patches to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchBaselineMaxResults>,
    @ocaml.doc("<p>Each element in the array is a structure containing a key-value pair.</p>
         <p>
            <b>Windows Server</b>
         </p>
         <p>Supported keys for Windows Server managed node patches include the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>PATCH_SET</code>
                  </b>
               </p>
               <p>Sample values: <code>OS</code> | <code>APPLICATION</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PRODUCT</code>
                  </b>
               </p>
               <p>Sample values: <code>WindowsServer2012</code> | <code>Office 2010</code> |
      <code>MicrosoftDefenderAntivirus</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PRODUCT_FAMILY</code>
                  </b>
               </p>
               <p>Sample values: <code>Windows</code> | <code>Office</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>MSRC_SEVERITY</code>
                  </b>
               </p>
               <p>Sample values: <code>ServicePacks</code> | <code>Important</code> | <code>Moderate</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>CLASSIFICATION</code>
                  </b>
               </p>
               <p>Sample values: <code>ServicePacks</code> | <code>SecurityUpdates</code> |
      <code>DefinitionUpdates</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PATCH_ID</code>
                  </b>
               </p>
               <p>Sample values: <code>KB123456</code> | <code>KB4516046</code>
               </p>
            </li>
         </ul>

         <p>
            <b>Linux</b>
         </p>
         <important>
            <p>When specifying filters for Linux patches, you must specify a key-pair for
     <code>PRODUCT</code>. For example, using the Command Line Interface (CLI), the
    following command fails:</p>
            <p>
               <code>aws ssm describe-available-patches --filters Key=CVE_ID,Values=CVE-2018-3615</code>
            </p>
            <p>However, the following command succeeds:</p>
            <p>
               <code>aws ssm describe-available-patches --filters Key=PRODUCT,Values=AmazonLinux2018.03
     Key=CVE_ID,Values=CVE-2018-3615</code>
            </p>
         </important>
         <p>Supported keys for Linux managed node patches include the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>PRODUCT</code>
                  </b>
               </p>
               <p>Sample values: <code>AmazonLinux2018.03</code> | <code>AmazonLinux2.0</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>NAME</code>
                  </b>
               </p>
               <p>Sample values: <code>kernel-headers</code> | <code>samba-python</code> | <code>php</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>SEVERITY</code>
                  </b>
               </p>
               <p>Sample values: <code>Critical</code> | <code>Important</code> | <code>Medium</code> |
      <code>Low</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>EPOCH</code>
                  </b>
               </p>
               <p>Sample values: <code>0</code> | <code>1</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>VERSION</code>
                  </b>
               </p>
               <p>Sample values: <code>78.6.1</code> | <code>4.10.16</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>RELEASE</code>
                  </b>
               </p>
               <p>Sample values: <code>9.56.amzn1</code> | <code>1.amzn2</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>ARCH</code>
                  </b>
               </p>
               <p>Sample values: <code>i686</code> | <code>x86_64</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>REPOSITORY</code>
                  </b>
               </p>
               <p>Sample values: <code>Core</code> | <code>Updates</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>ADVISORY_ID</code>
                  </b>
               </p>
               <p>Sample values: <code>ALAS-2018-1058</code> | <code>ALAS2-2021-1594</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>CVE_ID</code>
                  </b>
               </p>
               <p>Sample values: <code>CVE-2018-3615</code> | <code>CVE-2020-1472</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BUGZILLA_ID</code>
                  </b>
               </p>
               <p>Sample values: <code>1463241</code>
               </p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<patchOrchestratorFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of patches. Each entry in the array is a patch structure.</p>")
    @as("Patches")
    patches: option<patchList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeAvailablePatchesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociationExecutionTargets = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters for the request. You can specify the following filters and values.</p>
         <p>Status (EQUAL)</p>
         <p>ResourceId (EQUAL)</p>
         <p>ResourceType (EQUAL)</p>")
    @as("Filters")
    filters: option<associationExecutionTargetsFilterList>,
    @ocaml.doc("<p>The execution ID for which you want to view details.</p>") @as("ExecutionId")
    executionId: associationExecutionId,
    @ocaml.doc(
      "<p>The association ID that includes the execution for which you want to view details.</p>"
    )
    @as("AssociationId")
    associationId: associationId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the execution.</p>") @as("AssociationExecutionTargets")
    associationExecutionTargets: option<associationExecutionTargetsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeAssociationExecutionTargetsCommand"
  let make = (~executionId, ~associationId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      executionId: executionId,
      associationId: associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInventory = {
  type t
  type request = {
    @ocaml.doc("<p>User-provided idempotency token.</p>") @as("ClientToken")
    clientToken: option<uuid>,
    @ocaml.doc("<p>Use this option to view a summary of the deletion request without deleting any data or the
   data type. This option is useful when you only want to understand what will be deleted. Once you
   validate that the data to be deleted is what you intend to delete, you can run the same command
   without specifying the <code>DryRun</code> option.</p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Use the <code>SchemaDeleteOption</code> to delete a custom inventory type (schema). If you
   don't choose this option, the system only deletes existing inventory data associated with the
   custom inventory type. Choose one of the following options:</p>
         <p>DisableSchema: If you choose this option, the system ignores all inventory data for the
   specified version, and any earlier versions. To enable this schema again, you must call the
    <code>PutInventory</code> operation for a version greater than the disabled version.</p>
         <p>DeleteSchema: This option deletes the specified custom type from the Inventory service. You
   can recreate the schema later, if you want.</p>")
    @as("SchemaDeleteOption")
    schemaDeleteOption: option<inventorySchemaDeleteOption>,
    @ocaml.doc("<p>The name of the custom inventory type for which you want to delete either all previously
   collected data or the inventory type itself. </p>")
    @as("TypeName")
    typeName: inventoryItemTypeName,
  }
  type response = {
    @ocaml.doc(
      "<p>A summary of the delete operation. For more information about this summary, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete-summary\">Deleting custom inventory</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>"
    )
    @as("DeletionSummary")
    deletionSummary: option<inventoryDeletionSummary>,
    @ocaml.doc("<p>The name of the inventory data type specified in the request.</p>")
    @as("TypeName")
    typeName: option<inventoryItemTypeName>,
    @ocaml.doc("<p>Every <code>DeleteInventory</code> operation is assigned a unique ID. This option returns a
   unique ID. You can use this ID to query the status of a delete operation. This option is useful
   for ensuring that a delete operation has completed before you begin other operations. </p>")
    @as("DeletionId")
    deletionId: option<uuid>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DeleteInventoryCommand"
  let make = (~typeName, ~clientToken=?, ~dryRun=?, ~schemaDeleteOption=?, ()) =>
    new({
      clientToken: clientToken,
      dryRun: dryRun,
      schemaDeleteOption: schemaDeleteOption,
      typeName: typeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDocument = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
   different ways, such as by purpose, owner, or environment. For example, you might want to tag an
   SSM document to identify the types of targets or the environment where it will run. In this case,
   you could specify the following key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=Environment,Value=Production</code>
               </p>
            </li>
         </ul>
         <note>
            <p>To add tags to an existing SSM document, use the <a>AddTagsToResource</a>
    operation.</p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specify a target type to define the kinds of resources the document can run on. For example,
   to run a document on EC2 instances, specify the following value:
   <code>/AWS::EC2::Instance</code>. If you specify a value of '/' the document can run on all types
   of resources. If you don't specify a value, the document can't run on any resources. For a list
   of valid resource types, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html\">Amazon Web Services resource and
    property types reference</a> in the <i>CloudFormation User Guide</i>. </p>")
    @as("TargetType")
    targetType: option<targetType>,
    @ocaml.doc("<p>Specify the document format for the request. The document format can be JSON, YAML, or TEXT.
   JSON is the default format.</p>")
    @as("DocumentFormat")
    documentFormat: option<documentFormat>,
    @ocaml.doc("<p>The type of document to create.</p>
         <note>
            <p>The <code>DeploymentStrategy</code> document type is an internal-use-only document type
    reserved for AppConfig.</p>
         </note>")
    @as("DocumentType")
    documentType: option<documentType>,
    @ocaml.doc("<p>An optional field specifying the version of the artifact you are creating with the document.
   For example, \"Release 12, Update 6\". This value is unique across all versions of a document, and
   can't be changed.</p>")
    @as("VersionName")
    versionName: option<documentVersionName>,
    @ocaml.doc("<p>An optional field where you can specify a friendly name for the SSM document. This value can
   differ for each version of the document. You can update this value at a later time using the
    <a>UpdateDocument</a> operation.</p>")
    @as("DisplayName")
    displayName: option<documentDisplayName>,
    @ocaml.doc("<p>A name for the SSM document.</p>
         <important>
            <p>You can't use the following strings as document name prefixes. These are reserved by Amazon Web Services
    for use as document name prefixes:</p>
            <ul>
               <li>
                  <p>
                     <code>aws-</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>amazon</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>amzn</code>
                  </p>
               </li>
            </ul>
         </important>")
    @as("Name")
    name: documentName,
    @ocaml.doc(
      "<p>A list of key-value pairs that describe attachments to a version of a document.</p>"
    )
    @as("Attachments")
    attachments: option<attachmentsSourceList>,
    @ocaml.doc("<p>A list of SSM documents required by a document. This parameter is used exclusively by
   AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also
   specify a required document for validation purposes. In this case, an
    <code>ApplicationConfiguration</code> document requires an
    <code>ApplicationConfigurationSchema</code> document for validation purposes. For more
   information, see <a href=\"https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html\">What is AppConfig?</a> in the
    <i>AppConfig User Guide</i>.</p>")
    @as("Requires")
    requires: option<documentRequiresList>,
    @ocaml.doc("<p>The content for the new SSM document in JSON or YAML format. We recommend storing the
   contents for your new document in an external JSON or YAML file and referencing the file in a
   command.</p>
         <p>For examples, see the following topics in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html\">Create an SSM document (Amazon Web Services API)</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-cli.html\">Create an SSM document (Amazon Web Services CLI)</a>
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/create-ssm-document-api.html\">Create an SSM document (API)</a>
               </p>
            </li>
         </ul>")
    @as("Content")
    content: documentContent,
  }
  type response = {
    @ocaml.doc("<p>Information about the SSM document.</p>") @as("DocumentDescription")
    documentDescription: option<documentDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateDocumentCommand"
  let make = (
    ~name,
    ~content,
    ~tags=?,
    ~targetType=?,
    ~documentFormat=?,
    ~documentType=?,
    ~versionName=?,
    ~displayName=?,
    ~attachments=?,
    ~requires=?,
    (),
  ) =>
    new({
      tags: tags,
      targetType: targetType,
      documentFormat: documentFormat,
      documentType: documentType,
      versionName: versionName,
      displayName: displayName,
      name: name,
      attachments: attachments,
      requires: requires,
      content: content,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateResourceDataSync = {
  type t
  type request = {
    @ocaml.doc("<p>Specify information about the data sources to synchronize.</p>")
    @as("SyncSource")
    syncSource: resourceDataSyncSource,
    @ocaml.doc("<p>The type of resource data sync. The supported <code>SyncType</code> is
   SyncFromSource.</p>")
    @as("SyncType")
    syncType: resourceDataSyncType,
    @ocaml.doc("<p>The name of the resource data sync you want to update.</p>") @as("SyncName")
    syncName: resourceDataSyncName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateResourceDataSyncCommand"
  let make = (~syncSource, ~syncType, ~syncName, ()) =>
    new({syncSource: syncSource, syncType: syncType, syncName: syncName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMaintenanceWindowTask = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether tasks should continue to run after the cutoff time specified in the
   maintenance windows is reached. </p>
         <ul>
            <li>
               <p>
                  <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
     continue. The default value.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_TASK</code>:</p>
               <ul>
                  <li>
                     <p>For Automation, Lambda, Step Functions tasks: When the cutoff
       time is reached, any task invocations that are already running continue, but no new task
       invocations are started.</p>
                  </li>
                  <li>
                     <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
       task. However, there is no guarantee that the command will be terminated and the underlying
       process stopped.</p>
                  </li>
               </ul>
               <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
            </li>
         </ul>")
    @as("CutoffBehavior")
    cutoffBehavior: option<maintenanceWindowTaskCutoffBehavior>,
    @ocaml.doc("<p>If True, then all fields that are required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are also required for this API request.
   Optional fields that aren't specified are set to null.</p>")
    @as("Replace")
    replace: option<boolean_>,
    @ocaml.doc("<p>The new task description to specify.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The new task name to specify.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The new logging location in Amazon S3 to specify.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("LoggingInfo")
    loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The new <code>MaxErrors</code> value to specify. <code>MaxErrors</code> is the maximum
   number of errors that are allowed before the task stops being scheduled.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>The new <code>MaxConcurrency</code> value you want to specify. <code>MaxConcurrency</code>
   is the number of targets that are allowed to run this task, in parallel.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The new task priority to specify. The lower the number, the higher the priority. Tasks that
   have the same priority are scheduled in parallel.</p>")
    @as("Priority")
    priority: option<maintenanceWindowTaskPriority>,
    @ocaml.doc("<p>The parameters that the task should use during execution. Populate only the fields that
   match the task type. All other fields should be empty.</p>
         <important>
            <p>When you update a maintenance window task that has options specified in
     <code>TaskInvocationParameters</code>, you must provide again all the
     <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    specify again are removed. For example, suppose that when you registered a Run Command task, you
    specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
     <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
         </important>")
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @ocaml.doc("<p>The parameters to modify.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>
         <p>The map has the following format:</p>
         <p>Key: string, between 1 and 255 characters</p>
         <p>Value: an array of strings, each string is between 1 and 255 characters</p>")
    @as("TaskParameters")
    taskParameters: option<maintenanceWindowTaskParameters>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a 
  maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's 
  service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run 
  <code>RegisterTaskWithMaintenanceWindow</code>.</p>
         <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions\">Using 
    service-linked roles for Systems Manager</a> 
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role\">Should I use a service-linked role or a custom service role to run maintenance window tasks?
   </a>
               </p>
            </li>
         </ul>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<serviceRole>,
    @ocaml.doc("<p>The task ARN to modify.</p>") @as("TaskArn")
    taskArn: option<maintenanceWindowTaskArn>,
    @ocaml.doc("<p>The targets (either managed nodes or tags) to modify. Managed nodes are specified using the
   format <code>Key=instanceids,Values=instanceID_1,instanceID_2</code>. Tags are specified using
   the format <code> Key=tag_name,Values=tag_value</code>. </p>
         <note>
            <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    Depending on the task, targets are optional for other maintenance window task types (Automation,
     Lambda, and Step Functions). For more information about running tasks
    that don't specify targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">Registering
     maintenance window tasks without targets</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         </note>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The task ID to modify.</p>") @as("WindowTaskId")
    windowTaskId: maintenanceWindowTaskId,
    @ocaml.doc("<p>The maintenance window ID that contains the task to modify.</p>") @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The specification for whether tasks should continue to run after the cutoff time specified
   in the maintenance windows is reached. </p>")
    @as("CutoffBehavior")
    cutoffBehavior: option<maintenanceWindowTaskCutoffBehavior>,
    @ocaml.doc("<p>The updated task description.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The updated task name.</p>") @as("Name") name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The updated logging information in Amazon S3.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("LoggingInfo")
    loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The updated <code>MaxErrors</code> value.</p>") @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>The updated <code>MaxConcurrency</code> value.</p>") @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The updated priority value.</p>") @as("Priority")
    priority: option<maintenanceWindowTaskPriority>,
    @ocaml.doc("<p>The updated parameter values.</p>") @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @ocaml.doc("<p>The updated parameter values.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("TaskParameters")
    taskParameters: option<maintenanceWindowTaskParameters>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service 
(Amazon SNS) notifications for maintenance window Run Command tasks.</p>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<serviceRole>,
    @ocaml.doc("<p>The updated task ARN value.</p>") @as("TaskArn")
    taskArn: option<maintenanceWindowTaskArn>,
    @ocaml.doc("<p>The updated target values.</p>") @as("Targets") targets: option<targets>,
    @ocaml.doc("<p>The task ID of the maintenance window that was updated.</p>") @as("WindowTaskId")
    windowTaskId: option<maintenanceWindowTaskId>,
    @ocaml.doc("<p>The ID of the maintenance window that was updated.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "UpdateMaintenanceWindowTaskCommand"
  let make = (
    ~windowTaskId,
    ~windowId,
    ~cutoffBehavior=?,
    ~replace=?,
    ~description=?,
    ~name=?,
    ~loggingInfo=?,
    ~maxErrors=?,
    ~maxConcurrency=?,
    ~priority=?,
    ~taskInvocationParameters=?,
    ~taskParameters=?,
    ~serviceRoleArn=?,
    ~taskArn=?,
    ~targets=?,
    (),
  ) =>
    new({
      cutoffBehavior: cutoffBehavior,
      replace: replace,
      description: description,
      name: name,
      loggingInfo: loggingInfo,
      maxErrors: maxErrors,
      maxConcurrency: maxConcurrency,
      priority: priority,
      taskInvocationParameters: taskInvocationParameters,
      taskParameters: taskParameters,
      serviceRoleArn: serviceRoleArn,
      taskArn: taskArn,
      targets: targets,
      windowTaskId: windowTaskId,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssociationStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The association status.</p>") @as("AssociationStatus")
    associationStatus: associationStatus,
    @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: instanceId,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: documentARN,
  }
  type response = {
    @ocaml.doc("<p>Information about the association.</p>") @as("AssociationDescription")
    associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateAssociationStatusCommand"
  let make = (~associationStatus, ~instanceId, ~name, ()) =>
    new({associationStatus: associationStatus, instanceId: instanceId, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
   association. Use this action to update an association in multiple Regions and multiple
   accounts.</p>")
    @as("TargetLocations")
    targetLocations: option<targetLocations>,
    @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
   gate your associations under. The associations only run when that change calendar is open. For
   more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar\">Amazon Web Services Systems Manager Change
    Calendar</a>.</p>")
    @as("CalendarNames")
    calendarNames: option<calendarNameOrARNList>,
    @ocaml.doc("<p>By default, when you update an association, the system runs it immediately after it is
   updated and then according to the schedule you specified. Specify this option if you don't want
   an association to run immediately after you update it. This parameter isn't supported for rate
   expressions.</p>

         <p>If you chose this option when you created an association and later you edit that association
   or you make changes to the SSM document on which that association is based (by using the
   Documents page in the console), State Manager applies the association at the next specified cron
   interval. For example, if you chose the <code>Latest</code> version of an SSM document when you
   created an association and you edit the association by choosing a different document version on
   the Documents page, State Manager applies the association at the next specified cron interval if
   you previously selected this option. If this option wasn't selected, State Manager immediately
   runs the association.</p>
         <p>You can reset this option. To do so, specify the <code>no-apply-only-at-cron-interval</code>
   parameter when you update the association from the command line. This parameter forces the
   association to run immediately after updating it and according to the interval specified.</p>")
    @as("ApplyOnlyAtCronInterval")
    applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
    @ocaml.doc("<p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
   execution to determine the compliance status. If the association execution runs successfully,
   then the association is <code>COMPLIANT</code>. If the association execution doesn't run
   successfully, the association is <code>NON-COMPLIANT</code>.</p>
         <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
   for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
   managed by State Manager, a capability of Amazon Web Services Systems Manager. It is managed by your direct call to the
    <a>PutComplianceItems</a> API operation.</p>
         <p>By default, all associations use <code>AUTO</code> mode.</p>")
    @as("SyncCompliance")
    syncCompliance: option<associationSyncCompliance>,
    @ocaml.doc("<p>The severity level to assign to the association.</p>") @as("ComplianceSeverity")
    complianceSeverity: option<associationComplianceSeverity>,
    @ocaml.doc("<p>The maximum number of targets allowed to run the association at the same time. You can
   specify a number, for example 10, or a percentage of the target set, for example 10%. The default
   value is 100%, which means all targets run the association at the same time.</p>
         <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
   association interval, the new managed node will process its association within the limit
   specified for <code>MaxConcurrency</code>.</p>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The number of errors that are allowed before the system stops sending requests to run the
   association on additional targets. You can specify either an absolute number of errors, for
   example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
   the system stops sending requests when the fourth error is received. If you specify 0, then the
   system stops sending requests after the first error is returned. If you run an association on 50
   managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
   when the sixth error is received.</p>
         <p>Executions that are already running an association when <code>MaxErrors</code> is reached
   are allowed to complete, but some of these executions may fail as well. If you need to ensure
   that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
   so that executions proceed one at a time.</p>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>Choose the parameter that will define how your automation will branch out. This target is
   required for associations that use an Automation runbook and target resources by using rate
   controls. Automation is a capability of Amazon Web Services Systems Manager.</p>")
    @as("AutomationTargetParameterName")
    automationTargetParameterName: option<automationTargetParameterName>,
    @ocaml.doc("<p>This parameter is provided for concurrency control purposes. You must specify the latest
   association version in the service. If you want to ensure that this request succeeds, either
   specify <code>$LATEST</code>, or omit this parameter.</p>")
    @as("AssociationVersion")
    associationVersion: option<associationVersion>,
    @ocaml.doc("<p>The name of the association that you want to update.</p>") @as("AssociationName")
    associationName: option<associationName>,
    @ocaml.doc("<p>The targets of the association.</p>") @as("Targets") targets: option<targets>,
    @ocaml.doc("<p>The name of the SSM Command document or Automation runbook that contains the configuration
   information for the managed node.</p>
         <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
   shared with you from another account.</p>
         <p>For Systems Manager document (SSM document) that are shared with you from other Amazon Web Services accounts, you
   must specify the complete SSM document ARN, in the following format:</p>
         <p>
            <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
            </code>
         </p>
         <p>For example:</p>
         <p>
            <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
         </p>
         <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
   to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    <code>My-Document</code>.</p>")
    @as("Name")
    name: option<documentARN>,
    @ocaml.doc("<p>An S3 bucket where you want to store the results of this request.</p>")
    @as("OutputLocation")
    outputLocation: option<instanceAssociationOutputLocation>,
    @ocaml.doc(
      "<p>The cron expression used to schedule the association that you want to update.</p>"
    )
    @as("ScheduleExpression")
    scheduleExpression: option<scheduleExpression>,
    @ocaml.doc("<p>The document version you want update for the association. </p>
         <important>
            <p>State Manager doesn't support running associations that use a new version of a document if
    that document is shared from another account. State Manager always runs the <code>default</code>
    version of a document if shared from another account, even though the Systems Manager console shows that a
    new version was processed. If you want to run an association using a new version of a document
    shared form another account, you must set the document version to <code>default</code>.</p>
         </important>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The parameters you want to update for the association. If you create a parameter using
   Parameter Store, a capability of Amazon Web Services Systems Manager, you can reference the parameter using
    <code>{{ssm:parameter-name}}</code>.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The ID of the association you want to update. </p>") @as("AssociationId")
    associationId: associationId,
  }
  type response = {
    @ocaml.doc("<p>The description of the association that was updated.</p>")
    @as("AssociationDescription")
    associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdateAssociationCommand"
  let make = (
    ~associationId,
    ~targetLocations=?,
    ~calendarNames=?,
    ~applyOnlyAtCronInterval=?,
    ~syncCompliance=?,
    ~complianceSeverity=?,
    ~maxConcurrency=?,
    ~maxErrors=?,
    ~automationTargetParameterName=?,
    ~associationVersion=?,
    ~associationName=?,
    ~targets=?,
    ~name=?,
    ~outputLocation=?,
    ~scheduleExpression=?,
    ~documentVersion=?,
    ~parameters=?,
    (),
  ) =>
    new({
      targetLocations: targetLocations,
      calendarNames: calendarNames,
      applyOnlyAtCronInterval: applyOnlyAtCronInterval,
      syncCompliance: syncCompliance,
      complianceSeverity: complianceSeverity,
      maxConcurrency: maxConcurrency,
      maxErrors: maxErrors,
      automationTargetParameterName: automationTargetParameterName,
      associationVersion: associationVersion,
      associationName: associationName,
      targets: targets,
      name: name,
      outputLocation: outputLocation,
      scheduleExpression: scheduleExpression,
      documentVersion: documentVersion,
      parameters: parameters,
      associationId: associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendCommand = {
  type t
  type request = {
    @ocaml.doc("<p>Enables Amazon Web Services Systems Manager to send Run Command output to Amazon CloudWatch Logs. Run Command is a
   capability of Amazon Web Services Systems Manager.</p>")
    @as("CloudWatchOutputConfig")
    cloudWatchOutputConfig: option<cloudWatchOutputConfig>,
    @ocaml.doc("<p>Configurations for sending notifications.</p>") @as("NotificationConfig")
    notificationConfig: option<notificationConfig>,
    @ocaml.doc("<p>The ARN of the Identity and Access Management (IAM) service role to use to publish
    Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.</p>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<serviceRole>,
    @ocaml.doc("<p>The maximum number of errors allowed without the command failing. When the command fails one
   more time beyond the value of <code>MaxErrors</code>, the systems stops sending the command to
   additional targets. You can specify a number like 10 or a percentage like 10%. The default value
   is <code>0</code>. For more information about how to use <code>MaxErrors</code>, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors\">Using
    error controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>(Optional) The maximum number of managed nodes that are allowed to run the command at the
   same time. You can specify a number such as 10 or a percentage such as 10%. The default value is
    <code>50</code>. For more information about how to use <code>MaxConcurrency</code>, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity\">Using
    concurrency controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc(
      "<p>The directory structure within the S3 bucket where the responses should be stored.</p>"
    )
    @as("OutputS3KeyPrefix")
    outputS3KeyPrefix: option<s3KeyPrefix>,
    @ocaml.doc(
      "<p>The name of the S3 bucket where command execution responses should be stored.</p>"
    )
    @as("OutputS3BucketName")
    outputS3BucketName: option<s3BucketName>,
    @ocaml.doc("<p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
   automatically determines the Amazon Web Services Region of the S3 bucket.</p>")
    @as("OutputS3Region")
    outputS3Region: option<s3Region>,
    @ocaml.doc("<p>The required and optional parameters specified in the document being run.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>User-specified information about the command, such as a brief description of what the
   command should do.</p>")
    @as("Comment")
    comment: option<comment>,
    @ocaml.doc(
      "<p>If this time is reached and the command hasn't already started running, it won't run.</p>"
    )
    @as("TimeoutSeconds")
    timeoutSeconds: option<timeoutSeconds>,
    @ocaml.doc("<p>Sha256 or Sha1.</p>
         <note>
            <p>Sha1 hashes have been deprecated.</p>
         </note>")
    @as("DocumentHashType")
    documentHashType: option<documentHashType>,
    @ocaml.doc("<p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
         <note>
            <p>Sha1 hashes have been deprecated.</p>
         </note>")
    @as("DocumentHash")
    documentHash: option<documentHash>,
    @ocaml.doc("<p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a
   specific version number. If you run commands by using the Command Line Interface (Amazon Web Services CLI), then
   you must escape the first two options by using a backslash. If you specify a version number, then
   you don't need to use the backslash. For example:</p>
         <p>--document-version \"\\$DEFAULT\"</p>
         <p>--document-version \"\\$LATEST\"</p>
         <p>--document-version \"3\"</p>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the Amazon Web Services Systems Manager document (SSM document) to run. This can be a public document or a
   custom document. To run a shared document belonging to another account, specify the document
   Amazon Resource Name (ARN). For more information about how to use shared documents, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html\">Using shared
    SSM documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         <note>
            <p>If you specify a document name or ARN that hasn't been shared with your account, you
    receive an <code>InvalidDocument</code> error. </p>
         </note>")
    @as("DocumentName")
    documentName: documentARN,
    @ocaml.doc("<p>An array of search criteria that targets managed nodes using a <code>Key,Value</code>
   combination that you specify. Specifying targets is most useful when you want to send a command
   to a large number of managed nodes at once. Using <code>Targets</code>, which accepts tag
   key-value pairs to identify managed nodes, you can send a command to tens, hundreds, or thousands
   of nodes at once.</p>
         <p>To send a command to a smaller number of managed nodes, you can use the
    <code>InstanceIds</code> option instead.</p>
         <p>For more information about how to use targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html\">Sending commands to a
    fleet</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The IDs of the managed nodes where the command should run. Specifying managed node IDs is
   most useful when you are targeting a limited number of managed nodes, though you can specify up
   to 50 IDs.</p>
         <p>To target a larger number of managed nodes, or if you prefer not to list individual node
   IDs, we recommend using the <code>Targets</code> option instead. Using <code>Targets</code>,
   which accepts tag key-value pairs to identify the managed nodes to send commands to, you can a
   send command to tens, hundreds, or thousands of nodes at once.</p>
         <p>For more information about how to use targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html\">Using targets and rate
    controls to send commands to a fleet</a> in the
   <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("InstanceIds")
    instanceIds: option<instanceIdList>,
  }
  type response = {
    @ocaml.doc("<p>The request as it was received by Systems Manager. Also provides the command ID which can be used
   future references to this request.</p>")
    @as("Command")
    command: option<command>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "SendCommandCommand"
  let make = (
    ~documentName,
    ~cloudWatchOutputConfig=?,
    ~notificationConfig=?,
    ~serviceRoleArn=?,
    ~maxErrors=?,
    ~maxConcurrency=?,
    ~outputS3KeyPrefix=?,
    ~outputS3BucketName=?,
    ~outputS3Region=?,
    ~parameters=?,
    ~comment=?,
    ~timeoutSeconds=?,
    ~documentHashType=?,
    ~documentHash=?,
    ~documentVersion=?,
    ~targets=?,
    ~instanceIds=?,
    (),
  ) =>
    new({
      cloudWatchOutputConfig: cloudWatchOutputConfig,
      notificationConfig: notificationConfig,
      serviceRoleArn: serviceRoleArn,
      maxErrors: maxErrors,
      maxConcurrency: maxConcurrency,
      outputS3KeyPrefix: outputS3KeyPrefix,
      outputS3BucketName: outputS3BucketName,
      outputS3Region: outputS3Region,
      parameters: parameters,
      comment: comment,
      timeoutSeconds: timeoutSeconds,
      documentHashType: documentHashType,
      documentHash: documentHash,
      documentVersion: documentVersion,
      documentName: documentName,
      targets: targets,
      instanceIds: instanceIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTaskWithMaintenanceWindow = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether tasks should continue to run after the cutoff time specified in the
   maintenance windows is reached. </p>
         <ul>
            <li>
               <p>
                  <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
     continue. The default value.</p>
            </li>
            <li>
               <p>
                  <code>CANCEL_TASK</code>:</p>
               <ul>
                  <li>
                     <p>For Automation, Lambda, Step Functions tasks: When the cutoff
       time is reached, any task invocations that are already running continue, but no new task
       invocations are started.</p>
                  </li>
                  <li>
                     <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
       task. However, there is no guarantee that the command will be terminated and the underlying
       process stopped.</p>
                  </li>
               </ul>
               <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
            </li>
         </ul>")
    @as("CutoffBehavior")
    cutoffBehavior: option<maintenanceWindowTaskCutoffBehavior>,
    @ocaml.doc("<p>User-provided idempotency token.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>An optional description for the task.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>An optional name for the task.</p>") @as("Name")
    name: option<maintenanceWindowName>,
    @ocaml.doc("<p>A structure containing information about an Amazon Simple Storage Service (Amazon S3) bucket
   to write managed node-level logs to. </p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("LoggingInfo")
    loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The maximum number of errors allowed before this task stops being scheduled.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>The maximum number of targets this task can be run for, in parallel.</p>
         <note>
            <p>Although this element is listed as \"Required: No\", a value can be omitted only when you are
    registering or updating a <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">targetless
     task</a> You must provide a value in all other cases.</p>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    affect the running of your task.</p>
         </note>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The priority of the task in the maintenance window, the lower the number the higher the
   priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the
   same priority scheduled in parallel.</p>")
    @as("Priority")
    priority: option<maintenanceWindowTaskPriority>,
    @ocaml.doc("<p>The parameters that the task should use during execution. Populate only the fields that
   match the task type. All other fields should be empty. </p>")
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @ocaml.doc("<p>The parameters that should be passed to the task when it is run.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("TaskParameters")
    taskParameters: option<maintenanceWindowTaskParameters>,
    @ocaml.doc("<p>The type of task being registered.</p>") @as("TaskType")
    taskType: maintenanceWindowTaskType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM service role for Amazon Web Services Systems Manager to assume when running a 
  maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's 
  service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run 
  <code>RegisterTaskWithMaintenanceWindow</code>.</p>
         <p>For more information, see the following topics in the in the <i>Amazon Web Services Systems Manager User Guide</i>:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions\">Using 
    service-linked roles for Systems Manager</a> 
               </p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role\">Should I use a service-linked role or a custom service role to run maintenance window tasks?
   </a>
               </p>
            </li>
         </ul>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<serviceRole>,
    @ocaml.doc("<p>The ARN of the task to run.</p>") @as("TaskArn")
    taskArn: maintenanceWindowTaskArn,
    @ocaml.doc("<p>The targets (either managed nodes or maintenance window targets).</p>
         <note>
            <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    Depending on the task, targets are optional for other maintenance window task types (Automation,
     Lambda, and Step Functions). For more information about running tasks
    that don't specify targets, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html\">Registering
     maintenance window tasks without targets</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>
         </note>
         <p>Specify managed nodes using the following format: </p>
         <p>
            <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2></code>
         </p>
         <p>Specify maintenance window targets using the following format:</p>
         <p>
            <code>Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2></code>
         </p>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The ID of the maintenance window the task should be added to.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the task in the maintenance window.</p>") @as("WindowTaskId")
    windowTaskId: option<maintenanceWindowTaskId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "RegisterTaskWithMaintenanceWindowCommand"
  let make = (
    ~taskType,
    ~taskArn,
    ~windowId,
    ~cutoffBehavior=?,
    ~clientToken=?,
    ~description=?,
    ~name=?,
    ~loggingInfo=?,
    ~maxErrors=?,
    ~maxConcurrency=?,
    ~priority=?,
    ~taskInvocationParameters=?,
    ~taskParameters=?,
    ~serviceRoleArn=?,
    ~targets=?,
    (),
  ) =>
    new({
      cutoffBehavior: cutoffBehavior,
      clientToken: clientToken,
      description: description,
      name: name,
      loggingInfo: loggingInfo,
      maxErrors: maxErrors,
      maxConcurrency: maxConcurrency,
      priority: priority,
      taskInvocationParameters: taskInvocationParameters,
      taskParameters: taskParameters,
      taskType: taskType,
      serviceRoleArn: serviceRoleArn,
      taskArn: taskArn,
      targets: targets,
      windowId: windowId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInventory = {
  type t
  type request = {
    @ocaml.doc("<p>The inventory items that you want to add or update on managed nodes.</p>")
    @as("Items")
    items: inventoryItemList,
    @ocaml.doc("<p>An managed node ID where you want to add or update inventory items.</p>")
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the request.</p>") @as("Message")
    message: option<putInventoryMessage>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "PutInventoryCommand"
  let make = (~items, ~instanceId, ()) => new({items: items, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceComplianceSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    )
    @as("Filters")
    filters: option<complianceStringFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A summary count for specified or targeted managed nodes. Summary count includes information
   about compliant and non-compliant State Manager associations, patch status, or custom items
   according to the filter criteria that you specify. </p>")
    @as("ResourceComplianceSummaryItems")
    resourceComplianceSummaryItems: option<resourceComplianceSummaryItemList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "ListResourceComplianceSummariesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocuments = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more <code>DocumentKeyValuesFilter</code> objects. Use a filter to return a more
   specific list of results. For keys, you can specify one or more key-value pair tags that have
   been applied to a document. Other valid keys include <code>Owner</code>, <code>Name</code>,
    <code>PlatformTypes</code>, <code>DocumentType</code>, and <code>TargetType</code>. For example,
   to return documents you own use <code>Key=Owner,Values=Self</code>. To specify a custom key-value
   pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p>
         <note>
            <p>This API operation only supports filtering documents by using a single tag key and one or
    more tag values. For example: <code>Key=tag:tagName,Values=valueName1,valueName2</code>
            </p>
         </note>")
    @as("Filters")
    filters: option<documentKeyValuesFilterList>,
    @ocaml.doc("<p>This data type is deprecated. Instead, use <code>Filters</code>.</p>")
    @as("DocumentFilterList")
    documentFilterList: option<documentFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The names of the SSM documents.</p>") @as("DocumentIdentifiers")
    documentIdentifiers: option<documentIdentifierList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListDocumentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~documentFilterList=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      documentFilterList: documentFilterList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComplianceSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. Currently, you can specify null or 50.
   The call also returns a token that you can specify in a subsequent call to get the next set of
   results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>One or more compliance or inventory filters. Use a filter to return a more specific list of
   results.</p>")
    @as("Filters")
    filters: option<complianceStringFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of compliant and non-compliant summary counts based on compliance types. For example,
   this call returns State Manager associations, patches, or custom compliance types according to
   the filter criteria that you specified.</p>")
    @as("ComplianceSummaryItems")
    complianceSummaryItems: option<complianceSummaryItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListComplianceSummariesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCommandInvocations = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) If set this returns the response of the command executions and any command
   output. The default value is <code>false</code>. </p>")
    @as("Details")
    details: option<boolean_>,
    @ocaml.doc("<p>(Optional) One or more filters. Use a filter to return a more specific list of
   results.</p>")
    @as("Filters")
    filters: option<commandFilterList>,
    @ocaml.doc("<p>(Optional) The token for the next set of items to return. (You received this token from a
   previous call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Optional) The maximum number of items to return for this call. The call also returns a
   token that you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<commandMaxResults>,
    @ocaml.doc("<p>(Optional) The command execution details for a specific managed node ID.</p>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>(Optional) The invocations for a specific command ID.</p>") @as("CommandId")
    commandId: option<commandId>,
  }
  type response = {
    @ocaml.doc("<p>(Optional) The token for the next set of items to return. (You received this token from a
   previous call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Optional) A list of all invocations. </p>") @as("CommandInvocations")
    commandInvocations: option<commandInvocationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListCommandInvocationsCommand"
  let make = (
    ~details=?,
    ~filters=?,
    ~nextToken=?,
    ~maxResults=?,
    ~instanceId=?,
    ~commandId=?,
    (),
  ) =>
    new({
      details: details,
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      instanceId: instanceId,
      commandId: commandId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetParameterHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Return decrypted values for secure string parameters. This flag is ignored for
    <code>String</code> and <code>StringList</code> parameter types.</p>")
    @as("WithDecryption")
    withDecryption: option<boolean_>,
    @ocaml.doc("<p>The name of the parameter for which you want to review history.</p>") @as("Name")
    name: psparameterName,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of parameters returned by the request.</p>") @as("Parameters")
    parameters: option<parameterHistoryList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetParameterHistoryCommand"
  let make = (~name, ~nextToken=?, ~maxResults=?, ~withDecryption=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, withDecryption: withDecryption, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowTask = {
  type t
  type request = {
    @ocaml.doc("<p>The maintenance window task ID to retrieve.</p>") @as("WindowTaskId")
    windowTaskId: maintenanceWindowTaskId,
    @ocaml.doc("<p>The maintenance window ID that includes the task to retrieve.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The action to take on tasks when the maintenance window cutoff time is reached.
    <code>CONTINUE_TASK</code> means that tasks continue to run. For Automation, Lambda, Step Functions tasks, <code>CANCEL_TASK</code> means that currently
   running task invocations continue, but no new task invocations are started. For Run Command
   tasks, <code>CANCEL_TASK</code> means the system attempts to stop the task by sending a
    <code>CancelCommand</code> operation.</p>")
    @as("CutoffBehavior")
    cutoffBehavior: option<maintenanceWindowTaskCutoffBehavior>,
    @ocaml.doc("<p>The retrieved task description.</p>") @as("Description")
    description: option<maintenanceWindowDescription>,
    @ocaml.doc("<p>The retrieved task name.</p>") @as("Name") name: option<maintenanceWindowName>,
    @ocaml.doc("<p>The location in Amazon Simple Storage Service (Amazon S3) where the task results are
   logged.</p>
         <note>
            <p>
               <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
      <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
      For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
      window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("LoggingInfo")
    loggingInfo: option<loggingInfo>,
    @ocaml.doc("<p>The maximum number of errors allowed before the task stops being scheduled.</p>
         <note>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>, which may be reported
    in the response to this command. This value doesn't affect the running of your task and can be
    ignored.</p>
         </note>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>The maximum number of targets allowed to run this task in parallel.</p>
         <note>
            <p>For maintenance window tasks without a target specified, you can't supply a value for this
    option. Instead, the system inserts a placeholder value of <code>1</code>, which may be reported
    in the response to this command. This value doesn't affect the running of your task and can be
    ignored.</p>
         </note>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The priority of the task when it runs. The lower the number, the higher the priority. Tasks
   that have the same priority are scheduled in parallel.</p>")
    @as("Priority")
    priority: option<maintenanceWindowTaskPriority>,
    @ocaml.doc("<p>The parameters to pass to the task when it runs.</p>")
    @as("TaskInvocationParameters")
    taskInvocationParameters: option<maintenanceWindowTaskInvocationParameters>,
    @ocaml.doc("<p>The parameters to pass to the task when it runs.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>")
    @as("TaskParameters")
    taskParameters: option<maintenanceWindowTaskParameters>,
    @ocaml.doc("<p>The type of task to run.</p>") @as("TaskType")
    taskType: option<maintenanceWindowTaskType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service 
(Amazon SNS) notifications for maintenance window Run Command tasks.</p>")
    @as("ServiceRoleArn")
    serviceRoleArn: option<serviceRole>,
    @ocaml.doc("<p>The resource that the task used during execution. For <code>RUN_COMMAND</code> and
    <code>AUTOMATION</code> task types, the value of <code>TaskArn</code> is the SSM document
   name/ARN. For <code>LAMBDA</code> tasks, the value is the function name/ARN. For
    <code>STEP_FUNCTIONS</code> tasks, the value is the state machine ARN.</p>")
    @as("TaskArn")
    taskArn: option<maintenanceWindowTaskArn>,
    @ocaml.doc("<p>The targets where the task should run.</p>") @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The retrieved maintenance window task ID.</p>") @as("WindowTaskId")
    windowTaskId: option<maintenanceWindowTaskId>,
    @ocaml.doc("<p>The retrieved maintenance window ID.</p>") @as("WindowId")
    windowId: option<maintenanceWindowId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetMaintenanceWindowTaskCommand"
  let make = (~windowTaskId, ~windowId, ()) => new({windowTaskId: windowTaskId, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMaintenanceWindowExecutionTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the specific task execution in the maintenance window task that should be
   retrieved.</p>")
    @as("TaskId")
    taskId: maintenanceWindowExecutionTaskId,
    @ocaml.doc("<p>The ID of the maintenance window execution that includes the task.</p>")
    @as("WindowExecutionId")
    windowExecutionId: maintenanceWindowExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The time the task execution completed.</p>") @as("EndTime")
    endTime: option<dateTime>,
    @ocaml.doc("<p>The time the task execution started.</p>") @as("StartTime")
    startTime: option<dateTime>,
    @ocaml.doc("<p>The details explaining the status. Not available for all status values.</p>")
    @as("StatusDetails")
    statusDetails: option<maintenanceWindowExecutionStatusDetails>,
    @ocaml.doc("<p>The status of the task.</p>") @as("Status")
    status: option<maintenanceWindowExecutionStatus>,
    @ocaml.doc("<p>The defined maximum number of task execution errors allowed before scheduling of the task
   execution would have been stopped.</p>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc(
      "<p>The defined maximum number of task executions that could be run in parallel.</p>"
    )
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The priority of the task.</p>") @as("Priority")
    priority: option<maintenanceWindowTaskPriority>,
    @ocaml.doc("<p>The parameters passed to the task when it was run.</p>
         <note>
            <p>
               <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
      instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
      about how Systems Manager handles these options for the supported maintenance window task
      types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
         </note>
         <p>The map has the following format:</p>
         <ul>
            <li>
               <p>
                  <code>Key</code>: string, between 1 and 255 characters</p>
            </li>
            <li>
               <p>
                  <code>Value</code>: an array of strings, each between 1 and 255 characters</p>
            </li>
         </ul>")
    @as("TaskParameters")
    taskParameters: option<maintenanceWindowTaskParametersList>,
    @ocaml.doc("<p>The type of task that was run.</p>") @as("Type")
    type_: option<maintenanceWindowTaskType>,
    @ocaml.doc("<p>The role that was assumed when running the task.</p>") @as("ServiceRole")
    serviceRole: option<serviceRole>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that ran.</p>") @as("TaskArn")
    taskArn: option<maintenanceWindowTaskArn>,
    @ocaml.doc("<p>The ID of the specific task execution in the maintenance window task that was
   retrieved.</p>")
    @as("TaskExecutionId")
    taskExecutionId: option<maintenanceWindowExecutionTaskId>,
    @ocaml.doc("<p>The ID of the maintenance window execution that includes the task.</p>")
    @as("WindowExecutionId")
    windowExecutionId: option<maintenanceWindowExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "GetMaintenanceWindowExecutionTaskCommand"
  let make = (~taskId, ~windowExecutionId, ()) =>
    new({taskId: taskId, windowExecutionId: windowExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInventorySchema = {
  type t
  type request = {
    @ocaml.doc("<p>Returns the sub-type schema for a specified inventory type.</p>") @as("SubType")
    subType: option<isSubTypeSchema>,
    @ocaml.doc("<p>Returns inventory schemas that support aggregation. For example, this call returns the
    <code>AWS:InstanceInformation</code> type, because it supports aggregation based on the
    <code>PlatformName</code>, <code>PlatformType</code>, and <code>PlatformVersion</code>
   attributes.</p>")
    @as("Aggregator")
    aggregator: option<aggregatorSchemaOnly>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<getInventorySchemaMaxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of inventory item to return.</p>") @as("TypeName")
    typeName: option<inventoryItemTypeNameFilter>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Inventory schemas returned by the request.</p>") @as("Schemas")
    schemas: option<inventoryItemSchemaResultList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetInventorySchemaCommand"
  let make = (~subType=?, ~aggregator=?, ~maxResults=?, ~nextToken=?, ~typeName=?, ()) =>
    new({
      subType: subType,
      aggregator: aggregator,
      maxResults: maxResults,
      nextToken: nextToken,
      typeName: typeName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters to limit the request results.</p>") @as("ParameterFilters")
    parameterFilters: option<parameterStringFilterList>,
    @ocaml.doc("<p>This data type is deprecated. Instead, use <code>ParameterFilters</code>.</p>")
    @as("Filters")
    filters: option<parametersFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Parameters returned by the request.</p>") @as("Parameters")
    parameters: option<parameterMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeParametersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~parameterFilters=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      parameterFilters: parameterFilters,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOpsItems = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<opsItemMaxResults>,
    @ocaml.doc("<p>One or more filters to limit the response.</p>
         <ul>
            <li>
               <p>Key: CreatedTime</p>
               <p>Operations: GreaterThan, LessThan</p>
            </li>
            <li>
               <p>Key: LastModifiedBy</p>
               <p>Operations: Contains, Equals</p>
            </li>
            <li>
               <p>Key: LastModifiedTime</p>
               <p>Operations: GreaterThan, LessThan</p>
            </li>
            <li>
               <p>Key: Priority</p>
               <p>Operations: Equals</p>
            </li>
            <li>
               <p>Key: Source</p>
               <p>Operations: Contains, Equals</p>
            </li>
            <li>
               <p>Key: Status</p>
               <p>Operations: Equals</p>
            </li>
            <li>
               <p>Key: Title*</p>
               <p>Operations: Equals,Contains</p>
            </li>
            <li>
               <p>Key: OperationalData**</p>
               <p>Operations: Equals</p>
            </li>
            <li>
               <p>Key: OperationalDataKey</p>
               <p>Operations: Equals</p>
            </li>
            <li>
               <p>Key: OperationalDataValue</p>
               <p>Operations: Equals, Contains</p>
            </li>
            <li>
               <p>Key: OpsItemId</p>
               <p>Operations: Equals</p>
            </li>
            <li>
               <p>Key: ResourceId</p>
               <p>Operations: Contains</p>
            </li>
            <li>
               <p>Key: AutomationId</p>
               <p>Operations: Equals</p>
            </li>
         </ul>
         <p>*The Equals operator for Title matches the first 100 characters. If you specify more than
   100 characters, they system returns an error that the filter value exceeds the length
   limit.</p>
         <p>**If you filter the response by using the OperationalData operator, specify a key-value pair
   by using the following JSON format: {\"key\":\"key_name\",\"value\":\"a_value\"}</p>")
    @as("OpsItemFilters")
    opsItemFilters: option<opsItemFilters>,
  }
  type response = {
    @ocaml.doc("<p>A list of OpsItems.</p>") @as("OpsItemSummaries")
    opsItemSummaries: option<opsItemSummaries>,
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeOpsItemsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~opsItemFilters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, opsItemFilters: opsItemFilters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results. </p>")
    @as("MaxResults")
    maxResults: option<maxResultsEC2Compatible>,
    @ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of managed nodes. You can
   filter based on tags applied to EC2 instances. Use this <code>Filters</code> data type instead of
    <code>InstanceInformationFilterList</code>, which is deprecated.</p>")
    @as("Filters")
    filters: option<instanceInformationStringFilterList>,
    @ocaml.doc("<p>This is a legacy method. We recommend that you don't use this method. Instead, use the
    <code>Filters</code> data type. <code>Filters</code> enables you to return node information by
   filtering based on tags applied to managed nodes.</p>
         <note>
            <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads
    to an exception error. </p>
         </note>")
    @as("InstanceInformationFilterList")
    instanceInformationFilterList: option<instanceInformationFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The managed node information list.</p>") @as("InstanceInformationList")
    instanceInformationList: option<instanceInformationList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeInstanceInformationCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~instanceInformationFilterList=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      instanceInformationFilterList: instanceInformationFilterList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceAssociationsStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The managed node IDs for which you want association status information.</p>")
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Status information about the association.</p>")
    @as("InstanceAssociationStatusInfos")
    instanceAssociationStatusInfos: option<instanceAssociationStatusInfos>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeInstanceAssociationsStatusCommand"
  let make = (~instanceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEffectivePatchesForPatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of patches to return (per page).</p>") @as("MaxResults")
    maxResults: option<patchBaselineMaxResults>,
    @ocaml.doc("<p>The ID of the patch baseline to retrieve the effective patches for.</p>")
    @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of patches and patch status.</p>") @as("EffectivePatches")
    effectivePatches: option<effectivePatchList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeEffectivePatchesForPatchBaselineCommand"
  let make = (~baselineId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>Specify the association version to retrieve. To view the latest version, either specify
    <code>$LATEST</code> for this parameter, or omit this parameter. To view a list of all
   associations for a managed node, use <a>ListAssociations</a>. To get a list of
   versions for a specific association, use <a>ListAssociationVersions</a>. </p>")
    @as("AssociationVersion")
    associationVersion: option<associationVersion>,
    @ocaml.doc("<p>The association ID for which you want information.</p>") @as("AssociationId")
    associationId: option<associationId>,
    @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
    @ocaml.doc("<p>The name of the SSM document.</p>") @as("Name") name: option<documentARN>,
  }
  type response = {
    @ocaml.doc("<p>Information about the association.</p>") @as("AssociationDescription")
    associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeAssociationCommand"
  let make = (~associationVersion=?, ~associationId=?, ~instanceId=?, ~name=?, ()) =>
    new({
      associationVersion: associationVersion,
      associationId: associationId,
      instanceId: instanceId,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeActivations = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A filter to view information about your activations.</p>") @as("Filters")
    filters: option<describeActivationsFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of activations for your Amazon Web Services account.</p>")
    @as("ActivationList")
    activationList: option<activationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "DescribeActivationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateResourceDataSync = {
  type t
  type request = {
    @ocaml.doc("<p>Specify information about the data sources to synchronize. This parameter is required if the
    <code>SyncType</code> value is SyncFromSource.</p>")
    @as("SyncSource")
    syncSource: option<resourceDataSyncSource>,
    @ocaml.doc("<p>Specify <code>SyncToDestination</code> to create a resource data sync that synchronizes data
   to an S3 bucket for Inventory. If you specify <code>SyncToDestination</code>, you must provide a
   value for <code>S3Destination</code>. Specify <code>SyncFromSource</code> to synchronize data
   from a single account and multiple Regions, or multiple Amazon Web Services accounts and Amazon Web Services Regions, as
   listed in Organizations for Explorer. If you specify <code>SyncFromSource</code>, you must provide a
   value for <code>SyncSource</code>. The default value is <code>SyncToDestination</code>.</p>")
    @as("SyncType")
    syncType: option<resourceDataSyncType>,
    @ocaml.doc("<p>Amazon S3 configuration details for the sync. This parameter is required if the
    <code>SyncType</code> value is SyncToDestination.</p>")
    @as("S3Destination")
    s3Destination: option<resourceDataSyncS3Destination>,
    @ocaml.doc("<p>A name for the configuration.</p>") @as("SyncName")
    syncName: resourceDataSyncName,
  }
  type response = {.}
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateResourceDataSyncCommand"
  let make = (~syncName, ~syncSource=?, ~syncType=?, ~s3Destination=?, ()) =>
    new({
      syncSource: syncSource,
      syncType: syncType,
      s3Destination: s3Destination,
      syncName: syncName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
   association. Use this action to create an association in multiple Regions and multiple
   accounts.</p>")
    @as("TargetLocations")
    targetLocations: option<targetLocations>,
    @ocaml.doc("<p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
   gate your associations under. The associations only run when that change calendar is open. For
   more information, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar\">Amazon Web Services Systems Manager Change
    Calendar</a>.</p>")
    @as("CalendarNames")
    calendarNames: option<calendarNameOrARNList>,
    @ocaml.doc("<p>By default, when you create a new association, the system runs it immediately after it is
   created and then according to the schedule you specified. Specify this option if you don't want
   an association to run immediately after you create it. This parameter isn't supported for rate
   expressions.</p>")
    @as("ApplyOnlyAtCronInterval")
    applyOnlyAtCronInterval: option<applyOnlyAtCronInterval>,
    @ocaml.doc("<p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
   execution to determine the compliance status. If the association execution runs successfully,
   then the association is <code>COMPLIANT</code>. If the association execution doesn't run
   successfully, the association is <code>NON-COMPLIANT</code>.</p>
         <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
   for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
   managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API operation.</p>
         <p>By default, all associations use <code>AUTO</code> mode.</p>")
    @as("SyncCompliance")
    syncCompliance: option<associationSyncCompliance>,
    @ocaml.doc("<p>The severity level to assign to the association.</p>") @as("ComplianceSeverity")
    complianceSeverity: option<associationComplianceSeverity>,
    @ocaml.doc("<p>The maximum number of targets allowed to run the association at the same time. You can
   specify a number, for example 10, or a percentage of the target set, for example 10%. The default
   value is 100%, which means all targets run the association at the same time.</p>
         <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
   association interval, the new managed node will process its association within the limit
   specified for <code>MaxConcurrency</code>.</p>")
    @as("MaxConcurrency")
    maxConcurrency: option<maxConcurrency>,
    @ocaml.doc("<p>The number of errors that are allowed before the system stops sending requests to run the
   association on additional targets. You can specify either an absolute number of errors, for
   example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
   the system stops sending requests when the fourth error is received. If you specify 0, then the
   system stops sending requests after the first error is returned. If you run an association on 50
   managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
   when the sixth error is received.</p>
         <p>Executions that are already running an association when <code>MaxErrors</code> is reached
   are allowed to complete, but some of these executions may fail as well. If you need to ensure
   that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
   so that executions proceed one at a time.</p>")
    @as("MaxErrors")
    maxErrors: option<maxErrors>,
    @ocaml.doc("<p>Choose the parameter that will define how your automation will branch out. This target is
   required for associations that use an Automation runbook and target resources by using rate
   controls. Automation is a capability of Amazon Web Services Systems Manager.</p>")
    @as("AutomationTargetParameterName")
    automationTargetParameterName: option<automationTargetParameterName>,
    @ocaml.doc("<p>Specify a descriptive name for the association.</p>") @as("AssociationName")
    associationName: option<associationName>,
    @ocaml.doc("<p>An Amazon Simple Storage Service (Amazon S3) bucket where you want to store the output
   details of the request.</p>")
    @as("OutputLocation")
    outputLocation: option<instanceAssociationOutputLocation>,
    @ocaml.doc("<p>A cron expression when the association will be applied to the target(s).</p>")
    @as("ScheduleExpression")
    scheduleExpression: option<scheduleExpression>,
    @ocaml.doc("<p>The targets for the association. You can target managed nodes by using tags, Amazon Web Services resource
   groups, all managed nodes in an Amazon Web Services account, or individual managed node IDs. You can target all
   managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    <code>*</code>. For more information about choosing targets for an association, see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html\">Using targets and rate controls with State Manager associations</a> in the
    <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>The parameters for the runtime configuration of the document.</p>")
    @as("Parameters")
    parameters: option<parameters>,
    @ocaml.doc("<p>The managed node ID.</p>
         <note>
            <p>
               <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    association, use the <code>Targets</code> parameter. Requests that
    include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    schema version 2.0 or later will fail. In addition, if you use the
    parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
     <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
     <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    must use the <code>Targets</code> parameter.</p>
         </note>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>The document version you want to associate with the target(s). Can be a specific version or
   the default version.</p>
         <important>
            <p>State Manager doesn't support running associations that use a new version of a document if
    that document is shared from another account. State Manager always runs the <code>default</code>
    version of a document if shared from another account, even though the Systems Manager console shows that a
    new version was processed. If you want to run an association using a new version of a document
    shared form another account, you must set the document version to <code>default</code>.</p>
         </important>")
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the SSM Command document or Automation runbook that contains the configuration
   information for the managed node.</p>
         <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
   shared with you from another account.</p>
         <p>For Systems Manager documents (SSM documents) that are shared with you from other Amazon Web Services accounts, you
   must specify the complete SSM document ARN, in the following format:</p>
         <p>
            <code>arn:<i>partition</i>:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
            </code>
         </p>
         <p>For example:</p>
         <p>
            <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
         </p>
         <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
   to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    <code>My-Document</code>.</p>")
    @as("Name")
    name: documentARN,
  }
  type response = {
    @ocaml.doc("<p>Information about the association.</p>") @as("AssociationDescription")
    associationDescription: option<associationDescription>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateAssociationCommand"
  let make = (
    ~name,
    ~targetLocations=?,
    ~calendarNames=?,
    ~applyOnlyAtCronInterval=?,
    ~syncCompliance=?,
    ~complianceSeverity=?,
    ~maxConcurrency=?,
    ~maxErrors=?,
    ~automationTargetParameterName=?,
    ~associationName=?,
    ~outputLocation=?,
    ~scheduleExpression=?,
    ~targets=?,
    ~parameters=?,
    ~instanceId=?,
    ~documentVersion=?,
    (),
  ) =>
    new({
      targetLocations: targetLocations,
      calendarNames: calendarNames,
      applyOnlyAtCronInterval: applyOnlyAtCronInterval,
      syncCompliance: syncCompliance,
      complianceSeverity: complianceSeverity,
      maxConcurrency: maxConcurrency,
      maxErrors: maxErrors,
      automationTargetParameterName: automationTargetParameterName,
      associationName: associationName,
      outputLocation: outputLocation,
      scheduleExpression: scheduleExpression,
      targets: targets,
      parameters: parameters,
      instanceId: instanceId,
      documentVersion: documentVersion,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartChangeRequestExecution = {
  type t
  type request = {
    @ocaml.doc("<p>User-provided details about the change. If no details are provided, content specified in the
    <b>Template information</b> section of the associated change template
   is added.</p>")
    @as("ChangeDetails")
    changeDetails: option<changeDetailsValue>,
    @ocaml.doc("<p>The time that the requester expects the runbook workflow related to the change request to
   complete. The time is an estimate only that the requester provides for reviewers.</p>")
    @as("ScheduledEndTime")
    scheduledEndTime: option<dateTime>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
   a change request. Tags enable you to categorize a resource in different ways, such as by
   purpose, owner, or environment. For example, you might want to tag a change request to identify
   an environment or target Amazon Web Services Region. In this case, you could specify the following key-value
   pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=Environment,Value=Production</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=Region,Value=us-east-2</code>
               </p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Information about the Automation runbooks that are run during the runbook workflow.</p>
         <note>
            <p>The Automation runbooks specified for the runbook workflow can't run until all required
    approvals for the change request have been received.</p>
         </note>")
    @as("Runbooks")
    runbooks: runbooks,
    @ocaml.doc("<p>Indicates whether the change request can be approved automatically without the need for
   manual approvals.</p>
         <p>If <code>AutoApprovable</code> is enabled in a change template, then setting
    <code>AutoApprove</code> to <code>true</code> in <code>StartChangeRequestExecution</code>
   creates a change request that bypasses approver review.</p>
         <note>
            <p>Change Calendar restrictions are not bypassed in this scenario. If the state of an
    associated calendar is <code>CLOSED</code>, change freeze approvers must still grant permission
    for this change request to run. If they don't, the change won't be processed until the calendar
    state is again <code>OPEN</code>. </p>
         </note>")
    @as("AutoApprove")
    autoApprove: option<boolean_>,
    @ocaml.doc("<p>The user-provided idempotency token. The token must be unique, is case insensitive, enforces
   the UUID format, and can't be reused.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc(
      "<p>The name of the change request associated with the runbook workflow to be run.</p>"
    )
    @as("ChangeRequestName")
    changeRequestName: option<changeRequestName>,
    @ocaml.doc("<p>A key-value map of parameters that match the declared parameters in the change template
   document.</p>")
    @as("Parameters")
    parameters: option<automationParameterMap>,
    @ocaml.doc(
      "<p>The version of the change template document to run during the runbook workflow.</p>"
    )
    @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc(
      "<p>The name of the change template document to run during the runbook workflow.</p>"
    )
    @as("DocumentName")
    documentName: documentARN,
    @ocaml.doc("<p>The date and time specified in the change request to run the Automation runbooks.</p>
         <note>
            <p>The Automation runbooks specified for the runbook workflow can't run until all required
    approvals for the change request have been received.</p>
         </note>")
    @as("ScheduledTime")
    scheduledTime: option<dateTime>,
  }
  type response = {
    @ocaml.doc("<p>The unique ID of a runbook workflow operation. (A runbook workflow is a type of Automation
   operation.) </p>")
    @as("AutomationExecutionId")
    automationExecutionId: option<automationExecutionId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "StartChangeRequestExecutionCommand"
  let make = (
    ~runbooks,
    ~documentName,
    ~changeDetails=?,
    ~scheduledEndTime=?,
    ~tags=?,
    ~autoApprove=?,
    ~clientToken=?,
    ~changeRequestName=?,
    ~parameters=?,
    ~documentVersion=?,
    ~scheduledTime=?,
    (),
  ) =>
    new({
      changeDetails: changeDetails,
      scheduledEndTime: scheduledEndTime,
      tags: tags,
      runbooks: runbooks,
      autoApprove: autoApprove,
      clientToken: clientToken,
      changeRequestName: changeRequestName,
      parameters: parameters,
      documentVersion: documentVersion,
      documentName: documentName,
      scheduledTime: scheduledTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDocumentMetadataHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of data for which details are being requested. Currently, the only supported value
   is <code>DocumentReviews</code>.</p>")
    @as("Metadata")
    metadata: documentMetadataEnum,
    @ocaml.doc("<p>The version of the change template.</p>") @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the change template.</p>") @as("Name") name: documentName,
  }
  type response = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the response to the change template approval request.</p>")
    @as("Metadata")
    metadata: option<documentMetadataResponseInfo>,
    @ocaml.doc("<p>The user ID of the person in the organization who requested the review of the
   change template.</p>")
    @as("Author")
    author: option<documentAuthor>,
    @ocaml.doc("<p>The version of the change template.</p>") @as("DocumentVersion")
    documentVersion: option<documentVersion>,
    @ocaml.doc("<p>The name of the change template.</p>") @as("Name") name: option<documentName>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "ListDocumentMetadataHistoryCommand"
  let make = (~metadata, ~name, ~maxResults=?, ~nextToken=?, ~documentVersion=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      metadata: metadata,
      documentVersion: documentVersion,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCommands = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) One or more filters. Use a filter to return a more specific list of results.
  </p>")
    @as("Filters")
    filters: option<commandFilterList>,
    @ocaml.doc("<p>(Optional) The token for the next set of items to return. (You received this token from a
   previous call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Optional) The maximum number of items to return for this call. The call also returns a
   token that you can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<commandMaxResults>,
    @ocaml.doc("<p>(Optional) Lists commands issued against this managed node ID.</p>
         <note>
            <p>You can't specify a managed node ID in the same command that you specify
     <code>Status</code> = <code>Pending</code>. This is because the command hasn't reached the
    managed node yet.</p>
         </note>")
    @as("InstanceId")
    instanceId: option<instanceId>,
    @ocaml.doc("<p>(Optional) If provided, lists only the specified command.</p>") @as("CommandId")
    commandId: option<commandId>,
  }
  type response = {
    @ocaml.doc("<p>(Optional) The token for the next set of items to return. (You received this token from a
   previous call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Optional) The list of commands requested by the user. </p>") @as("Commands")
    commands: option<commandList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListCommandsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ~instanceId=?, ~commandId=?, ()) =>
    new({
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      instanceId: instanceId,
      commandId: commandId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more filters. Use a filter to return a more specific list of results.</p>
         <note>
            <p>Filtering associations using the <code>InstanceID</code> attribute only returns legacy
    associations created using the <code>InstanceID</code> attribute. Associations targeting the
    managed node that are part of the Target Attributes <code>ResourceGroup</code> or
     <code>Tags</code> aren't returned.</p>
         </note>")
    @as("AssociationFilterList")
    associationFilterList: option<associationFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The associations.</p>") @as("Associations")
    associations: option<associationList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListAssociationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~associationFilterList=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      associationFilterList: associationFilterList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociationVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The association ID for which you want to view all versions.</p>")
    @as("AssociationId")
    associationId: associationId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Information about all versions of the association for the specified association ID.</p>"
    )
    @as("AssociationVersions")
    associationVersions: option<associationVersionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListAssociationVersionsCommand"
  let make = (~associationId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, associationId: associationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Optional filters used to narrow down the scope of the returned tasks. The supported filter
   keys are <code>WindowTaskId</code>, <code>TaskArn</code>, <code>Priority</code>, and
    <code>TaskType</code>.</p>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
    @ocaml.doc("<p>The ID of the maintenance window whose tasks should be retrieved.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the tasks in the maintenance window.</p>") @as("Tasks")
    tasks: option<maintenanceWindowTaskList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowTasksCommand"
  let make = (~windowId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceWindowTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maintenanceWindowMaxResults>,
    @ocaml.doc("<p>Optional filters that can be used to narrow down the scope of the returned window targets.
   The supported filter keys are <code>Type</code>, <code>WindowTargetId</code>, and
    <code>OwnerInformation</code>.</p>")
    @as("Filters")
    filters: option<maintenanceWindowFilterList>,
    @ocaml.doc("<p>The ID of the maintenance window whose targets should be retrieved.</p>")
    @as("WindowId")
    windowId: maintenanceWindowId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the targets in the maintenance window.</p>") @as("Targets")
    targets: option<maintenanceWindowTargetList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeMaintenanceWindowTargetsCommand"
  let make = (~windowId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, windowId: windowId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInventoryDeletions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specify the delete inventory ID for which you want information. This ID was returned by the
    <code>DeleteInventory</code> operation.</p>")
    @as("DeletionId")
    deletionId: option<uuid>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of status items for deleted inventory.</p>") @as("InventoryDeletions")
    inventoryDeletions: option<inventoryDeletionsList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeInventoryDeletionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~deletionId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, deletionId: deletionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutomationStepExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to list step executions in reverse order by start time. The default value
   is 'false'.</p>")
    @as("ReverseOrder")
    reverseOrder: option<boolean_>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>One or more filters to limit the number of step executions returned by the request.</p>"
    )
    @as("Filters")
    filters: option<stepExecutionFilterList>,
    @ocaml.doc("<p>The Automation execution ID for which you want step execution descriptions.</p>")
    @as("AutomationExecutionId")
    automationExecutionId: automationExecutionId,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of details about the current state of all steps that make up an execution.</p>"
    )
    @as("StepExecutions")
    stepExecutions: option<stepExecutionList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeAutomationStepExecutionsCommand"
  let make = (
    ~automationExecutionId,
    ~reverseOrder=?,
    ~maxResults=?,
    ~nextToken=?,
    ~filters=?,
    (),
  ) =>
    new({
      reverseOrder: reverseOrder,
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters,
      automationExecutionId: automationExecutionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourceDataSync = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>View a list of resource data syncs according to the sync type. Specify
    <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify <code>SyncFromSource</code> to view resource data syncs from Organizations
   or from multiple Amazon Web Services Regions.</p>")
    @as("SyncType")
    syncType: option<resourceDataSyncType>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of your current resource data sync configurations and their statuses.</p>"
    )
    @as("ResourceDataSyncItems")
    resourceDataSyncItems: option<resourceDataSyncItemList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "ListResourceDataSyncCommand"
  let make = (~maxResults=?, ~nextToken=?, ~syncType=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, syncType: syncType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAutomationExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for an existing automation execution to examine. The execution ID is
   returned by StartAutomationExecution when the execution of an Automation runbook is
   initiated.</p>")
    @as("AutomationExecutionId")
    automationExecutionId: automationExecutionId,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the current state of an automation execution.</p>")
    @as("AutomationExecution")
    automationExecution: option<automationExecution>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetAutomationExecutionCommand"
  let make = (~automationExecutionId, ()) => new({automationExecutionId: automationExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssociationBatch = {
  type t
  type request = {
    @ocaml.doc("<p>One or more associations.</p>") @as("Entries")
    entries: createAssociationBatchRequestEntries,
  }
  type response = {
    @ocaml.doc("<p>Information about the associations that failed.</p>") @as("Failed")
    failed: option<failedCreateAssociationList>,
    @ocaml.doc("<p>Information about the associations that succeeded.</p>") @as("Successful")
    successful: option<associationDescriptionList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreateAssociationBatchCommand"
  let make = (~entries, ()) => new({entries: entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>If True, then all fields that are required by the <a>CreatePatchBaseline</a>
   operation are also required for this API request. Optional fields that aren't specified are set
   to null.</p>")
    @as("Replace")
    replace: option<boolean_>,
    @ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repositories. Applies to Linux managed nodes only.</p>")
    @as("Sources")
    sources: option<patchSourceList>,
    @ocaml.doc("<p>A description of the patch baseline.</p>") @as("Description")
    description: option<baselineDescription>,
    @ocaml.doc("<p>The action for Patch Manager to take on patches included in the
    <code>RejectedPackages</code> list.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>ALLOW_AS_DEPENDENCY</code>
                  </b>: A package in the
      <code>Rejected</code> patches list is installed only if it is a dependency of another package.
     It is considered compliant with the patch baseline, and its status is reported as
      <code>InstalledOther</code>. This is the default action if no option is specified.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BLOCK</code>
                  </b>: Packages in the
      <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
     installed under any circumstances. If a package was installed before it was added to the
      <code>Rejected</code> patches list, it is considered non-compliant with the patch baseline,
     and its status is reported as <code>InstalledRejected</code>.</p>
            </li>
         </ul>")
    @as("RejectedPatchesAction")
    rejectedPatchesAction: option<patchAction>,
    @ocaml.doc("<p>A list of explicitly rejected patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("RejectedPatches")
    rejectedPatches: option<patchIdList>,
    @ocaml.doc("<p>Indicates whether the list of approved patches includes non-security updates that should be
   applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
   nodes only.</p>")
    @as("ApprovedPatchesEnableNonSecurity")
    approvedPatchesEnableNonSecurity: option<boolean_>,
    @ocaml.doc("<p>Assigns a new compliance severity level to an existing patch baseline.</p>")
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @ocaml.doc("<p>A list of explicitly approved patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("ApprovedPatches")
    approvedPatches: option<patchIdList>,
    @ocaml.doc("<p>A set of rules used to include patches in the baseline.</p>")
    @as("ApprovalRules")
    approvalRules: option<patchRuleGroup>,
    @ocaml.doc("<p>A set of global filters used to include patches in the baseline.</p>")
    @as("GlobalFilters")
    globalFilters: option<patchFilterGroup>,
    @ocaml.doc("<p>The name of the patch baseline.</p>") @as("Name") name: option<baselineName>,
    @ocaml.doc("<p>The ID of the patch baseline to update.</p>") @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repositories. Applies to Linux managed nodes only.</p>")
    @as("Sources")
    sources: option<patchSourceList>,
    @ocaml.doc("<p>A description of the patch baseline.</p>") @as("Description")
    description: option<baselineDescription>,
    @ocaml.doc("<p>The date when the patch baseline was last modified.</p>") @as("ModifiedDate")
    modifiedDate: option<dateTime>,
    @ocaml.doc("<p>The date when the patch baseline was created.</p>") @as("CreatedDate")
    createdDate: option<dateTime>,
    @ocaml.doc("<p>The action specified to take on patches included in the <code>RejectedPatches</code> list. A
   patch can be allowed only if it is a dependency of another package, or blocked entirely along
   with packages that include it as a dependency.</p>")
    @as("RejectedPatchesAction")
    rejectedPatchesAction: option<patchAction>,
    @ocaml.doc("<p>A list of explicitly rejected patches for the baseline.</p>")
    @as("RejectedPatches")
    rejectedPatches: option<patchIdList>,
    @ocaml.doc("<p>Indicates whether the list of approved patches includes non-security updates that should be
   applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
   nodes only.</p>")
    @as("ApprovedPatchesEnableNonSecurity")
    approvedPatchesEnableNonSecurity: option<boolean_>,
    @ocaml.doc("<p>The compliance severity level assigned to the patch baseline after the update
   completed.</p>")
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @ocaml.doc("<p>A list of explicitly approved patches for the baseline.</p>")
    @as("ApprovedPatches")
    approvedPatches: option<patchIdList>,
    @ocaml.doc("<p>A set of rules used to include patches in the baseline.</p>")
    @as("ApprovalRules")
    approvalRules: option<patchRuleGroup>,
    @ocaml.doc("<p>A set of global filters used to exclude patches from the baseline.</p>")
    @as("GlobalFilters")
    globalFilters: option<patchFilterGroup>,
    @ocaml.doc("<p>The operating system rule used by the updated patch baseline.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>The name of the patch baseline.</p>") @as("Name") name: option<baselineName>,
    @ocaml.doc("<p>The ID of the deleted patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "UpdatePatchBaselineCommand"
  let make = (
    ~baselineId,
    ~replace=?,
    ~sources=?,
    ~description=?,
    ~rejectedPatchesAction=?,
    ~rejectedPatches=?,
    ~approvedPatchesEnableNonSecurity=?,
    ~approvedPatchesComplianceLevel=?,
    ~approvedPatches=?,
    ~approvalRules=?,
    ~globalFilters=?,
    ~name=?,
    (),
  ) =>
    new({
      replace: replace,
      sources: sources,
      description: description,
      rejectedPatchesAction: rejectedPatchesAction,
      rejectedPatches: rejectedPatches,
      approvedPatchesEnableNonSecurity: approvedPatchesEnableNonSecurity,
      approvedPatchesComplianceLevel: approvedPatchesComplianceLevel,
      approvedPatches: approvedPatches,
      approvalRules: approvalRules,
      globalFilters: globalFilters,
      name: name,
      baselineId: baselineId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the patch baseline to retrieve.</p>
         <note>
            <p>To retrieve information about an Amazon Web Services managed patch baseline, specify the full Amazon
    Resource Name (ARN) of the baseline. For example, for the baseline
     <code>AWS-AmazonLinuxDefaultPatchBaseline</code>, specify
     <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7</code> instead of
     <code>pb-0e392de35e7c563b7</code>.</p>
         </note>")
    @as("BaselineId")
    baselineId: baselineId,
  }
  type response = {
    @ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repositories. Applies to Linux managed nodes only.</p>")
    @as("Sources")
    sources: option<patchSourceList>,
    @ocaml.doc("<p>A description of the patch baseline.</p>") @as("Description")
    description: option<baselineDescription>,
    @ocaml.doc("<p>The date the patch baseline was last modified.</p>") @as("ModifiedDate")
    modifiedDate: option<dateTime>,
    @ocaml.doc("<p>The date the patch baseline was created.</p>") @as("CreatedDate")
    createdDate: option<dateTime>,
    @ocaml.doc("<p>Patch groups included in the patch baseline.</p>") @as("PatchGroups")
    patchGroups: option<patchGroupList>,
    @ocaml.doc("<p>The action specified to take on patches included in the <code>RejectedPatches</code> list. A
   patch can be allowed only if it is a dependency of another package, or blocked entirely along
   with packages that include it as a dependency.</p>")
    @as("RejectedPatchesAction")
    rejectedPatchesAction: option<patchAction>,
    @ocaml.doc("<p>A list of explicitly rejected patches for the baseline.</p>")
    @as("RejectedPatches")
    rejectedPatches: option<patchIdList>,
    @ocaml.doc("<p>Indicates whether the list of approved patches includes non-security updates that should be
   applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
   nodes only.</p>")
    @as("ApprovedPatchesEnableNonSecurity")
    approvedPatchesEnableNonSecurity: option<boolean_>,
    @ocaml.doc("<p>Returns the specified compliance severity level for approved patches in the patch
   baseline.</p>")
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @ocaml.doc("<p>A list of explicitly approved patches for the baseline.</p>")
    @as("ApprovedPatches")
    approvedPatches: option<patchIdList>,
    @ocaml.doc("<p>A set of rules used to include patches in the baseline.</p>")
    @as("ApprovalRules")
    approvalRules: option<patchRuleGroup>,
    @ocaml.doc("<p>A set of global filters used to exclude patches from the baseline.</p>")
    @as("GlobalFilters")
    globalFilters: option<patchFilterGroup>,
    @ocaml.doc("<p>Returns the operating system specified for the patch baseline.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
    @ocaml.doc("<p>The name of the patch baseline.</p>") @as("Name") name: option<baselineName>,
    @ocaml.doc("<p>The ID of the retrieved patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetPatchBaselineCommand"
  let make = (~baselineId, ()) => new({baselineId: baselineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAutomationExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters used to limit the scope of executions that are requested.</p>")
    @as("Filters")
    filters: option<automationExecutionFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of details about each automation execution which has occurred which matches the
   filter specification, if any.</p>")
    @as("AutomationExecutionMetadataList")
    automationExecutionMetadataList: option<automationExecutionMetadataList>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "DescribeAutomationExecutionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePatchBaseline = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
   different ways, such as by purpose, owner, or environment. For example, you might want to tag a
   patch baseline to identify the severity level of patches it specifies and the operating system
   family it applies to. In this case, you could specify the following key-value pairs:</p>
         <ul>
            <li>
               <p>
                  <code>Key=PatchSeverity,Value=Critical</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Key=OS,Value=Windows</code>
               </p>
            </li>
         </ul>
         <note>
            <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a>
    operation.</p>
         </note>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>User-provided idempotency token.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Information about the patches to use to update the managed nodes, including target operating
   systems and source repositories. Applies to Linux managed nodes only.</p>")
    @as("Sources")
    sources: option<patchSourceList>,
    @ocaml.doc("<p>A description of the patch baseline.</p>") @as("Description")
    description: option<baselineDescription>,
    @ocaml.doc("<p>The action for Patch Manager to take on patches included in the
    <code>RejectedPackages</code> list.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>ALLOW_AS_DEPENDENCY</code>
                  </b>: A package in the
      <code>Rejected</code> patches list is installed only if it is a dependency of another package.
     It is considered compliant with the patch baseline, and its status is reported as
      <code>InstalledOther</code>. This is the default action if no option is specified.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BLOCK</code>
                  </b>: Packages in the
      <code>RejectedPatches</code> list, and packages that include them as dependencies, aren't
     installed under any circumstances. If a package was installed before it was added to the
     Rejected patches list, it is considered non-compliant with the patch baseline, and its status
     is reported as <code>InstalledRejected</code>.</p>
            </li>
         </ul>")
    @as("RejectedPatchesAction")
    rejectedPatchesAction: option<patchAction>,
    @ocaml.doc("<p>A list of explicitly rejected patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("RejectedPatches")
    rejectedPatches: option<patchIdList>,
    @ocaml.doc("<p>Indicates whether the list of approved patches includes non-security updates that should be
   applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
   nodes only.</p>")
    @as("ApprovedPatchesEnableNonSecurity")
    approvedPatchesEnableNonSecurity: option<boolean_>,
    @ocaml.doc("<p>Defines the compliance level for approved patches. When an approved patch is reported as
   missing, this value describes the severity of the compliance violation. The default value is
    <code>UNSPECIFIED</code>.</p>")
    @as("ApprovedPatchesComplianceLevel")
    approvedPatchesComplianceLevel: option<patchComplianceLevel>,
    @ocaml.doc("<p>A list of explicitly approved patches for the baseline.</p>
         <p>For information about accepted formats for lists of approved patches and rejected patches,
                        see <a href=\"https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html\">About
                        package name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>")
    @as("ApprovedPatches")
    approvedPatches: option<patchIdList>,
    @ocaml.doc("<p>A set of rules used to include patches in the baseline.</p>")
    @as("ApprovalRules")
    approvalRules: option<patchRuleGroup>,
    @ocaml.doc("<p>A set of global filters used to include patches in the baseline.</p>")
    @as("GlobalFilters")
    globalFilters: option<patchFilterGroup>,
    @ocaml.doc("<p>The name of the patch baseline.</p>") @as("Name") name: baselineName,
    @ocaml.doc("<p>Defines the operating system the patch baseline applies to. The default value is
    <code>WINDOWS</code>.</p>")
    @as("OperatingSystem")
    operatingSystem: option<operatingSystem>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the created patch baseline.</p>") @as("BaselineId")
    baselineId: option<baselineId>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "CreatePatchBaselineCommand"
  let make = (
    ~name,
    ~tags=?,
    ~clientToken=?,
    ~sources=?,
    ~description=?,
    ~rejectedPatchesAction=?,
    ~rejectedPatches=?,
    ~approvedPatchesEnableNonSecurity=?,
    ~approvedPatchesComplianceLevel=?,
    ~approvedPatches=?,
    ~approvalRules=?,
    ~globalFilters=?,
    ~operatingSystem=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      sources: sources,
      description: description,
      rejectedPatchesAction: rejectedPatchesAction,
      rejectedPatches: rejectedPatches,
      approvedPatchesEnableNonSecurity: approvedPatchesEnableNonSecurity,
      approvedPatchesComplianceLevel: approvedPatchesComplianceLevel,
      approvedPatches: approvedPatches,
      approvalRules: approvalRules,
      globalFilters: globalFilters,
      name: name,
      operatingSystem: operatingSystem,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployablePatchSnapshotForInstance = {
  type t
  type request = {
    @ocaml.doc("<p>Defines the basic information about a patch baseline override.</p>")
    @as("BaselineOverride")
    baselineOverride: option<baselineOverride>,
    @ocaml.doc(
      "<p>The snapshot ID provided by the user when running <code>AWS-RunPatchBaseline</code>.</p>"
    )
    @as("SnapshotId")
    snapshotId: snapshotId,
    @ocaml.doc("<p>The ID of the managed node for which the appropriate patch snapshot should be
   retrieved.</p>")
    @as("InstanceId")
    instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Returns the specific operating system (for example Windows Server 2012 or Amazon Linux
   2015.09) on the managed node for the specified patch snapshot.</p>")
    @as("Product")
    product: option<product>,
    @ocaml.doc("<p>A pre-signed Amazon Simple Storage Service (Amazon S3) URL that can be used to download the
   patch snapshot.</p>")
    @as("SnapshotDownloadUrl")
    snapshotDownloadUrl: option<snapshotDownloadUrl>,
    @ocaml.doc("<p>The user-defined snapshot ID.</p>") @as("SnapshotId")
    snapshotId: option<snapshotId>,
    @ocaml.doc("<p>The managed node ID.</p>") @as("InstanceId") instanceId: option<instanceId>,
  }
  @module("@aws-sdk/client-ssm") @new
  external new: request => t = "GetDeployablePatchSnapshotForInstanceCommand"
  let make = (~snapshotId, ~instanceId, ~baselineOverride=?, ()) =>
    new({baselineOverride: baselineOverride, snapshotId: snapshotId, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOpsSummary = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to start the list. Use this token to get the next set of results. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The OpsData data type to return.</p>") @as("ResultAttributes")
    resultAttributes: option<opsResultAttributeList>,
    @ocaml.doc(
      "<p>Optional aggregators that return counts of OpsData based on one or more expressions.</p>"
    )
    @as("Aggregators")
    aggregators: option<opsAggregatorList>,
    @ocaml.doc("<p>Optional filters used to scope down the returned OpsData. </p>") @as("Filters")
    filters: option<opsFilterList>,
    @ocaml.doc("<p>Specify the name of a resource data sync to get.</p>") @as("SyncName")
    syncName: option<resourceDataSyncName>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of items to return. Use this token to get the next set of
   results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of aggregated details and filtered OpsData.</p>") @as("Entities")
    entities: option<opsEntityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetOpsSummaryCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~resultAttributes=?,
    ~aggregators=?,
    ~filters=?,
    ~syncName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resultAttributes: resultAttributes,
      aggregators: aggregators,
      filters: filters,
      syncName: syncName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInventory = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for this call. The call also returns a token that you
   can specify in a subsequent call to get the next set of results.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of items to return. (You received this token from a previous
   call.)</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of inventory item types to return.</p>") @as("ResultAttributes")
    resultAttributes: option<resultAttributeList>,
    @ocaml.doc("<p>Returns counts of inventory types based on one or more expressions. For example, if you
   aggregate by using an expression that uses the <code>AWS:InstanceInformation.PlatformType</code>
   type, you can see a count of how many Windows and Linux managed nodes exist in your inventoried
   fleet.</p>")
    @as("Aggregators")
    aggregators: option<inventoryAggregatorList>,
    @ocaml.doc(
      "<p>One or more filters. Use a filter to return a more specific list of results.</p>"
    )
    @as("Filters")
    filters: option<inventoryFilterList>,
  }
  type response = {
    @ocaml.doc("<p>The token to use when requesting the next set of items. If there are no additional items to
   return, the string is empty.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Collection of inventory entities such as a collection of managed node inventory. </p>"
    )
    @as("Entities")
    entities: option<inventoryResultEntityList>,
  }
  @module("@aws-sdk/client-ssm") @new external new: request => t = "GetInventoryCommand"
  let make = (~maxResults=?, ~nextToken=?, ~resultAttributes=?, ~aggregators=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resultAttributes: resultAttributes,
      aggregators: aggregators,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
