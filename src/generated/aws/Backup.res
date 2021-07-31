type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type string_ = string
type windowMinutes = float
type tagValue = string
type tagKey = string
type storageClass = [@as("DELETED") #DELETED | @as("COLD") #COLD | @as("WARM") #WARM]
type restoreJobStatus = [@as("FAILED") #FAILED | @as("ABORTED") #ABORTED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type restoreJobId = string
type resourceType = string
type recoveryPointStatus = [@as("EXPIRED") #EXPIRED | @as("DELETING") #DELETING | @as("PARTIAL") #PARTIAL | @as("COMPLETED") #COMPLETED]
type metadataValue = string
type metadataKey = string
type maxResults = int
type long2 = float
type long = float
type isEnabled = bool
type iamroleArn = string
type iampolicy = string
type globalSettingsValue = string
type globalSettingsName = string
type cronExpression = string
type copyJobState = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("CREATED") #CREATED]
type conditionValue = string
type conditionType = [@as("STRINGEQUALS") #STRINGEQUALS]
type conditionKey = string
type boolean2 = bool
type boolean_ = bool
type backupVaultName = string
type backupVaultEvent = [@as("BACKUP_PLAN_MODIFIED") #BACKUPPLANMODIFIED | @as("BACKUP_PLAN_CREATED") #BACKUPPLANCREATED | @as("RECOVERY_POINT_MODIFIED") #RECOVERYPOINTMODIFIED | @as("COPY_JOB_FAILED") #COPYJOBFAILED | @as("COPY_JOB_SUCCESSFUL") #COPYJOBSUCCESSFUL | @as("COPY_JOB_STARTED") #COPYJOBSTARTED | @as("RESTORE_JOB_FAILED") #RESTOREJOBFAILED | @as("RESTORE_JOB_SUCCESSFUL") #RESTOREJOBSUCCESSFUL | @as("RESTORE_JOB_COMPLETED") #RESTOREJOBCOMPLETED | @as("RESTORE_JOB_STARTED") #RESTOREJOBSTARTED | @as("BACKUP_JOB_EXPIRED") #BACKUPJOBEXPIRED | @as("BACKUP_JOB_FAILED") #BACKUPJOBFAILED | @as("BACKUP_JOB_SUCCESSFUL") #BACKUPJOBSUCCESSFUL | @as("BACKUP_JOB_COMPLETED") #BACKUPJOBCOMPLETED | @as("BACKUP_JOB_STARTED") #BACKUPJOBSTARTED]
type backupSelectionName = string
type backupRuleName = string
type backupPlanName = string
type backupOptionValue = string
type backupOptionKey = string
type backupJobState = [@as("EXPIRED") #EXPIRED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("ABORTED") #ABORTED | @as("ABORTING") #ABORTING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CREATED") #CREATED]
type accountId = string
type arn = string
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<string_>
type restoreJobsListMember = {
@as("ResourceType") resourceType: option<resourceType>,
@as("CreatedResourceArn") createdResourceArn: option<arn>,
@as("ExpectedCompletionTimeMinutes") expectedCompletionTimeMinutes: option<long>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("PercentDone") percentDone: option<string_>,
@as("StatusMessage") statusMessage: option<string_>,
@as("Status") status: option<restoreJobStatus>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("RestoreJobId") restoreJobId: option<string_>,
@as("AccountId") accountId: option<accountId>
}
type resourceTypes = array<resourceType>
type resourceTypeOptInPreference = Js.Dict.t< isEnabled>
type resourceArns = array<arn>
type recoveryPointCreator = {
@as("BackupRuleId") backupRuleId: option<string_>,
@as("BackupPlanVersion") backupPlanVersion: option<string_>,
@as("BackupPlanArn") backupPlanArn: option<arn>,
@as("BackupPlanId") backupPlanId: option<string_>
}
type recoveryPointByResource = {
@as("BackupVaultName") backupVaultName: option<backupVaultName>,
@as("BackupSizeBytes") backupSizeBytes: option<long>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("Status") status: option<recoveryPointStatus>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>
}
type protectedResource = {
@as("LastBackupTime") lastBackupTime: option<timestamp_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<arn>
}
type metadata = Js.Dict.t< metadataValue>
type lifecycle = {
@as("DeleteAfterDays") deleteAfterDays: option<long>,
@as("MoveToColdStorageAfterDays") moveToColdStorageAfterDays: option<long>
}
type globalSettings = Js.Dict.t< globalSettingsValue>
type condition = {
@as("ConditionValue") conditionValue: conditionValue,
@as("ConditionKey") conditionKey: conditionKey,
@as("ConditionType") conditionType: conditionType
}
type calculatedLifecycle = {
@as("DeleteAt") deleteAt: option<timestamp_>,
@as("MoveToColdStorageAt") moveToColdStorageAt: option<timestamp_>
}
type backupVaultListMember = {
@as("NumberOfRecoveryPoints") numberOfRecoveryPoints: option<long2>,
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
type backupVaultEvents = array<backupVaultEvent>
type backupSelectionsListMember = {
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanId") backupPlanId: option<string_>,
@as("SelectionName") selectionName: option<backupSelectionName>,
@as("SelectionId") selectionId: option<string_>
}
type backupPlanTemplatesListMember = {
@as("BackupPlanTemplateName") backupPlanTemplateName: option<string_>,
@as("BackupPlanTemplateId") backupPlanTemplateId: option<string_>
}
type backupOptions = Js.Dict.t< backupOptionValue>
type restoreJobsList = array<restoreJobsListMember>
type recoveryPointByResourceList = array<recoveryPointByResource>
type recoveryPointByBackupVault = {
@as("LastRestoreTime") lastRestoreTime: option<timestamp_>,
@as("IsEncrypted") isEncrypted: option<boolean2>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("CalculatedLifecycle") calculatedLifecycle: option<calculatedLifecycle>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("Status") status: option<recoveryPointStatus>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("CreatedBy") createdBy: option<recoveryPointCreator>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<arn>,
@as("SourceBackupVaultArn") sourceBackupVaultArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>
}
type protectedResourcesList = array<protectedResource>
type listOfTags = array<condition>
type copyJob = {
@as("ResourceType") resourceType: option<resourceType>,
@as("CreatedBy") createdBy: option<recoveryPointCreator>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("StatusMessage") statusMessage: option<string_>,
@as("State") state: option<copyJobState>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("ResourceArn") resourceArn: option<arn>,
@as("DestinationRecoveryPointArn") destinationRecoveryPointArn: option<arn>,
@as("DestinationBackupVaultArn") destinationBackupVaultArn: option<arn>,
@as("SourceRecoveryPointArn") sourceRecoveryPointArn: option<arn>,
@as("SourceBackupVaultArn") sourceBackupVaultArn: option<arn>,
@as("CopyJobId") copyJobId: option<string_>,
@as("AccountId") accountId: option<accountId>
}
type copyAction = {
@as("DestinationBackupVaultArn") destinationBackupVaultArn: arn,
@as("Lifecycle") lifecycle: option<lifecycle>
}
type backupVaultList = array<backupVaultListMember>
type backupSelectionsList = array<backupSelectionsListMember>
type backupPlanTemplatesList = array<backupPlanTemplatesListMember>
type backupJob = {
@as("BackupType") backupType: option<string_>,
@as("BackupOptions") backupOptions: option<backupOptions>,
@as("BytesTransferred") bytesTransferred: option<long>,
@as("ResourceType") resourceType: option<resourceType>,
@as("StartBy") startBy: option<timestamp_>,
@as("ExpectedCompletionDate") expectedCompletionDate: option<timestamp_>,
@as("CreatedBy") createdBy: option<recoveryPointCreator>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("PercentDone") percentDone: option<string_>,
@as("StatusMessage") statusMessage: option<string_>,
@as("State") state: option<backupJobState>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("ResourceArn") resourceArn: option<arn>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>,
@as("BackupJobId") backupJobId: option<string_>,
@as("AccountId") accountId: option<accountId>
}
type advancedBackupSetting = {
@as("BackupOptions") backupOptions: option<backupOptions>,
@as("ResourceType") resourceType: option<resourceType>
}
type recoveryPointByBackupVaultList = array<recoveryPointByBackupVault>
type copyJobsList = array<copyJob>
type copyActions = array<copyAction>
type backupSelection = {
@as("ListOfTags") listOfTags: option<listOfTags>,
@as("Resources") resources: option<resourceArns>,
@as("IamRoleArn") iamRoleArn: iamroleArn,
@as("SelectionName") selectionName: backupSelectionName
}
type backupJobsList = array<backupJob>
type advancedBackupSettings = array<advancedBackupSetting>
type backupRuleInput = {
@as("EnableContinuousBackup") enableContinuousBackup: option<boolean_>,
@as("CopyActions") copyActions: option<copyActions>,
@as("RecoveryPointTags") recoveryPointTags: option<tags>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("CompletionWindowMinutes") completionWindowMinutes: option<windowMinutes>,
@as("StartWindowMinutes") startWindowMinutes: option<windowMinutes>,
@as("ScheduleExpression") scheduleExpression: option<cronExpression>,
@as("TargetBackupVaultName") targetBackupVaultName: backupVaultName,
@as("RuleName") ruleName: backupRuleName
}
type backupRule = {
@as("EnableContinuousBackup") enableContinuousBackup: option<boolean_>,
@as("CopyActions") copyActions: option<copyActions>,
@as("RuleId") ruleId: option<string_>,
@as("RecoveryPointTags") recoveryPointTags: option<tags>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("CompletionWindowMinutes") completionWindowMinutes: option<windowMinutes>,
@as("StartWindowMinutes") startWindowMinutes: option<windowMinutes>,
@as("ScheduleExpression") scheduleExpression: option<cronExpression>,
@as("TargetBackupVaultName") targetBackupVaultName: backupVaultName,
@as("RuleName") ruleName: backupRuleName
}
type backupPlansListMember = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("LastExecutionDate") lastExecutionDate: option<timestamp_>,
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("BackupPlanName") backupPlanName: option<backupPlanName>,
@as("VersionId") versionId: option<string_>,
@as("DeletionDate") deletionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanId") backupPlanId: option<string_>,
@as("BackupPlanArn") backupPlanArn: option<arn>
}
type backupRulesInput = array<backupRuleInput>
type backupRules = array<backupRule>
type backupPlansList = array<backupPlansListMember>
type backupPlanVersionsList = array<backupPlansListMember>
type backupPlanInput = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("Rules") rules: backupRulesInput,
@as("BackupPlanName") backupPlanName: backupPlanName
}
type backupPlan = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("Rules") rules: backupRules,
@as("BackupPlanName") backupPlanName: backupPlanName
}
type awsServiceClient;
@module("@aws-sdk/client-backup") @new external createClient: unit => awsServiceClient = "BackupClient";
module StopBackupJob = {
  type t;
  type request = {
@as("BackupJobId") backupJobId: string_
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "StopBackupJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<iampolicy>,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "PutBackupVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("Policy") policy: option<iampolicy>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportBackupPlanTemplate = {
  type t;
  type request = {
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("BackupPlanTemplateJson") backupPlanTemplateJson: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ExportBackupPlanTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DisassociateRecoveryPointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeRestoreJob = {
  type t;
  type request = {
@as("RestoreJobId") restoreJobId: restoreJobId
}
  type response = {
@as("ResourceType") resourceType: option<resourceType>,
@as("CreatedResourceArn") createdResourceArn: option<arn>,
@as("ExpectedCompletionTimeMinutes") expectedCompletionTimeMinutes: option<long>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("PercentDone") percentDone: option<string_>,
@as("StatusMessage") statusMessage: option<string_>,
@as("Status") status: option<restoreJobStatus>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("RestoreJobId") restoreJobId: option<string_>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeRestoreJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProtectedResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("LastBackupTime") lastBackupTime: option<timestamp_>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<arn>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeProtectedResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBackupVault = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: string_
}
  type response = {
@as("NumberOfRecoveryPoints") numberOfRecoveryPoints: option<long2>,
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeBackupVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteRecoveryPointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteBackupVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteBackupVaultAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVault = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: string_
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteBackupVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupSelection = {
  type t;
  type request = {
@as("SelectionId") selectionId: string_,
@as("BackupPlanId") backupPlanId: string_
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteBackupSelectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupPlan = {
  type t;
  type request = {
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("VersionId") versionId: option<string_>,
@as("DeletionDate") deletionDate: option<timestamp_>,
@as("BackupPlanArn") backupPlanArn: option<arn>,
@as("BackupPlanId") backupPlanId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DeleteBackupPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRegionSettings = {
  type t;
  type request = {
@as("ResourceTypeOptInPreference") resourceTypeOptInPreference: option<resourceTypeOptInPreference>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "UpdateRegionSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateRecoveryPointLifecycle = {
  type t;
  type request = {
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("RecoveryPointArn") recoveryPointArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("CalculatedLifecycle") calculatedLifecycle: option<calculatedLifecycle>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "UpdateRecoveryPointLifecycleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGlobalSettings = {
  type t;
  type request = {
@as("GlobalSettings") globalSettings: option<globalSettings>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "UpdateGlobalSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: tagKeyList,
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceArn") resourceArn: arn
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartRestoreJob = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<resourceType>,
@as("IdempotencyToken") idempotencyToken: option<string_>,
@as("IamRoleArn") iamRoleArn: iamroleArn,
@as("Metadata") metadata: metadata,
@as("RecoveryPointArn") recoveryPointArn: arn
}
  type response = {
@as("RestoreJobId") restoreJobId: option<restoreJobId>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "StartRestoreJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartCopyJob = {
  type t;
  type request = {
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("IdempotencyToken") idempotencyToken: option<string_>,
@as("IamRoleArn") iamRoleArn: iamroleArn,
@as("DestinationBackupVaultArn") destinationBackupVaultArn: arn,
@as("SourceBackupVaultName") sourceBackupVaultName: backupVaultName,
@as("RecoveryPointArn") recoveryPointArn: arn
}
  type response = {
@as("CreationDate") creationDate: option<timestamp_>,
@as("CopyJobId") copyJobId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "StartCopyJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartBackupJob = {
  type t;
  type request = {
@as("BackupOptions") backupOptions: option<backupOptions>,
@as("RecoveryPointTags") recoveryPointTags: option<tags>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("CompleteWindowMinutes") completeWindowMinutes: option<windowMinutes>,
@as("StartWindowMinutes") startWindowMinutes: option<windowMinutes>,
@as("IdempotencyToken") idempotencyToken: option<string_>,
@as("IamRoleArn") iamRoleArn: iamroleArn,
@as("ResourceArn") resourceArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("CreationDate") creationDate: option<timestamp_>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("BackupJobId") backupJobId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "StartBackupJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultEvents") backupVaultEvents: backupVaultEvents,
@as("SNSTopicArn") snstopicArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "PutBackupVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("Tags") tags: option<tags>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSupportedResourceTypes = {
  type t;
  
  type response = {
@as("ResourceTypes") resourceTypes: option<resourceTypes>
}
  @module("@aws-sdk/client-backup") @new external new_: (unit) => t = "GetSupportedResourceTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRecoveryPointRestoreMetadata = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("RestoreMetadata") restoreMetadata: option<metadata>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetRecoveryPointRestoreMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("BackupVaultEvents") backupVaultEvents: option<backupVaultEvents>,
@as("SNSTopicArn") snstopicArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupVaultNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRegionSettings = {
  type t;
  type request = unit
  type response = {
@as("ResourceTypeOptInPreference") resourceTypeOptInPreference: option<resourceTypeOptInPreference>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeRegionSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: arn,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("LastRestoreTime") lastRestoreTime: option<timestamp_>,
@as("StorageClass") storageClass: option<storageClass>,
@as("IsEncrypted") isEncrypted: option<boolean2>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("Lifecycle") lifecycle: option<lifecycle>,
@as("CalculatedLifecycle") calculatedLifecycle: option<calculatedLifecycle>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("Status") status: option<recoveryPointStatus>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("CreatedBy") createdBy: option<recoveryPointCreator>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceArn") resourceArn: option<arn>,
@as("SourceBackupVaultArn") sourceBackupVaultArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeRecoveryPointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGlobalSettings = {
  type t;
  type request = unit
  type response = {
@as("LastUpdateTime") lastUpdateTime: option<timestamp_>,
@as("GlobalSettings") globalSettings: option<globalSettings>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeGlobalSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBackupJob = {
  type t;
  type request = {
@as("BackupJobId") backupJobId: string_
}
  type response = {
@as("BackupType") backupType: option<string_>,
@as("BackupOptions") backupOptions: option<backupOptions>,
@as("StartBy") startBy: option<timestamp_>,
@as("ExpectedCompletionDate") expectedCompletionDate: option<timestamp_>,
@as("BytesTransferred") bytesTransferred: option<long>,
@as("ResourceType") resourceType: option<resourceType>,
@as("CreatedBy") createdBy: option<recoveryPointCreator>,
@as("IamRoleArn") iamRoleArn: option<iamroleArn>,
@as("BackupSizeInBytes") backupSizeInBytes: option<long>,
@as("PercentDone") percentDone: option<string_>,
@as("StatusMessage") statusMessage: option<string_>,
@as("State") state: option<backupJobState>,
@as("CompletionDate") completionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("ResourceArn") resourceArn: option<arn>,
@as("RecoveryPointArn") recoveryPointArn: option<arn>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>,
@as("BackupJobId") backupJobId: option<string_>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeBackupJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackupVault = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("EncryptionKeyArn") encryptionKeyArn: option<arn>,
@as("BackupVaultTags") backupVaultTags: option<tags>,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupVaultArn") backupVaultArn: option<arn>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "CreateBackupVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRestoreJobs = {
  type t;
  type request = {
@as("ByStatus") byStatus: option<restoreJobStatus>,
@as("ByCreatedAfter") byCreatedAfter: option<timestamp_>,
@as("ByCreatedBefore") byCreatedBefore: option<timestamp_>,
@as("ByAccountId") byAccountId: option<accountId>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("RestoreJobs") restoreJobs: option<restoreJobsList>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListRestoreJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRecoveryPointsByResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("ResourceArn") resourceArn: arn
}
  type response = {
@as("RecoveryPoints") recoveryPoints: option<recoveryPointByResourceList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListRecoveryPointsByResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProtectedResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("Results") results: option<protectedResourcesList>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListProtectedResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupVaults = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("BackupVaultList") backupVaultList: option<backupVaultList>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupVaultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupSelections = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("BackupSelectionsList") backupSelectionsList: option<backupSelectionsList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupSelectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlanTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("BackupPlanTemplatesList") backupPlanTemplatesList: option<backupPlanTemplatesList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupPlanTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCopyJob = {
  type t;
  type request = {
@as("CopyJobId") copyJobId: string_
}
  type response = {
@as("CopyJob") copyJob: option<copyJob>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "DescribeCopyJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRecoveryPointsByBackupVault = {
  type t;
  type request = {
@as("ByCreatedAfter") byCreatedAfter: option<timestamp_>,
@as("ByCreatedBefore") byCreatedBefore: option<timestamp_>,
@as("ByBackupPlanId") byBackupPlanId: option<string_>,
@as("ByResourceType") byResourceType: option<resourceType>,
@as("ByResourceArn") byResourceArn: option<arn>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  type response = {
@as("RecoveryPoints") recoveryPoints: option<recoveryPointByBackupVaultList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListRecoveryPointsByBackupVaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCopyJobs = {
  type t;
  type request = {
@as("ByAccountId") byAccountId: option<accountId>,
@as("ByDestinationVaultArn") byDestinationVaultArn: option<string_>,
@as("ByResourceType") byResourceType: option<resourceType>,
@as("ByCreatedAfter") byCreatedAfter: option<timestamp_>,
@as("ByCreatedBefore") byCreatedBefore: option<timestamp_>,
@as("ByState") byState: option<copyJobState>,
@as("ByResourceArn") byResourceArn: option<arn>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("CopyJobs") copyJobs: option<copyJobsList>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListCopyJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupJobs = {
  type t;
  type request = {
@as("ByAccountId") byAccountId: option<accountId>,
@as("ByResourceType") byResourceType: option<resourceType>,
@as("ByCreatedAfter") byCreatedAfter: option<timestamp_>,
@as("ByCreatedBefore") byCreatedBefore: option<timestamp_>,
@as("ByBackupVaultName") byBackupVaultName: option<backupVaultName>,
@as("ByState") byState: option<backupJobState>,
@as("ByResourceArn") byResourceArn: option<arn>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("BackupJobs") backupJobs: option<backupJobsList>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackupSelection = {
  type t;
  type request = {
@as("SelectionId") selectionId: string_,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanId") backupPlanId: option<string_>,
@as("SelectionId") selectionId: option<string_>,
@as("BackupSelection") backupSelection: option<backupSelection>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupSelectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackupSelection = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("BackupSelection") backupSelection: backupSelection,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanId") backupPlanId: option<string_>,
@as("SelectionId") selectionId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "CreateBackupSelectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlans = {
  type t;
  type request = {
@as("IncludeDeleted") includeDeleted: option<boolean_>,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("BackupPlansList") backupPlansList: option<backupPlansList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupPlansCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlanVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<string_>,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("BackupPlanVersionsList") backupPlanVersionsList: option<backupPlanVersionsList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "ListBackupPlanVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBackupPlan = {
  type t;
  type request = {
@as("BackupPlan") backupPlan: backupPlanInput,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("VersionId") versionId: option<string_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanArn") backupPlanArn: option<arn>,
@as("BackupPlanId") backupPlanId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "UpdateBackupPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlanFromTemplate = {
  type t;
  type request = {
@as("BackupPlanTemplateId") backupPlanTemplateId: string_
}
  type response = {
@as("BackupPlanDocument") backupPlanDocument: option<backupPlan>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupPlanFromTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlanFromJSON = {
  type t;
  type request = {
@as("BackupPlanTemplateJson") backupPlanTemplateJson: string_
}
  type response = {
@as("BackupPlan") backupPlan: option<backupPlan>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupPlanFromJSONCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlan = {
  type t;
  type request = {
@as("VersionId") versionId: option<string_>,
@as("BackupPlanId") backupPlanId: string_
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("LastExecutionDate") lastExecutionDate: option<timestamp_>,
@as("DeletionDate") deletionDate: option<timestamp_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("VersionId") versionId: option<string_>,
@as("BackupPlanArn") backupPlanArn: option<arn>,
@as("BackupPlanId") backupPlanId: option<string_>,
@as("BackupPlan") backupPlan: option<backupPlan>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "GetBackupPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBackupPlan = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: option<string_>,
@as("BackupPlanTags") backupPlanTags: option<tags>,
@as("BackupPlan") backupPlan: backupPlanInput
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: option<advancedBackupSettings>,
@as("VersionId") versionId: option<string_>,
@as("CreationDate") creationDate: option<timestamp_>,
@as("BackupPlanArn") backupPlanArn: option<arn>,
@as("BackupPlanId") backupPlanId: option<string_>
}
  @module("@aws-sdk/client-backup") @new external new_: (request) => t = "CreateBackupPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
