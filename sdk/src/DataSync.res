type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-datasync") @new
external createClient: unit => awsServiceClient = "DataSyncClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type long = float
type vpcEndpointId = string
type verifyMode = [
  | @as("NONE") #NONE
  | @as("ONLY_FILES_TRANSFERRED") #ONLY_FILES_TRANSFERRED
  | @as("POINT_IN_TIME_CONSISTENT") #POINT_IN_TIME_CONSISTENT
]
type uid = [@as("BOTH") #BOTH | @as("NAME") #NAME | @as("INT_VALUE") #INT_VALUE | @as("NONE") #NONE]
type transferMode = [@as("ALL") #ALL | @as("CHANGED") #CHANGED]
type time = Js.Date.t
type taskStatus = [
  | @as("UNAVAILABLE") #UNAVAILABLE
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
type taskQueueing = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type taskFilterName = [@as("CreationTime") #CreationTime | @as("LocationId") #LocationId]
type taskExecutionStatus = [
  | @as("ERROR") #ERROR
  | @as("SUCCESS") #SUCCESS
  | @as("VERIFYING") #VERIFYING
  | @as("TRANSFERRING") #TRANSFERRING
  | @as("PREPARING") #PREPARING
  | @as("LAUNCHING") #LAUNCHING
  | @as("QUEUED") #QUEUED
]
type taskExecutionArn = string
type taskArn = string
type taggableResourceArn = string
type tagValue = string
type tagKey = string
type smbVersion = [@as("SMB3") #SMB3 | @as("SMB2") #SMB2 | @as("AUTOMATIC") #AUTOMATIC]
type smbUser = string
type smbSubdirectory = string
type smbSecurityDescriptorCopyFlags = [
  | @as("OWNER_DACL_SACL") #OWNER_DACL_SACL
  | @as("OWNER_DACL") #OWNER_DACL
  | @as("NONE") #NONE
]
type smbPassword = string
type smbDomain = string
type serverHostname = string
type scheduleExpressionCron = string
type s3Subdirectory = string
type s3StorageClass = [
  | @as("OUTPOSTS") #OUTPOSTS
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("GLACIER") #GLACIER
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("STANDARD") #STANDARD
]
type s3BucketArn = string
type preserveDevices = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type preserveDeletedFiles = [@as("REMOVE") #REMOVE | @as("PRESERVE") #PRESERVE]
type posixPermissions = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type phaseStatus = [@as("ERROR") #ERROR | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type overwriteMode = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type operator = [
  | @as("BeginsWith") #BeginsWith
  | @as("NotContains") #NotContains
  | @as("Contains") #Contains
  | @as("GreaterThan") #GreaterThan
  | @as("GreaterThanOrEqual") #GreaterThanOrEqual
  | @as("LessThan") #LessThan
  | @as("LessThanOrEqual") #LessThanOrEqual
  | @as("In") #In
  | @as("NotEquals") #NotEquals
  | @as("Equals") #Equals
]
type objectStorageServerProtocol = [@as("HTTP") #HTTP | @as("HTTPS") #HTTPS]
type objectStorageServerPort = int
type objectStorageSecretKey = string
type objectStorageBucketName = string
type objectStorageAccessKey = string
type nfsVersion = [
  | @as("NFS4_1") #NFS4_1
  | @as("NFS4_0") #NFS4_0
  | @as("NFS3") #NFS3
  | @as("AUTOMATIC") #AUTOMATIC
]
type nfsSubdirectory = string
type nextToken = string
type networkInterfaceArn = string
type mtime = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type maxResults = int
type logLevel = [@as("TRANSFER") #TRANSFER | @as("BASIC") #BASIC | @as("OFF") #OFF]
type logGroupArn = string
type locationUri = string
type locationFilterName = [
  | @as("CreationTime") #CreationTime
  | @as("LocationType") #LocationType
  | @as("LocationUri") #LocationUri
]
type locationArn = string
type iamRoleArn = string
type gid = [@as("BOTH") #BOTH | @as("NAME") #NAME | @as("INT_VALUE") #INT_VALUE | @as("NONE") #NONE]
type fsxWindowsSubdirectory = string
type fsxFilesystemArn = string
type filterValue = string
type filterType = [@as("SIMPLE_PATTERN") #SIMPLE_PATTERN]
type filterAttributeValue = string
type endpointType = [@as("FIPS") #FIPS | @as("PRIVATE_LINK") #PRIVATE_LINK | @as("PUBLIC") #PUBLIC]
type endpoint = string
type efsSubdirectory = string
type efsFilesystemArn = string
type ec2SubnetArn = string
type ec2SecurityGroupArn = string
type duration = float
type bytesPerSecond = float
type atime = [@as("BEST_EFFORT") #BEST_EFFORT | @as("NONE") #NONE]
type agentStatus = [@as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]
type agentArn = string
type activationKey = string
@ocaml.doc("<p>Specifies the schedule you want your task to use for repeated executions. For more
      information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule Expressions for Rules</a>.</p>")
type taskSchedule = {
  @ocaml.doc("<p>A cron expression that specifies when AWS DataSync initiates a scheduled transfer from a
      source to a destination location. </p>")
  @as("ScheduleExpression")
  scheduleExpression: scheduleExpressionCron,
}
@ocaml.doc("<p>Represents a single entry in a list of tasks. <code>TaskListEntry</code> returns an
      array that contains a list of tasks when the <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTasks.html\">ListTasks</a> operation is called.
      A task includes the source and destination file systems to sync and the options to use for the
      tasks.</p>")
type taskListEntry = {
  @ocaml.doc("<p>The name of the task.</p>") @as("Name") name: option<tagValue>,
  @ocaml.doc("<p>The status of the task.</p>") @as("Status") status: option<taskStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task.</p>") @as("TaskArn")
  taskArn: option<taskArn>,
}
@ocaml.doc("<p>Describes the detailed result of a <code>TaskExecution</code> operation. This result
      includes the time in milliseconds spent in each phase, the status of the task execution, and
      the errors encountered.</p>")
type taskExecutionResultDetail = {
  @ocaml.doc("<p>Detailed description of an error that was encountered during the task execution. You
      can use this information to help troubleshoot issues. </p>")
  @as("ErrorDetail")
  errorDetail: option<string_>,
  @ocaml.doc("<p>Errors that AWS DataSync encountered during execution of the task. You can use this
      error code to help troubleshoot issues.</p>")
  @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>The status of the VERIFYING phase.</p>") @as("VerifyStatus")
  verifyStatus: option<phaseStatus>,
  @ocaml.doc("<p>The total time in milliseconds that AWS DataSync spent in the VERIFYING
      phase.</p>")
  @as("VerifyDuration")
  verifyDuration: option<duration>,
  @ocaml.doc("<p>The status of the TRANSFERRING phase.</p>") @as("TransferStatus")
  transferStatus: option<phaseStatus>,
  @ocaml.doc("<p>The total time in milliseconds that AWS DataSync spent in the TRANSFERRING
      phase.</p>")
  @as("TransferDuration")
  transferDuration: option<duration>,
  @ocaml.doc(
    "<p>The total time in milliseconds that AWS DataSync took to transfer the file from the source to the destination location.</p>"
  )
  @as("TotalDuration")
  totalDuration: option<duration>,
  @ocaml.doc("<p>The status of the PREPARING phase.</p>") @as("PrepareStatus")
  prepareStatus: option<phaseStatus>,
  @ocaml.doc("<p>The total time in milliseconds that AWS DataSync spent in the PREPARING phase.
    </p>")
  @as("PrepareDuration")
  prepareDuration: option<duration>,
}
@ocaml.doc("<p>Represents a single entry in a list of task executions.
        <code>TaskExecutionListEntry</code> returns an array that contains a list of specific
      invocations of a task when the
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTaskExecutions.html\">ListTaskExecutions</a>
      operation is called.</p>")
type taskExecutionListEntry = {
  @ocaml.doc("<p>The status of a task execution.</p>") @as("Status")
  status: option<taskExecutionStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that was executed.</p>")
  @as("TaskExecutionArn")
  taskExecutionArn: option<taskExecutionArn>,
}
@ocaml.doc("<p>Represents a single entry in a list of AWS resource tags. <code>TagListEntry</code>
      returns an array that contains a list of tasks when the 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListTagsForResource.html\">ListTagsForResource</a>
      operation is called.</p>")
type tagListEntry = {
  @ocaml.doc("<p>The value for an AWS resource tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key for an AWS resource tag.</p>") @as("Key") key: tagKey,
}
type tagKeyList = array<tagKey>
type sourceNetworkInterfaceArns = array<networkInterfaceArn>
@ocaml.doc("<p>Represents the mount options that are available for DataSync to access an SMB
      location.</p>")
type smbMountOptions = {
  @ocaml.doc("<p>The specific SMB version that you want DataSync to use to mount your SMB share. If you
      don't specify a version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync
      automatically selects a version based on negotiation with the SMB server.</p>")
  @as("Version")
  version: option<smbVersion>,
}
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role
      that is used to access an Amazon S3 bucket.</p>
      
         <p>For detailed information about using such a role, see Creating a Location for
      Amazon S3 in the <i>AWS DataSync User Guide</i>.</p>")
type s3Config = {
  @ocaml.doc("<p>The Amazon S3 bucket to access. This bucket is used as a parameter in the 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateLocationS3.html\">CreateLocationS3</a>
      operation. </p>")
  @as("BucketAccessRoleArn")
  bucketAccessRoleArn: iamRoleArn,
}
type plsubnetArnList = array<ec2SubnetArn>
type plsecurityGroupArnList = array<ec2SecurityGroupArn>
@ocaml.doc("<p>Represents the options that are available to control the behavior of a 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html\">StartTaskExecution</a>
      operation. Behavior includes preserving metadata such as user
      ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
      data integrity verification, and so on.</p>
         <p>A task has a set of default options associated with it. If you don't specify an option
      in <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html\">StartTaskExecution</a>, 
      the default value is used. You can override the
      defaults options on each task execution by specifying an overriding <code>Options</code> value
      to <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html\">StartTaskExecution</a>.</p>")
type options = {
  @ocaml.doc("<p>A value that determines which components of the SMB security descriptor are copied from source
      to destination objects.
      </p>
         <p>This value is only used for transfers 
      between SMB and Amazon FSx for Windows File Server locations, or between two Amazon FSx for Windows File
      Server locations. For more information about how 
      DataSync handles metadata, see
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html\">How DataSync Handles Metadata and Special Files</a>.
    </p>
         <p>Default value: OWNER_DACL.</p>

         <p>
            <b>OWNER_DACL</b>: For each copied object, DataSync copies the following metadata:</p>
         <ul>
            <li>
               <p>Object owner.</p>
            </li>
            <li>
               <p>NTFS discretionary access control lists (DACLs), which determine whether to 
        grant access to an object.</p>
            </li>
         </ul>
         <p>When choosing this option, DataSync does NOT copy the NTFS system access control lists
      (SACLs), which are used by administrators to log attempts to access a secured object.</p>
    
         <p>
            <b>OWNER_DACL_SACL</b>: For each copied object, DataSync copies the following metadata:</p> 
         <ul>
            <li>
               <p>Object owner.</p>
            </li>
            <li>
               <p>NTFS discretionary access control lists (DACLs), which determine whether to
          grant access to an object.</p>
            </li>
            <li>
               <p>NTFS system access control lists (SACLs), which are used by administrators 
          to log attempts to access a secured object.</p>
            </li>
         </ul>
         <p>Copying SACLs requires granting additional permissions to the Windows user that DataSync
      uses to access your SMB location. For information about choosing a user that ensures
      sufficient permissions to files, folders, and metadata, see <a href=\"create-smb-location.html#SMBuser\">user</a>.</p>
    
         <p>
            <b>NONE</b>: None of the SMB security descriptor components
      are copied. Destination objects are owned by the user that was provided for accessing the 
      destination location. DACLs and SACLs are set based on the destination server’s configuration.
    </p>")
  @as("SecurityDescriptorCopyFlags")
  securityDescriptorCopyFlags: option<smbSecurityDescriptorCopyFlags>,
  @ocaml.doc("<p>A value that determines whether DataSync transfers only the data and metadata that differ between the source 
      and the destination location, or whether DataSync transfers all the content from the source, without comparing to 
      the destination location. </p>
         <p>CHANGED: DataSync copies only data or metadata that is new or different content from the source location to the 
      destination location.</p>
         <p>ALL: DataSync copies all source location content to the destination, without comparing to existing content on 
      the destination.</p>")
  @as("TransferMode")
  transferMode: option<transferMode>,
  @ocaml.doc("<p>A value that determines the type of logs that DataSync publishes to a log stream in the
      Amazon CloudWatch log group that you provide. For more information about providing a log group
      for DataSync, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html#DataSync-CreateTask-request-CloudWatchLogGroupArn\">CloudWatchLogGroupArn</a>. If set to <code>OFF</code>, no logs are published.
        <code>BASIC</code> publishes logs on errors for individual files transferred, and
        <code>TRANSFER</code> publishes logs for every file or object that is transferred and
      integrity checked.</p>")
  @as("LogLevel")
  logLevel: option<logLevel>,
  @ocaml.doc("<p>A value that determines whether tasks should be queued before executing the tasks. If set
      to <code>ENABLED</code>, the tasks will be queued. The default is <code>ENABLED</code>.</p>
         <p>If you use the same agent to run multiple tasks, you can enable the tasks to run in
      series. For more information, see 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/run-task.html#queue-task-execution\">Queueing task executions</a>.</p>")
  @as("TaskQueueing")
  taskQueueing: option<taskQueueing>,
  @ocaml.doc("<p>A value that limits the bandwidth used by AWS DataSync. For example, if you want
      AWS DataSync to use a maximum of 1 MB, set this value to <code>1048576</code>
        (<code>=1024*1024</code>).</p>")
  @as("BytesPerSecond")
  bytesPerSecond: option<bytesPerSecond>,
  @ocaml.doc("<p>A value that determines which users or groups can access a file for a specific purpose
      such as reading, writing, or execution of the file. This option should only be set for NFS,
      EFS, and S3 locations. For more information about what metadata is copied by DataSync, see
        <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied\">Metadata Copied by DataSync</a>. </p>
         <p>Default value: PRESERVE.</p>
         <p>PRESERVE: Preserve POSIX-style permissions (recommended).</p>
         <p>NONE: Ignore permissions. </p>
         <note>
            <p>AWS DataSync can preserve extant permissions of a source location.</p>
         </note>")
  @as("PosixPermissions")
  posixPermissions: option<posixPermissions>,
  @ocaml.doc("<p>A value that determines whether AWS DataSync should preserve the metadata of block
      and character devices in the source file system, and re-create the files with that device name
      and metadata on the destination. DataSync does not copy the contents of such devices, only the
      name and metadata. </p>
         <note>
            <p>AWS DataSync can't sync the actual contents of such devices, because they are
        nonterminal and don't return an end-of-file (EOF) marker.</p>
         </note>
         <p>Default value: NONE.</p>
         <p>NONE: Ignore special devices (recommended). </p>
         <p>PRESERVE: Preserve character and block device metadata. This option isn't currently
      supported for Amazon EFS. </p>")
  @as("PreserveDevices")
  preserveDevices: option<preserveDevices>,
  @ocaml.doc("<p>A value that specifies whether files in the destination that don't exist in the source
      file system should be preserved. This option can affect your storage cost. 
      If your task deletes objects, you might incur minimum storage duration charges for certain storage classes. For detailed
      information, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes\">Considerations when working with Amazon S3 storage classes in DataSync </a> in the <i>AWS DataSync User
        Guide</i>.</p>
         <p>Default value: PRESERVE.</p>
         <p>PRESERVE: Ignore such destination files (recommended). </p>
         <p>REMOVE: Delete destination files that aren’t present in the source.</p>")
  @as("PreserveDeletedFiles")
  preserveDeletedFiles: option<preserveDeletedFiles>,
  @ocaml.doc("<p>The POSIX group ID (GID) of the file's owners. This option should only be set for
      NFS, EFS, and S3 locations. For more information about what metadata is copied by DataSync,
      see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied\">Metadata Copied by DataSync</a>. </p>
         <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p>
         <p>INT_VALUE: Preserve the integer value of user ID (UID) and GID (recommended).</p>
         <p>NONE: Ignore UID and GID. </p>")
  @as("Gid")
  gid: option<gid>,
  @ocaml.doc("<p>The POSIX user ID (UID) of the file's owner. This option should only be set for NFS,
      EFS, and S3 locations. To learn more about what metadata is copied by DataSync, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/special-files.html#metadata-copied\">Metadata Copied by DataSync</a>.</p>
         <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p>
         <p>INT_VALUE: Preserve the integer value of UID and group ID (GID)
      (recommended).</p>
         <p>NONE: Ignore UID and GID. </p>")
  @as("Uid")
  uid: option<uid>,
  @ocaml.doc("<p>A value that indicates the last time that a file was modified (that is, a file was
      written to) before the PREPARING phase. This option is required for cases when you need to run
      the same task more than one time. </p>
         <p>Default value: PRESERVE. </p>
         <p>PRESERVE: Preserve original <code>Mtime</code> (recommended)</p>
         <p> NONE: Ignore <code>Mtime</code>. </p>
         <note>
            <p>If <code>Mtime</code> is set to PRESERVE, <code>Atime</code> must be set to
        BEST_EFFORT.</p>
            <p>If <code>Mtime</code> is set to NONE, <code>Atime</code> must also be set to NONE.
      </p>
         </note>")
  @as("Mtime")
  mtime: option<mtime>,
  @ocaml.doc("<p>A file metadata value that shows the last time a file was accessed (that is, when the
      file was read or written to). If you set <code>Atime</code> to BEST_EFFORT, DataSync
      attempts to preserve the original <code>Atime</code> attribute on all source files (that is,
      the version before the PREPARING phase). However, <code>Atime</code>'s behavior is not
      fully standard across platforms, so AWS DataSync can only do this on a best-effort basis. </p>
         <p>Default value: BEST_EFFORT.</p>
         <p>BEST_EFFORT: Attempt to preserve the per-file <code>Atime</code> value
      (recommended).</p>
         <p>NONE: Ignore <code>Atime</code>.</p>
         <note>
            <p>If <code>Atime</code> is set to BEST_EFFORT, <code>Mtime</code> must be set to PRESERVE. </p>
            <p>If <code>Atime</code> is set to NONE, <code>Mtime</code> must also be NONE. </p>
         </note>")
  @as("Atime")
  atime: option<atime>,
  @ocaml.doc("<p>A value that determines whether files at the destination should be overwritten or
      preserved when copying files. If set to <code>NEVER</code> a destination file will not be
      replaced by a source file, even if the destination file differs from the source file. If you modify files in the destination and you sync the files, you can use this value to
      protect against overwriting those changes. </p>
         <p>Some storage classes have specific behaviors that can affect your S3 storage cost. For detailed information, see 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes\">Considerations when working with Amazon S3 storage classes in DataSync </a>
      in the <i>AWS DataSync
        User Guide</i>.</p>")
  @as("OverwriteMode")
  overwriteMode: option<overwriteMode>,
  @ocaml.doc("<p>A value that determines whether a data integrity verification should be performed at
      the end of a task execution after all data and metadata have been transferred. 
      For more information, see 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-task.html\">Configure task settings</a>.
    </p>
         <p>Default value: POINT_IN_TIME_CONSISTENT.</p>
         <p>ONLY_FILES_TRANSFERRED (recommended): Perform verification only on files that were transferred.
    </p>
    
         <p>POINT_IN_TIME_CONSISTENT: Scan the entire source and entire destination 
      at the end of the transfer 
      to verify that source and destination are fully 
      synchronized. This option isn't supported when transferring to S3 Glacier or S3 Glacier 
      Deep Archive storage classes.</p>
         <p>NONE: No additional verification is done at the end of the 
      transfer, but all data transmissions are integrity-checked with 
      checksum verification during the transfer.</p>")
  @as("VerifyMode")
  verifyMode: option<verifyMode>,
}
@ocaml.doc("<p>Represents the mount options that are available for DataSync to access an NFS
      location.</p>")
type nfsMountOptions = {
  @ocaml.doc("<p>The specific NFS version that you want DataSync to use to mount your NFS share. If the
      server refuses to use the version specified, the sync will fail. If you don't specify a
      version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync automatically
      selects a version based on negotiation with the NFS server.</p>

         <p>You can specify the following NFS versions:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <a href=\"https://tools.ietf.org/html/rfc1813\">NFSv3</a>
                  </b> - stateless protocol version that allows for asynchronous
          writes on the server.</p>
            </li>
            <li>
               <p>
                  <b>
                     <a href=\"https://tools.ietf.org/html/rfc3530\">NFSv4.0</a>
                  </b> - stateful, firewall-friendly protocol version that supports
          delegations and pseudo filesystems.</p>
            </li>
            <li>
               <p>
                  <b>
                     <a href=\"https://tools.ietf.org/html/rfc5661\">NFSv4.1</a>
                  </b> - stateful protocol version that supports sessions,
          directory delegations, and parallel data processing. Version 4.1 also includes all
          features available in version 4.0.</p>
            </li>
         </ul>")
  @as("Version")
  version: option<nfsVersion>,
}
@ocaml.doc("<p>Represents a single entry in a list of locations. <code>LocationListEntry</code>
      returns an array that contains a list of locations when the 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html\">ListLocations</a>
      operation is called.</p>")
type locationListEntry = {
  @ocaml.doc("<p>Represents a list of URLs of a location. <code>LocationUri</code> returns an array that
      contains a list of locations when the <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListLocations.html\">ListLocations</a> operation is
      called.</p>
         <p>Format: <code>TYPE://GLOBAL_ID/SUBDIR</code>.</p>
         <p>TYPE designates the type of location. Valid values: NFS | EFS | S3.</p>
         <p>GLOBAL_ID is the globally unique identifier of the resource that backs the location. An
      example for EFS is <code>us-east-2.fs-abcd1234</code>. An example for Amazon S3 is the bucket
      name, such as <code>myBucket</code>. An example for NFS is a valid IPv4 address or a host name
      compliant with Domain Name Service (DNS).</p>
         <p>SUBDIR is a valid file system path, delimited by forward slashes as is the *nix
      convention. For NFS and Amazon EFS, it's the export path to mount the location. For
      Amazon S3, it's the prefix path that you mount to and treat as the root of the
      location.</p>
         <p></p>")
  @as("LocationUri")
  locationUri: option<locationUri>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the location. For Network File System (NFS) or Amazon
      EFS, the location is the export path. For Amazon S3, the location is the prefix path that you
      want to mount and use as the root of the location.</p>")
  @as("LocationArn")
  locationArn: option<locationArn>,
}
type filterValues = array<filterAttributeValue>
@ocaml.doc("<p>Specifies which files, folders, and objects to include or exclude when transferring files
      from source to destination.</p>")
type filterRule = {
  @ocaml.doc("<p>A single filter string that consists of the patterns to include or exclude. The patterns
      are delimited by \"|\" (that is, a pipe), for example: <code>/folder1|/folder2</code>
         </p>
         <p>
    </p>")
  @as("Value")
  value: option<filterValue>,
  @ocaml.doc("<p>The type of filter rule to apply. AWS DataSync only supports the SIMPLE_PATTERN rule
      type.</p>")
  @as("FilterType")
  filterType: option<filterType>,
}
type ec2SecurityGroupArnList = array<ec2SecurityGroupArn>
type destinationNetworkInterfaceArns = array<networkInterfaceArn>
@ocaml.doc("<p>Represents a single entry in a list of agents. <code>AgentListEntry</code> returns an
      array that contains a list of agents when the <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_ListAgents.html\">ListAgents</a>
      operation is
      called.</p>")
type agentListEntry = {
  @ocaml.doc("<p>The status of the agent.</p>") @as("Status") status: option<agentStatus>,
  @ocaml.doc("<p>The name of the agent.</p>") @as("Name") name: option<tagValue>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent.</p>") @as("AgentArn")
  agentArn: option<agentArn>,
}
type agentArnList = array<agentArn>
type taskList = array<taskListEntry>
@ocaml.doc("<p>You can use API filters to narrow down the list of resources returned by <code>ListTasks</code>.
      For example, to retrieve all tasks on a source location, you can use <code>ListTasks</code>
      with filter name <code>LocationId</code> and <code>Operator Equals</code> with the ARN for the 
      location.</p>")
type taskFilter = {
  @ocaml.doc("<p>The operator that is used to compare filter values (for example, <code>Equals</code> or 
      <code>Contains</code>). For more about API filtering operators, see
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html\">API filters for ListTasks and ListLocations</a>.</p>")
  @as("Operator")
  operator: operator,
  @ocaml.doc("<p>The values that you want to filter for. For example, you might want to display only tasks 
      for a specific destination location.</p>")
  @as("Values")
  values: filterValues,
  @ocaml.doc("<p>The name of the filter being used. Each API call supports a list of filters that are available
      for it. For example, <code>LocationId</code> for <code>ListTasks</code>.</p>")
  @as("Name")
  name: taskFilterName,
}
type taskExecutionList = array<taskExecutionListEntry>
@ocaml.doc("<p>The VPC endpoint, subnet, and security group that an agent uses to access IP addresses in
      a VPC (Virtual Private Cloud).</p>")
type privateLinkConfig = {
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the EC2
      resource that hosts an agent activated in a VPC or an agent that has access to a VPC
      endpoint.</p>")
  @as("SecurityGroupArns")
  securityGroupArns: option<plsecurityGroupArnList>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the subnets that are configured for an agent activated
      in a VPC or an agent that has access to a VPC endpoint.</p>")
  @as("SubnetArns")
  subnetArns: option<plsubnetArnList>,
  @ocaml.doc("<p>The private endpoint that is configured for an agent that has access to IP addresses in a
        <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html\">PrivateLink</a>. An agent that is configured with this endpoint will not be accessible
      over the public internet.</p>")
  @as("PrivateLinkEndpoint")
  privateLinkEndpoint: option<endpoint>,
  @ocaml.doc("<p>The ID of the VPC endpoint that is configured for an agent. An agent that is configured
      with a VPC endpoint will not be accessible over the public internet.</p>")
  @as("VpcEndpointId")
  vpcEndpointId: option<vpcEndpointId>,
}
type outputTagList = array<tagListEntry>
@ocaml.doc("<p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS)
      location.</p>")
type onPremConfig = {
  @ocaml.doc("<p>ARNs of the agents to use for an NFS location.</p>") @as("AgentArns")
  agentArns: agentArnList,
}
type locationList = array<locationListEntry>
@ocaml.doc("<p>You can use API filters to narrow down the list of resources returned by <code>ListLocations</code>. 
      For example, to retrieve all your Amazon S3 locations, you can use <code>ListLocations</code> with 
      filter name <code>LocationType S3</code> and <code>Operator Equals</code>.</p>")
type locationFilter = {
  @ocaml.doc("<p>The operator that is used to compare filter values (for example, <code>Equals</code> or 
      <code>Contains</code>). For more about API filtering operators, see 
      <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html\">API filters for ListTasks and ListLocations</a>.</p>")
  @as("Operator")
  operator: operator,
  @ocaml.doc("<p>The values that you want to filter for. For example, you might want to display only Amazon S3 
      locations.</p>")
  @as("Values")
  values: filterValues,
  @ocaml.doc("<p>The name of the filter being used. Each API call supports a list of filters that are available 
      for it (for example, <code>LocationType</code> for <code>ListLocations</code>).</p>")
  @as("Name")
  name: locationFilterName,
}
type inputTagList = array<tagListEntry>
type filterList = array<filterRule>
@ocaml.doc("<p>The subnet and the security group that DataSync uses to access target EFS file system.
      The subnet must have at least one mount target for that file system. The security group that
      you provide needs to be able to communicate with the security group on the mount target in the
      subnet specified. </p>")
type ec2Config = {
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the
      Amazon EC2 resource.</p>")
  @as("SecurityGroupArns")
  securityGroupArns: ec2SecurityGroupArnList,
  @ocaml.doc("<p>The ARN of the subnet and the security group that DataSync uses to access the target
      EFS file system.</p>")
  @as("SubnetArn")
  subnetArn: ec2SubnetArn,
}
type agentList = array<agentListEntry>
type taskFilters = array<taskFilter>
type locationFilters = array<locationFilter>
@ocaml.doc("<fullname>AWS DataSync</fullname>

         <p>AWS DataSync is a managed data transfer service that makes it simpler for you to
      automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3)
      or Amazon Elastic File System (Amazon EFS). </p>
         <p>This API interface reference for AWS DataSync contains documentation for a
      programming interface that you can use to manage AWS DataSync.</p>")
module UpdateAgent = {
  type t
  @ocaml.doc("<p>UpdateAgentRequest</p>")
  type request = {
    @ocaml.doc("<p>The name that you want to use to configure the agent.</p>") @as("Name")
    name: option<tagValue>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent to update.</p>") @as("AgentArn")
    agentArn: agentArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UpdateAgentCommand"
  let make = (~agentArn, ~name=?, ()) => new({name: name, agentArn: agentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTask = {
  type t
  @ocaml.doc("<p>DeleteTask</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task to delete.</p>") @as("TaskArn")
    taskArn: taskArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "DeleteTaskCommand"
  let make = (~taskArn, ()) => new({taskArn: taskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLocation = {
  type t
  @ocaml.doc("<p>DeleteLocation</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the location to delete.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "DeleteLocationCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAgent = {
  type t
  @ocaml.doc("<p>DeleteAgentRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent to delete. Use the <code>ListAgents</code>
      operation to return a list of agents for your account and AWS Region.</p>")
    @as("AgentArn")
    agentArn: agentArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "DeleteAgentCommand"
  let make = (~agentArn, ()) => new({agentArn: agentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelTaskExecution = {
  type t
  @ocaml.doc("<p>CancelTaskExecutionRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task execution to cancel.</p>")
    @as("TaskExecutionArn")
    taskExecutionArn: taskExecutionArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "CancelTaskExecutionCommand"
  let make = (~taskExecutionArn, ()) => new({taskExecutionArn: taskExecutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateTaskExecution = {
  type t
  type request = {
    @as("Options") options: options,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the specific task execution that is being updated. </p>"
    )
    @as("TaskExecutionArn")
    taskExecutionArn: taskExecutionArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UpdateTaskExecutionCommand"
  let make = (~options, ~taskExecutionArn, ()) =>
    new({options: options, taskExecutionArn: taskExecutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLocationSmb = {
  type t
  type request = {
    @as("MountOptions") mountOptions: option<smbMountOptions>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
      location.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @ocaml.doc("<p>The password of the user who can mount the share has the permissions to access files and
      folders in the SMB share.</p>")
    @as("Password")
    password: option<smbPassword>,
    @ocaml.doc("<p>The name of the Windows domain that the SMB server belongs to.</p>")
    @as("Domain")
    domain: option<smbDomain>,
    @ocaml.doc("<p>The user who can mount the share has the permissions to access files and folders in the
      SMB share.</p>")
    @as("User")
    user: option<smbUser>,
    @ocaml.doc("<p>The subdirectory in the SMB file system that is used to read data from the SMB source
      location or write data to the SMB destination. The SMB path should be a path that's
      exported by the SMB server, or a subdirectory of that path. The path should be such that it
      can be mounted by other SMB clients in your network.</p>
         <note>
            <p>
               <code>Subdirectory</code> must be specified with forward slashes. For example,
      <code>/path/to/folder</code>.</p>
         </note>
    
         <p>To transfer all the data in the folder that you specified, DataSync must have
      permissions to mount the SMB share and to access all the data in that share. To ensure this,
      do either of the following:</p>
         <ul>
            <li>
               <p>Ensure that the user/password specified belongs to the user who can mount the share
          and who has the appropriate permissions for all of the files and directories that you want
          DataSync to access.</p>
            </li>
            <li>
               <p>Use credentials of a member of the Backup Operators group to mount the share. </p>
            </li>
         </ul>
         <p>Doing either of these options enables the agent to access the data. For the agent to
      access directories, you must also enable all execute access.</p>")
    @as("Subdirectory")
    subdirectory: option<smbSubdirectory>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SMB location to update.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UpdateLocationSmbCommand"
  let make = (
    ~locationArn,
    ~mountOptions=?,
    ~agentArns=?,
    ~password=?,
    ~domain=?,
    ~user=?,
    ~subdirectory=?,
    (),
  ) =>
    new({
      mountOptions: mountOptions,
      agentArns: agentArns,
      password: password,
      domain: domain,
      user: user,
      subdirectory: subdirectory,
      locationArn: locationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLocationObjectStorage = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agents associated with the 
      self-managed object storage server location.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @ocaml.doc("<p>Optional. The secret key is used if credentials are required to access the self-managed
      object storage server. If your object storage requires a user name and password to
      authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
      and password, respectively.</p>")
    @as("SecretKey")
    secretKey: option<objectStorageSecretKey>,
    @ocaml.doc("<p>Optional. The access key is used if credentials are required to access the self-managed
      object storage server. If your object storage requires a user name and password to
      authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
      and password, respectively.</p>")
    @as("AccessKey")
    accessKey: option<objectStorageAccessKey>,
    @ocaml.doc("<p>The subdirectory in the self-managed object storage server that is used
      to read data from.</p>")
    @as("Subdirectory")
    subdirectory: option<s3Subdirectory>,
    @ocaml.doc("<p>The protocol that the object storage server uses to communicate. Valid values are
        <code>HTTP</code> or <code>HTTPS</code>.</p>")
    @as("ServerProtocol")
    serverProtocol: option<objectStorageServerProtocol>,
    @ocaml.doc("<p>The port that your self-managed object storage server accepts inbound network traffic on.
      The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can 
      specify a custom port if your self-managed object storage server requires one.</p>")
    @as("ServerPort")
    serverPort: option<objectStorageServerPort>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the self-managed object storage server location to be updated.</p>"
    )
    @as("LocationArn")
    locationArn: locationArn,
  }

  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "UpdateLocationObjectStorageCommand"
  let make = (
    ~locationArn,
    ~agentArns=?,
    ~secretKey=?,
    ~accessKey=?,
    ~subdirectory=?,
    ~serverProtocol=?,
    ~serverPort=?,
    (),
  ) =>
    new({
      agentArns: agentArns,
      secretKey: secretKey,
      accessKey: accessKey,
      subdirectory: subdirectory,
      serverProtocol: serverProtocol,
      serverPort: serverPort,
      locationArn: locationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  @ocaml.doc("<p>UntagResourceRequest</p>")
  type request = {
    @ocaml.doc("<p>The keys in the key-value pair in the tag to remove.</p>") @as("Keys")
    keys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to remove the tag from.</p>")
    @as("ResourceArn")
    resourceArn: taggableResourceArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UntagResourceCommand"
  let make = (~keys, ~resourceArn, ()) => new({keys: keys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeLocationSmb = {
  type t
  @ocaml.doc("<p>DescribeLocationSmbRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SMB location to describe.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }
  @ocaml.doc("<p>DescribeLocationSmbResponse</p>")
  type response = {
    @ocaml.doc("<p>The time that the SMB location was created.</p>") @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc(
      "<p>The mount options that are available for DataSync to use to access an SMB location.</p>"
    )
    @as("MountOptions")
    mountOptions: option<smbMountOptions>,
    @ocaml.doc("<p>The name of the Windows domain that the SMB server belongs to.</p>")
    @as("Domain")
    domain: option<smbDomain>,
    @ocaml.doc("<p>The user who can mount the share, has the permissions to access files and folders in the
      SMB share.</p>")
    @as("User")
    user: option<smbUser>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source SMB file system location that is
      created.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @ocaml.doc("<p>The URL of the source SMB location that was described.</p>") @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SMB location that was described.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeLocationSmbCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationS3 = {
  type t
  @ocaml.doc("<p>DescribeLocationS3Request</p>")
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket location to describe.</p>"
    )
    @as("LocationArn")
    locationArn: locationArn,
  }
  @ocaml.doc("<p>DescribeLocationS3Response</p>")
  type response = {
    @ocaml.doc("<p>The time that the Amazon S3 bucket location was created.</p>")
    @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>If you are using DataSync on an AWS Outpost, the Amazon Resource Name (ARNs) of the EC2
      agents deployed on your Outpost. For more information about launching a DataSync agent on an
      AWS Outpost, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent\">Deploy your DataSync agent on AWS Outposts</a>.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @as("S3Config") s3Config: option<s3Config>,
    @ocaml.doc("<p>The Amazon S3 storage class that you chose to store your files in when this location is
      used as a task destination. For more information about S3 storage classes, see <a href=\"http://aws.amazon.com/s3/storage-classes/\">Amazon S3 Storage Classes</a>. Some storage
      classes have behaviors that can affect your S3 storage cost. For detailed information, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes\">Considerations when 
        working with S3 storage classes in DataSync</a>.</p>")
    @as("S3StorageClass")
    s3StorageClass: option<s3StorageClass>,
    @ocaml.doc("<p>The URL of the Amazon S3 location that was described.</p>") @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket or access point.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeLocationS3Command"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationObjectStorage = {
  type t
  @ocaml.doc("<p>DescribeLocationObjectStorageRequest</p>")
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the self-managed object storage server location that was described.</p>"
    )
    @as("LocationArn")
    locationArn: locationArn,
  }
  @ocaml.doc("<p>DescribeLocationObjectStorageResponse</p>")
  type response = {
    @ocaml.doc("<p>The time that the self-managed object storage server agent was created.</p>")
    @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agents associated with the 
      self-managed object storage server location.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @ocaml.doc("<p>The protocol that the object storage server uses to communicate. 
      Valid values are HTTP or HTTPS.</p>")
    @as("ServerProtocol")
    serverProtocol: option<objectStorageServerProtocol>,
    @ocaml.doc("<p>The port that your self-managed object storage server accepts inbound network traffic on.
      The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS).</p>")
    @as("ServerPort")
    serverPort: option<objectStorageServerPort>,
    @ocaml.doc("<p>Optional. The access key is used if credentials are required to access the self-managed
      object storage server. If your object storage requires a user name and password to
      authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
      and password, respectively.</p>")
    @as("AccessKey")
    accessKey: option<objectStorageAccessKey>,
    @ocaml.doc(
      "<p>The URL of the source self-managed object storage server location that was described.</p>"
    )
    @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the self-managed object storage server location to describe.</p>"
    )
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "DescribeLocationObjectStorageCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationFsxWindows = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the FSx for Windows File Server location to
      describe.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The name of the Windows domain that the FSx for Windows File Server belongs to.</p>"
    )
    @as("Domain")
    domain: option<smbDomain>,
    @ocaml.doc("<p>The user who has the permissions to access files and folders in the FSx for Windows File
      Server file system.</p>")
    @as("User")
    user: option<smbUser>,
    @ocaml.doc("<p>The time that the FSx for Windows File Server location was created.</p>")
    @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the FSx
      for Windows File Server file system.</p>")
    @as("SecurityGroupArns")
    securityGroupArns: option<ec2SecurityGroupArnList>,
    @ocaml.doc("<p>The URL of the FSx for Windows File Server location that was described.</p>")
    @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the FSx for Windows File Server location that was
      described.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "DescribeLocationFsxWindowsCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTask = {
  type t
  @ocaml.doc("<p>UpdateTaskResponse</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource name of the CloudWatch
      LogGroup.</p>")
    @as("CloudWatchLogGroupArn")
    cloudWatchLogGroupArn: option<logGroupArn>,
    @ocaml.doc("<p>The name of the task to update.</p>") @as("Name") name: option<tagValue>,
    @ocaml.doc("<p>Specifies a schedule used to periodically transfer files from a source to a destination
      location. You can configure your task to execute hourly, daily, weekly or on specific days of
      the week. You control when in the day or hour you want the task to execute. The time you
      specify is UTC time. For more information, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html\">Scheduling your task</a>.</p>")
    @as("Schedule")
    schedule: option<taskSchedule>,
    @ocaml.doc("<p>A list of filter rules that determines which files to exclude from a task. The list should
      contain a single filter string that consists of the patterns to exclude. The patterns are
      delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code>
         </p>
         <p>
    </p>")
    @as("Excludes")
    excludes: option<filterList>,
    @as("Options") options: option<options>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource name of the task to update.</p>")
    @as("TaskArn")
    taskArn: taskArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UpdateTaskCommand"
  let make = (
    ~taskArn,
    ~cloudWatchLogGroupArn=?,
    ~name=?,
    ~schedule=?,
    ~excludes=?,
    ~options=?,
    (),
  ) =>
    new({
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      name: name,
      schedule: schedule,
      excludes: excludes,
      options: options,
      taskArn: taskArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLocationNfs = {
  type t
  type request = {
    @as("MountOptions") mountOptions: option<nfsMountOptions>,
    @as("OnPremConfig") onPremConfig: option<onPremConfig>,
    @ocaml.doc("<p>The subdirectory in the NFS file system that is used to read data from the NFS source
      location or write data to the NFS destination. The NFS path should be a path that's
      exported by the NFS server, or a subdirectory of that path. The path should be such that it
      can be mounted by other NFS clients in your network.</p>
    
         <p>To see all the paths exported by your NFS server, run \"<code>showmount -e
        nfs-server-name</code>\" from an NFS client that has access to your server. You can specify
        any directory that appears in the results, and any subdirectory of that directory. Ensure that
        the NFS export is accessible without Kerberos authentication. </p>
         <p>To transfer all the data in the folder that you specified, DataSync must have
      permissions to read all the data. To ensure this, either configure the NFS export with
        <code>no_root_squash</code>, or ensure that the files you want DataSync to
      access have permissions that allow read access for all users. Doing either option enables the
      agent to read the files. For the agent to access directories, you must additionally enable all
      execute access.</p>
         <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p>
     
         <p>For information about NFS export configuration, see 18.7. The /etc/exports
      Configuration File in the Red Hat Enterprise Linux documentation.</p>")
    @as("Subdirectory")
    subdirectory: option<nfsSubdirectory>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the NFS location to update.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "UpdateLocationNfsCommand"
  let make = (~locationArn, ~mountOptions=?, ~onPremConfig=?, ~subdirectory=?, ()) =>
    new({
      mountOptions: mountOptions,
      onPremConfig: onPremConfig,
      subdirectory: subdirectory,
      locationArn: locationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>TagResourceRequest</p>")
  type request = {
    @ocaml.doc("<p>The tags to apply.</p>") @as("Tags") tags: inputTagList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to apply the tag to.</p>")
    @as("ResourceArn")
    resourceArn: taggableResourceArn,
  }

  @module("@aws-sdk/client-datasync") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartTaskExecution = {
  type t
  @ocaml.doc("<p>StartTaskExecutionRequest</p>")
  type request = {
    @ocaml.doc("<p>A list of filter rules that determines which files to include when running a task. The
      pattern should contain a single filter string that consists of the patterns to include. The
      patterns are delimited by \"|\" (that is, a pipe). For example: <code>\"/folder1|/folder2\"</code>
         </p>
    
         <p>
    </p>")
    @as("Includes")
    includes: option<filterList>,
    @as("OverrideOptions") overrideOptions: option<options>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task to start.</p>") @as("TaskArn")
    taskArn: taskArn,
  }
  @ocaml.doc("<p>StartTaskExecutionResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specific task execution that was
      started.</p>")
    @as("TaskExecutionArn")
    taskExecutionArn: option<taskExecutionArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "StartTaskExecutionCommand"
  let make = (~taskArn, ~includes=?, ~overrideOptions=?, ()) =>
    new({includes: includes, overrideOptions: overrideOptions, taskArn: taskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTaskExecutions = {
  type t
  @ocaml.doc("<p>ListTaskExecutions</p>")
  type request = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the next list of the
      executed tasks.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of executed tasks to list.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task whose tasks you want to list.</p>")
    @as("TaskArn")
    taskArn: option<taskArn>,
  }
  @ocaml.doc("<p>ListTaskExecutionsResponse</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the next list
      of executed tasks.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of executed tasks.</p>") @as("TaskExecutions")
    taskExecutions: option<taskExecutionList>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "ListTaskExecutionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~taskArn=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, taskArn: taskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p>ListTagsForResourceRequest</p>")
  type request = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the next list of
      locations.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of locations to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource whose tags to list.</p>")
    @as("ResourceArn")
    resourceArn: taggableResourceArn,
  }
  @ocaml.doc("<p>ListTagsForResourceResponse</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the next list
      of resource tags.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Array of resource tags.</p>") @as("Tags") tags: option<outputTagList>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAgents = {
  type t
  @ocaml.doc("<p>ListAgentsRequest</p>")
  type request = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the next list of
      agents.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of agents to list.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>ListAgentsResponse</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the next list
      of agents.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of agents in your account.</p>") @as("Agents") agents: option<agentList>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "ListAgentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTaskExecution = {
  type t
  @ocaml.doc("<p>DescribeTaskExecutionRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that is being executed.</p>")
    @as("TaskExecutionArn")
    taskExecutionArn: taskExecutionArn,
  }
  @ocaml.doc("<p>DescribeTaskExecutionResponse</p>")
  type response = {
    @ocaml.doc("<p>The result of the task execution.</p>") @as("Result")
    result: option<taskExecutionResultDetail>,
    @ocaml.doc("<p>The physical number of bytes transferred over the network.</p>")
    @as("BytesTransferred")
    bytesTransferred: option<long>,
    @ocaml.doc(
      "<p>The number of logical bytes written to the destination AWS storage resource.</p>"
    )
    @as("BytesWritten")
    bytesWritten: option<long>,
    @ocaml.doc("<p>The actual number of files that was transferred over the network. This value is
      calculated and updated on an ongoing basis during the TRANSFERRING phase. It's updated
      periodically when each file is read from the source and sent over the network. </p>
         <p>If failures occur during a transfer, this value can be less than
        <code>EstimatedFilesToTransfer</code>. This value can also be greater than
        <code>EstimatedFilesTransferred</code> in some cases. This element is
      implementation-specific for some location types, so don't use it as an indicator for a correct
      file number or to monitor your task execution.</p>")
    @as("FilesTransferred")
    filesTransferred: option<long>,
    @ocaml.doc("<p>The estimated physical number of bytes that is to be transferred over the
      network.</p>")
    @as("EstimatedBytesToTransfer")
    estimatedBytesToTransfer: option<long>,
    @ocaml.doc("<p>The expected number of files that is to be transferred over the network. This value is
      calculated during the PREPARING phase, before the TRANSFERRING phase. This value is the
      expected number of files to be transferred. It's calculated based on comparing the
      content of the source and destination locations and finding the delta that needs to be
      transferred. </p>")
    @as("EstimatedFilesToTransfer")
    estimatedFilesToTransfer: option<long>,
    @ocaml.doc("<p>The time that the task execution was started.</p>") @as("StartTime")
    startTime: option<time>,
    @ocaml.doc("<p>A list of filter rules that determines which files to include when running a task. The
      list should contain a single filter string that consists of the patterns to include. The
      patterns are delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code>
         </p>
         <p>
    </p>")
    @as("Includes")
    includes: option<filterList>,
    @ocaml.doc("<p>A list of filter rules that determines which files to exclude from a task. The list should
      contain a single filter string that consists of the patterns to exclude. The patterns are
      delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code>
         </p>
         <p>
    </p>")
    @as("Excludes")
    excludes: option<filterList>,
    @as("Options") options: option<options>,
    @ocaml.doc("<p>The status of the task execution. </p>

      
         <p>For detailed information about task execution statuses, see Understanding
      Task Statuses in the <i>AWS DataSync User Guide.</i>
         </p>")
    @as("Status")
    status: option<taskExecutionStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task execution that was described.
        <code>TaskExecutionArn</code> is hierarchical and includes <code>TaskArn</code> for the task
      that was executed. </p>
         <p>For example, a <code>TaskExecution</code> value with the ARN
        <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b</code>
      executed the task with the ARN
        <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2</code>. </p>")
    @as("TaskExecutionArn")
    taskExecutionArn: option<taskExecutionArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "DescribeTaskExecutionCommand"
  let make = (~taskExecutionArn, ()) => new({taskExecutionArn: taskExecutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTask = {
  type t
  @ocaml.doc("<p>DescribeTaskRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task to describe.</p>") @as("TaskArn")
    taskArn: taskArn,
  }
  @ocaml.doc("<p>DescribeTaskResponse</p>")
  type response = {
    @ocaml.doc("<p>The time that the task was created.</p>") @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>Detailed description of an error that was encountered during the task execution. You
      can use this information to help troubleshoot issues. </p>")
    @as("ErrorDetail")
    errorDetail: option<string_>,
    @ocaml.doc("<p>Errors that AWS DataSync encountered during execution of the task. You can use this
      error code to help troubleshoot issues.</p>")
    @as("ErrorCode")
    errorCode: option<string_>,
    @ocaml.doc(
      "<p>The schedule used to periodically transfer files from a source to a destination location.</p>"
    )
    @as("Schedule")
    schedule: option<taskSchedule>,
    @ocaml.doc("<p>A list of filter rules that determines which files to exclude from a task. The list should
      contain a single filter string that consists of the patterns to exclude. The patterns are
      delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code>
         </p>
         <p>
    </p>")
    @as("Excludes")
    excludes: option<filterList>,
    @ocaml.doc("<p>The set of configuration options that control the behavior of a single execution of the
      task that occurs when you call <code>StartTaskExecution</code>. You can configure these
      options to preserve metadata such as user ID (UID) and group (GID), file permissions, data
      integrity verification, and so on.</p>
         <p>For each individual task execution, you can override these options by specifying the
      overriding <code>OverrideOptions</code> value to <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html\">StartTaskExecution</a> operation. </p>")
    @as("Options")
    options: option<options>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination ENIs (Elastic Network Interface) that
      was created for your subnet.</p>")
    @as("DestinationNetworkInterfaceArns")
    destinationNetworkInterfaceArns: option<destinationNetworkInterfaceArns>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source ENIs (Elastic Network Interface) that was
      created for your subnet.</p>")
    @as("SourceNetworkInterfaceArns")
    sourceNetworkInterfaceArns: option<sourceNetworkInterfaceArns>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that was used to
      monitor and log events in the task.</p>

      
         <p>For more information on these groups, see Working with Log Groups and Log
      Streams in the <i>Amazon CloudWatch User Guide</i>.</p>")
    @as("CloudWatchLogGroupArn")
    cloudWatchLogGroupArn: option<logGroupArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS storage resource's location.</p>")
    @as("DestinationLocationArn")
    destinationLocationArn: option<locationArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source file system's location.</p>")
    @as("SourceLocationArn")
    sourceLocationArn: option<locationArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task execution that is syncing files.</p>")
    @as("CurrentTaskExecutionArn")
    currentTaskExecutionArn: option<taskExecutionArn>,
    @ocaml.doc("<p>The name of the task that was described.</p>") @as("Name")
    name: option<tagValue>,
    @ocaml.doc("<p>The status of the task that was described.</p>

      
         <p>For detailed information about task execution statuses, see Understanding
      Task Statuses in the <i>AWS DataSync User Guide</i>.</p>")
    @as("Status")
    status: option<taskStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that was described.</p>")
    @as("TaskArn")
    taskArn: option<taskArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeTaskCommand"
  let make = (~taskArn, ()) => new({taskArn: taskArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationNfs = {
  type t
  @ocaml.doc("<p>DescribeLocationNfsRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the NFS location to describe.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }
  @ocaml.doc("<p>DescribeLocationNfsResponse</p>")
  type response = {
    @ocaml.doc("<p>The time that the NFS location was created.</p>") @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>The NFS mount options that DataSync used to mount your NFS share.</p>")
    @as("MountOptions")
    mountOptions: option<nfsMountOptions>,
    @as("OnPremConfig") onPremConfig: option<onPremConfig>,
    @ocaml.doc("<p>The URL of the source NFS location that was described.</p>") @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the NFS location that was described.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeLocationNfsCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationEfs = {
  type t
  @ocaml.doc("<p>DescribeLocationEfsRequest</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the EFS location to describe.</p>")
    @as("LocationArn")
    locationArn: locationArn,
  }
  @ocaml.doc("<p>DescribeLocationEfsResponse</p>")
  type response = {
    @ocaml.doc("<p>The time that the EFS location was created.</p>") @as("CreationTime")
    creationTime: option<time>,
    @as("Ec2Config") ec2Config: option<ec2Config>,
    @ocaml.doc("<p>The URL of the EFS location that was described.</p>") @as("LocationUri")
    locationUri: option<locationUri>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the EFS location that was described.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeLocationEfsCommand"
  let make = (~locationArn, ()) => new({locationArn: locationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAgent = {
  type t
  @ocaml.doc("<p>DescribeAgent</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent to describe.</p>") @as("AgentArn")
    agentArn: agentArn,
  }
  @ocaml.doc("<p>DescribeAgentResponse</p>")
  type response = {
    @ocaml.doc(
      "<p>The subnet and the security group that DataSync used to access a VPC endpoint.</p>"
    )
    @as("PrivateLinkConfig")
    privateLinkConfig: option<privateLinkConfig>,
    @ocaml.doc("<p>The type of endpoint that your agent is connected to. If the endpoint is a VPC endpoint,
      the agent is not accessible over the public internet. </p>")
    @as("EndpointType")
    endpointType: option<endpointType>,
    @ocaml.doc("<p>The time that the agent was activated (that is, created in your account).</p>")
    @as("CreationTime")
    creationTime: option<time>,
    @ocaml.doc("<p>The time that the agent last connected to DataSync.</p>")
    @as("LastConnectionTime")
    lastConnectionTime: option<time>,
    @ocaml.doc("<p>The status of the agent. If the status is ONLINE, then the agent is configured properly
      and is available to use. The Running status is the normal running status for an agent. If the
      status is OFFLINE, the agent's VM is turned off or the agent is in an unhealthy state. When
      the issue that caused the unhealthy state is resolved, the agent returns to ONLINE
      status.</p>")
    @as("Status")
    status: option<agentStatus>,
    @ocaml.doc("<p>The name of the agent.</p>") @as("Name") name: option<tagValue>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent.</p>") @as("AgentArn")
    agentArn: option<agentArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "DescribeAgentCommand"
  let make = (~agentArn, ()) => new({agentArn: agentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTask = {
  type t
  @ocaml.doc("<p>CreateTaskRequest</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to add to the resource. The
      value can be an empty string. </p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>Specifies a schedule used to periodically transfer files from a source to a destination
      location. The schedule should be specified in UTC time. For more information, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html\">Scheduling your task</a>.</p>")
    @as("Schedule")
    schedule: option<taskSchedule>,
    @ocaml.doc("<p>A list of filter rules that determines which files to exclude from a task. The list should
      contain a single filter string that consists of the patterns to exclude. The patterns are
      delimited by \"|\" (that is, a pipe), for example, <code>\"/folder1|/folder2\"</code>. </p>
         <p>
    </p>")
    @as("Excludes")
    excludes: option<filterList>,
    @ocaml.doc("<p>The set of configuration options that control the behavior of a single execution of the
      task that occurs when you call <code>StartTaskExecution</code>. You can configure these
      options to preserve metadata such as user ID (UID) and group ID (GID), file permissions, data
      integrity verification, and so on.</p>
         <p>For each individual task execution, you can override these options by specifying the
        <code>OverrideOptions</code> before starting the task execution. For more information, see
      the <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html\">StartTaskExecution</a> operation. </p>")
    @as("Options")
    options: option<options>,
    @ocaml.doc("<p>The name of a task. This value is a text reference that is used to identify the task in
      the console. </p>")
    @as("Name")
    name: option<tagValue>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to
      monitor and log events in the task. </p>")
    @as("CloudWatchLogGroupArn")
    cloudWatchLogGroupArn: option<logGroupArn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an AWS storage resource's location. </p>")
    @as("DestinationLocationArn")
    destinationLocationArn: locationArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source location for the task.</p>")
    @as("SourceLocationArn")
    sourceLocationArn: locationArn,
  }
  @ocaml.doc("<p>CreateTaskResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task.</p>") @as("TaskArn")
    taskArn: option<taskArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateTaskCommand"
  let make = (
    ~destinationLocationArn,
    ~sourceLocationArn,
    ~tags=?,
    ~schedule=?,
    ~excludes=?,
    ~options=?,
    ~name=?,
    ~cloudWatchLogGroupArn=?,
    (),
  ) =>
    new({
      tags: tags,
      schedule: schedule,
      excludes: excludes,
      options: options,
      name: name,
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      destinationLocationArn: destinationLocationArn,
      sourceLocationArn: sourceLocationArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationSmb = {
  type t
  @ocaml.doc("<p>CreateLocationSmbRequest</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to add to the location. The value
      can be an empty string. We recommend using tags to name your resources.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The mount options used by DataSync to access the SMB server.</p>")
    @as("MountOptions")
    mountOptions: option<smbMountOptions>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
      location. </p>")
    @as("AgentArns")
    agentArns: agentArnList,
    @ocaml.doc("<p>The password of the user who can mount the share, has the permissions to access files and
      folders in the SMB share.</p>")
    @as("Password")
    password: smbPassword,
    @ocaml.doc("<p>The name of the Windows domain that the SMB server belongs to.</p>")
    @as("Domain")
    domain: option<smbDomain>,
    @ocaml.doc("<p>The user who can mount the share, has the permissions to access files and folders in the
      SMB share.</p>
    
         <p>For information about choosing a user name that ensures sufficient permissions to files,
      folders, and metadata, see <a href=\"create-smb-location.html#SMBuser\">user</a>.</p>")
    @as("User")
    user: smbUser,
    @ocaml.doc("<p>The name of the SMB server. This value is the IP address or Domain Name Service (DNS) name
      of the SMB server. An agent that is installed on-premises uses this hostname to mount the SMB
      server in a network.</p>
         <note>
            <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4) address.</p>
         </note>")
    @as("ServerHostname")
    serverHostname: serverHostname,
    @ocaml.doc("<p>The subdirectory in the SMB file system that is used to read data from the SMB source
      location or write data to the SMB destination. The SMB path should be a path that's
      exported by the SMB server, or a subdirectory of that path. The path should be such that it
      can be mounted by other SMB clients in your network.</p>
         <note>
            <p>
               <code>Subdirectory</code> must be specified with forward slashes. For example,
          <code>/path/to/folder</code>.</p>
         </note>

         <p>To transfer all the data in the folder you specified, DataSync needs to have permissions
      to mount the SMB share, as well as to access all the data in that share. To ensure this,
      either ensure that the user/password specified belongs to the user who can mount the share,
      and who has the appropriate permissions for all of the files and directories that you want
      DataSync to access, or use credentials of a member of the Backup Operators group to mount
      the share. Doing either enables the agent to access the data. For the agent to access
      directories, you must additionally enable all execute access.</p>")
    @as("Subdirectory")
    subdirectory: smbSubdirectory,
  }
  @ocaml.doc("<p>CreateLocationSmbResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source SMB file system location that is
      created.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateLocationSmbCommand"
  let make = (
    ~agentArns,
    ~password,
    ~user,
    ~serverHostname,
    ~subdirectory,
    ~tags=?,
    ~mountOptions=?,
    ~domain=?,
    (),
  ) =>
    new({
      tags: tags,
      mountOptions: mountOptions,
      agentArns: agentArns,
      password: password,
      domain: domain,
      user: user,
      serverHostname: serverHostname,
      subdirectory: subdirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationS3 = {
  type t
  @ocaml.doc("<p>CreateLocationS3Request</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to add to the location. The
      value can be an empty string. We recommend using tags to name your resources.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>If you are using DataSync on an AWS Outpost, specify the Amazon Resource Names (ARNs) of
      the DataSync agents deployed on your Outpost. For more information about launching a DataSync
      agent on an AWS Outpost, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent\">Deploy your DataSync agent on AWS Outposts</a>.</p>")
    @as("AgentArns")
    agentArns: option<agentArnList>,
    @as("S3Config") s3Config: s3Config,
    @ocaml.doc("<p>The Amazon S3 storage class that you want to store your files in when this location is
      used as a task destination. For buckets in AWS Regions, the storage class defaults to Standard.
      For buckets on AWS Outposts, the storage class defaults to AWS S3 Outposts.</p>
      
         <p>For more information about S3 storage classes, see <a href=\"http://aws.amazon.com/s3/storage-classes/\">Amazon S3 Storage Classes</a>. Some storage classes have behaviors that
      can affect your S3 storage cost. For detailed information, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes\">Considerations when working with S3 storage classes in DataSync</a>.</p>")
    @as("S3StorageClass")
    s3StorageClass: option<s3StorageClass>,
    @ocaml.doc("<p>The ARN of the Amazon S3 bucket. If the bucket is on an AWS Outpost, this must be an
      access point ARN.</p>")
    @as("S3BucketArn")
    s3BucketArn: s3BucketArn,
    @ocaml.doc("<p>A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3 is used to read
      data from the S3 source location or write data to the S3 destination.</p>")
    @as("Subdirectory")
    subdirectory: option<s3Subdirectory>,
  }
  @ocaml.doc("<p>CreateLocationS3Response</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source Amazon S3 bucket location that is
      created.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateLocationS3Command"
  let make = (
    ~s3Config,
    ~s3BucketArn,
    ~tags=?,
    ~agentArns=?,
    ~s3StorageClass=?,
    ~subdirectory=?,
    (),
  ) =>
    new({
      tags: tags,
      agentArns: agentArns,
      s3Config: s3Config,
      s3StorageClass: s3StorageClass,
      s3BucketArn: s3BucketArn,
      subdirectory: subdirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationObjectStorage = {
  type t
  @ocaml.doc("<p>CreateLocationObjectStorageRequest</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to add to the location. The
      value can be an empty string. We recommend using tags to name your resources.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agents associated with the 
      self-managed object storage server location.</p>")
    @as("AgentArns")
    agentArns: agentArnList,
    @ocaml.doc("<p>Optional. The secret key is used if credentials are required to access the self-managed
      object storage server. If your object storage requires a user name and password to
      authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
      and password, respectively.</p>")
    @as("SecretKey")
    secretKey: option<objectStorageSecretKey>,
    @ocaml.doc("<p>Optional. The access key is used if credentials are required to access the self-managed
      object storage server. If your object storage requires a user name and password to
      authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
      and password, respectively.</p>")
    @as("AccessKey")
    accessKey: option<objectStorageAccessKey>,
    @ocaml.doc("<p>The bucket on the self-managed object storage server that is used
      to read data from.</p>")
    @as("BucketName")
    bucketName: objectStorageBucketName,
    @ocaml.doc("<p>The subdirectory in the self-managed object storage server that is used
      to read data from.</p>")
    @as("Subdirectory")
    subdirectory: option<s3Subdirectory>,
    @ocaml.doc("<p>The protocol that the object storage server uses to communicate. 
      Valid values are HTTP or HTTPS.</p>")
    @as("ServerProtocol")
    serverProtocol: option<objectStorageServerProtocol>,
    @ocaml.doc("<p>The port that your self-managed object storage server accepts inbound network traffic on.
      The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can 
      specify a custom port if your self-managed object storage server requires one.</p>")
    @as("ServerPort")
    serverPort: option<objectStorageServerPort>,
    @ocaml.doc("<p>The name of the self-managed object storage server. This value is the 
      IP address or Domain Name Service (DNS) name of the object storage server. 
      An agent uses this host name to mount the object storage server in a network. </p>")
    @as("ServerHostname")
    serverHostname: serverHostname,
  }
  @ocaml.doc("<p>CreateLocationObjectStorageResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agents associated with the 
      self-managed object storage server location.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "CreateLocationObjectStorageCommand"
  let make = (
    ~agentArns,
    ~bucketName,
    ~serverHostname,
    ~tags=?,
    ~secretKey=?,
    ~accessKey=?,
    ~subdirectory=?,
    ~serverProtocol=?,
    ~serverPort=?,
    (),
  ) =>
    new({
      tags: tags,
      agentArns: agentArns,
      secretKey: secretKey,
      accessKey: accessKey,
      bucketName: bucketName,
      subdirectory: subdirectory,
      serverProtocol: serverProtocol,
      serverPort: serverPort,
      serverHostname: serverHostname,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationNfs = {
  type t
  @ocaml.doc("<p>CreateLocationNfsRequest</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to add to the location. The
      value can be an empty string. We recommend using tags to name your resources.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The NFS mount options that DataSync can use to mount your NFS share.</p>")
    @as("MountOptions")
    mountOptions: option<nfsMountOptions>,
    @ocaml.doc("<p>Contains a list of Amazon Resource Names (ARNs) of agents that are used to connect to
      an NFS server. </p>
         <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p>")
    @as("OnPremConfig")
    onPremConfig: onPremConfig,
    @ocaml.doc("<p>The name of the NFS server. This value is the IP address or Domain Name Service (DNS)
      name of the NFS server. An agent that is installed on-premises uses this host name to mount
      the NFS server in a network. </p>
         <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p>
         <note>
            <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4)
        address.</p>
         </note>")
    @as("ServerHostname")
    serverHostname: serverHostname,
    @ocaml.doc("<p>The subdirectory in the NFS file system that is used to read data from the NFS source
      location or write data to the NFS destination. The NFS path should be a path that's
      exported by the NFS server, or a subdirectory of that path. The path should be such that it
      can be mounted by other NFS clients in your network. </p>
         <p>To see all the paths exported by your NFS server, run \"<code>showmount -e
        nfs-server-name</code>\" from an NFS client that has access to your server. You can specify
      any directory that appears in the results, and any subdirectory of that directory. Ensure that
      the NFS export is accessible without Kerberos authentication. </p>
         <p>To transfer all the data in the folder you specified, DataSync needs to have
      permissions to read all the data. To ensure this, either configure the NFS export with
        <code>no_root_squash,</code> or ensure that the permissions for all of the files that you
      want DataSync allow read access for all users. Doing either enables the agent to read the
      files. For the agent to access directories, you must additionally enable all execute
      access.</p>
         <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p>
      
         <p>For information about NFS export configuration, see 18.7. The /etc/exports
      Configuration File in the Red Hat Enterprise Linux documentation.</p>")
    @as("Subdirectory")
    subdirectory: nfsSubdirectory,
  }
  @ocaml.doc("<p>CreateLocationNfsResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source NFS file system location that is
      created.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateLocationNfsCommand"
  let make = (~onPremConfig, ~serverHostname, ~subdirectory, ~tags=?, ~mountOptions=?, ()) =>
    new({
      tags: tags,
      mountOptions: mountOptions,
      onPremConfig: onPremConfig,
      serverHostname: serverHostname,
      subdirectory: subdirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationFsxWindows = {
  type t
  type request = {
    @ocaml.doc("<p>The password of the user who has the permissions to access files and folders in the FSx
      for Windows File Server file system.</p>")
    @as("Password")
    password: smbPassword,
    @ocaml.doc(
      "<p>The name of the Windows domain that the FSx for Windows File Server belongs to.</p>"
    )
    @as("Domain")
    domain: option<smbDomain>,
    @ocaml.doc("<p>The user who has the permissions to access files and folders in the FSx for Windows File
      Server file system.</p>
         <p>For information about choosing a user name that ensures sufficient permissions to files,
      folders, and metadata, see <a href=\"create-fsx-location.html#FSxWuser\">user</a>.</p>")
    @as("User")
    user: smbUser,
    @ocaml.doc("<p>The key-value pair that represents a tag that you want to add to the resource. The
      value can be an empty string. This value helps you manage, filter, and search for your
      resources. We recommend that you create a name tag for your location.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the security groups that are to use to configure the
      FSx for Windows File Server file system.</p>")
    @as("SecurityGroupArns")
    securityGroupArns: ec2SecurityGroupArnList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the FSx for Windows File Server file system.</p>"
    )
    @as("FsxFilesystemArn")
    fsxFilesystemArn: fsxFilesystemArn,
    @ocaml.doc("<p>A subdirectory in the location’s path. This subdirectory in the Amazon FSx for Windows
      File Server file system is used to read data from the Amazon FSx for Windows File Server
      source location or write data to the FSx for Windows File Server destination.</p>")
    @as("Subdirectory")
    subdirectory: option<fsxWindowsSubdirectory>,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the FSx for Windows File Server file system location
      that is created.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new: request => t = "CreateLocationFsxWindowsCommand"
  let make = (
    ~password,
    ~user,
    ~securityGroupArns,
    ~fsxFilesystemArn,
    ~domain=?,
    ~tags=?,
    ~subdirectory=?,
    (),
  ) =>
    new({
      password: password,
      domain: domain,
      user: user,
      tags: tags,
      securityGroupArns: securityGroupArns,
      fsxFilesystemArn: fsxFilesystemArn,
      subdirectory: subdirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationEfs = {
  type t
  @ocaml.doc("<p>CreateLocationEfsRequest</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents a tag that you want to add to the resource. The
      value can be an empty string. This value helps you manage, filter, and search for your
      resources. We recommend that you create a name tag for your location.</p>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The subnet and security group that the Amazon EFS file system uses. The security group
      that you provide needs to be able to communicate with the security group on the mount target
      in the subnet specified.</p>
         <p>The exact relationship between security group M (of the mount target) and security
      group S (which you provide for DataSync to use at this stage) is as follows: </p>
         <ul>
            <li>
               <p> Security group M (which you associate with the mount target) must allow inbound
          access for the Transmission Control Protocol (TCP) on the NFS port (2049) from security
          group S. You can enable inbound connections either by IP address (CIDR range) or security
          group. </p>
            </li>
            <li>
               <p>Security group S (provided to DataSync to access EFS) should have a rule that
          enables outbound connections to the NFS port on one of the file system’s mount targets.
          You can enable outbound connections either by IP address (CIDR range) or security
          group.</p>
            
               <p>For information about security groups and mount targets, see Security
          Groups for Amazon EC2 Instances and Mount Targets in the <i>Amazon EFS User
            Guide.</i>
               </p>
            </li>
         </ul>")
    @as("Ec2Config")
    ec2Config: ec2Config,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the Amazon EFS file system.</p>")
    @as("EfsFilesystemArn")
    efsFilesystemArn: efsFilesystemArn,
    @ocaml.doc("<p>A subdirectory in the location’s path. This subdirectory in the EFS file system is used
      to read data from the EFS source location or write data to the EFS destination. By default,
      AWS DataSync uses the root directory.</p>
         <note>
            <p>
               <code>Subdirectory</code> must be specified with forward slashes. For example,
          <code>/path/to/folder</code>.</p>
         </note>")
    @as("Subdirectory")
    subdirectory: option<efsSubdirectory>,
  }
  @ocaml.doc("<p>CreateLocationEfs</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that is
      created.</p>")
    @as("LocationArn")
    locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateLocationEfsCommand"
  let make = (~ec2Config, ~efsFilesystemArn, ~tags=?, ~subdirectory=?, ()) =>
    new({
      tags: tags,
      ec2Config: ec2Config,
      efsFilesystemArn: efsFilesystemArn,
      subdirectory: subdirectory,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAgent = {
  type t
  @ocaml.doc("<p>CreateAgentRequest</p>")
  type request = {
    @ocaml.doc(
      "<p>The ARNs of the security groups used to protect your data transfer task subnets. See <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_Ec2Config.html#DataSync-Type-Ec2Config-SecurityGroupArns\">SecurityGroupArns</a>.</p>"
    )
    @as("SecurityGroupArns")
    securityGroupArns: option<plsecurityGroupArnList>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic
      network interfaces for each data transfer task. The agent that runs a task must be private.
      When you start a task that is associated with an agent created in a VPC, or one that has
      access to an IP address in a VPC, then the task is also private. In this case, DataSync
      creates four network interfaces for each task in your subnet. For a data transfer to work, the
      agent must be able to route to all these four network interfaces.</p>")
    @as("SubnetArns")
    subnetArns: option<plsubnetArnList>,
    @ocaml.doc("<p>The ID of the VPC (virtual private cloud) endpoint that the agent has access to. This is
      the client-side VPC endpoint, also called a PrivateLink. If you don't have a PrivateLink VPC
      endpoint, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service\">Creating a VPC Endpoint Service Configuration</a> in the Amazon VPC User Guide.</p>
         <p>VPC endpoint ID looks like this: <code>vpce-01234d5aff67890e1</code>.</p>")
    @as("VpcEndpointId")
    vpcEndpointId: option<vpcEndpointId>,
    @ocaml.doc("<p>The key-value pair that represents the tag that you want to associate with the agent.
      The value can be an empty string. This value helps you manage, filter, and search for your
      agents.</p>
         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
        UTF-8 format, and the following special characters: + - = . _ : / @. </p>
         </note>")
    @as("Tags")
    tags: option<inputTagList>,
    @ocaml.doc("<p>The name you configured for your agent. This value is a text reference that is used to
      identify the agent in the console.</p>")
    @as("AgentName")
    agentName: option<tagValue>,
    @ocaml.doc("<p>Your agent activation key. You can get the activation key either by sending an HTTP GET
      request with redirects that enable you to get the agent IP address (port 80). Alternatively,
      you can get it from the AWS DataSync console.</p>
         <p>The redirect URL returned in the response provides you the activation key for your
      agent in the query string parameter <code>activationKey</code>. It might also include other
      activation-related parameters; however, these are merely defaults. The arguments you pass to
      this API call determine the actual configuration of your agent.</p>
      

         <p>For more information, see Activating an Agent in the <i>AWS DataSync
        User Guide.</i>
         </p>")
    @as("ActivationKey")
    activationKey: activationKey,
  }
  @ocaml.doc("<p>CreateAgentResponse</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the agent. Use the <code>ListAgents</code> operation
      to return a list of agents for your account and AWS Region.</p>")
    @as("AgentArn")
    agentArn: option<agentArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "CreateAgentCommand"
  let make = (
    ~activationKey,
    ~securityGroupArns=?,
    ~subnetArns=?,
    ~vpcEndpointId=?,
    ~tags=?,
    ~agentName=?,
    (),
  ) =>
    new({
      securityGroupArns: securityGroupArns,
      subnetArns: subnetArns,
      vpcEndpointId: vpcEndpointId,
      tags: tags,
      agentName: agentName,
      activationKey: activationKey,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTasks = {
  type t
  @ocaml.doc("<p>ListTasksRequest</p>")
  type request = {
    @ocaml.doc("<p>You can use API filters to narrow down the list of resources returned by <code>ListTasks</code>. 
      For example, to retrieve all tasks on a specific source location, you can use <code>ListTasks</code>
      with filter name <code>LocationId</code> and <code>Operator Equals</code> with the ARN for the 
      location.</p>")
    @as("Filters")
    filters: option<taskFilters>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the next list of
      tasks.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of tasks to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>ListTasksResponse</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the next list
      of tasks.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of all the tasks that are returned.</p>") @as("Tasks")
    tasks: option<taskList>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "ListTasksCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({filters: filters, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLocations = {
  type t
  @ocaml.doc("<p>ListLocationsRequest</p>")
  type request = {
    @ocaml.doc("<p>You can use API filters to narrow down the list of resources returned by <code>ListLocations</code>. 
      For example, to retrieve all tasks on a specific source location, you can use <code>ListLocations</code> 
      with filter name <code>LocationType S3</code> and <code>Operator Equals</code>.</p>")
    @as("Filters")
    filters: option<locationFilters>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the next list of
      locations.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of locations to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>ListLocationsResponse</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the next list
      of locations.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array that contains a list of locations.</p>") @as("Locations")
    locations: option<locationList>,
  }
  @module("@aws-sdk/client-datasync") @new external new: request => t = "ListLocationsCommand"
  let make = (~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({filters: filters, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
