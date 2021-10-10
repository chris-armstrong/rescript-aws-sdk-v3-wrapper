type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-backup") @new
external createClient: unit => awsServiceClient = "BackupClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type windowMinutes = float
type tagValue = string
type tagKey = string
type storageClass = [@as("DELETED") #DELETED | @as("COLD") #COLD | @as("WARM") #WARM]
type restoreJobStatus = [
  | @as("FAILED") #FAILED
  | @as("ABORTED") #ABORTED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type restoreJobId = string
type resourceType = string
type recoveryPointStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("DELETING") #DELETING
  | @as("PARTIAL") #PARTIAL
  | @as("COMPLETED") #COMPLETED
]
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
type copyJobState = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("CREATED") #CREATED
]
type conditionValue = string
type conditionType = [@as("STRINGEQUALS") #STRINGEQUALS]
type conditionKey = string
type boolean2 = bool
type boolean_ = bool
type backupVaultName = string
type backupVaultEvent = [
  | @as("BACKUP_PLAN_MODIFIED") #BACKUP_PLAN_MODIFIED
  | @as("BACKUP_PLAN_CREATED") #BACKUP_PLAN_CREATED
  | @as("RECOVERY_POINT_MODIFIED") #RECOVERY_POINT_MODIFIED
  | @as("COPY_JOB_FAILED") #COPY_JOB_FAILED
  | @as("COPY_JOB_SUCCESSFUL") #COPY_JOB_SUCCESSFUL
  | @as("COPY_JOB_STARTED") #COPY_JOB_STARTED
  | @as("RESTORE_JOB_FAILED") #RESTORE_JOB_FAILED
  | @as("RESTORE_JOB_SUCCESSFUL") #RESTORE_JOB_SUCCESSFUL
  | @as("RESTORE_JOB_COMPLETED") #RESTORE_JOB_COMPLETED
  | @as("RESTORE_JOB_STARTED") #RESTORE_JOB_STARTED
  | @as("BACKUP_JOB_EXPIRED") #BACKUP_JOB_EXPIRED
  | @as("BACKUP_JOB_FAILED") #BACKUP_JOB_FAILED
  | @as("BACKUP_JOB_SUCCESSFUL") #BACKUP_JOB_SUCCESSFUL
  | @as("BACKUP_JOB_COMPLETED") #BACKUP_JOB_COMPLETED
  | @as("BACKUP_JOB_STARTED") #BACKUP_JOB_STARTED
]
type backupSelectionName = string
type backupRuleName = string
type backupPlanName = string
type backupOptionValue = string
type backupOptionKey = string
type backupJobState = [
  | @as("EXPIRED") #EXPIRED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("ABORTED") #ABORTED
  | @as("ABORTING") #ABORTING
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
  | @as("CREATED") #CREATED
]
type accountId = string
type arn = string
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<string_>
@ocaml.doc("<p>Contains metadata about a restore job.</p>")
type restoreJobsListMember = {
  @ocaml.doc("<p>The resource type of the listed restore jobs; for example, an Amazon Elastic Block Store
         (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For VSS
         Windows backups, the only supported resource type is Amazon EC2.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
  @as("CreatedResourceArn")
  createdResourceArn: option<arn>,
  @ocaml.doc("<p>The amount of time in minutes that a job restoring a recovery point is expected to
         take.</p>")
  @as("ExpectedCompletionTimeMinutes")
  expectedCompletionTimeMinutes: option<long>,
  @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>The size, in bytes, of the restored resource.</p>") @as("BackupSizeInBytes")
  backupSizeInBytes: option<long>,
  @ocaml.doc("<p>Contains an estimated percentage complete of a job at the time the job status was
         queried.</p>")
  @as("PercentDone")
  percentDone: option<string_>,
  @ocaml.doc(
    "<p>A detailed message explaining the status of the job to restore a recovery point.</p>"
  )
  @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>A status code specifying the state of the job initiated by AWS Backup to restore a
         recovery point.</p>")
  @as("Status")
  status: option<restoreJobStatus>,
  @ocaml.doc("<p>The date and time a job to restore a recovery point is completed, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
  @as("CompletionDate")
  completionDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time a restore job is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("RecoveryPointArn")
  recoveryPointArn: option<arn>,
  @ocaml.doc("<p>Uniquely identifies the job that restores a recovery point.</p>")
  @as("RestoreJobId")
  restoreJobId: option<string_>,
  @ocaml.doc("<p>The account ID that owns the restore job.</p>") @as("AccountId")
  accountId: option<accountId>,
}
type resourceTypes = array<resourceType>
type resourceTypeOptInPreference = Js.Dict.t<isEnabled>
type resourceArns = array<arn>
@ocaml.doc("<p>Contains information about the backup plan and rule that AWS Backup used to initiate the
         recovery point backup.</p>")
type recoveryPointCreator = {
  @ocaml.doc("<p>Uniquely identifies a rule used to schedule the backup of a selection of
         resources.</p>")
  @as("BackupRuleId")
  backupRuleId: option<string_>,
  @ocaml.doc("<p>Version IDs are unique, randomly generated, Unicode, UTF-8 encoded strings that are at
         most 1,024 bytes long. They cannot be edited.</p>")
  @as("BackupPlanVersion")
  backupPlanVersion: option<string_>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
  @as("BackupPlanArn")
  backupPlanArn: option<arn>,
  @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
  backupPlanId: option<string_>,
}
@ocaml.doc("<p>Contains detailed information about a saved recovery point.</p>")
type recoveryPointByResource = {
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeBytes")
  backupSizeBytes: option<long>,
  @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
  @as("EncryptionKeyArn")
  encryptionKeyArn: option<arn>,
  @ocaml.doc("<p>A status code specifying the state of the recovery point.</p>") @as("Status")
  status: option<recoveryPointStatus>,
  @ocaml.doc("<p>The date and time a recovery point is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("RecoveryPointArn")
  recoveryPointArn: option<arn>,
}
@ocaml.doc("<p>A structure that contains information about a backed-up resource.</p>")
type protectedResource = {
  @ocaml.doc("<p>The date and time a resource was last backed up, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("LastBackupTime")
  lastBackupTime: option<timestamp_>,
  @ocaml.doc("<p>The type of AWS resource; for example, an Amazon Elastic Block Store (Amazon EBS) volume
         or an Amazon Relational Database Service (Amazon RDS) database. For VSS Windows backups,
         the only supported resource type is Amazon EC2.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
  @as("ResourceArn")
  resourceArn: option<arn>,
}
type metadata = Js.Dict.t<metadataValue>
@ocaml.doc("<p>Contains an array of <code>Transition</code> objects specifying how long in days before
         a recovery point transitions to cold storage or is deleted.</p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, on the console, the “expire after days” setting must be 90 days greater
         than the “transition to cold after days” setting. The “transition to cold after days”
         setting cannot be changed after a backup has been transitioned to cold.</p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
type lifecycle = {
  @ocaml.doc("<p>Specifies the number of days after creation that a recovery point is deleted. Must be
         greater than 90 days plus <code>MoveToColdStorageAfterDays</code>.</p>")
  @as("DeleteAfterDays")
  deleteAfterDays: option<long>,
  @ocaml.doc("<p>Specifies the number of days after creation that a recovery point is moved to cold
         storage.</p>")
  @as("MoveToColdStorageAfterDays")
  moveToColdStorageAfterDays: option<long>,
}
type globalSettings = Js.Dict.t<globalSettingsValue>
@ocaml.doc("<p>Contains an array of triplets made up of a condition type (such as
            <code>StringEquals</code>), a key, and a value. Conditions are used to filter resources
         in a selection that is assigned to a backup plan.</p>")
type condition = {
  @ocaml.doc("<p>The value in a key-value pair. For example, in <code>\"ec2:ResourceTag/Department\":
            \"accounting\"</code>, <code>\"accounting\"</code> is the value.</p>")
  @as("ConditionValue")
  conditionValue: conditionValue,
  @ocaml.doc("<p>The key in a key-value pair. For example, in <code>\"ec2:ResourceTag/Department\":
            \"accounting\"</code>, <code>\"ec2:ResourceTag/Department\"</code> is the key.</p>")
  @as("ConditionKey")
  conditionKey: conditionKey,
  @ocaml.doc("<p>An operation, such as <code>StringEquals</code>, that is applied to a key-value pair
         used to filter resources in a selection.</p>")
  @as("ConditionType")
  conditionType: conditionType,
}
@ocaml.doc("<p>Contains <code>DeleteAt</code> and <code>MoveToColdStorageAt</code> timestamps, which
         are used to specify a lifecycle for a recovery point.</p>
         <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define.</p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold.</p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
type calculatedLifecycle = {
  @ocaml.doc("<p>A timestamp that specifies when to delete a recovery point.</p>") @as("DeleteAt")
  deleteAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A timestamp that specifies when to transition a recovery point to cold storage.</p>"
  )
  @as("MoveToColdStorageAt")
  moveToColdStorageAt: option<timestamp_>,
}
@ocaml.doc("<p>Contains metadata about a backup vault.</p>")
type backupVaultListMember = {
  @ocaml.doc("<p>The number of recovery points that are stored in a backup vault.</p>")
  @as("NumberOfRecoveryPoints")
  numberOfRecoveryPoints: option<long2>,
  @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<string_>,
  @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
  @as("EncryptionKeyArn")
  encryptionKeyArn: option<arn>,
  @ocaml.doc("<p>The date and time a resource backup is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
  @as("BackupVaultArn")
  backupVaultArn: option<arn>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
}
type backupVaultEvents = array<backupVaultEvent>
@ocaml.doc("<p>Contains metadata about a <code>BackupSelection</code> object.</p>")
type backupSelectionsListMember = {
  @ocaml.doc("<p>Specifies the IAM role Amazon Resource Name (ARN) to create the target recovery point;
         for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<string_>,
  @ocaml.doc("<p>The date and time a backup plan is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
  backupPlanId: option<string_>,
  @ocaml.doc("<p>The display name of a resource selection document.</p>") @as("SelectionName")
  selectionName: option<backupSelectionName>,
  @ocaml.doc("<p>Uniquely identifies a request to assign a set of resources to a backup plan.</p>")
  @as("SelectionId")
  selectionId: option<string_>,
}
@ocaml.doc("<p>An object specifying metadata associated with a backup plan template.</p>")
type backupPlanTemplatesListMember = {
  @ocaml.doc("<p>The optional display name of a backup plan template.</p>")
  @as("BackupPlanTemplateName")
  backupPlanTemplateName: option<string_>,
  @ocaml.doc("<p>Uniquely identifies a stored backup plan template.</p>")
  @as("BackupPlanTemplateId")
  backupPlanTemplateId: option<string_>,
}
type backupOptions = Js.Dict.t<backupOptionValue>
type restoreJobsList = array<restoreJobsListMember>
type recoveryPointByResourceList = array<recoveryPointByResource>
@ocaml.doc(
  "<p>Contains detailed information about the recovery points stored in a backup vault.</p>"
)
type recoveryPointByBackupVault = {
  @ocaml.doc("<p>The date and time a recovery point was last restored, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
  @as("LastRestoreTime")
  lastRestoreTime: option<timestamp_>,
  @ocaml.doc("<p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
         encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>")
  @as("IsEncrypted")
  isEncrypted: option<boolean2>,
  @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
  @as("EncryptionKeyArn")
  encryptionKeyArn: option<arn>,
  @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
  @as("Lifecycle")
  lifecycle: option<lifecycle>,
  @ocaml.doc("<p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
            <code>MoveToColdStorageAt</code> timestamps.</p>")
  @as("CalculatedLifecycle")
  calculatedLifecycle: option<calculatedLifecycle>,
  @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeInBytes")
  backupSizeInBytes: option<long>,
  @ocaml.doc("<p>The date and time a job to restore a recovery point is completed, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
  @as("CompletionDate")
  completionDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time a recovery point is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>A status code specifying the state of the recovery point.</p>") @as("Status")
  status: option<recoveryPointStatus>,
  @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>Contains identifying information about the creation of a recovery point, including the
            <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
         and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>")
  @as("CreatedBy")
  createdBy: option<recoveryPointCreator>,
  @ocaml.doc("<p>The type of AWS resource saved as a recovery point; for example, an Amazon Elastic Block
         Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.
         For VSS Windows backups, the only supported resource type is Amazon EC2.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
         resource type.</p>")
  @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>The backup vault where the recovery point was originally copied from. If the recovery
         point is restored to the same account this value will be <code>null</code>.</p>")
  @as("SourceBackupVaultArn")
  sourceBackupVaultArn: option<arn>,
  @ocaml.doc("<p>An ARN that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
  @as("BackupVaultArn")
  backupVaultArn: option<arn>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("RecoveryPointArn")
  recoveryPointArn: option<arn>,
}
type protectedResourcesList = array<protectedResource>
type listOfTags = array<condition>
@ocaml.doc("<p>Contains detailed information about a copy job.</p>")
type copyJob = {
  @ocaml.doc("<p>The type of AWS resource to be copied; for example, an Amazon Elastic Block Store
         (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @as("CreatedBy") createdBy: option<recoveryPointCreator>,
  @ocaml.doc("<p>Specifies the IAM role ARN used to copy the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>The size, in bytes, of a copy job.</p>") @as("BackupSizeInBytes")
  backupSizeInBytes: option<long>,
  @ocaml.doc("<p>A detailed message explaining the status of the job to copy a resource.</p>")
  @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The current state of a copy job.</p>") @as("State") state: option<copyJobState>,
  @ocaml.doc("<p>The date and time a copy job is completed, in Unix format and Coordinated Universal Time
         (UTC). The value of <code>CompletionDate</code> is accurate to milliseconds. For example,
         the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("CompletionDate")
  completionDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time a copy job is created, in Unix format and Coordinated Universal Time
         (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
         value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The AWS resource to be copied; for example, an Amazon Elastic Block Store (Amazon EBS)
         volume or an Amazon Relational Database Service (Amazon RDS) database.</p>")
  @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>An ARN that uniquely identifies a destination recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("DestinationRecoveryPointArn")
  destinationRecoveryPointArn: option<arn>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a destination copy vault; for
         example, <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
  @as("DestinationBackupVaultArn")
  destinationBackupVaultArn: option<arn>,
  @ocaml.doc("<p>An ARN that uniquely identifies a source recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("SourceRecoveryPointArn")
  sourceRecoveryPointArn: option<arn>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a source copy vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>. </p>")
  @as("SourceBackupVaultArn")
  sourceBackupVaultArn: option<arn>,
  @ocaml.doc("<p>Uniquely identifies a copy job.</p>") @as("CopyJobId") copyJobId: option<string_>,
  @ocaml.doc("<p>The account ID that owns the copy job.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>The details of the copy operation.</p>")
type copyAction = {
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for
         the copied backup. For example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
  @as("DestinationBackupVaultArn")
  destinationBackupVaultArn: arn,
  @as("Lifecycle") lifecycle: option<lifecycle>,
}
type backupVaultList = array<backupVaultListMember>
type backupSelectionsList = array<backupSelectionsListMember>
type backupPlanTemplatesList = array<backupPlanTemplatesListMember>
@ocaml.doc("<p>Contains detailed information about a backup job.</p>")
type backupJob = {
  @ocaml.doc("<p>Represents the type of backup for a backup job.</p>") @as("BackupType")
  backupType: option<string_>,
  @ocaml.doc("<p>Specifies the backup option for a selected resource. This option is only available for
         Windows VSS backup jobs.</p>
         <p>Valid values: Set to <code>\"WindowsVSS”:“enabled\"</code> to enable WindowsVSS backup
         option and create a VSS Windows backup. Set to “WindowsVSS”:”disabled” to create a regular
         backup. If you specify an invalid option, you get an
            <code>InvalidParameterValueException</code> exception.</p>")
  @as("BackupOptions")
  backupOptions: option<backupOptions>,
  @ocaml.doc("<p>The size in bytes transferred to a backup vault at the time that the job status was
         queried.</p>")
  @as("BytesTransferred")
  bytesTransferred: option<long>,
  @ocaml.doc("<p>The type of AWS resource to be backed up; for example, an Amazon Elastic Block Store
         (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For VSS
         Windows backups, the only supported resource type is Amazon EC2.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
         must be started before it is canceled. The value is calculated by adding the start window
         to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
         hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
            <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
         represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("StartBy")
  startBy: option<timestamp_>,
  @ocaml.doc("<p>The date and time a job to back up resources is expected to be completed, in Unix format
         and Coordinated Universal Time (UTC). The value of <code>ExpectedCompletionDate</code> is
         accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January
         26, 2018 12:11:30.087 AM.</p>")
  @as("ExpectedCompletionDate")
  expectedCompletionDate: option<timestamp_>,
  @ocaml.doc("<p>Contains identifying information about the creation of a backup job, including the
            <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
         and <code>BackupRuleId</code> of the backup plan used to create it.</p>")
  @as("CreatedBy")
  createdBy: option<recoveryPointCreator>,
  @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point. IAM roles other
         than the default role must include either <code>AWSBackup</code> or <code>AwsBackup</code>
         in the role name. For example,
            <code>arn:aws:iam::123456789012:role/AWSBackupRDSAccess</code>. Role names without those
         strings lack permissions to perform backup jobs.</p>")
  @as("IamRoleArn")
  iamRoleArn: option<iamroleArn>,
  @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeInBytes")
  backupSizeInBytes: option<long>,
  @ocaml.doc("<p>Contains an estimated percentage complete of a job at the time the job status was
         queried.</p>")
  @as("PercentDone")
  percentDone: option<string_>,
  @ocaml.doc("<p>A detailed message explaining the status of the job to back up a resource.</p>")
  @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The current state of a resource recovery point.</p>") @as("State")
  state: option<backupJobState>,
  @ocaml.doc("<p>The date and time a job to create a backup job is completed, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
  @as("CompletionDate")
  completionDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time a backup job is created, in Unix format and Coordinated Universal Time
         (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
         value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
         resource type.</p>")
  @as("ResourceArn")
  resourceArn: option<arn>,
  @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("RecoveryPointArn")
  recoveryPointArn: option<arn>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
  @as("BackupVaultArn")
  backupVaultArn: option<arn>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>Uniquely identifies a request to AWS Backup to back up a resource.</p>")
  @as("BackupJobId")
  backupJobId: option<string_>,
  @ocaml.doc("<p>The account ID that owns the backup job.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>A list of backup options for each resource type.</p>")
type advancedBackupSetting = {
  @ocaml.doc("<p>Specifies the backup option for a selected resource. This option is only available for
         Windows VSS backup jobs.</p>
         <p>Valid values: </p>
         <p>Set to <code>\"WindowsVSS\":\"enabled\"</code> to enable the WindowsVSS backup option and
         create a VSS Windows backup. </p>
         <p>Set to <code>\"WindowsVSS\":\"disabled\"</code> to create a regular backup. The WindowsVSS
         option is not enabled by default.</p>
         <p>If you specify an invalid option, you get an <code>InvalidParameterValueException</code>
         exception.</p>
         <p>For more information about Windows VSS backups, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backups.html\">Creating a VSS-Enabled Windows
            Backup</a>.</p>")
  @as("BackupOptions")
  backupOptions: option<backupOptions>,
  @ocaml.doc("<p>Specifies an object containing resource type and backup options. The only supported
         resource type is Amazon EC2 instances with Windows VSS. For an CloudFormation example, see
         the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/integrate-cloudformation-with-aws-backup.html\">sample
            CloudFormation template to enable Windows VSS</a> in the <i>AWS Backup User
            Guide</i>.</p>
         <p>Valid values: <code>EC2</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
}
type recoveryPointByBackupVaultList = array<recoveryPointByBackupVault>
type copyJobsList = array<copyJob>
type copyActions = array<copyAction>
@ocaml.doc("<p>Used to specify a set of resources to a backup plan.</p>")
type backupSelection = {
  @ocaml.doc("<p>An array of conditions used to specify a set of resources to assign to a backup plan;
         for example, <code>\"StringEquals\": {\"ec2:ResourceTag/Department\": \"accounting\"</code>.
         Assigns the backup plan to every resource with at least one matching tag.</p>")
  @as("ListOfTags")
  listOfTags: option<listOfTags>,
  @ocaml.doc("<p>An array of strings that contain Amazon Resource Names (ARNs)
         
         of resources to assign to a backup plan.</p>")
  @as("Resources")
  resources: option<resourceArns>,
  @ocaml.doc("<p>The ARN of the IAM role that AWS Backup uses to authenticate when backing up the target
         resource; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: iamroleArn,
  @ocaml.doc("<p>The display name of a resource selection document.</p>") @as("SelectionName")
  selectionName: backupSelectionName,
}
type backupJobsList = array<backupJob>
type advancedBackupSettings = array<advancedBackupSetting>
@ocaml.doc("<p>Specifies a scheduled task used to back up a selection of resources.</p>")
type backupRuleInput = {
  @ocaml.doc("<p>Specifies whether AWS Backup creates continuous backups. True causes AWS Backup to
         create continuous backups capable of point-in-time restore (PITR). False (or not specified)
         causes AWS Backup to create snapshot backups.</p>")
  @as("EnableContinuousBackup")
  enableContinuousBackup: option<boolean_>,
  @ocaml.doc("<p>An array of <code>CopyAction</code> objects, which contains the details of the copy
         operation.</p>")
  @as("CopyActions")
  copyActions: option<copyActions>,
  @ocaml.doc("<p>To help organize your resources, you can assign your own metadata to the resources that
         you create. Each tag is a key-value pair.</p>")
  @as("RecoveryPointTags")
  recoveryPointTags: option<tags>,
  @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup will transition and expire backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
  @as("Lifecycle")
  lifecycle: option<lifecycle>,
  @ocaml.doc("<p>A value in minutes after a backup job is successfully started before it must be
         completed or it will be canceled by AWS Backup. This value is optional.</p>")
  @as("CompletionWindowMinutes")
  completionWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional.</p>")
  @as("StartWindowMinutes")
  startWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A CRON expression specifying when AWS Backup initiates a backup job.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<cronExpression>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("TargetBackupVaultName")
  targetBackupVaultName: backupVaultName,
  @ocaml.doc("<p>An optional display name for a backup rule.</p>") @as("RuleName")
  ruleName: backupRuleName,
}
@ocaml.doc("<p>Specifies a scheduled task used to back up a selection of resources.</p>")
type backupRule = {
  @ocaml.doc("<p>Specifies whether AWS Backup creates continuous backups. True causes AWS Backup to
         create continuous backups capable of point-in-time restore (PITR). False (or not specified)
         causes AWS Backup to create snapshot backups.</p>")
  @as("EnableContinuousBackup")
  enableContinuousBackup: option<boolean_>,
  @ocaml.doc("<p>An array of <code>CopyAction</code> objects, which contains the details of the copy
         operation.</p>")
  @as("CopyActions")
  copyActions: option<copyActions>,
  @ocaml.doc("<p>Uniquely identifies a rule that is used to schedule the backup of a selection of
         resources.</p>")
  @as("RuleId")
  ruleId: option<string_>,
  @ocaml.doc("<p>An array of key-value pair strings that are assigned to resources that are associated
         with this rule when restored from backup.</p>")
  @as("RecoveryPointTags")
  recoveryPointTags: option<tags>,
  @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
  @as("Lifecycle")
  lifecycle: option<lifecycle>,
  @ocaml.doc("<p>A value in minutes after a backup job is successfully started before it must be
         completed or it will be canceled by AWS Backup. This value is optional.</p>")
  @as("CompletionWindowMinutes")
  completionWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional.</p>")
  @as("StartWindowMinutes")
  startWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A CRON expression specifying when AWS Backup initiates a backup job. For more
         information about cron expressions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
            Guide.</i>. Prior to specifying a value for this parameter, we recommend testing
         your cron expression using one of the many available cron generator and testing
         tools.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<cronExpression>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
  @as("TargetBackupVaultName")
  targetBackupVaultName: backupVaultName,
  @ocaml.doc("<p>An optional display name for a backup rule.</p>") @as("RuleName")
  ruleName: backupRuleName,
}
@ocaml.doc("<p>Contains metadata about a backup plan.</p>")
type backupPlansListMember = {
  @ocaml.doc("<p>Contains a list of <code>BackupOptions</code> for a resource type.</p>")
  @as("AdvancedBackupSettings")
  advancedBackupSettings: option<advancedBackupSettings>,
  @ocaml.doc("<p>The last time a job to back up resources was run with this rule. A date and time, in
         Unix format and Coordinated Universal Time (UTC). The value of
            <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
         1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("LastExecutionDate")
  lastExecutionDate: option<timestamp_>,
  @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<string_>,
  @ocaml.doc("<p>The display name of a saved backup plan.</p>") @as("BackupPlanName")
  backupPlanName: option<backupPlanName>,
  @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. Version IDs cannot be edited.</p>")
  @as("VersionId")
  versionId: option<string_>,
  @ocaml.doc("<p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("DeletionDate")
  deletionDate: option<timestamp_>,
  @ocaml.doc("<p>The date and time a resource backup plan is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationDate")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
  backupPlanId: option<string_>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
  @as("BackupPlanArn")
  backupPlanArn: option<arn>,
}
type backupRulesInput = array<backupRuleInput>
type backupRules = array<backupRule>
type backupPlansList = array<backupPlansListMember>
type backupPlanVersionsList = array<backupPlansListMember>
@ocaml.doc("<p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
         objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
         scheduled task and can back up a different selection of AWS resources. </p>")
type backupPlanInput = {
  @ocaml.doc("<p>Specifies a list of <code>BackupOptions</code> for each resource type. These settings
         are only available for Windows VSS backup jobs.</p>")
  @as("AdvancedBackupSettings")
  advancedBackupSettings: option<advancedBackupSettings>,
  @ocaml.doc("<p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
         that is used to back up a selection of resources.</p>")
  @as("Rules")
  rules: backupRulesInput,
  @ocaml.doc("<p>The optional display name of a backup plan.</p>") @as("BackupPlanName")
  backupPlanName: backupPlanName,
}
@ocaml.doc("<p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
         objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
         scheduled task and can back up a different selection of AWS resources.</p>")
type backupPlan = {
  @ocaml.doc("<p>Contains a list of <code>BackupOptions</code> for each resource type.</p>")
  @as("AdvancedBackupSettings")
  advancedBackupSettings: option<advancedBackupSettings>,
  @ocaml.doc("<p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
         that is used to back up a selection of resources. </p>")
  @as("Rules")
  rules: backupRules,
  @ocaml.doc("<p>The display name of a backup plan.</p>") @as("BackupPlanName")
  backupPlanName: backupPlanName,
}
@ocaml.doc("<fullname>AWS Backup</fullname>
         <p>AWS Backup is a unified backup service designed to protect AWS services and their
         associated data. AWS Backup simplifies the creation, migration, restoration, and deletion
         of backups, while also providing reporting and auditing.</p>")
module StopBackupJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a request to AWS Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: string_,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "StopBackupJobCommand"
  let make = (~backupJobId, ()) => new({backupJobId: backupJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBackupVaultAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The backup vault access policy document in JSON format.</p>") @as("Policy")
    policy: option<iampolicy>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new
  external new: request => t = "PutBackupVaultAccessPolicyCommand"
  let make = (~backupVaultName, ~policy=?, ()) =>
    new({policy: policy, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetBackupVaultAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>The backup vault access policy document in JSON format.</p>") @as("Policy")
    policy: option<iampolicy>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "GetBackupVaultAccessPolicyCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportBackupPlanTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>The body of a backup plan template in JSON format.</p>
         <note>
            <p>This is a signed JSON document that cannot be modified before being passed to
               <code>GetBackupPlanFromJSON.</code>
            </p>
         </note>")
    @as("BackupPlanTemplateJson")
    backupPlanTemplateJson: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ExportBackupPlanTemplateCommand"
  let make = (~backupPlanId, ()) => new({backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateRecoveryPoint = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS Backup recovery point.
         Required.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The unique name of an AWS Backup vault. Required.</p>") @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DisassociateRecoveryPointCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ()) =>
    new({recoveryPointArn: recoveryPointArn, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeRestoreJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies the job that restores a recovery point.</p>")
    @as("RestoreJobId")
    restoreJobId: restoreJobId,
  }
  type response = {
    @ocaml.doc("<p>Returns metadata associated with a restore job listed by resource type.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource whose recovery point
         is being restored. The format of the ARN depends on the resource type of the backed-up
         resource.</p>")
    @as("CreatedResourceArn")
    createdResourceArn: option<arn>,
    @ocaml.doc("<p>The amount of time in minutes that a job restoring a recovery point is expected to
         take.</p>")
    @as("ExpectedCompletionTimeMinutes")
    expectedCompletionTimeMinutes: option<long>,
    @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<iamroleArn>,
    @ocaml.doc("<p>The size, in bytes, of the restored resource.</p>") @as("BackupSizeInBytes")
    backupSizeInBytes: option<long>,
    @ocaml.doc("<p>Contains an estimated percentage that is complete of a job at the time the job status
         was queried.</p>")
    @as("PercentDone")
    percentDone: option<string_>,
    @ocaml.doc("<p>A message showing the status of a job to restore a recovery point.</p>")
    @as("StatusMessage")
    statusMessage: option<string_>,
    @ocaml.doc("<p>Status code specifying the state of the job that is initiated by AWS Backup to restore a
         recovery point.</p>")
    @as("Status")
    status: option<restoreJobStatus>,
    @ocaml.doc("<p>The date and time that a job to restore a recovery point is completed, in Unix format
         and Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate
         to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
    @as("CompletionDate")
    completionDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a restore job is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies the job that restores a recovery point.</p>")
    @as("RestoreJobId")
    restoreJobId: option<string_>,
    @ocaml.doc("<p>Returns the account ID that owns the restore job.</p>") @as("AccountId")
    accountId: option<accountId>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeRestoreJobCommand"
  let make = (~restoreJobId, ()) => new({restoreJobId: restoreJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProtectedResource = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a resource was last backed up, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("LastBackupTime")
    lastBackupTime: option<timestamp_>,
    @ocaml.doc("<p>The type of AWS resource saved as a recovery point; for example, an EBS volume or an
         Amazon RDS database.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
         resource type.</p>")
    @as("ResourceArn")
    resourceArn: option<arn>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DescribeProtectedResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackupVault = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: string_,
  }
  type response = {
    @ocaml.doc("<p>The number of recovery points that are stored in a backup vault.</p>")
    @as("NumberOfRecoveryPoints")
    numberOfRecoveryPoints: option<long2>,
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc("<p>The date and time that a backup vault is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<arn>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeBackupVaultCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRecoveryPoint = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteRecoveryPointCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ()) =>
    new({recoveryPointArn: recoveryPointArn, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVaultNotifications = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DeleteBackupVaultNotificationsCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVaultAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DeleteBackupVaultAccessPolicyCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVault = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: string_,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteBackupVaultCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupSelection = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies the body of a request to assign a set of resources to a backup
         plan.</p>")
    @as("SelectionId")
    selectionId: string_,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteBackupSelectionCommand"
  let make = (~selectionId, ~backupPlanId, ()) =>
    new({selectionId: selectionId, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupPlan = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. Version IDs cannot be edited.</p>")
    @as("VersionId")
    versionId: option<string_>,
    @ocaml.doc("<p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("DeletionDate")
    deletionDate: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
    @as("BackupPlanArn")
    backupPlanArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteBackupPlanCommand"
  let make = (~backupPlanId, ()) => new({backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegionSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Updates the list of services along with the opt-in preferences for the Region.</p>"
    )
    @as("ResourceTypeOptInPreference")
    resourceTypeOptInPreference: option<resourceTypeOptInPreference>,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateRegionSettingsCommand"
  let make = (~resourceTypeOptInPreference=?, ()) =>
    new({resourceTypeOptInPreference: resourceTypeOptInPreference})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRecoveryPointLifecycle = {
  type t
  type request = {
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
            <code>MoveToColdStorageAt</code> timestamps.</p>")
    @as("CalculatedLifecycle")
    calculatedLifecycle: option<calculatedLifecycle>,
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
    @ocaml.doc("<p>An ARN that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "UpdateRecoveryPointLifecycleCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ~lifecycle=?, ()) =>
    new({
      lifecycle: lifecycle,
      recoveryPointArn: recoveryPointArn,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalSettings = {
  type t
  type request = {
    @ocaml.doc("<p>A list of resources along with the opt-in preferences for the account.</p>")
    @as("GlobalSettings")
    globalSettings: option<globalSettings>,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateGlobalSettingsCommand"
  let make = (~globalSettings=?, ()) => new({globalSettings: globalSettings})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of keys to identify which key-value tags to remove from a resource.</p>")
    @as("TagKeyList")
    tagKeyList: tagKeyList,
    @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
         the tagged resource.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeyList, ~resourceArn, ()) =>
    new({tagKeyList: tagKeyList, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs that are used to help organize your resources. You can assign your own
         metadata to the resources you create.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
         the tagged resource.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }

  @module("@aws-sdk/client-backup") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartRestoreJob = {
  type t
  type request = {
    @ocaml.doc("<p>Starts a job to restore a recovery point for one of the following resources:</p>
         <ul>
            <li>
               <p>
                  <code>DynamoDB</code> for Amazon DynamoDB</p>
            </li>
            <li>
               <p>
                  <code>EBS</code> for Amazon Elastic Block Store</p>
            </li>
            <li>
               <p>
                  <code>EC2</code> for Amazon Elastic Compute Cloud</p>
            </li>
            <li>
               <p>
                  <code>EFS</code> for Amazon Elastic File System</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for AWS Storage Gateway</p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>A customer chosen string that can be used to distinguish between calls to
            <code>StartRestoreJob</code>.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses to create the target
         recovery point; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: iamroleArn,
    @ocaml.doc("<p>A set of metadata key-value pairs. Contains information, such as a resource name,
         required to restore a recovery point.</p>
         <p> You can get configuration metadata about a resource at the time it was backed up by
         calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
         provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
         resource. For example, you might need to provide a new resource name if the original
         already exists.</p>
         <p>You need to specify specific metadata to restore an Amazon Elastic File System (Amazon
         EFS) instance:</p>
         <ul>
            <li>
               <p>
                  <code>file-system-id</code>: The ID of the Amazon EFS file system that is backed
               up by AWS Backup. Returned in <code>GetRecoveryPointRestoreMetadata</code>.</p>
            </li>
            <li>
               <p>
                  <code>Encrypted</code>: A Boolean value that, if true, specifies that the file
               system is encrypted. If <code>KmsKeyId</code> is specified, <code>Encrypted</code>
               must be set to <code>true</code>.</p>
            </li>
            <li>
               <p>
                  <code>KmsKeyId</code>: Specifies the AWS KMS key that is used to encrypt the
               restored file system. You can specify a key from another AWS account provided that
               key it is properly shared with your account via AWS KMS.</p>
            </li>
            <li>
               <p>
                  <code>PerformanceMode</code>: Specifies the throughput mode of the file
               system.</p>
            </li>
            <li>
               <p>
                  <code>CreationToken</code>: A user-supplied value that ensures the uniqueness
               (idempotency) of the request.</p>
            </li>
            <li>
               <p>
                  <code>newFileSystem</code>: A Boolean value that, if true, specifies that the
               recovery point is restored to a new Amazon EFS file system.</p>
            </li>
            <li>
               <p>
                  <code>ItemsToRestore </code>: An array of one to five strings where each string is
               a file path. Use <code>ItemsToRestore</code> to restore specific files or directories
               rather than the entire file system. This parameter is optional. For example,
                  <code>\"itemsToRestore\":\"[\\\"/my.test\\\"]\"</code>.</p>
            </li>
         </ul>")
    @as("Metadata")
    metadata: metadata,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Uniquely identifies the job that restores a recovery point.</p>")
    @as("RestoreJobId")
    restoreJobId: option<restoreJobId>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "StartRestoreJobCommand"
  let make = (
    ~iamRoleArn,
    ~metadata,
    ~recoveryPointArn,
    ~resourceType=?,
    ~idempotencyToken=?,
    (),
  ) =>
    new({
      resourceType: resourceType,
      idempotencyToken: idempotencyToken,
      iamRoleArn: iamRoleArn,
      metadata: metadata,
      recoveryPointArn: recoveryPointArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartCopyJob = {
  type t
  type request = {
    @as("Lifecycle") lifecycle: option<lifecycle>,
    @ocaml.doc("<p>A customer chosen string that can be used to distinguish between calls to
            <code>StartCopyJob</code>.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Specifies the IAM role ARN used to copy the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: iamroleArn,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to
         copy to; for example,
         <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("DestinationBackupVaultArn")
    destinationBackupVaultArn: arn,
    @ocaml.doc("<p>The name of a logical source container where backups are stored. Backup vaults are
         identified by names that are unique to the account used to create them and the AWS Region
         where they are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("SourceBackupVaultName")
    sourceBackupVaultName: backupVaultName,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point to use for the copy job; for example,
         arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
      </p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a copy job is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>Uniquely identifies a copy job.</p>") @as("CopyJobId")
    copyJobId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "StartCopyJobCommand"
  let make = (
    ~iamRoleArn,
    ~destinationBackupVaultArn,
    ~sourceBackupVaultName,
    ~recoveryPointArn,
    ~lifecycle=?,
    ~idempotencyToken=?,
    (),
  ) =>
    new({
      lifecycle: lifecycle,
      idempotencyToken: idempotencyToken,
      iamRoleArn: iamRoleArn,
      destinationBackupVaultArn: destinationBackupVaultArn,
      sourceBackupVaultName: sourceBackupVaultName,
      recoveryPointArn: recoveryPointArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartBackupJob = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the backup option for a selected resource. This option is only available for
         Windows VSS backup jobs.</p>
         <p>Valid values: Set to <code>\"WindowsVSS”:“enabled\"</code> to enable WindowsVSS backup
         option and create a VSS Windows backup. Set to “WindowsVSS”:”disabled” to create a regular
         backup. The WindowsVSS option is not enabled by default.</p>")
    @as("BackupOptions")
    backupOptions: option<backupOptions>,
    @ocaml.doc("<p>To help organize your resources, you can assign your own metadata to the resources that
         you create. Each tag is a key-value pair.</p>")
    @as("RecoveryPointTags")
    recoveryPointTags: option<tags>,
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup will transition and expire backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “expire after days” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>A value in minutes during which a successfully started backup must complete, or else AWS
         Backup will cancel the job. This value is optional. This value begins counting down from
         when the backup was scheduled. It does not add additional time for
            <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>")
    @as("CompleteWindowMinutes")
    completeWindowMinutes: option<windowMinutes>,
    @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional, and the default is 8 hours.</p>")
    @as("StartWindowMinutes")
    startWindowMinutes: option<windowMinutes>,
    @ocaml.doc("<p>A customer chosen string that can be used to distinguish between calls to
            <code>StartBackupJob</code>.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: iamroleArn,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("ResourceArn")
    resourceArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a backup job is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies a request to AWS Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "StartBackupJobCommand"
  let make = (
    ~iamRoleArn,
    ~resourceArn,
    ~backupVaultName,
    ~backupOptions=?,
    ~recoveryPointTags=?,
    ~lifecycle=?,
    ~completeWindowMinutes=?,
    ~startWindowMinutes=?,
    ~idempotencyToken=?,
    (),
  ) =>
    new({
      backupOptions: backupOptions,
      recoveryPointTags: recoveryPointTags,
      lifecycle: lifecycle,
      completeWindowMinutes: completeWindowMinutes,
      startWindowMinutes: startWindowMinutes,
      idempotencyToken: idempotencyToken,
      iamRoleArn: iamRoleArn,
      resourceArn: resourceArn,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBackupVaultNotifications = {
  type t
  type request = {
    @ocaml.doc("<p>An array of events that indicate the status of jobs to back up resources to the backup
         vault.</p>")
    @as("BackupVaultEvents")
    backupVaultEvents: backupVaultEvents,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
         example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>")
    @as("SNSTopicArn")
    snstopicArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }

  @module("@aws-sdk/client-backup") @new
  external new: request => t = "PutBackupVaultNotificationsCommand"
  let make = (~backupVaultEvents, ~snstopicArn, ~backupVaultName, ()) =>
    new({
      backupVaultEvents: backupVaultEvents,
      snstopicArn: snstopicArn,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the type of resource. Valid targets for <code>ListTags</code> are recovery
         points, backup plans, and backup vaults.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>To help organize your resources, you can assign your own metadata to the resources you
         create. Each tag is a key-value pair.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSupportedResourceTypes = {
  type t

  type response = {
    @ocaml.doc("<p>Contains a string with the supported AWS resource types:</p>
         <ul>
            <li>
               <p>
                  <code>DynamoDB</code> for Amazon DynamoDB</p>
            </li>
            <li>
               <p>
                  <code>EBS</code> for Amazon Elastic Block Store</p>
            </li>
            <li>
               <p>
                  <code>EC2</code> for Amazon Elastic Compute Cloud</p>
            </li>
            <li>
               <p>
                  <code>EFS</code> for Amazon Elastic File System</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for AWS Storage Gateway</p>
            </li>
         </ul>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: unit => t = "GetSupportedResourceTypesCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecoveryPointRestoreMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>The set of metadata key-value pairs that describe the original configuration of the
         backed-up resource. These values vary depending on the service that is being
         restored.</p>")
    @as("RestoreMetadata")
    restoreMetadata: option<metadata>,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
    @ocaml.doc("<p>An ARN that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "GetRecoveryPointRestoreMetadataCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ()) =>
    new({recoveryPointArn: recoveryPointArn, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackupVaultNotifications = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>An array of events that indicate the status of jobs to back up resources to the backup
         vault.</p>")
    @as("BackupVaultEvents")
    backupVaultEvents: option<backupVaultEvents>,
    @ocaml.doc("<p>An ARN that uniquely identifies an Amazon Simple Notification Service (Amazon SNS)
         topic; for example, <code>arn:aws:sns:us-west-2:111122223333:MyTopic</code>.</p>")
    @as("SNSTopicArn")
    snstopicArn: option<arn>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "GetBackupVaultNotificationsCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRegionSettings = {
  type t

  type response = {
    @ocaml.doc(
      "<p>Returns a list of all services along with the opt-in preferences in the Region.</p>"
    )
    @as("ResourceTypeOptInPreference")
    resourceTypeOptInPreference: option<resourceTypeOptInPreference>,
  }
  @module("@aws-sdk/client-backup") @new external new: unit => t = "DescribeRegionSettingsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecoveryPoint = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a recovery point was last restored, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
    @as("LastRestoreTime")
    lastRestoreTime: option<timestamp_>,
    @ocaml.doc("<p>Specifies the storage class of the recovery point. Valid values are <code>WARM</code> or
            <code>COLD</code>.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
         encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>")
    @as("IsEncrypted")
    isEncrypted: option<boolean2>,
    @ocaml.doc("<p>The server-side encryption key used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<arn>,
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. AWS Backup transitions and expires backups automatically according to the
         lifecycle that you define. </p>
         <p>Backups that are transitioned to cold storage must be stored in cold storage for a
         minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than
         the “transition to cold after days” setting. The “transition to cold after days” setting
         cannot be changed after a backup has been transitioned to cold. </p>
         <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
            <code>MoveToColdStorageAt</code> timestamps.</p>")
    @as("CalculatedLifecycle")
    calculatedLifecycle: option<calculatedLifecycle>,
    @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeInBytes")
    backupSizeInBytes: option<long>,
    @ocaml.doc("<p>The date and time that a job to create a recovery point is completed, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
    @as("CompletionDate")
    completionDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a recovery point is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>A status code specifying the state of the recovery point.</p>
         <note>
            <p>A partial status indicates that the recovery point was not successfully re-created
            and must be retried.</p>
         </note>")
    @as("Status")
    status: option<recoveryPointStatus>,
    @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<iamroleArn>,
    @ocaml.doc("<p>Contains identifying information about the creation of a recovery point, including the
            <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
         and <code>BackupRuleId</code> of the backup plan used to create it.</p>")
    @as("CreatedBy")
    createdBy: option<recoveryPointCreator>,
    @ocaml.doc("<p>The type of AWS resource to save as a recovery point; for example, an Amazon Elastic
         Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS)
         database.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
         resource type.</p>")
    @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies the source vault where the
         resource was originally backed up in; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:BackupVault</code>. If the recovery is
         restored to the same AWS account or Region, this value will be <code>null</code>.</p>")
    @as("SourceBackupVaultArn")
    sourceBackupVaultArn: option<arn>,
    @ocaml.doc("<p>An ARN that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeRecoveryPointCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ()) =>
    new({recoveryPointArn: recoveryPointArn, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalSettings = {
  type t

  type response = {
    @ocaml.doc("<p>The date and time that the global settings were last updated. This update is in Unix
         format and Coordinated Universal Time (UTC). The value of <code>LastUpdateTime</code> is
         accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January
         26, 2018 12:11:30.087 AM.</p>")
    @as("LastUpdateTime")
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc("<p>A list of resources along with the opt-in preferences for the account.</p>")
    @as("GlobalSettings")
    globalSettings: option<globalSettings>,
  }
  @module("@aws-sdk/client-backup") @new external new: unit => t = "DescribeGlobalSettingsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackupJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a request to AWS Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: string_,
  }
  type response = {
    @ocaml.doc("<p>Represents the actual backup type selected for a backup job. For example, if a
         successful WindowsVSS backup was taken, <code>BackupType</code> returns \"WindowsVSS\". If
            <code>BackupType</code> is empty, then the backup type that was is a regular
         backup.</p>")
    @as("BackupType")
    backupType: option<string_>,
    @ocaml.doc(
      "<p>Represents the options specified as part of backup plan or on-demand backup job.</p>"
    )
    @as("BackupOptions")
    backupOptions: option<backupOptions>,
    @ocaml.doc("<p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
         must be started before it is canceled. The value is calculated by adding the start window
         to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
         hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
            <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
         represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
    @as("StartBy")
    startBy: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a job to back up resources is expected to be completed, in Unix
         format and Coordinated Universal Time (UTC). The value of
            <code>ExpectedCompletionDate</code> is accurate to milliseconds. For example, the value
         1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
    @as("ExpectedCompletionDate")
    expectedCompletionDate: option<timestamp_>,
    @ocaml.doc("<p>The size in bytes transferred to a backup vault at the time that the job status was
         queried.</p>")
    @as("BytesTransferred")
    bytesTransferred: option<long>,
    @ocaml.doc("<p>The type of AWS resource to be backed up; for example, an Amazon Elastic Block Store
         (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>Contains identifying information about the creation of a backup job, including the
            <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
         and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>")
    @as("CreatedBy")
    createdBy: option<recoveryPointCreator>,
    @ocaml.doc("<p>Specifies the IAM role ARN used to create the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: option<iamroleArn>,
    @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeInBytes")
    backupSizeInBytes: option<long>,
    @ocaml.doc("<p>Contains an estimated percentage that is complete of a job at the time the job status
         was queried.</p>")
    @as("PercentDone")
    percentDone: option<string_>,
    @ocaml.doc("<p>A detailed message explaining the status of the job to back up a resource.</p>")
    @as("StatusMessage")
    statusMessage: option<string_>,
    @ocaml.doc("<p>The current state of a resource recovery point.</p>") @as("State")
    state: option<backupJobState>,
    @ocaml.doc("<p>The date and time that a job to create a backup job is completed, in Unix format and
         Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
    @as("CompletionDate")
    completionDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a backup job is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
         resource type.</p>")
    @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>An ARN that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: option<arn>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
    @ocaml.doc("<p>Uniquely identifies a request to AWS Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: option<string_>,
    @ocaml.doc("<p>Returns the account ID that owns the backup job.</p>") @as("AccountId")
    accountId: option<accountId>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeBackupJobCommand"
  let make = (~backupJobId, ()) => new({backupJobId: backupJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackupVault = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
    @as("EncryptionKeyArn")
    encryptionKeyArn: option<arn>,
    @ocaml.doc("<p>Metadata that you can assign to help organize the resources that you create. Each tag is
         a key-value pair.</p>")
    @as("BackupVaultTags")
    backupVaultTags: option<tags>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>The date and time a backup vault is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>")
    @as("BackupVaultArn")
    backupVaultArn: option<arn>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Region where they are
         created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "CreateBackupVaultCommand"
  let make = (~backupVaultName, ~creatorRequestId=?, ~encryptionKeyArn=?, ~backupVaultTags=?, ()) =>
    new({
      creatorRequestId: creatorRequestId,
      encryptionKeyArn: encryptionKeyArn,
      backupVaultTags: backupVaultTags,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRestoreJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Returns only restore jobs associated with the specified job status.</p>")
    @as("ByStatus")
    byStatus: option<restoreJobStatus>,
    @ocaml.doc("<p>Returns only restore jobs that were created after the specified date.</p>")
    @as("ByCreatedAfter")
    byCreatedAfter: option<timestamp_>,
    @ocaml.doc("<p>Returns only restore jobs that were created before the specified date.</p>")
    @as("ByCreatedBefore")
    byCreatedBefore: option<timestamp_>,
    @ocaml.doc("<p>The account ID to list the jobs from. Returns only restore jobs associated with the
         specified account ID.</p>")
    @as("ByAccountId")
    byAccountId: option<accountId>,
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of objects that contain detailed information about jobs to restore saved
         resources.</p>")
    @as("RestoreJobs")
    restoreJobs: option<restoreJobsList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListRestoreJobsCommand"
  let make = (
    ~byStatus=?,
    ~byCreatedAfter=?,
    ~byCreatedBefore=?,
    ~byAccountId=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      byStatus: byStatus,
      byCreatedAfter: byCreatedAfter,
      byCreatedBefore: byCreatedBefore,
      byAccountId: byAccountId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecoveryPointsByResource = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
         resource type.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that contain detailed information about recovery points of the
         specified resource type.</p>")
    @as("RecoveryPoints")
    recoveryPoints: option<recoveryPointByResourceList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ListRecoveryPointsByResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProtectedResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of resources successfully backed up by AWS Backup including the time the
         resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource
         type.</p>")
    @as("Results")
    results: option<protectedResourcesList>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ListProtectedResourcesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupVaults = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of backup vault list members containing vault metadata, including Amazon
         Resource Name (ARN), display name, creation date, number of saved recovery points, and
         encryption information if the resources saved in the backup vault are encrypted.</p>")
    @as("BackupVaultList")
    backupVaultList: option<backupVaultList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListBackupVaultsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupSelections = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>An array of backup selection list items containing metadata about each resource in the
         list.</p>")
    @as("BackupSelectionsList")
    backupSelectionsList: option<backupSelectionsList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListBackupSelectionsCommand"
  let make = (~backupPlanId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupPlanTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of template list items containing metadata about your saved templates.</p>"
    )
    @as("BackupPlanTemplatesList")
    backupPlanTemplatesList: option<backupPlanTemplatesList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ListBackupPlanTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCopyJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a copy job.</p>") @as("CopyJobId") copyJobId: string_,
  }
  type response = {
    @ocaml.doc("<p>Contains detailed information about a copy job.</p>") @as("CopyJob")
    copyJob: option<copyJob>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeCopyJobCommand"
  let make = (~copyJobId, ()) => new({copyJobId: copyJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecoveryPointsByBackupVault = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Returns only recovery points that were created after the specified timestamp.</p>"
    )
    @as("ByCreatedAfter")
    byCreatedAfter: option<timestamp_>,
    @ocaml.doc(
      "<p>Returns only recovery points that were created before the specified timestamp.</p>"
    )
    @as("ByCreatedBefore")
    byCreatedBefore: option<timestamp_>,
    @ocaml.doc("<p>Returns only recovery points that match the specified backup plan ID.</p>")
    @as("ByBackupPlanId")
    byBackupPlanId: option<string_>,
    @ocaml.doc("<p>Returns only recovery points that match the specified resource type.</p>")
    @as("ByResourceType")
    byResourceType: option<resourceType>,
    @ocaml.doc("<p>Returns only recovery points that match the specified resource Amazon Resource Name
         (ARN).</p>")
    @as("ByResourceArn")
    byResourceArn: option<arn>,
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the AWS Region where they
         are created. They consist of lowercase letters, numbers, and hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that contain detailed information about recovery points saved in a
         backup vault.</p>")
    @as("RecoveryPoints")
    recoveryPoints: option<recoveryPointByBackupVaultList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ListRecoveryPointsByBackupVaultCommand"
  let make = (
    ~backupVaultName,
    ~byCreatedAfter=?,
    ~byCreatedBefore=?,
    ~byBackupPlanId=?,
    ~byResourceType=?,
    ~byResourceArn=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      byCreatedAfter: byCreatedAfter,
      byCreatedBefore: byCreatedBefore,
      byBackupPlanId: byBackupPlanId,
      byResourceType: byResourceType,
      byResourceArn: byResourceArn,
      maxResults: maxResults,
      nextToken: nextToken,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCopyJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID to list the jobs from. Returns only copy jobs associated with the
         specified account ID.</p>")
    @as("ByAccountId")
    byAccountId: option<accountId>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy
         from; for example, <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.
      </p>")
    @as("ByDestinationVaultArn")
    byDestinationVaultArn: option<string_>,
    @ocaml.doc("<p>Returns only backup jobs for the specified resources:</p>
         <ul>
            <li>
               <p>
                  <code>DynamoDB</code> for Amazon DynamoDB</p>
            </li>
            <li>
               <p>
                  <code>EBS</code> for Amazon Elastic Block Store</p>
            </li>
            <li>
               <p>
                  <code>EC2</code> for Amazon Elastic Compute Cloud</p>
            </li>
            <li>
               <p>
                  <code>EFS</code> for Amazon Elastic File System</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for AWS Storage Gateway</p>
            </li>
         </ul>")
    @as("ByResourceType")
    byResourceType: option<resourceType>,
    @ocaml.doc("<p>Returns only copy jobs that were created after the specified date.</p>")
    @as("ByCreatedAfter")
    byCreatedAfter: option<timestamp_>,
    @ocaml.doc("<p>Returns only copy jobs that were created before the specified date.</p>")
    @as("ByCreatedBefore")
    byCreatedBefore: option<timestamp_>,
    @ocaml.doc("<p>Returns only copy jobs that are in the specified state.</p>") @as("ByState")
    byState: option<copyJobState>,
    @ocaml.doc("<p>Returns only copy jobs that match the specified resource Amazon Resource Name (ARN).
      </p>")
    @as("ByResourceArn")
    byResourceArn: option<arn>,
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return maxResults number of items, NextToken allows you to return more items in
         your list starting at the location pointed to by the next token. </p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return maxResults number of items, NextToken allows you to return more items in
         your list starting at the location pointed to by the next token. </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of structures containing metadata about your copy jobs returned in JSON format.
      </p>")
    @as("CopyJobs")
    copyJobs: option<copyJobsList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListCopyJobsCommand"
  let make = (
    ~byAccountId=?,
    ~byDestinationVaultArn=?,
    ~byResourceType=?,
    ~byCreatedAfter=?,
    ~byCreatedBefore=?,
    ~byState=?,
    ~byResourceArn=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      byAccountId: byAccountId,
      byDestinationVaultArn: byDestinationVaultArn,
      byResourceType: byResourceType,
      byCreatedAfter: byCreatedAfter,
      byCreatedBefore: byCreatedBefore,
      byState: byState,
      byResourceArn: byResourceArn,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The account ID to list the jobs from. Returns only backup jobs associated with the
         specified account ID.</p>
         <p>If used from an AWS Organizations management account, passing <code>*</code> returns all
         jobs across the organization.</p>")
    @as("ByAccountId")
    byAccountId: option<accountId>,
    @ocaml.doc("<p>Returns only backup jobs for the specified resources:</p>
         <ul>
            <li>
               <p>
                  <code>DynamoDB</code> for Amazon DynamoDB</p>
            </li>
            <li>
               <p>
                  <code>EBS</code> for Amazon Elastic Block Store</p>
            </li>
            <li>
               <p>
                  <code>EC2</code> for Amazon Elastic Compute Cloud</p>
            </li>
            <li>
               <p>
                  <code>EFS</code> for Amazon Elastic File System</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for AWS Storage Gateway</p>
            </li>
         </ul>")
    @as("ByResourceType")
    byResourceType: option<resourceType>,
    @ocaml.doc("<p>Returns only backup jobs that were created after the specified date.</p>")
    @as("ByCreatedAfter")
    byCreatedAfter: option<timestamp_>,
    @ocaml.doc("<p>Returns only backup jobs that were created before the specified date.</p>")
    @as("ByCreatedBefore")
    byCreatedBefore: option<timestamp_>,
    @ocaml.doc("<p>Returns only backup jobs that will be stored in the specified backup vault. Backup
         vaults are identified by names that are unique to the account used to create them and the
         AWS Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("ByBackupVaultName")
    byBackupVaultName: option<backupVaultName>,
    @ocaml.doc("<p>Returns only backup jobs that are in the specified state.</p>") @as("ByState")
    byState: option<backupJobState>,
    @ocaml.doc("<p>Returns only backup jobs that match the specified resource Amazon Resource Name
         (ARN).</p>")
    @as("ByResourceArn")
    byResourceArn: option<arn>,
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>An array of structures containing metadata about your backup jobs returned in JSON
         format.</p>")
    @as("BackupJobs")
    backupJobs: option<backupJobsList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListBackupJobsCommand"
  let make = (
    ~byAccountId=?,
    ~byResourceType=?,
    ~byCreatedAfter=?,
    ~byCreatedBefore=?,
    ~byBackupVaultName=?,
    ~byState=?,
    ~byResourceArn=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      byAccountId: byAccountId,
      byResourceType: byResourceType,
      byCreatedAfter: byCreatedAfter,
      byCreatedBefore: byCreatedBefore,
      byBackupVaultName: byBackupVaultName,
      byState: byState,
      byResourceArn: byResourceArn,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackupSelection = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies the body of a request to assign a set of resources to a backup
         plan.</p>")
    @as("SelectionId")
    selectionId: string_,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc("<p>The date and time a backup selection is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
    @ocaml.doc("<p>Uniquely identifies the body of a request to assign a set of resources to a backup
         plan.</p>")
    @as("SelectionId")
    selectionId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the body of a request to assign a set of resources to a backup plan.</p>"
    )
    @as("BackupSelection")
    backupSelection: option<backupSelection>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "GetBackupSelectionCommand"
  let make = (~selectionId, ~backupPlanId, ()) =>
    new({selectionId: selectionId, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackupSelection = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the body of a request to assign a set of resources to a backup plan.</p>"
    )
    @as("BackupSelection")
    backupSelection: backupSelection,
    @ocaml.doc("<p>Uniquely identifies the backup plan to be associated with the selection of
         resources.</p>")
    @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>The date and time a backup selection is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
    @ocaml.doc("<p>Uniquely identifies the body of a request to assign a set of resources to a backup
         plan.</p>")
    @as("SelectionId")
    selectionId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "CreateBackupSelectionCommand"
  let make = (~backupSelection, ~backupPlanId, ~creatorRequestId=?, ()) =>
    new({
      creatorRequestId: creatorRequestId,
      backupSelection: backupSelection,
      backupPlanId: backupPlanId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupPlans = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean value with a default value of <code>FALSE</code> that returns deleted backup
         plans when set to <code>TRUE</code>.</p>")
    @as("IncludeDeleted")
    includeDeleted: option<boolean_>,
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>An array of backup plan list items containing metadata about your saved backup
         plans.</p>")
    @as("BackupPlansList")
    backupPlansList: option<backupPlansList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListBackupPlansCommand"
  let make = (~includeDeleted=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({includeDeleted: includeDeleted, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackupPlanVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be returned.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>An array of version list items containing metadata about your backup plans.</p>")
    @as("BackupPlanVersionsList")
    backupPlanVersionsList: option<backupPlanVersionsList>,
    @ocaml.doc("<p>The next item following a partial list of returned items. For example, if a request is
         made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
         to return more items in your list starting at the location pointed to by the next
         token.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "ListBackupPlanVersionsCommand"
  let make = (~backupPlanId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBackupPlan = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
         more sets of <code>Rules</code>.</p>")
    @as("BackupPlan")
    backupPlan: backupPlanInput,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>Contains a list of <code>BackupOptions</code> for each resource type.</p>")
    @as("AdvancedBackupSettings")
    advancedBackupSettings: option<advancedBackupSettings>,
    @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. Version Ids cannot be edited.</p>")
    @as("VersionId")
    versionId: option<string_>,
    @ocaml.doc("<p>The date and time a backup plan is updated, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
    @as("BackupPlanArn")
    backupPlanArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateBackupPlanCommand"
  let make = (~backupPlan, ~backupPlanId, ()) =>
    new({backupPlan: backupPlan, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackupPlanFromTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a stored backup plan template.</p>")
    @as("BackupPlanTemplateId")
    backupPlanTemplateId: string_,
  }
  type response = {
    @ocaml.doc("<p>Returns the body of a backup plan based on the target template, including the name,
         rules, and backup vault of the plan.</p>")
    @as("BackupPlanDocument")
    backupPlanDocument: option<backupPlan>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "GetBackupPlanFromTemplateCommand"
  let make = (~backupPlanTemplateId, ()) => new({backupPlanTemplateId: backupPlanTemplateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackupPlanFromJSON = {
  type t
  type request = {
    @ocaml.doc("<p>A customer-supplied backup plan document in JSON format.</p>")
    @as("BackupPlanTemplateJson")
    backupPlanTemplateJson: string_,
  }
  type response = {
    @ocaml.doc("<p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
         more sets of <code>Rules</code>.</p>")
    @as("BackupPlan")
    backupPlan: option<backupPlan>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "GetBackupPlanFromJSONCommand"
  let make = (~backupPlanTemplateJson, ()) => new({backupPlanTemplateJson: backupPlanTemplateJson})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBackupPlan = {
  type t
  type request = {
    @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. Version IDs cannot be edited.</p>")
    @as("VersionId")
    versionId: option<string_>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: string_,
  }
  type response = {
    @ocaml.doc("<p>Contains a list of <code>BackupOptions</code> for each resource type. The list is
         populated only if the advanced option is set for the backup plan.</p>")
    @as("AdvancedBackupSettings")
    advancedBackupSettings: option<advancedBackupSettings>,
    @ocaml.doc("<p>The last time a job to back up resources was run with this backup plan. A date and time,
         in Unix format and Coordinated Universal Time (UTC). The value of
            <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
         1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
    @as("LastExecutionDate")
    lastExecutionDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a backup plan is deleted, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("DeletionDate")
    deletionDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time that a backup plan is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. Version IDs cannot be edited.</p>")
    @as("VersionId")
    versionId: option<string_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
    @as("BackupPlanArn")
    backupPlanArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
    @ocaml.doc("<p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
         more sets of <code>Rules</code>.</p>")
    @as("BackupPlan")
    backupPlan: option<backupPlan>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "GetBackupPlanCommand"
  let make = (~backupPlanId, ~versionId=?, ()) =>
    new({versionId: versionId, backupPlanId: backupPlanId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackupPlan = {
  type t
  type request = {
    @ocaml.doc("<p>Identifies the request and allows failed requests to be retried without the risk of
         running the operation twice. If the request includes a <code>CreatorRequestId</code> that
         matches an existing backup plan, that plan is returned. This parameter is optional.</p>")
    @as("CreatorRequestId")
    creatorRequestId: option<string_>,
    @ocaml.doc("<p>To help organize your resources, you can assign your own metadata to the resources that
         you create. Each tag is a key-value pair. The specified tags are assigned to all backups
         created with this plan.</p>")
    @as("BackupPlanTags")
    backupPlanTags: option<tags>,
    @ocaml.doc("<p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
         more sets of <code>Rules</code>.</p>")
    @as("BackupPlan")
    backupPlan: backupPlanInput,
  }
  type response = {
    @ocaml.doc("<p>A list of <code>BackupOptions</code> settings for a resource type. This option is only
         available for Windows VSS backup jobs.</p>")
    @as("AdvancedBackupSettings")
    advancedBackupSettings: option<advancedBackupSettings>,
    @ocaml.doc("<p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
         long. They cannot be edited.</p>")
    @as("VersionId")
    versionId: option<string_>,
    @ocaml.doc("<p>The date and time that a backup plan is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationDate")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
            <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>")
    @as("BackupPlanArn")
    backupPlanArn: option<arn>,
    @ocaml.doc("<p>Uniquely identifies a backup plan.</p>") @as("BackupPlanId")
    backupPlanId: option<string_>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "CreateBackupPlanCommand"
  let make = (~backupPlan, ~creatorRequestId=?, ~backupPlanTags=?, ()) =>
    new({
      creatorRequestId: creatorRequestId,
      backupPlanTags: backupPlanTags,
      backupPlan: backupPlan,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
