type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timestamp = Js.Date.t;
type string = string
type windowMinutes = float;
type tagValue = string
type tagKey = string
type storageClass = [@as("DELETED") #DELETED | @as("COLD") #COLD | @as("WARM") #WARM]
type restoreJobStatus = [@as("FAILED") #FAILED | @as("ABORTED") #ABORTED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING]
type restoreJobId = string
type resourceType = string
type recoveryPointStatus = [@as("EXPIRED") #EXPIRED | @as("DELETING") #DELETING | @as("PARTIAL") #PARTIAL | @as("COMPLETED") #COMPLETED]
type metadataValue = string
type metadataKey = string
type maxResults = int;
type long2 = float;
type amazonawsLong = float;
type isEnabled = bool;
type iAMRoleArn = string
type iAMPolicy = string
type globalSettingsValue = string
type globalSettingsName = string
type cronExpression = string
type copyJobState = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("CREATED") #CREATED]
type conditionValue = string
type conditionType = [@as("STRINGEQUALS") #STRINGEQUALS]
type conditionKey = string
type boolean2 = bool;
type amazonawsBoolean = bool;
type backupVaultName = string
type backupVaultEvent = [@as("BACKUP_PLAN_MODIFIED") #BACKUP_PLAN_MODIFIED | @as("BACKUP_PLAN_CREATED") #BACKUP_PLAN_CREATED | @as("RECOVERY_POINT_MODIFIED") #RECOVERY_POINT_MODIFIED | @as("COPY_JOB_FAILED") #COPY_JOB_FAILED | @as("COPY_JOB_SUCCESSFUL") #COPY_JOB_SUCCESSFUL | @as("COPY_JOB_STARTED") #COPY_JOB_STARTED | @as("RESTORE_JOB_FAILED") #RESTORE_JOB_FAILED | @as("RESTORE_JOB_SUCCESSFUL") #RESTORE_JOB_SUCCESSFUL | @as("RESTORE_JOB_COMPLETED") #RESTORE_JOB_COMPLETED | @as("RESTORE_JOB_STARTED") #RESTORE_JOB_STARTED | @as("BACKUP_JOB_EXPIRED") #BACKUP_JOB_EXPIRED | @as("BACKUP_JOB_FAILED") #BACKUP_JOB_FAILED | @as("BACKUP_JOB_SUCCESSFUL") #BACKUP_JOB_SUCCESSFUL | @as("BACKUP_JOB_COMPLETED") #BACKUP_JOB_COMPLETED | @as("BACKUP_JOB_STARTED") #BACKUP_JOB_STARTED]
type backupSelectionName = string
type backupRuleName = string
type backupPlanName = string
type backupOptionValue = string
type backupOptionKey = string
type backupJobState = [@as("EXPIRED") #EXPIRED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("ABORTED") #ABORTED | @as("ABORTING") #ABORTING | @as("RUNNING") #RUNNING | @as("PENDING") #PENDING | @as("CREATED") #CREATED]
type accountId = string
type aRN = string
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<string>
type restoreJobsListMember = {
@as("ResourceType") resourceType: resourceType,
@as("CreatedResourceArn") createdResourceArn: aRN,
@as("ExpectedCompletionTimeMinutes") expectedCompletionTimeMinutes: amazonawsLong,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("PercentDone") percentDone: string,
@as("StatusMessage") statusMessage: string,
@as("Status") status: restoreJobStatus,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("RestoreJobId") restoreJobId: string,
@as("AccountId") accountId: accountId
}
type resourceTypes = array<resourceType>
type resourceTypeOptInPreference = Js.Dict.t< isEnabled>
type resourceArns = array<aRN>
type recoveryPointCreator = {
@as("BackupRuleId") backupRuleId: string,
@as("BackupPlanVersion") backupPlanVersion: string,
@as("BackupPlanArn") backupPlanArn: aRN,
@as("BackupPlanId") backupPlanId: string
}
type recoveryPointByResource = {
@as("BackupVaultName") backupVaultName: backupVaultName,
@as("BackupSizeBytes") backupSizeBytes: amazonawsLong,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("Status") status: recoveryPointStatus,
@as("CreationDate") creationDate: timestamp,
@as("RecoveryPointArn") recoveryPointArn: aRN
}
type protectedResource = {
@as("LastBackupTime") lastBackupTime: timestamp,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: aRN
}
type metadata = Js.Dict.t< metadataValue>
type lifecycle = {
@as("DeleteAfterDays") deleteAfterDays: amazonawsLong,
@as("MoveToColdStorageAfterDays") moveToColdStorageAfterDays: amazonawsLong
}
type globalSettings = Js.Dict.t< globalSettingsValue>
type condition = {
@as("ConditionValue") conditionValue: option<conditionValue>,
@as("ConditionKey") conditionKey: option<conditionKey>,
@as("ConditionType") conditionType: option<conditionType>
}
type calculatedLifecycle = {
@as("DeleteAt") deleteAt: timestamp,
@as("MoveToColdStorageAt") moveToColdStorageAt: timestamp
}
type backupVaultListMember = {
@as("NumberOfRecoveryPoints") numberOfRecoveryPoints: long2,
@as("CreatorRequestId") creatorRequestId: string,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("CreationDate") creationDate: timestamp,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName
}
type backupVaultEvents = array<backupVaultEvent>
type backupSelectionsListMember = {
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("CreatorRequestId") creatorRequestId: string,
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanId") backupPlanId: string,
@as("SelectionName") selectionName: backupSelectionName,
@as("SelectionId") selectionId: string
}
type backupPlanTemplatesListMember = {
@as("BackupPlanTemplateName") backupPlanTemplateName: string,
@as("BackupPlanTemplateId") backupPlanTemplateId: string
}
type backupOptions = Js.Dict.t< backupOptionValue>
type restoreJobsList = array<restoreJobsListMember>
type recoveryPointByResourceList = array<recoveryPointByResource>
type recoveryPointByBackupVault = {
@as("LastRestoreTime") lastRestoreTime: timestamp,
@as("IsEncrypted") isEncrypted: boolean2,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("Lifecycle") lifecycle: lifecycle,
@as("CalculatedLifecycle") calculatedLifecycle: calculatedLifecycle,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("Status") status: recoveryPointStatus,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("CreatedBy") createdBy: recoveryPointCreator,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: aRN,
@as("SourceBackupVaultArn") sourceBackupVaultArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName,
@as("RecoveryPointArn") recoveryPointArn: aRN
}
type protectedResourcesList = array<protectedResource>
type listOfTags = array<condition>
type copyJob = {
@as("ResourceType") resourceType: resourceType,
@as("CreatedBy") createdBy: recoveryPointCreator,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("StatusMessage") statusMessage: string,
@as("State") state: copyJobState,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("ResourceArn") resourceArn: aRN,
@as("DestinationRecoveryPointArn") destinationRecoveryPointArn: aRN,
@as("DestinationBackupVaultArn") destinationBackupVaultArn: aRN,
@as("SourceRecoveryPointArn") sourceRecoveryPointArn: aRN,
@as("SourceBackupVaultArn") sourceBackupVaultArn: aRN,
@as("CopyJobId") copyJobId: string,
@as("AccountId") accountId: accountId
}
type copyAction = {
@as("DestinationBackupVaultArn") destinationBackupVaultArn: option<aRN>,
@as("Lifecycle") lifecycle: lifecycle
}
type backupVaultList = array<backupVaultListMember>
type backupSelectionsList = array<backupSelectionsListMember>
type backupPlanTemplatesList = array<backupPlanTemplatesListMember>
type backupJob = {
@as("BackupType") backupType: string,
@as("BackupOptions") backupOptions: backupOptions,
@as("BytesTransferred") bytesTransferred: amazonawsLong,
@as("ResourceType") resourceType: resourceType,
@as("StartBy") startBy: timestamp,
@as("ExpectedCompletionDate") expectedCompletionDate: timestamp,
@as("CreatedBy") createdBy: recoveryPointCreator,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("PercentDone") percentDone: string,
@as("StatusMessage") statusMessage: string,
@as("State") state: backupJobState,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("ResourceArn") resourceArn: aRN,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName,
@as("BackupJobId") backupJobId: string,
@as("AccountId") accountId: accountId
}
type advancedBackupSetting = {
@as("BackupOptions") backupOptions: backupOptions,
@as("ResourceType") resourceType: resourceType
}
type recoveryPointByBackupVaultList = array<recoveryPointByBackupVault>
type copyJobsList = array<copyJob>
type copyActions = array<copyAction>
type backupSelection = {
@as("ListOfTags") listOfTags: listOfTags,
@as("Resources") resources: resourceArns,
@as("IamRoleArn") iamRoleArn: option<iAMRoleArn>,
@as("SelectionName") selectionName: option<backupSelectionName>
}
type backupJobsList = array<backupJob>
type advancedBackupSettings = array<advancedBackupSetting>
type backupRuleInput = {
@as("EnableContinuousBackup") enableContinuousBackup: amazonawsBoolean,
@as("CopyActions") copyActions: copyActions,
@as("RecoveryPointTags") recoveryPointTags: tags,
@as("Lifecycle") lifecycle: lifecycle,
@as("CompletionWindowMinutes") completionWindowMinutes: windowMinutes,
@as("StartWindowMinutes") startWindowMinutes: windowMinutes,
@as("ScheduleExpression") scheduleExpression: cronExpression,
@as("TargetBackupVaultName") targetBackupVaultName: option<backupVaultName>,
@as("RuleName") ruleName: option<backupRuleName>
}
type backupRule = {
@as("EnableContinuousBackup") enableContinuousBackup: amazonawsBoolean,
@as("CopyActions") copyActions: copyActions,
@as("RuleId") ruleId: string,
@as("RecoveryPointTags") recoveryPointTags: tags,
@as("Lifecycle") lifecycle: lifecycle,
@as("CompletionWindowMinutes") completionWindowMinutes: windowMinutes,
@as("StartWindowMinutes") startWindowMinutes: windowMinutes,
@as("ScheduleExpression") scheduleExpression: cronExpression,
@as("TargetBackupVaultName") targetBackupVaultName: option<backupVaultName>,
@as("RuleName") ruleName: option<backupRuleName>
}
type backupPlansListMember = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("LastExecutionDate") lastExecutionDate: timestamp,
@as("CreatorRequestId") creatorRequestId: string,
@as("BackupPlanName") backupPlanName: backupPlanName,
@as("VersionId") versionId: string,
@as("DeletionDate") deletionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanId") backupPlanId: string,
@as("BackupPlanArn") backupPlanArn: aRN
}
type backupRulesInput = array<backupRuleInput>
type backupRules = array<backupRule>
type backupPlansList = array<backupPlansListMember>
type backupPlanVersionsList = array<backupPlansListMember>
type backupPlanInput = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("Rules") rules: option<backupRulesInput>,
@as("BackupPlanName") backupPlanName: option<backupPlanName>
}
type backupPlan = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("Rules") rules: option<backupRules>,
@as("BackupPlanName") backupPlanName: option<backupPlanName>
}
type clientType;
@module("@aws-sdk/client-backup") @new external createClient: unit => clientType = "BackupClient";
module StopBackupJob = {
  type t;
  type request = {
@as("BackupJobId") backupJobId: option<string>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "StopBackupJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("Policy") policy: iAMPolicy,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "PutBackupVaultAccessPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("Policy") policy: iAMPolicy,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupVaultAccessPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportBackupPlanTemplate = {
  type t;
  type request = {
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("BackupPlanTemplateJson") backupPlanTemplateJson: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ExportBackupPlanTemplateCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DisassociateRecoveryPointCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeRestoreJob = {
  type t;
  type request = {
@as("RestoreJobId") restoreJobId: option<restoreJobId>
}
  type response = {
@as("ResourceType") resourceType: resourceType,
@as("CreatedResourceArn") createdResourceArn: aRN,
@as("ExpectedCompletionTimeMinutes") expectedCompletionTimeMinutes: amazonawsLong,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("PercentDone") percentDone: string,
@as("StatusMessage") statusMessage: string,
@as("Status") status: restoreJobStatus,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("RestoreJobId") restoreJobId: string,
@as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeRestoreJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProtectedResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<aRN>
}
  type response = {
@as("LastBackupTime") lastBackupTime: timestamp,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: aRN
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeProtectedResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBackupVault = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<string>
}
  type response = {
@as("NumberOfRecoveryPoints") numberOfRecoveryPoints: long2,
@as("CreatorRequestId") creatorRequestId: string,
@as("CreationDate") creationDate: timestamp,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeBackupVaultCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteRecoveryPointCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupVaultNotificationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVaultAccessPolicy = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupVaultAccessPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupVault = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<string>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupVaultCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupSelection = {
  type t;
  type request = {
@as("SelectionId") selectionId: option<string>,
@as("BackupPlanId") backupPlanId: option<string>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupSelectionCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteBackupPlan = {
  type t;
  type request = {
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("VersionId") versionId: string,
@as("DeletionDate") deletionDate: timestamp,
@as("BackupPlanArn") backupPlanArn: aRN,
@as("BackupPlanId") backupPlanId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DeleteBackupPlanCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRegionSettings = {
  type t;
  type request = {
@as("ResourceTypeOptInPreference") resourceTypeOptInPreference: resourceTypeOptInPreference
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "UpdateRegionSettingsCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRecoveryPointLifecycle = {
  type t;
  type request = {
@as("Lifecycle") lifecycle: lifecycle,
@as("RecoveryPointArn") recoveryPointArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("CalculatedLifecycle") calculatedLifecycle: calculatedLifecycle,
@as("Lifecycle") lifecycle: lifecycle,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "UpdateRecoveryPointLifecycleCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGlobalSettings = {
  type t;
  type request = {
@as("GlobalSettings") globalSettings: globalSettings
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "UpdateGlobalSettingsCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeyList") tagKeyList: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<aRN>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartRestoreJob = {
  type t;
  type request = {
@as("ResourceType") resourceType: resourceType,
@as("IdempotencyToken") idempotencyToken: string,
@as("IamRoleArn") iamRoleArn: option<iAMRoleArn>,
@as("Metadata") metadata: option<metadata>,
@as("RecoveryPointArn") recoveryPointArn: option<aRN>
}
  type response = {
@as("RestoreJobId") restoreJobId: restoreJobId
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "StartRestoreJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartCopyJob = {
  type t;
  type request = {
@as("Lifecycle") lifecycle: lifecycle,
@as("IdempotencyToken") idempotencyToken: string,
@as("IamRoleArn") iamRoleArn: option<iAMRoleArn>,
@as("DestinationBackupVaultArn") destinationBackupVaultArn: option<aRN>,
@as("SourceBackupVaultName") sourceBackupVaultName: option<backupVaultName>,
@as("RecoveryPointArn") recoveryPointArn: option<aRN>
}
  type response = {
@as("CreationDate") creationDate: timestamp,
@as("CopyJobId") copyJobId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "StartCopyJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartBackupJob = {
  type t;
  type request = {
@as("BackupOptions") backupOptions: backupOptions,
@as("RecoveryPointTags") recoveryPointTags: tags,
@as("Lifecycle") lifecycle: lifecycle,
@as("CompleteWindowMinutes") completeWindowMinutes: windowMinutes,
@as("StartWindowMinutes") startWindowMinutes: windowMinutes,
@as("IdempotencyToken") idempotencyToken: string,
@as("IamRoleArn") iamRoleArn: option<iAMRoleArn>,
@as("ResourceArn") resourceArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("CreationDate") creationDate: timestamp,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("BackupJobId") backupJobId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "StartBackupJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultEvents") backupVaultEvents: option<backupVaultEvents>,
@as("SNSTopicArn") sNSTopicArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "PutBackupVaultNotificationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string,
@as("ResourceArn") resourceArn: option<aRN>
}
  type response = {
@as("Tags") tags: tags,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSupportedResourceTypes = {
  type t;
  
  type response = {
@as("ResourceTypes") resourceTypes: resourceTypes
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<unit>) => t = "GetSupportedResourceTypesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRecoveryPointRestoreMetadata = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("RestoreMetadata") restoreMetadata: metadata,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetRecoveryPointRestoreMetadataCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackupVaultNotifications = {
  type t;
  type request = {
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("BackupVaultEvents") backupVaultEvents: backupVaultEvents,
@as("SNSTopicArn") sNSTopicArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupVaultNotificationsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegionSettings = {
  type t;
  type request = unit
  type response = {
@as("ResourceTypeOptInPreference") resourceTypeOptInPreference: resourceTypeOptInPreference
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeRegionSettingsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecoveryPoint = {
  type t;
  type request = {
@as("RecoveryPointArn") recoveryPointArn: option<aRN>,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("LastRestoreTime") lastRestoreTime: timestamp,
@as("StorageClass") storageClass: storageClass,
@as("IsEncrypted") isEncrypted: boolean2,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("Lifecycle") lifecycle: lifecycle,
@as("CalculatedLifecycle") calculatedLifecycle: calculatedLifecycle,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("Status") status: recoveryPointStatus,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("CreatedBy") createdBy: recoveryPointCreator,
@as("ResourceType") resourceType: resourceType,
@as("ResourceArn") resourceArn: aRN,
@as("SourceBackupVaultArn") sourceBackupVaultArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName,
@as("RecoveryPointArn") recoveryPointArn: aRN
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeRecoveryPointCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGlobalSettings = {
  type t;
  type request = unit
  type response = {
@as("LastUpdateTime") lastUpdateTime: timestamp,
@as("GlobalSettings") globalSettings: globalSettings
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeGlobalSettingsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBackupJob = {
  type t;
  type request = {
@as("BackupJobId") backupJobId: option<string>
}
  type response = {
@as("BackupType") backupType: string,
@as("BackupOptions") backupOptions: backupOptions,
@as("StartBy") startBy: timestamp,
@as("ExpectedCompletionDate") expectedCompletionDate: timestamp,
@as("BytesTransferred") bytesTransferred: amazonawsLong,
@as("ResourceType") resourceType: resourceType,
@as("CreatedBy") createdBy: recoveryPointCreator,
@as("IamRoleArn") iamRoleArn: iAMRoleArn,
@as("BackupSizeInBytes") backupSizeInBytes: amazonawsLong,
@as("PercentDone") percentDone: string,
@as("StatusMessage") statusMessage: string,
@as("State") state: backupJobState,
@as("CompletionDate") completionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("ResourceArn") resourceArn: aRN,
@as("RecoveryPointArn") recoveryPointArn: aRN,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName,
@as("BackupJobId") backupJobId: string,
@as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeBackupJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackupVault = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: string,
@as("EncryptionKeyArn") encryptionKeyArn: aRN,
@as("BackupVaultTags") backupVaultTags: tags,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("CreationDate") creationDate: timestamp,
@as("BackupVaultArn") backupVaultArn: aRN,
@as("BackupVaultName") backupVaultName: backupVaultName
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "CreateBackupVaultCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRestoreJobs = {
  type t;
  type request = {
@as("ByStatus") byStatus: restoreJobStatus,
@as("ByCreatedAfter") byCreatedAfter: timestamp,
@as("ByCreatedBefore") byCreatedBefore: timestamp,
@as("ByAccountId") byAccountId: accountId,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("NextToken") nextToken: string,
@as("RestoreJobs") restoreJobs: restoreJobsList
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListRestoreJobsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecoveryPointsByResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string,
@as("ResourceArn") resourceArn: option<aRN>
}
  type response = {
@as("RecoveryPoints") recoveryPoints: recoveryPointByResourceList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListRecoveryPointsByResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProtectedResources = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("NextToken") nextToken: string,
@as("Results") results: protectedResourcesList
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListProtectedResourcesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupVaults = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("NextToken") nextToken: string,
@as("BackupVaultList") backupVaultList: backupVaultList
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupVaultsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupSelections = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("BackupSelectionsList") backupSelectionsList: backupSelectionsList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupSelectionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlanTemplates = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("BackupPlanTemplatesList") backupPlanTemplatesList: backupPlanTemplatesList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupPlanTemplatesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCopyJob = {
  type t;
  type request = {
@as("CopyJobId") copyJobId: option<string>
}
  type response = {
@as("CopyJob") copyJob: copyJob
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "DescribeCopyJobCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecoveryPointsByBackupVault = {
  type t;
  type request = {
@as("ByCreatedAfter") byCreatedAfter: timestamp,
@as("ByCreatedBefore") byCreatedBefore: timestamp,
@as("ByBackupPlanId") byBackupPlanId: string,
@as("ByResourceType") byResourceType: resourceType,
@as("ByResourceArn") byResourceArn: aRN,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string,
@as("BackupVaultName") backupVaultName: option<backupVaultName>
}
  type response = {
@as("RecoveryPoints") recoveryPoints: recoveryPointByBackupVaultList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListRecoveryPointsByBackupVaultCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCopyJobs = {
  type t;
  type request = {
@as("ByAccountId") byAccountId: accountId,
@as("ByDestinationVaultArn") byDestinationVaultArn: string,
@as("ByResourceType") byResourceType: resourceType,
@as("ByCreatedAfter") byCreatedAfter: timestamp,
@as("ByCreatedBefore") byCreatedBefore: timestamp,
@as("ByState") byState: copyJobState,
@as("ByResourceArn") byResourceArn: aRN,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("NextToken") nextToken: string,
@as("CopyJobs") copyJobs: copyJobsList
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListCopyJobsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupJobs = {
  type t;
  type request = {
@as("ByAccountId") byAccountId: accountId,
@as("ByResourceType") byResourceType: resourceType,
@as("ByCreatedAfter") byCreatedAfter: timestamp,
@as("ByCreatedBefore") byCreatedBefore: timestamp,
@as("ByBackupVaultName") byBackupVaultName: backupVaultName,
@as("ByState") byState: backupJobState,
@as("ByResourceArn") byResourceArn: aRN,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("NextToken") nextToken: string,
@as("BackupJobs") backupJobs: backupJobsList
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupJobsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackupSelection = {
  type t;
  type request = {
@as("SelectionId") selectionId: option<string>,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("CreatorRequestId") creatorRequestId: string,
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanId") backupPlanId: string,
@as("SelectionId") selectionId: string,
@as("BackupSelection") backupSelection: backupSelection
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupSelectionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackupSelection = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: string,
@as("BackupSelection") backupSelection: option<backupSelection>,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanId") backupPlanId: string,
@as("SelectionId") selectionId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "CreateBackupSelectionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlans = {
  type t;
  type request = {
@as("IncludeDeleted") includeDeleted: amazonawsBoolean,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string
}
  type response = {
@as("BackupPlansList") backupPlansList: backupPlansList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupPlansCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBackupPlanVersions = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: string,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("BackupPlanVersionsList") backupPlanVersionsList: backupPlanVersionsList,
@as("NextToken") nextToken: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "ListBackupPlanVersionsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBackupPlan = {
  type t;
  type request = {
@as("BackupPlan") backupPlan: option<backupPlanInput>,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("VersionId") versionId: string,
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanArn") backupPlanArn: aRN,
@as("BackupPlanId") backupPlanId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "UpdateBackupPlanCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlanFromTemplate = {
  type t;
  type request = {
@as("BackupPlanTemplateId") backupPlanTemplateId: option<string>
}
  type response = {
@as("BackupPlanDocument") backupPlanDocument: backupPlan
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupPlanFromTemplateCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlanFromJSON = {
  type t;
  type request = {
@as("BackupPlanTemplateJson") backupPlanTemplateJson: option<string>
}
  type response = {
@as("BackupPlan") backupPlan: backupPlan
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupPlanFromJSONCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBackupPlan = {
  type t;
  type request = {
@as("VersionId") versionId: string,
@as("BackupPlanId") backupPlanId: option<string>
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("LastExecutionDate") lastExecutionDate: timestamp,
@as("DeletionDate") deletionDate: timestamp,
@as("CreationDate") creationDate: timestamp,
@as("CreatorRequestId") creatorRequestId: string,
@as("VersionId") versionId: string,
@as("BackupPlanArn") backupPlanArn: aRN,
@as("BackupPlanId") backupPlanId: string,
@as("BackupPlan") backupPlan: backupPlan
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "GetBackupPlanCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBackupPlan = {
  type t;
  type request = {
@as("CreatorRequestId") creatorRequestId: string,
@as("BackupPlanTags") backupPlanTags: tags,
@as("BackupPlan") backupPlan: option<backupPlanInput>
}
  type response = {
@as("AdvancedBackupSettings") advancedBackupSettings: advancedBackupSettings,
@as("VersionId") versionId: string,
@as("CreationDate") creationDate: timestamp,
@as("BackupPlanArn") backupPlanArn: aRN,
@as("BackupPlanId") backupPlanId: string
}
  @module("@aws-sdk/client-backup") @new external new_: (Js.Promise.t<request>) => t = "CreateBackupPlanCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
