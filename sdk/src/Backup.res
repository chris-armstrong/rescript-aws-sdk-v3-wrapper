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
type integer_ = int
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
type reportPlanName = string
type reportPlanDescription = string
type reportJobId = string
type recoveryPointStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("DELETING") #DELETING
  | @as("PARTIAL") #PARTIAL
  | @as("COMPLETED") #COMPLETED
]
type parameterValue = string
type parameterName = string
type metadataValue = string
type metadataKey = string
type maxResults = int
type maxFrameworkInputs = int
type long2 = float
type long = float
type isEnabled = bool
type iamroleArn = string
type iampolicy = string
type globalSettingsValue = string
type globalSettingsName = string
type frameworkName = string
type frameworkDescription = string
type cronExpression = string
type copyJobState = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("CREATED") #CREATED
]
type controlName = string
type conditionValue = string
type conditionType = [@as("STRINGEQUALS") #STRINGEQUALS]
type conditionKey = string
type boolean2 = bool
type boolean_ = bool
type backupVaultName = string
type backupVaultEvent = [
  | @as("S3_RESTORE_OBJECT_FAILED") #S3_RESTORE_OBJECT_FAILED
  | @as("S3_BACKUP_OBJECT_FAILED") #S3_BACKUP_OBJECT_FAILED
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
type stringMap = Js.Dict.t<string_>
type stringList = array<string_>
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<string_>
@ocaml.doc("<p>Contains metadata about a restore job.</p>")
type restoreJobsListMember = {
  @ocaml.doc("<p>The resource type of the listed restore jobs; for example, an Amazon Elastic Block Store
            (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.
         For Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
            Amazon EC2.</p>")
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
  @ocaml.doc("<p>A status code specifying the state of the job initiated by Backup to restore
         a recovery point.</p>")
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
type resourceTypeManagementPreference = Js.Dict.t<isEnabled>
type resourceTypeList = array<arn>
type resourceArns = array<arn>
@ocaml.doc("<p>Contains information about the backup plan and rule that Backup used to
         initiate the recovery point backup.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>The size, in bytes, of a backup.</p>") @as("BackupSizeBytes")
  backupSizeBytes: option<long>,
  @ocaml.doc("<p>The server-side encryption key that is used to protect your backups; for example,
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>")
  @as("EncryptionKeyArn")
  encryptionKeyArn: option<arn>,
  @ocaml.doc("<p>A message explaining the reason of the recovery point deletion failure.</p>")
  @as("StatusMessage")
  statusMessage: option<string_>,
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
  @ocaml.doc("<p>The type of Amazon Web Services resource; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For
         Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
            Amazon EC2.</p>")
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
         days. Therefore, on the console, the “retention” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold.</p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
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
@ocaml.doc("<p>Contains detailed information about a framework. Frameworks contain controls, which
         evaluate and report on your backup events and resources. Frameworks generate daily
         compliance results.</p>")
type framework = {
  @ocaml.doc("<p>The deployment status of a framework. The statuses are:</p>
         <p>
            <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
            FAILED</code>
         </p>")
  @as("DeploymentStatus")
  deploymentStatus: option<string_>,
  @ocaml.doc("<p>The date and time that a framework is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The number of controls contained by the framework.</p>") @as("NumberOfControls")
  numberOfControls: option<integer_>,
  @ocaml.doc("<p>An optional description of the framework with a maximum 1,024 characters.</p>")
  @as("FrameworkDescription")
  frameworkDescription: option<frameworkDescription>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
  @as("FrameworkArn")
  frameworkArn: option<arn>,
  @ocaml.doc("<p>The unique name of a framework. This name is between 1 and 256 characters, starting with
         a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>")
  @as("FrameworkName")
  frameworkName: option<frameworkName>,
}
type formatList = array<string_>
@ocaml.doc("<p>A list of parameters for a control. A control can have zero, one, or more than one
         parameter. An example of a control with two parameters is: \"backup plan frequency is at
         least <code>daily</code> and the retention period is at least <code>1 year</code>\". The
         first parameter is <code>daily</code>. The second parameter is <code>1 year</code>.</p>")
type controlInputParameter = {
  @ocaml.doc("<p>The value of parameter, for example, <code>hourly</code>.</p>")
  @as("ParameterValue")
  parameterValue: option<parameterValue>,
  @ocaml.doc("<p>The name of a parameter, for example, <code>BackupPlanFrequency</code>.</p>")
  @as("ParameterName")
  parameterName: option<parameterName>,
}
@ocaml.doc("<p>Includes information about tags you define to assign tagged resources to a backup
         plan.</p>")
type conditionParameter = {
  @ocaml.doc("<p>The value in a key-value pair. For example, in the tag <code>Department:
            Accounting</code>, <code>Accounting</code> is the value.</p>")
  @as("ConditionValue")
  conditionValue: option<conditionValue>,
  @ocaml.doc("<p>The key in a key-value pair. For example, in the tag <code>Department:
         Accounting</code>, <code>Department</code> is the key.</p>")
  @as("ConditionKey")
  conditionKey: option<conditionKey>,
}
@ocaml.doc("<p>Contains an array of triplets made up of a condition type (such as
            <code>StringEquals</code>), a key, and a value. Used to filter resources using their
         tags and assign them to a backup plan. Case sensitive.</p>")
type condition = {
  @ocaml.doc("<p>The value in a key-value pair. For example, in the tag <code>Department:
            Accounting</code>, <code>Accounting</code> is the value.</p>")
  @as("ConditionValue")
  conditionValue: conditionValue,
  @ocaml.doc("<p>The key in a key-value pair. For example, in the tag <code>Department:
         Accounting</code>, <code>Department</code> is the key.</p>")
  @as("ConditionKey")
  conditionKey: conditionKey,
  @ocaml.doc("<p>An operation applied to a key-value pair used to assign resources to your backup plan.
         Condition only supports <code>StringEquals</code>. For more flexible assignment options,
         including <code>StringLike</code> and the ability to exclude resources from your backup
         plan, use <code>Conditions</code> (with an \"s\" on the end) for your <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BackupSelection.html\">
               <code>BackupSelection</code>
            </a>.</p>")
  @as("ConditionType")
  conditionType: conditionType,
}
type complianceResourceIdList = array<string_>
@ocaml.doc("<p>Contains <code>DeleteAt</code> and <code>MoveToColdStorageAt</code> timestamps, which
         are used to specify a lifecycle for a recovery point.</p>
         <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define.</p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold.</p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
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
  @ocaml.doc("<p>The date and time when Backup Vault Lock configuration becomes immutable,
         meaning it cannot be changed or deleted.</p>
         <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
         your Vault Lock settings, or delete Vault Lock from the vault entirely, at any time.</p>
         <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
  @as("LockDate")
  lockDate: option<timestamp_>,
  @ocaml.doc("<p>The Backup Vault Lock setting that specifies the maximum retention period
         that the vault retains its recovery points. If this parameter is not specified, Vault Lock
         does not enforce a maximum retention period on the recovery points in the vault (allowing
         indefinite storage).</p>
         <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
         retention period equal to or shorter than the maximum retention period. If the job's
         retention period is longer than that maximum retention period, then the vault fails the
         backup or copy job, and you should either modify your lifecycle settings or use a different
         vault. Recovery points already stored in the vault prior to Vault Lock are not
         affected.</p>")
  @as("MaxRetentionDays")
  maxRetentionDays: option<long>,
  @ocaml.doc("<p>The Backup Vault Lock setting that specifies the minimum retention period
         that the vault retains its recovery points. If this parameter is not specified, Vault Lock
         does not enforce a minimum retention period.</p>
         <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
         retention period equal to or longer than the minimum retention period. If the job's
         retention period is shorter than that minimum retention period, then the vault fails the
         backup or copy job, and you should either modify your lifecycle settings or use a different
         vault. Recovery points already stored in the vault prior to Vault Lock are not
         affected.</p>")
  @as("MinRetentionDays")
  minRetentionDays: option<long>,
  @ocaml.doc("<p>A Boolean value that indicates whether Backup Vault Lock applies to the
         selected backup vault. If <code>true</code>, Vault Lock prevents delete and update
         operations on the recovery points in the selected vault.</p>")
  @as("Locked")
  locked: option<boolean_>,
  @ocaml.doc("<p>The number of recovery points that are stored in a backup vault.</p>")
  @as("NumberOfRecoveryPoints")
  numberOfRecoveryPoints: option<long2>,
  @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
  @as("CreatorRequestId")
  creatorRequestId: option<string_>,
  @ocaml.doc("<p>A server-side encryption key you can specify to encrypt your backups from services
      that support full Backup management; for example,
      <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.
      If you specify a key, you must specify its ARN, not its alias. If you do not specify a key,
      Backup creates a KMS key for you by default.</p>
         <p>To learn which Backup services support full Backup management
         and how Backup handles encryption for backups from services that do not yet support
         full Backup, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/encryption.html\">
            Encryption for backups in Backup</a>
         </p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
         without the risk of running the operation twice. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
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
@ocaml.doc("<p>Contains detailed information about a report setting.</p>")
type reportSetting = {
  @ocaml.doc("<p>The number of frameworks a report covers.</p>") @as("NumberOfFrameworks")
  numberOfFrameworks: option<integer_>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the frameworks a report covers.</p>")
  @as("FrameworkArns")
  frameworkArns: option<stringList>,
  @ocaml.doc("<p>Identifies the report template for the report. Reports are built using a report
         template. The report templates are:</p>
         <p>
            <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
            COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
         </p>")
  @as("ReportTemplate")
  reportTemplate: string_,
}
@ocaml.doc("<p>Contains information from your report job about your report destination.</p>")
type reportDestination = {
  @ocaml.doc("<p>The object key that uniquely identifies your reports in your S3 bucket.</p>")
  @as("S3Keys")
  s3Keys: option<stringList>,
  @ocaml.doc("<p>The unique name of the Amazon S3 bucket that receives your reports.</p>")
  @as("S3BucketName")
  s3BucketName: option<string_>,
}
@ocaml.doc("<p>Contains information from your report plan about where to deliver your reports,
         specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
         reports.</p>")
type reportDeliveryChannel = {
  @ocaml.doc("<p>A list of the format of your reports: <code>CSV</code>, <code>JSON</code>, or both. If
         not specified, the default format is <code>CSV</code>.</p>")
  @as("Formats")
  formats: option<formatList>,
  @ocaml.doc("<p>The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path:
            s3://your-bucket-name/<code>prefix</code>/Backup/us-west-2/year/month/day/report-name.
         If not specified, there is no prefix.</p>")
  @as("S3KeyPrefix")
  s3KeyPrefix: option<string_>,
  @ocaml.doc("<p>The unique name of the S3 bucket that receives your reports.</p>")
  @as("S3BucketName")
  s3BucketName: string_,
}
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
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold. </p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
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
  @ocaml.doc("<p>A message explaining the reason of the recovery point deletion failure.</p>")
  @as("StatusMessage")
  statusMessage: option<string_>,
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
  @ocaml.doc("<p>The type of Amazon Web Services resource saved as a recovery point; for example, an
            Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
         supported resource type is Amazon EC2.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
  @as("RecoveryPointArn")
  recoveryPointArn: option<arn>,
}
type protectedResourcesList = array<protectedResource>
type listOfTags = array<condition>
type frameworkList = array<framework>
@ocaml.doc("<p>Contains detailed information about a copy job.</p>")
type copyJob = {
  @ocaml.doc(
    "<p>The type of Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>"
  )
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
  @ocaml.doc("<p>The Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store
            (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS)
         database.</p>")
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
@ocaml.doc("<p>A framework consists of one or more controls. Each control has its own control scope.
         The control scope can include one or more resource types, a combination of a tag key and
         value, or a combination of one resource type and one resource ID. If no scope is specified,
         evaluations for the rule are triggered when any resource in your recording group changes in
         configuration.</p>
         <note>
            <p>To set a control scope that includes all of a particular resource, leave the
               <code>ControlScope</code> empty or do not pass it when calling
               <code>CreateFramework</code>.</p>
         </note>")
type controlScope = {
  @ocaml.doc("<p>The tag key-value pair applied to those Amazon Web Services resources that you want to
         trigger an evaluation for a rule. A maximum of one key-value pair can be provided. The tag
         value is optional, but it cannot be an empty string. The structure to assign a tag is:
            <code>[{\"Key\":\"string\",\"Value\":\"string\"}]</code>.</p>")
  @as("Tags")
  tags: option<stringMap>,
  @ocaml.doc("<p>Describes whether the control scope includes one or more types of resources, such as
            <code>EFS</code> or <code>RDS</code>.</p>")
  @as("ComplianceResourceTypes")
  complianceResourceTypes: option<resourceTypeList>,
  @ocaml.doc("<p>The ID of the only Amazon Web Services resource that you want your control scope to
         contain.</p>")
  @as("ComplianceResourceIds")
  complianceResourceIds: option<complianceResourceIdList>,
}
type controlInputParameters = array<controlInputParameter>
type conditionParameters = array<conditionParameter>
type backupVaultList = array<backupVaultListMember>
type backupSelectionsList = array<backupSelectionsListMember>
type backupPlanTemplatesList = array<backupPlanTemplatesListMember>
@ocaml.doc("<p>Contains detailed information about a backup job.</p>")
type backupJob = {
  @ocaml.doc("<p>Represents the type of backup for a backup job.</p>") @as("BackupType")
  backupType: option<string_>,
  @ocaml.doc("<p>Specifies the backup option for a selected resource. This option is only available for
         Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
         <p>Valid values: Set to <code>\"WindowsVSS\":\"enabled\"</code> to enable the
            <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
            <code>\"WindowsVSS\":\"disabled\"</code> to create a regular backup. If you specify an
         invalid option, you get an <code>InvalidParameterValueException</code> exception.</p>")
  @as("BackupOptions")
  backupOptions: option<backupOptions>,
  @ocaml.doc("<p>The size in bytes transferred to a backup vault at the time that the job status was
         queried.</p>")
  @as("BytesTransferred")
  bytesTransferred: option<long>,
  @ocaml.doc("<p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
         supported resource type is Amazon EC2.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
  @as("BackupVaultName")
  backupVaultName: option<backupVaultName>,
  @ocaml.doc("<p>Uniquely identifies a request to Backup to back up a resource.</p>")
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
         <p>Set to <code>\"WindowsVSS\":\"enabled\"</code> to enable the <code>WindowsVSS</code> backup
         option and create a Windows VSS backup. </p>
         <p>Set to <code>\"WindowsVSS\":\"disabled\"</code> to create a regular backup. The
            <code>WindowsVSS</code> option is not enabled by default.</p>
         <p>If you specify an invalid option, you get an <code>InvalidParameterValueException</code>
         exception.</p>
         <p>For more information about Windows VSS backups, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backups.html\">Creating a VSS-Enabled Windows
            Backup</a>.</p>")
  @as("BackupOptions")
  backupOptions: option<backupOptions>,
  @ocaml.doc("<p>Specifies an object containing resource type and backup options. The only supported
         resource type is Amazon EC2 instances with Windows Volume Shadow Copy Service
         (VSS). For a CloudFormation example, see the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/integrate-cloudformation-with-aws-backup.html\">sample
            CloudFormation template to enable Windows VSS</a> in the <i>Backup User Guide</i>.</p>
         <p>Valid values: <code>EC2</code>.</p>")
  @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>Contains detailed information about a report plan.</p>")
type reportPlan = {
  @ocaml.doc("<p>The date and time that a report job associated with this report plan last successfully
         ran, in Unix format and Coordinated Universal Time (UTC). The value of
            <code>LastSuccessfulExecutionTime</code> is accurate to milliseconds. For example, the
         value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("LastSuccessfulExecutionTime")
  lastSuccessfulExecutionTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that a report job associated with this report plan last attempted to
         run, in Unix format and Coordinated Universal Time (UTC). The value of
            <code>LastAttemptedExecutionTime</code> is accurate to milliseconds. For example, the
         value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
  @as("LastAttemptedExecutionTime")
  lastAttemptedExecutionTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that a report plan is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The deployment status of a report plan. The statuses are:</p>
         <p>
            <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
         COMPLETED</code>
         </p>")
  @as("DeploymentStatus")
  deploymentStatus: option<string_>,
  @ocaml.doc("<p>Contains information about where and how to deliver your reports, specifically your
            Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>")
  @as("ReportDeliveryChannel")
  reportDeliveryChannel: option<reportDeliveryChannel>,
  @ocaml.doc("<p>Identifies the report template for the report. Reports are built using a report
         template. The report templates are:</p>
         <p>
            <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
            COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
         </p>
         <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
            <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
         coverage by Amazon Web Services Regions and frameworks.</p>")
  @as("ReportSetting")
  reportSetting: option<reportSetting>,
  @ocaml.doc("<p>An optional description of the report plan with a maximum 1,024 characters.</p>")
  @as("ReportPlanDescription")
  reportPlanDescription: option<reportPlanDescription>,
  @ocaml.doc("<p>The unique name of the report plan. This name is between 1 and 256 characters starting
         with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
         (_).</p>")
  @as("ReportPlanName")
  reportPlanName: option<reportPlanName>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
  @as("ReportPlanArn")
  reportPlanArn: option<arn>,
}
@ocaml.doc("<p>Contains detailed information about a report job. A report job compiles a report based
         on a report plan and publishes it to Amazon S3.</p>")
type reportJob = {
  @ocaml.doc("<p>The S3 bucket name and S3 keys for the destination where the report job publishes the
         report.</p>")
  @as("ReportDestination")
  reportDestination: option<reportDestination>,
  @ocaml.doc("<p>A message explaining the status of the report job.</p>") @as("StatusMessage")
  statusMessage: option<string_>,
  @ocaml.doc("<p>The status of a report job. The statuses are:</p>
         <p>
            <code>CREATED | RUNNING | COMPLETED | FAILED</code>
         </p>
         <p>
            <code>COMPLETED</code> means that the report is available for your review at your
         designated destination. If the status is <code>FAILED</code>, review the
            <code>StatusMessage</code> for the reason.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The date and time that a report job is completed, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CompletionTime")
  completionTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that a report job is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>Identifies the report template for the report. Reports are built using a report
         template. The report templates are: </p>
         <p>
            <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
            COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
         </p>")
  @as("ReportTemplate")
  reportTemplate: option<string_>,
  @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
  @as("ReportPlanArn")
  reportPlanArn: option<arn>,
  @ocaml.doc("<p>The identifier for a report job. A unique, randomly generated, Unicode, UTF-8 encoded
         string that is at most 1,024 bytes long. Report job IDs cannot be edited.</p>")
  @as("ReportJobId")
  reportJobId: option<reportJobId>,
}
type recoveryPointByBackupVaultList = array<recoveryPointByBackupVault>
@ocaml.doc("<p>Contains detailed information about all of the controls of a framework. Each framework
         must contain at least one control.</p>")
type frameworkControl = {
  @ocaml.doc("<p>The scope of a control. The control scope defines what the control will evaluate. Three
         examples of control scopes are: a specific backup plan, all backup plans with a specific
         tag, or all backup plans. For more information, see <code>ControlScope</code>.</p>")
  @as("ControlScope")
  controlScope: option<controlScope>,
  @ocaml.doc("<p>A list of <code>ParameterName</code> and <code>ParameterValue</code> pairs.</p>")
  @as("ControlInputParameters")
  controlInputParameters: option<controlInputParameters>,
  @ocaml.doc("<p>The name of a control. This name is between 1 and 256 characters.</p>")
  @as("ControlName")
  controlName: controlName,
}
type copyJobsList = array<copyJob>
type copyActions = array<copyAction>
@ocaml.doc("<p>Contains information about which resources to include or exclude from a backup plan
         using their tags. Conditions are case sensitive.</p>")
type conditions = {
  @ocaml.doc("<p>Filters the values of your tagged resources for non-matching tag values with the use of
         a wildcard character (*) anywhere in the string.</p>")
  @as("StringNotLike")
  stringNotLike: option<conditionParameters>,
  @ocaml.doc("<p>Filters the values of your tagged resources for matching tag values with the use of a
         wildcard character (*) anywhere in the string. For example, \"prod*\" or \"*rod*\" matches the
         tag value \"production\".</p>")
  @as("StringLike")
  stringLike: option<conditionParameters>,
  @ocaml.doc("<p>Filters the values of your tagged resources for only those resources that you tagged
         that do not have the same value. Also called \"negated matching.\"</p>")
  @as("StringNotEquals")
  stringNotEquals: option<conditionParameters>,
  @ocaml.doc("<p>Filters the values of your tagged resources for only those resources that you tagged
         with the same value. Also called \"exact matching.\"</p>")
  @as("StringEquals")
  stringEquals: option<conditionParameters>,
}
type backupJobsList = array<backupJob>
type advancedBackupSettings = array<advancedBackupSetting>
type reportPlanList = array<reportPlan>
type reportJobList = array<reportJob>
type frameworkControls = array<frameworkControl>
@ocaml.doc("<p>Used to specify a set of resources to a backup plan.</p>")
type backupSelection = {
  @ocaml.doc("<p>A list of conditions that you define to assign resources to your backup plans using
         tags. For example, <code>\"StringEquals\": {\"Department\": \"accounting\"</code>. Condition
         operators are case sensitive.</p>
         <p>
            <code>Conditions</code> differs from <code>ListOfTags</code> as follows:</p>
         <ul>
            <li>
               <p>When you specify more than one condition, you only assign the resources that match
               ALL conditions (using AND logic).</p>
            </li>
            <li>
               <p>
                  <code>Conditions</code> supports <code>StringEquals</code>,
                  <code>StringLike</code>, <code>StringNotEquals</code>, and
                  <code>StringNotLike</code>. <code>ListOfTags</code> only supports
                  <code>StringEquals</code>.</p>
            </li>
         </ul>")
  @as("Conditions")
  conditions: option<conditions>,
  @ocaml.doc("<p>A list of Amazon Resource Names (ARNs) to exclude from a backup plan. The maximum number
         of ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
         <p>If you need to exclude many resources from a backup plan, consider a different resource
         selection strategy, such as assigning only one or a few resource types or refining your
         resource selection using tags.</p>")
  @as("NotResources")
  notResources: option<resourceArns>,
  @ocaml.doc("<p>A list of conditions that you define to assign resources to your backup plans using
         tags. For example, <code>\"StringEquals\": {\"Department\": \"accounting\"</code>. Condition
         operators are case sensitive.</p>
         <p>
            <code>ListOfTags</code> differs from <code>Conditions</code> as follows:</p>
         <ul>
            <li>
               <p>When you specify more than one condition, you assign all resources that match AT
               LEAST ONE condition (using OR logic).</p>
            </li>
            <li>
               <p>
                  <code>ListOfTags</code> only supports <code>StringEquals</code>.
                  <code>Conditions</code> supports <code>StringEquals</code>,
                  <code>StringLike</code>, <code>StringNotEquals</code>, and
                  <code>StringNotLike</code>. </p>
            </li>
         </ul>")
  @as("ListOfTags")
  listOfTags: option<listOfTags>,
  @ocaml.doc("<p>A list of Amazon Resource Names (ARNs) to assign to a backup plan. The maximum number of
         ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
         <p>If you need to assign many resources to a backup plan, consider a different resource
         selection strategy, such as assigning all resources of a resource type or refining your
         resource selection using tags.</p>")
  @as("Resources")
  resources: option<resourceArns>,
  @ocaml.doc("<p>The ARN of the IAM role that Backup uses to authenticate when backing up the
         target resource; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
  @as("IamRoleArn")
  iamRoleArn: iamroleArn,
  @ocaml.doc("<p>The display name of a resource selection document. Must contain 1 to 50 alphanumeric or
         '-_.' characters.</p>")
  @as("SelectionName")
  selectionName: backupSelectionName,
}
@ocaml.doc("<p>Specifies a scheduled task used to back up a selection of resources.</p>")
type backupRuleInput = {
  @ocaml.doc("<p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
         (or not specified) causes Backup to create snapshot backups.</p>")
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
         it expires. Backup will transition and expire backups automatically according
         to the lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold.</p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
  @as("Lifecycle")
  lifecycle: option<lifecycle>,
  @ocaml.doc("<p>A value in minutes after a backup job is successfully started before it must be
         completed or it will be canceled by Backup. This value is optional.</p>")
  @as("CompletionWindowMinutes")
  completionWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional.</p>")
  @as("StartWindowMinutes")
  startWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A CRON expression in UTC specifying when Backup initiates a backup
         job.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<cronExpression>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
  @as("TargetBackupVaultName")
  targetBackupVaultName: backupVaultName,
  @ocaml.doc("<p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
         characters.</p>")
  @as("RuleName")
  ruleName: backupRuleName,
}
@ocaml.doc("<p>Specifies a scheduled task used to back up a selection of resources.</p>")
type backupRule = {
  @ocaml.doc("<p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
         (or not specified) causes Backup to create snapshot backups.</p>")
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
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold. </p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
  @as("Lifecycle")
  lifecycle: option<lifecycle>,
  @ocaml.doc("<p>A value in minutes after a backup job is successfully started before it must be
         completed or it will be canceled by Backup. This value is optional.</p>")
  @as("CompletionWindowMinutes")
  completionWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional.</p>")
  @as("StartWindowMinutes")
  startWindowMinutes: option<windowMinutes>,
  @ocaml.doc("<p>A cron expression in UTC specifying when Backup initiates a backup job. For
         more information about Amazon Web Services cron expressions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
            Guide.</i>. Two examples of Amazon Web Services cron expressions are <code> 15 * ?
            * * *</code> (take a backup every hour at 15 minutes past the hour) and <code>0 12 * * ?
            *</code> (take a backup every day at 12 noon UTC). For a table of examples, click the
         preceding link and scroll down the page.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<cronExpression>,
  @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
  @as("TargetBackupVaultName")
  targetBackupVaultName: backupVaultName,
  @ocaml.doc("<p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
         characters.</p>")
  @as("RuleName")
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
         without the risk of running the operation twice. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
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
         scheduled task. </p>")
type backupPlanInput = {
  @ocaml.doc("<p>Specifies a list of <code>BackupOptions</code> for each resource type. These settings
         are only available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>")
  @as("AdvancedBackupSettings")
  advancedBackupSettings: option<advancedBackupSettings>,
  @ocaml.doc("<p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
         that is used to back up a selection of resources.</p>")
  @as("Rules")
  rules: backupRulesInput,
  @ocaml.doc("<p>The display name of a backup plan. Must contain 1 to 50 alphanumeric or '-_.'
         characters.</p>")
  @as("BackupPlanName")
  backupPlanName: backupPlanName,
}
@ocaml.doc("<p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
         objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
         scheduled task and can back up a different selection of Amazon Web Services
         resources.</p>")
type backupPlan = {
  @ocaml.doc("<p>Contains a list of <code>BackupOptions</code> for each resource type.</p>")
  @as("AdvancedBackupSettings")
  advancedBackupSettings: option<advancedBackupSettings>,
  @ocaml.doc("<p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
         that is used to back up a selection of resources. </p>")
  @as("Rules")
  rules: backupRules,
  @ocaml.doc("<p>The display name of a backup plan. Must contain 1 to 50 alphanumeric or '-_.'
         characters.</p>")
  @as("BackupPlanName")
  backupPlanName: backupPlanName,
}
@ocaml.doc("<fullname>Backup</fullname>
         <p>Backup is a unified backup service designed to protect Amazon Web Services
         services and their associated data. Backup simplifies the creation, migration,
         restoration, and deletion of backups, while also providing reporting and
         auditing.</p>")
module StopBackupJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a request to Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "StopBackupJobCommand"
  let make = (~backupJobId, ()) => new({backupJobId: backupJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartReportJob = {
  type t
  type request = {
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>StartReportJobInput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>The unique name of a report plan.</p>") @as("ReportPlanName")
    reportPlanName: reportPlanName,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
         string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>")
    @as("ReportJobId")
    reportJobId: option<reportJobId>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "StartReportJobCommand"
  let make = (~reportPlanName, ~idempotencyToken=?, ()) =>
    new({idempotencyToken: idempotencyToken, reportPlanName: reportPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutBackupVaultLockConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Backup Vault Lock configuration that specifies the number of days before
         the lock date. For example, setting <code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at
         8pm UTC will set the lock date to Jan. 31, 2022 at 8pm UTC.</p>
         <p>Backup enforces a 72-hour cooling-off period before Vault Lock takes effect
         and becomes immutable. Therefore, you must set <code>ChangeableForDays</code> to 3 or
         greater.</p>
         <p>Before the lock date, you can delete Vault Lock from the vault using
            <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
         using <code>PutBackupVaultLockConfiguration</code>. On and after the lock date, the Vault
         Lock becomes immutable and cannot be changed or deleted.</p>
         <p>If this parameter is not specified, you can delete Vault Lock from the vault using
            <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
         using <code>PutBackupVaultLockConfiguration</code> at any time.</p>")
    @as("ChangeableForDays")
    changeableForDays: option<long>,
    @ocaml.doc("<p>The Backup Vault Lock configuration that specifies the maximum retention
         period that the vault retains its recovery points. This setting can be useful if, for
         example, your organization's policies require you to destroy certain data after retaining
         it for four years (1460 days).</p>
         <p>If this parameter is not included, Vault Lock does not enforce a maximum retention
         period on the recovery points in the vault. If this parameter is included without a value,
         Vault Lock will not enforce a maximum retention period.</p>
         <p>If this parameter is specified, any backup or copy job to the vault must have a
         lifecycle policy with a retention period equal to or shorter than the maximum retention
         period. If the job's retention period is longer than that maximum retention period, then
         the vault fails the backup or copy job, and you should either modify your lifecycle
         settings or use a different vault. The longest maximum retention period
         you can specify is 36500 days (approximately 100 years).
         Recovery points already saved in the vault prior to
         Vault Lock are not affected.</p>")
    @as("MaxRetentionDays")
    maxRetentionDays: option<long>,
    @ocaml.doc("<p>The Backup Vault Lock configuration that specifies the minimum retention
         period that the vault retains its recovery points. This setting can be useful if, for
         example, your organization's policies require you to retain certain data for at least seven
         years (2555 days).</p>
         <p>If this parameter is not specified, Vault Lock will not enforce a minimum retention
         period.</p>
         <p>If this parameter is specified, any backup or copy job to the vault must have a
         lifecycle policy with a retention period equal to or longer than the minimum retention
         period. If the job's retention period is shorter than that minimum retention period, then
         the vault fails that backup or copy job, and you should either modify your lifecycle
         settings or use a different vault. The shortest minimum retention period
         you can specify is 1 day. Recovery points already saved in the vault prior to
         Vault Lock are not affected.</p>")
    @as("MinRetentionDays")
    minRetentionDays: option<long>,
    @ocaml.doc("<p>The Backup Vault Lock configuration that specifies the name of the backup
         vault it protects.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "PutBackupVaultLockConfigurationCommand"
  let make = (
    ~backupVaultName,
    ~changeableForDays=?,
    ~maxRetentionDays=?,
    ~minRetentionDays=?,
    (),
  ) =>
    new({
      changeableForDays: changeableForDays,
      maxRetentionDays: maxRetentionDays,
      minRetentionDays: minRetentionDays,
      backupVaultName: backupVaultName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBackupVaultAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The backup vault access policy document in JSON format.</p>") @as("Policy")
    policy: option<iampolicy>,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies an Backup recovery
         point.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The unique name of an Backup vault.</p>") @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
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
    @ocaml.doc("<p>Status code specifying the state of the job that is initiated by Backup to
         restore a recovery point.</p>")
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
    @ocaml.doc("<p>The type of Amazon Web Services resource saved as a recovery point; for example, an
            Amazon EBS volume or an Amazon RDS database.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: string_,
  }
  type response = {
    @ocaml.doc("<p>The date and time when Backup Vault Lock configuration cannot be changed or
         deleted.</p>
         <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
         any of your Vault Lock settings, or delete Vault Lock from the vault entirely, at any
         time.</p>
         <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
         milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
         12:11:30.087 AM.</p>")
    @as("LockDate")
    lockDate: option<timestamp_>,
    @ocaml.doc("<p>The Backup Vault Lock setting that specifies the maximum retention period
         that the vault retains its recovery points. If this parameter is not specified, Vault Lock
         does not enforce a maximum retention period on the recovery points in the vault (allowing
         indefinite storage).</p>
         <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
         retention period equal to or shorter than the maximum retention period. If the job's
         retention period is longer than that maximum retention period, then the vault fails the
         backup or copy job, and you should either modify your lifecycle settings or use a different
         vault. Recovery points already stored in the vault prior to Vault Lock are not
         affected.</p>")
    @as("MaxRetentionDays")
    maxRetentionDays: option<long>,
    @ocaml.doc("<p>The Backup Vault Lock setting that specifies the minimum retention period
         that the vault retains its recovery points. If this parameter is not specified, Vault Lock
         does not enforce a minimum retention period.</p>
         <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
         retention period equal to or longer than the minimum retention period. If the job's
         retention period is shorter than that minimum retention period, then the vault fails the
         backup or copy job, and you should either modify your lifecycle settings or use a different
         vault. Recovery points already stored in the vault prior to Vault Lock are not
         affected.</p>")
    @as("MinRetentionDays")
    minRetentionDays: option<long>,
    @ocaml.doc("<p>A Boolean that indicates whether Backup Vault Lock is currently protecting
         the backup vault. <code>True</code> means that Vault Lock causes delete or update
         operations on the recovery points stored in the vault to fail.</p>")
    @as("Locked")
    locked: option<boolean_>,
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

module DeleteReportPlan = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of a report plan.</p>") @as("ReportPlanName")
    reportPlanName: reportPlanName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteReportPlanCommand"
  let make = (~reportPlanName, ()) => new({reportPlanName: reportPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRecoveryPoint = {
  type t
  type request = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteRecoveryPointCommand"
  let make = (~recoveryPointArn, ~backupVaultName, ()) =>
    new({recoveryPointArn: recoveryPointArn, backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFramework = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of a framework.</p>") @as("FrameworkName")
    frameworkName: frameworkName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "DeleteFrameworkCommand"
  let make = (~frameworkName, ()) => new({frameworkName: frameworkName})
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
  type response = {.}
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DeleteBackupVaultNotificationsCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVaultLockConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the backup vault from which to delete Backup Vault Lock.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DeleteBackupVaultLockConfigurationCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVaultAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DeleteBackupVaultAccessPolicyCommand"
  let make = (~backupVaultName, ()) => new({backupVaultName: backupVaultName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBackupVault = {
  type t
  type request = {
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: string_,
  }
  type response = {.}
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
  type response = {.}
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
    @ocaml.doc("<p>Enables or disables full Backup management of backups for a resource type.
         To enable full Backup management for DynamoDB along with <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html\">
            Backup's advanced DynamoDB backup features</a>, follow the
         procedure to <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli\"> enable advanced DynamoDB backup programmatically</a>.</p>")
    @as("ResourceTypeManagementPreference")
    resourceTypeManagementPreference: option<resourceTypeManagementPreference>,
    @ocaml.doc(
      "<p>Updates the list of services along with the opt-in preferences for the Region.</p>"
    )
    @as("ResourceTypeOptInPreference")
    resourceTypeOptInPreference: option<resourceTypeOptInPreference>,
  }
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateRegionSettingsCommand"
  let make = (~resourceTypeManagementPreference=?, ~resourceTypeOptInPreference=?, ()) =>
    new({
      resourceTypeManagementPreference: resourceTypeManagementPreference,
      resourceTypeOptInPreference: resourceTypeOptInPreference,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRecoveryPointLifecycle = {
  type t
  type request = {
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold. </p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
            <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>")
    @as("RecoveryPointArn")
    recoveryPointArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {
    @ocaml.doc("<p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
            <code>MoveToColdStorageAt</code> timestamps.</p>")
    @as("CalculatedLifecycle")
    calculatedLifecycle: option<calculatedLifecycle>,
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define.</p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold.</p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
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
    @ocaml.doc("<p>A value for <code>isCrossAccountBackupEnabled</code> and a Region. Example:
            <code>update-global-settings --global-settings isCrossAccountBackupEnabled=false
            --region us-west-2</code>.</p>")
    @as("GlobalSettings")
    globalSettings: option<globalSettings>,
  }
  type response = {.}
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
  type response = {.}
  @module("@aws-sdk/client-backup") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeyList, ~resourceArn, ()) =>
    new({tagKeyList: tagKeyList, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Key-value pairs that are used to help organize your resources. You can assign your own
         metadata to the resources you create. For clarity, this is the structure to assign tags:
            <code>[{\"Key\":\"string\",\"Value\":\"string\"}]</code>.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
         the tagged resource.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
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
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
            </li>
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
                  <code>FSx</code> for Amazon FSx</p>
            </li>
            <li>
               <p>
                  <code>Neptune</code> for Amazon Neptune</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for Storage Gateway</p>
            </li>
            <li>
               <p>
                  <code>S3</code> for Amazon S3</p>
            </li>
            <li>
               <p>
                  <code>VirtualMachine</code> for virtual machines</p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>StartRestoreJob</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that Backup uses to create
         the target recovery point; for example,
            <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>")
    @as("IamRoleArn")
    iamRoleArn: iamroleArn,
    @ocaml.doc("<p>A set of metadata key-value pairs. Contains information, such as a resource name,
         required to restore a recovery point.</p>
         <p> You can get configuration metadata about a resource at the time it was backed up by
         calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
         provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
         resource. For example, you might need to provide a new resource name if the original
         already exists.</p>
         <p>You need to specify specific metadata to restore an Amazon Elastic File System (Amazon EFS) instance:</p>
         <ul>
            <li>
               <p>
                  <code>file-system-id</code>: The ID of the Amazon EFS file system that is
               backed up by Backup. Returned in
                  <code>GetRecoveryPointRestoreMetadata</code>.</p>
            </li>
            <li>
               <p>
                  <code>Encrypted</code>: A Boolean value that, if true, specifies that the file
               system is encrypted. If <code>KmsKeyId</code> is specified, <code>Encrypted</code>
               must be set to <code>true</code>.</p>
            </li>
            <li>
               <p>
                  <code>KmsKeyId</code>: Specifies the Amazon Web Services KMS key that is used to
               encrypt the restored file system. You can specify a key from another Amazon Web Services account provided that key it is properly shared with your account via Amazon Web Services KMS.</p>
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
                  <code>ItemsToRestore</code>: An array of one to five strings where each string is
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
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>StartCopyJob</code>. Retrying a successful request with the same idempotency
         token results in a success message with no action taken.</p>")
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
         identified by names that are unique to the account used to create them and the Amazon Web Services Region where they are created. They consist of lowercase letters, numbers,
         and hyphens.</p>")
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
         Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
         <p>Valid values: Set to <code>\"WindowsVSS\":\"enabled\"</code> to enable the
            <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
            <code>\"WindowsVSS\"\"disabled\"</code> to create a regular backup. The
            <code>WindowsVSS</code> option is not enabled by default.</p>")
    @as("BackupOptions")
    backupOptions: option<backupOptions>,
    @ocaml.doc("<p>To help organize your resources, you can assign your own metadata to the resources that
         you create. Each tag is a key-value pair.</p>")
    @as("RecoveryPointTags")
    recoveryPointTags: option<tags>,
    @ocaml.doc("<p>The lifecycle defines when a protected resource is transitioned to cold storage and when
         it expires. Backup will transition and expire backups automatically according
         to the lifecycle that you define. </p>
         <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
         days. Therefore, the “retention” setting must be 90 days greater than the “transition to
         cold after days” setting. The “transition to cold after days” setting cannot be changed
         after a backup has been transitioned to cold. </p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
    @as("Lifecycle")
    lifecycle: option<lifecycle>,
    @ocaml.doc("<p>A value in minutes during which a successfully started backup must complete, or else
            Backup will cancel the job. This value is optional. This value begins
         counting down from when the backup was scheduled. It does not add additional time for
            <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>")
    @as("CompleteWindowMinutes")
    completeWindowMinutes: option<windowMinutes>,
    @ocaml.doc("<p>A value in minutes after a backup is scheduled before a job will be canceled if it
         doesn't start successfully. This value is optional, and the default is 8 hours.</p>")
    @as("StartWindowMinutes")
    startWindowMinutes: option<windowMinutes>,
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>StartBackupJob</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
    @ocaml.doc("<p>Uniquely identifies a request to Backup to back up a resource.</p>")
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
         vault.</p>
         <p>For common use cases and code samples, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/sns-notifications.html\">Using Amazon SNS to
            track Backup events</a>.</p>
         <p>The following events are supported:</p>
         <ul>
            <li>
               <p>
                  <code>BACKUP_JOB_STARTED</code> | <code>BACKUP_JOB_COMPLETED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>COPY_JOB_STARTED</code> | <code>COPY_JOB_SUCCESSFUL</code> |
                  <code>COPY_JOB_FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RESTORE_JOB_STARTED</code> | <code>RESTORE_JOB_COMPLETED</code> |
                  <code>RECOVERY_POINT_MODIFIED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>S3_BACKUP_OBJECT_FAILED</code> | <code>S3_RESTORE_OBJECT_FAILED</code>
               </p>
            </li>
         </ul>
         <note>
            <p>Ignore the list below because it includes deprecated events. Refer to the list
            above.</p>
         </note>")
    @as("BackupVaultEvents")
    backupVaultEvents: backupVaultEvents,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
         example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>")
    @as("SNSTopicArn")
    snstopicArn: arn,
    @ocaml.doc("<p>The name of a logical container where backups are stored. Backup vaults are identified
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: backupVaultName,
  }
  type response = {.}
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
  type request = {.}
  type response = {
    @ocaml.doc("<p>Contains a string with the supported Amazon Web Services resource types:</p>
         <ul>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
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
                  <code>FSX</code> for Amazon FSx</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for Storage Gateway</p>
            </li>
            <li>
               <p>
                  <code>DocDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
            </li>
            <li>
               <p>
                  <code>Neptune</code> for Amazon Neptune</p>
            </li>
         </ul>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "GetSupportedResourceTypesCommand"
  let make = () => new(Js.Obj.empty())
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
  type request = {.}
  type response = {
    @ocaml.doc("<p>Returns whether Backup fully manages the backups for a resource type.</p>
         <p>For the benefits of full Backup management, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management\"> Full Backup management</a>.</p>
         <p>For a list of resource types and whether each supports full Backup
         management, see the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table.</p>
         <p>If <code>\"DynamoDB\":false</code>, you can enable full Backup management for
         DynamoDB backup by enabling <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli\">
            Backup's advanced DynamoDB backup features</a>.</p>")
    @as("ResourceTypeManagementPreference")
    resourceTypeManagementPreference: option<resourceTypeManagementPreference>,
    @ocaml.doc(
      "<p>Returns a list of all services along with the opt-in preferences in the Region.</p>"
    )
    @as("ResourceTypeOptInPreference")
    resourceTypeOptInPreference: option<resourceTypeOptInPreference>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DescribeRegionSettingsCommand"
  let make = () => new(Js.Obj.empty())
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
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
         it expires. Backup transitions and expires backups automatically according to
         the lifecycle that you define.</p>
         <p>Backups that are transitioned to cold storage must be stored in cold storage for a
         minimum of 90 days. Therefore, the “retention” setting must be 90 days greater than the
         “transition to cold after days” setting. The “transition to cold after days” setting cannot
         be changed after a backup has been transitioned to cold. </p>
         <p>Only resource types that support full Backup management can transition their
         backups to cold storage. Those resource types are listed in the \"Full Backup
         management\" section of the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource\"> Feature
            availability by resource</a> table. Backup ignores this expression for
         other resource types.</p>")
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
    @ocaml.doc(
      "<p>A status message explaining the reason for the recovery point deletion failure.</p>"
    )
    @as("StatusMessage")
    statusMessage: option<string_>,
    @ocaml.doc("<p>A status code specifying the state of the recovery point.</p>
         <p>
            <code>PARTIAL</code> status indicates Backup could not create the recovery
         point before the backup window closed. To increase your backup plan window using the API,
         see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateBackupPlan.html\">UpdateBackupPlan</a>. You can also increase your backup plan window using the
         Console by choosing and editing your backup plan.</p>
         <p>
            <code>EXPIRED</code> status indicates that the recovery point has exceeded its retention
         period, but Backup lacks permission or is otherwise unable to delete it. To
         manually delete these recovery points, see <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/gs-cleanup-resources.html#cleanup-backups\"> Step 3:
            Delete the recovery points</a> in the <i>Clean up resources</i>
         section of <i>Getting started</i>.</p>")
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
    @ocaml.doc("<p>The type of Amazon Web Services resource to save as a recovery point; for example, an
            Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
         resource type.</p>")
    @as("ResourceArn")
    resourceArn: option<arn>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies the source vault where the
         resource was originally backed up in; for example,
            <code>arn:aws:backup:us-east-1:123456789012:vault:BackupVault</code>. If the recovery is
         restored to the same Amazon Web Services account or Region, this value will be
            <code>null</code>.</p>")
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
  type request = {.}
  type response = {
    @ocaml.doc("<p>The date and time that the flag <code>isCrossAccountBackupEnabled</code> was last
         updated. This update is in Unix format and Coordinated Universal Time (UTC). The value of
            <code>LastUpdateTime</code> is accurate to milliseconds. For example, the value
         1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>")
    @as("LastUpdateTime")
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc("<p>The status of the flag <code>isCrossAccountBackupEnabled</code>.</p>")
    @as("GlobalSettings")
    globalSettings: option<globalSettings>,
  }
  @module("@aws-sdk/client-backup") @new
  external new: request => t = "DescribeGlobalSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackupJob = {
  type t
  type request = {
    @ocaml.doc("<p>Uniquely identifies a request to Backup to back up a resource.</p>")
    @as("BackupJobId")
    backupJobId: string_,
  }
  type response = {
    @ocaml.doc("<p>Represents the actual backup type selected for a backup job. For example, if a
         successful Windows Volume Shadow Copy Service (VSS) backup was taken,
            <code>BackupType</code> returns <code>\"WindowsVSS\"</code>. If <code>BackupType</code> is
         empty, then the backup type was a regular backup.</p>")
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
    @ocaml.doc(
      "<p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>"
    )
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>")
    @as("BackupVaultName")
    backupVaultName: option<backupVaultName>,
    @ocaml.doc("<p>Uniquely identifies a request to Backup to back up a resource.</p>")
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
         without the risk of running the operation twice. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of letters, numbers, and hyphens.</p>")
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

module UpdateReportPlan = {
  type t
  type request = {
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>UpdateReportPlanInput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Identifies the report template for the report. Reports are built using a report
         template. The report templates are:</p>
         <p>
            <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
            COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
         </p>
         <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
            <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
         coverage by Amazon Web Services Regions and frameworks.</p>")
    @as("ReportSetting")
    reportSetting: option<reportSetting>,
    @ocaml.doc("<p>A structure that contains information about where to deliver your reports, specifically
         your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>")
    @as("ReportDeliveryChannel")
    reportDeliveryChannel: option<reportDeliveryChannel>,
    @ocaml.doc("<p>An optional description of the report plan with a maximum 1,024 characters.</p>")
    @as("ReportPlanDescription")
    reportPlanDescription: option<reportPlanDescription>,
    @ocaml.doc("<p>The unique name of the report plan. This name is between 1 and 256 characters, starting
         with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
         (_).</p>")
    @as("ReportPlanName")
    reportPlanName: reportPlanName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a report plan is created, in Unix format and Coordinated
         Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
         For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("ReportPlanArn")
    reportPlanArn: option<arn>,
    @ocaml.doc("<p>The unique name of the report plan.</p>") @as("ReportPlanName")
    reportPlanName: option<reportPlanName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateReportPlanCommand"
  let make = (
    ~reportPlanName,
    ~idempotencyToken=?,
    ~reportSetting=?,
    ~reportDeliveryChannel=?,
    ~reportPlanDescription=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      reportSetting: reportSetting,
      reportDeliveryChannel: reportDeliveryChannel,
      reportPlanDescription: reportPlanDescription,
      reportPlanName: reportPlanName,
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
    @ocaml.doc("<p>The maximum number of items to be returned.</p>
         <note>
            <p>Amazon RDS requires a value of at least 20.</p>
         </note>")
    @as("MaxResults")
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
         specified resource type.</p>
         <note>
            <p>Only Amazon EFS and Amazon EC2 recovery points return
            BackupVaultName.</p>
         </note>")
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
    @ocaml.doc("<p>An array of resources successfully backed up by Backup including the time
         the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource
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

module ListFrameworks = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
         return 1 MB of data.</p>")
    @as("MaxResults")
    maxResults: option<maxFrameworkInputs>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of frameworks with details for each framework, including the framework name,
         Amazon Resource Name (ARN), description, number of controls, creation time, and deployment
         status.</p>")
    @as("Frameworks")
    frameworks: option<frameworkList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListFrameworksCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
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

module CreateReportPlan = {
  type t
  type request = {
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>CreateReportPlanInput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>Metadata that you can assign to help organize the report plans that you create. Each tag
         is a key-value pair.</p>")
    @as("ReportPlanTags")
    reportPlanTags: option<stringMap>,
    @ocaml.doc("<p>Identifies the report template for the report. Reports are built using a report
         template. The report templates are:</p>
         <p>
            <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
            COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
         </p>
         <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
            <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
         coverage by Amazon Web Services Regions and frameworks.</p>")
    @as("ReportSetting")
    reportSetting: reportSetting,
    @ocaml.doc("<p>A structure that contains information about where and how to deliver your reports,
         specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
         reports.</p>")
    @as("ReportDeliveryChannel")
    reportDeliveryChannel: reportDeliveryChannel,
    @ocaml.doc(
      "<p>An optional description of the report plan with a maximum of 1,024 characters.</p>"
    )
    @as("ReportPlanDescription")
    reportPlanDescription: option<reportPlanDescription>,
    @ocaml.doc("<p>The unique name of the report plan. The name must be between 1 and 256 characters,
         starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
         underscores (_).</p>")
    @as("ReportPlanName")
    reportPlanName: reportPlanName,
  }
  type response = {
    @ocaml.doc("<p>The date and time a backup vault is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("ReportPlanArn")
    reportPlanArn: option<arn>,
    @ocaml.doc("<p>The unique name of the report plan.</p>") @as("ReportPlanName")
    reportPlanName: option<reportPlanName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "CreateReportPlanCommand"
  let make = (
    ~reportSetting,
    ~reportDeliveryChannel,
    ~reportPlanName,
    ~idempotencyToken=?,
    ~reportPlanTags=?,
    ~reportPlanDescription=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      reportPlanTags: reportPlanTags,
      reportSetting: reportSetting,
      reportDeliveryChannel: reportDeliveryChannel,
      reportPlanDescription: reportPlanDescription,
      reportPlanName: reportPlanName,
    })
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
         by names that are unique to the account used to create them and the Amazon Web Services
         Region where they are created. They consist of lowercase letters, numbers, and
         hyphens.</p>
         <note>
            <p>Backup vault name might not be available when a supported service creates the
            backup.</p>
         </note>")
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
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
            </li>
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
                  <code>FSx</code> for Amazon FSx</p>
            </li>
            <li>
               <p>
                  <code>Neptune</code> for Amazon Neptune</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for Storage Gateway</p>
            </li>
            <li>
               <p>
                  <code>S3</code> for Amazon S3</p>
            </li>
            <li>
               <p>
                  <code>VirtualMachine</code> for virtual machines</p>
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
         <p>If used from an Organizations management account, passing <code>*</code> returns
         all jobs across the organization.</p>")
    @as("ByAccountId")
    byAccountId: option<accountId>,
    @ocaml.doc("<p>Returns only backup jobs for the specified resources:</p>
         <ul>
            <li>
               <p>
                  <code>Aurora</code> for Amazon Aurora</p>
            </li>
            <li>
               <p>
                  <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
            </li>
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
                  <code>FSx</code> for Amazon FSx</p>
            </li>
            <li>
               <p>
                  <code>Neptune</code> for Amazon Neptune</p>
            </li>
            <li>
               <p>
                  <code>RDS</code> for Amazon Relational Database Service</p>
            </li>
            <li>
               <p>
                  <code>Storage Gateway</code> for Storage Gateway</p>
            </li>
            <li>
               <p>
                  <code>S3</code> for Amazon S3</p>
            </li>
            <li>
               <p>
                  <code>VirtualMachine</code> for virtual machines</p>
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
            Amazon Web Services Region where they are created. They consist of lowercase letters,
         numbers, and hyphens.</p>")
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

module DescribeReportPlan = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of a report plan.</p>") @as("ReportPlanName")
    reportPlanName: reportPlanName,
  }
  type response = {
    @ocaml.doc("<p>Returns details about the report plan that is specified by its name. These details
         include the report plan's Amazon Resource Name (ARN), description, settings, delivery
         channel, deployment status, creation time, and last attempted and successful run
         times.</p>")
    @as("ReportPlan")
    reportPlan: option<reportPlan>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeReportPlanCommand"
  let make = (~reportPlanName, ()) => new({reportPlanName: reportPlanName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
         string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>")
    @as("ReportJobId")
    reportJobId: reportJobId,
  }
  type response = {
    @ocaml.doc("<p>A list of information about a report job, including its completion and creation times,
         report destination, unique report job ID, Amazon Resource Name (ARN), report template,
         status, and status message.</p>")
    @as("ReportJob")
    reportJob: option<reportJob>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeReportJobCommand"
  let make = (~reportJobId, ()) => new({reportJobId: reportJobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFramework = {
  type t
  type request = {
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>UpdateFrameworkInput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>A list of the controls that make up the framework. Each control in the list has a name,
         input parameters, and scope.</p>")
    @as("FrameworkControls")
    frameworkControls: option<frameworkControls>,
    @ocaml.doc("<p>An optional description of the framework with a maximum 1,024 characters.</p>")
    @as("FrameworkDescription")
    frameworkDescription: option<frameworkDescription>,
    @ocaml.doc("<p>The unique name of a framework. This name is between 1 and 256 characters, starting with
         a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>")
    @as("FrameworkName")
    frameworkName: frameworkName,
  }
  type response = {
    @ocaml.doc("<p>The date and time that a framework is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("FrameworkArn")
    frameworkArn: option<arn>,
    @ocaml.doc("<p>The unique name of a framework. This name is between 1 and 256 characters, starting with
         a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>")
    @as("FrameworkName")
    frameworkName: option<frameworkName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "UpdateFrameworkCommand"
  let make = (
    ~frameworkName,
    ~idempotencyToken=?,
    ~frameworkControls=?,
    ~frameworkDescription=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      frameworkControls: frameworkControls,
      frameworkDescription: frameworkDescription,
      frameworkName: frameworkName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReportPlans = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
         return 1 MB of data.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of your report plans with detailed information for each plan. This information
         includes the Amazon Resource Name (ARN), report plan name, description, settings, delivery
         channel, deployment status, creation time, and last times the report plan attempted to and
         successfully ran.</p>")
    @as("ReportPlans")
    reportPlans: option<reportPlanList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListReportPlansCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
         return 1 MB of data.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Returns only report jobs that are in the specified status. The statuses are:</p>
         <p>
            <code>CREATED | RUNNING | COMPLETED | FAILED</code>
         </p>")
    @as("ByStatus")
    byStatus: option<string_>,
    @ocaml.doc("<p>Returns only report jobs that were created after the date and time specified in Unix
         format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
         Friday, January 26, 2018 12:11:30 AM.</p>")
    @as("ByCreationAfter")
    byCreationAfter: option<timestamp_>,
    @ocaml.doc("<p>Returns only report jobs that were created before the date and time specified in Unix
         format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
         Friday, January 26, 2018 12:11:30 AM.</p>")
    @as("ByCreationBefore")
    byCreationBefore: option<timestamp_>,
    @ocaml.doc("<p>Returns only report jobs with the specified report plan name.</p>")
    @as("ByReportPlanName")
    byReportPlanName: option<reportPlanName>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
         used to return the next set of items in the list.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Details about your report jobs in JSON format.</p>") @as("ReportJobs")
    reportJobs: option<reportJobList>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "ListReportJobsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~byStatus=?,
    ~byCreationAfter=?,
    ~byCreationBefore=?,
    ~byReportPlanName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      byStatus: byStatus,
      byCreationAfter: byCreationAfter,
      byCreationBefore: byCreationBefore,
      byReportPlanName: byReportPlanName,
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

module DescribeFramework = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of a framework.</p>") @as("FrameworkName")
    frameworkName: frameworkName,
  }
  type response = {
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>DescribeFrameworkOutput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>A framework consists of one or more controls. Each control governs a resource, such as
         backup plans, backup selections, backup vaults, or recovery points. You can also turn
            Config recording on or off for each resource. The statuses are:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> when recording is turned on for all resources governed by the
               framework.</p>
            </li>
            <li>
               <p>
                  <code>PARTIALLY_ACTIVE</code> when recording is turned off for at least one
               resource governed by the framework.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE</code> when recording is turned off for all resources governed by
               the framework.</p>
            </li>
            <li>
               <p>
                  <code>UNAVAILABLE</code> when Backup is unable to validate recording
               status at this time.</p>
            </li>
         </ul>")
    @as("FrameworkStatus")
    frameworkStatus: option<string_>,
    @ocaml.doc("<p>The deployment status of a framework. The statuses are:</p>
         <p>
            <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
            FAILED</code>
         </p>")
    @as("DeploymentStatus")
    deploymentStatus: option<string_>,
    @ocaml.doc("<p>The date and time that a framework is created, in Unix format and Coordinated Universal
         Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
         example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
         AM.</p>")
    @as("CreationTime")
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>A list of the controls that make up the framework. Each control in the list has a name,
         input parameters, and scope.</p>")
    @as("FrameworkControls")
    frameworkControls: option<frameworkControls>,
    @ocaml.doc("<p>An optional description of the framework.</p>") @as("FrameworkDescription")
    frameworkDescription: option<frameworkDescription>,
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("FrameworkArn")
    frameworkArn: option<arn>,
    @ocaml.doc("<p>The unique name of a framework.</p>") @as("FrameworkName")
    frameworkName: option<frameworkName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "DescribeFrameworkCommand"
  let make = (~frameworkName, ()) => new({frameworkName: frameworkName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFramework = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that you can assign to help organize the frameworks that you create. Each tag
         is a key-value pair.</p>")
    @as("FrameworkTags")
    frameworkTags: option<stringMap>,
    @ocaml.doc("<p>A customer-chosen string that you can use to distinguish between otherwise identical
         calls to <code>CreateFrameworkInput</code>. Retrying a successful request with the same
         idempotency token results in a success message with no action taken.</p>")
    @as("IdempotencyToken")
    idempotencyToken: option<string_>,
    @ocaml.doc("<p>A list of the controls that make up the framework. Each control in the list has a name,
         input parameters, and scope.</p>")
    @as("FrameworkControls")
    frameworkControls: frameworkControls,
    @ocaml.doc(
      "<p>An optional description of the framework with a maximum of 1,024 characters.</p>"
    )
    @as("FrameworkDescription")
    frameworkDescription: option<frameworkDescription>,
    @ocaml.doc("<p>The unique name of the framework. The name must be between 1 and 256 characters,
         starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
         underscores (_).</p>")
    @as("FrameworkName")
    frameworkName: frameworkName,
  }
  type response = {
    @ocaml.doc("<p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
         depends on the resource type.</p>")
    @as("FrameworkArn")
    frameworkArn: option<arn>,
    @ocaml.doc("<p>The unique name of the framework. The name must be between 1 and 256 characters,
         starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
         underscores (_).</p>")
    @as("FrameworkName")
    frameworkName: option<frameworkName>,
  }
  @module("@aws-sdk/client-backup") @new external new: request => t = "CreateFrameworkCommand"
  let make = (
    ~frameworkControls,
    ~frameworkName,
    ~frameworkTags=?,
    ~idempotencyToken=?,
    ~frameworkDescription=?,
    (),
  ) =>
    new({
      frameworkTags: frameworkTags,
      idempotencyToken: idempotencyToken,
      frameworkControls: frameworkControls,
      frameworkDescription: frameworkDescription,
      frameworkName: frameworkName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackupSelection = {
  type t
  type request = {
    @ocaml.doc("<p>A unique string that identifies the request and allows failed requests to be retried
         without the risk of running the operation twice. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
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
    @ocaml.doc("<p>The date and time a backup plan is created, in Unix format and Coordinated Universal
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
         matches an existing backup plan, that plan is returned. This parameter is optional.</p>
         <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>")
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
         available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>")
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
