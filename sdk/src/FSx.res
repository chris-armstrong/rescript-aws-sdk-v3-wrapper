type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-fsx") @new external createClient: unit => awsServiceClient = "FSxClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type windowsDeploymentType = [
  | @as("SINGLE_AZ_2") #SINGLE_AZ_2
  | @as("SINGLE_AZ_1") #SINGLE_AZ_1
  | @as("MULTI_AZ_1") #MULTI_AZ_1
]
@ocaml.doc("<p>A recurring weekly time, in the format <code>D:HH:MM</code>. </p>
        <p>
            <code>D</code> is the day of the week, for which 1 represents Monday and 7
            represents Sunday. For further details, see <a href=\"https://en.wikipedia.org/wiki/ISO_week_date\">the ISO-8601 spec as described on Wikipedia</a>.</p>
        <p>
            <code>HH</code> is the zero-padded hour of the day (0-23), and <code>MM</code> is
            the zero-padded minute of the hour. </p>
        <p>For example, <code>1:05:00</code> specifies maintenance at 5 AM Monday.</p>")
type weeklyTime = string
@ocaml.doc("<p>The ID of your virtual private cloud (VPC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html\">VPC and
                Subnets</a> in the <i>Amazon VPC User Guide</i>.</p>")
type vpcId = string
type totalCount = float
type taskId = string
@ocaml.doc("<p>A string of 0 to 256 characters that specifies the value for a tag. Tag values can
            be null and don't have to be unique in a tag set.</p>")
type tagValue = string
@ocaml.doc("<p>A string of 1 to 128 characters that specifies the key for a tag. Tag keys must be
            unique for the resource to which they are attached.</p>")
type tagKey = string
type succeededCount = float
@ocaml.doc("<p>The ID for a subnet. A <i>subnet</i> is a range of IP addresses in
            your virtual private cloud (VPC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html\">VPC and Subnets</a> in the
                <i>Amazon VPC User Guide.</i>
         </p>")
type subnetId = string
@ocaml.doc("<p>The storage type for your Amazon FSx file system.</p>")
type storageType = [@as("HDD") #HDD | @as("SSD") #SSD]
@ocaml.doc("<p>The storage capacity for your Amazon FSx file system, in gibibytes.</p>")
type storageCapacity = int
type status = [
  | @as("UPDATED_OPTIMIZING") #UPDATED_OPTIMIZING
  | @as("COMPLETED") #COMPLETED
  | @as("PENDING") #PENDING
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("FAILED") #FAILED
]
type startTime = Js.Date.t
type sourceBackupId = string
@ocaml.doc("<p>The types of limits on your service utilization. Limits include file system count,
            total throughput capacity, total storage, and total user-initiated backups. These limits
            apply for a specific account in a specific AWS Region. You can increase some of them by
            contacting AWS Support. </p>")
type serviceLimit = [
  | @as("TOTAL_IN_PROGRESS_COPY_BACKUPS") #TOTAL_IN_PROGRESS_COPY_BACKUPS
  | @as("TOTAL_USER_TAGS") #TOTAL_USER_TAGS
  | @as("TOTAL_USER_INITIATED_BACKUPS") #TOTAL_USER_INITIATED_BACKUPS
  | @as("TOTAL_STORAGE") #TOTAL_STORAGE
  | @as("TOTAL_THROUGHPUT_CAPACITY") #TOTAL_THROUGHPUT_CAPACITY
  | @as("FILE_SYSTEM_COUNT") #FILE_SYSTEM_COUNT
]
@ocaml.doc("<p>The ID of your Amazon EC2 security group. This ID is used to control network access
            to the endpoint that Amazon FSx creates on your behalf in each subnet. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html\">Amazon EC2 Security
                Groups for Linux Instances</a> in the <i>Amazon EC2 User
            Guide</i>.</p>")
type securityGroupId = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify AWS
            resources. We require an ARN when you need to specify a resource unambiguously across
            all of AWS. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)
                and AWS Service Namespaces</a> in the <i>AWS General
            Reference</i>.</p>")
type resourceARN = string
type requestTime = Js.Date.t
type reportScope = [@as("FAILED_FILES_ONLY") #FAILED_FILES_ONLY]
type reportFormat = [@as("REPORT_CSV_20191124") #REPORT_CSV_20191124]
type region = string
@ocaml.doc("<p>The current percent of progress of an asynchronous task.</p>")
type progressPercent = int
type perUnitStorageThroughput = int
@ocaml.doc("<p>The name of a parameter for the request. Parameter names are returned in
            PascalCase.</p>")
type parameter = string
type organizationalUnitDistinguishedName = string
@ocaml.doc("<p>(Optional) Opaque pagination token returned from a previous operation (String). If
            present, this token indicates from what point you can continue processing the request, where
            the previous <code>NextToken</code> value left off.</p>")
type nextToken = string
@ocaml.doc("<p>An elastic network interface ID. An elastic network interface is a logical
            networking component in a virtual private cloud (VPC) that represents a virtual network
            card. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html\">Elastic Network Interfaces</a> in
            the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
type networkInterfaceId = string
@ocaml.doc("<p>Sustained throughput of an Amazon FSx file system in MBps.</p>")
type megabytesPerSecond = int
type megabytes = int
@ocaml.doc("<p>The maximum number of resources to return in the response. This value must be an
            integer greater than zero.</p>")
type maxResults = int
type lustreFileSystemMountName = string
type lustreDeploymentType = [
  | @as("PERSISTENT_1") #PERSISTENT_1
  | @as("SCRATCH_2") #SCRATCH_2
  | @as("SCRATCH_1") #SCRATCH_1
]
type lastUpdatedTime = Js.Date.t
@ocaml.doc("<p>The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the file system's data
            for Amazon FSx for Windows File Server file systems and Amazon FSx for Lustre <code>PERSISTENT_1</code> file
            systems at rest. In either case, if not specified, the Amazon FSx managed key
            is used. The Amazon FSx for Lustre <code>SCRATCH_1</code> and <code>SCRATCH_2</code> file systems are always encrypted at rest using
            Amazon FSx managed keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html\">Encrypt</a>
            in the <i>AWS Key Management Service API Reference</i>.</p>")
type kmsKeyId = string
type ipAddress = string
type flag = bool
@ocaml.doc("<p>The value for a filter.</p>") type filterValue = string
@ocaml.doc("<p>The name for a filter.</p>")
type filterName = [
  | @as("file-system-type") #File_System_Type
  | @as("backup-type") #Backup_Type
  | @as("file-system-id") #File_System_Id
]
@ocaml.doc("<p>The type of file system.</p>")
type fileSystemType = [@as("LUSTRE") #LUSTRE | @as("WINDOWS") #WINDOWS]
@ocaml.doc("<p>An enumeration specifying the currently ongoing maintenance operation.</p>")
type fileSystemMaintenanceOperation = [@as("BACKING_UP") #BACKING_UP | @as("PATCHING") #PATCHING]
@ocaml.doc("<p>The lifecycle status of the file system.</p>")
type fileSystemLifecycle = [
  | @as("UPDATING") #UPDATING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
@ocaml.doc("<p>The globally unique ID of the file system, assigned by Amazon FSx.</p>")
type fileSystemId = string
type fileSystemAdministratorsGroupName = string
type failedCount = float
@ocaml.doc("<p>A detailed error message.</p>") type errorMessage = string
type endTime = Js.Date.t
type driveCacheType = [@as("READ") #READ | @as("NONE") #NONE]
type directoryUserName = string
type directoryPassword = string
type directoryId = string
type dataRepositoryTaskType = [@as("EXPORT_TO_REPOSITORY") #EXPORT_TO_REPOSITORY]
type dataRepositoryTaskPath = string
type dataRepositoryTaskLifecycle = [
  | @as("CANCELING") #CANCELING
  | @as("CANCELED") #CANCELED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("EXECUTING") #EXECUTING
  | @as("PENDING") #PENDING
]
type dataRepositoryTaskFilterValue = string
type dataRepositoryTaskFilterName = [
  | @as("task-lifecycle") #Task_Lifecycle
  | @as("file-system-id") #File_System_Id
]
type dataRepositoryLifecycle = [
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATING") #CREATING
]
type dataCompressionType = [@as("LZ4") #LZ4 | @as("NONE") #NONE]
@ocaml.doc("<p>A recurring daily time, in the format <code>HH:MM</code>. <code>HH</code> is the
            zero-padded hour of the day (0-23), and <code>MM</code> is the zero-padded minute of the
            hour. For example, <code>05:00</code> specifies 5 AM daily. </p>")
type dailyTime = string
@ocaml.doc("<p>The Domain Name Service (DNS) name for the file system. You can mount your file
            system using its DNS name.</p>")
type dnsname = string
@ocaml.doc("<p>The time that the resource was created, in seconds (since 1970-01-01T00:00:00Z),
            also known as Unix time.</p>")
type creationTime = Js.Date.t
@ocaml.doc("<p>(Optional) An idempotency token for resource creation, in a string of up to 64
            ASCII characters. This token is automatically filled on your behalf when you use the AWS
            Command Line Interface (AWS CLI) or an AWS SDK.</p>")
type clientRequestToken = string
@ocaml.doc("<p>The type of the backup.</p>")
type backupType = [
  | @as("AWS_BACKUP") #AWS_BACKUP
  | @as("USER_INITIATED") #USER_INITIATED
  | @as("AUTOMATIC") #AUTOMATIC
]
@ocaml.doc("<p>The lifecycle status of the backup.</p>
        <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - The backup is fully available.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx has not started creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the new user-intiated backup</p>
            </li>
            <li>
               <p>
                  <code>TRANSFERRING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx is backing up the file system.</p>
            </li>
            <li>
               <p>
                  <code>COPYING</code> - Amazon FSx is copying the backup.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Amazon FSx deleted the backup and it is no longer available.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx could not complete the backup.</p>
            </li>
         </ul>")
type backupLifecycle = [
  | @as("COPYING") #COPYING
  | @as("PENDING") #PENDING
  | @as("FAILED") #FAILED
  | @as("DELETED") #DELETED
  | @as("TRANSFERRING") #TRANSFERRING
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
@ocaml.doc("<p>The ID of the source backup. Specifies the backup you are copying.</p>")
type backupId = string
@ocaml.doc("<p>The number of days to retain automatic backups. Setting this to 0 disables
            automatic backups. You can retain automatic backups for a maximum of 90 days. The default is 0.</p>")
type automaticBackupRetentionDays = int
type autoImportPolicyType = [@as("NEW_CHANGED") #NEW_CHANGED | @as("NEW") #NEW | @as("NONE") #NONE]
type archivePath = string
type alternateDNSName = string
type aliasLifecycle = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
@ocaml.doc("<p>Describes the type of administrative action, as follows:</p> 
        <ul>
            <li>
                <p>
                  <code>FILE_SYSTEM_UPDATE</code> - A file system update administrative action initiated by the user from the 
                    Amazon FSx console, API (UpdateFileSystem), or CLI (update-file-system).</p>
            </li>
            <li>
                <p>
                  <code>STORAGE_OPTIMIZATION</code> - Once the <code>FILE_SYSTEM_UPDATE</code> 
                    task to increase a file system's storage capacity completes successfully, a 
                    <code>STORAGE_OPTIMIZATION</code> task starts.
                    </p>
                <ul>
                  <li>
                     <p>For Windows, storage optimization is the process of migrating the file system data
                        to the new, larger disks.</p>
                  </li>
                  <li>
                     <p>For Lustre, storage optimization consists of rebalancing the data across the existing and
                            newly added file servers.</p>
                  </li>
               </ul>
                <p>You can track the storage optimization progress using the
                        <code>ProgressPercent</code> property. When
                        <code>STORAGE_OPTIMIZATION</code> completes successfully, the parent
                        <code>FILE_SYSTEM_UPDATE</code> action status changes to
                        <code>COMPLETED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html\">Managing
                        storage capacity</a> in the <i>Amazon FSx for Windows File Server
                        User Guide</i> and <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html\">Managing storage
                        and throughput capacity</a> in the <i>Amazon FSx for Lustre User
                        Guide</i>. </p>
            </li>
            <li>
               <p>
                  <code>FILE_SYSTEM_ALIAS_ASSOCIATION</code> - A file system update to associate a new DNS alias with the file system. 
                For more information, see
                .</p>
            </li>
            <li>
               <p>
                  <code>FILE_SYSTEM_ALIAS_DISASSOCIATION</code> - A file system update to disassociate a DNS alias from the file system.
                For more information, see .</p>
            </li>
         </ul>")
type administrativeActionType = [
  | @as("FILE_SYSTEM_ALIAS_DISASSOCIATION") #FILE_SYSTEM_ALIAS_DISASSOCIATION
  | @as("FILE_SYSTEM_ALIAS_ASSOCIATION") #FILE_SYSTEM_ALIAS_ASSOCIATION
  | @as("STORAGE_OPTIMIZATION") #STORAGE_OPTIMIZATION
  | @as("FILE_SYSTEM_UPDATE") #FILE_SYSTEM_UPDATE
]
type activeDirectoryFullyQualifiedName = string
@ocaml.doc("<p>The type of error relating to Microsoft Active Directory. NOT_FOUND means that no
            directory was found by specifying the given directory. INCOMPATIBLE_MODE means that the
            directory specified is not a Microsoft AD directory. WRONG_VPC means that the specified
            directory isn't accessible from the specified VPC. WRONG_STAGE means that the
            specified directory isn't currently in the ACTIVE state.</p>")
type activeDirectoryErrorType = [
  | @as("INVALID_DOMAIN_STAGE") #INVALID_DOMAIN_STAGE
  | @as("WRONG_VPC") #WRONG_VPC
  | @as("INCOMPATIBLE_DOMAIN_MODE") #INCOMPATIBLE_DOMAIN_MODE
  | @as("DOMAIN_NOT_FOUND") #DOMAIN_NOT_FOUND
]
@ocaml.doc("<p>An AWS account ID. This ID is a 12-digit number that you use to construct Amazon
            Resource Names (ARNs) for resources.</p>")
type awsaccountId = string
@ocaml.doc("<p>The configuration object for Amazon FSx for Lustre file systems used in the
                <code>UpdateFileSystem</code> operation.</p>")
type updateFileSystemLustreConfiguration = {
  @ocaml.doc("<p>Sets the data compression configuration for the file system. <code>DataCompressionType</code>
            can have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> - Data compression is turned off for
                the file system.</p>
            </li>
            <li>
               <p>
                  <code>LZ4</code> - Data compression is turned on with the LZ4
                algorithm.</p>
            </li>
         </ul>
        <p>If you don't use <code>DataCompressionType</code>, the file system retains
            its current data compression configuration.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html\">Lustre data compression</a>.</p>")
  @as("DataCompressionType")
  dataCompressionType: option<dataCompressionType>,
  @ocaml.doc("<p> (Optional) When you create your file system, your existing S3 objects appear as file and directory listings. 
            Use this property to choose how Amazon FSx keeps your file and directory listing up to date 
            as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code> can
            have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
                file and directory listings from the linked S3 bucket 
                when the file system is created. FSx does not update the file and directory 
                listing for any new or changed objects after choosing this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
                directory listings of any new objects added to the linked S3 bucket that 
                do not currently exist in the FSx file system. </p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
                file and directory listings of any new objects added to the S3 bucket and any 
                existing objects that are changed in the S3 bucket after you choose this option. 
            </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html\">Automatically import updates from your S3 bucket</a>.</p>")
  @as("AutoImportPolicy")
  autoImportPolicy: option<autoImportPolicyType>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>(Optional) The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
type taskIds = array<taskId>
@ocaml.doc("<p>A list of <code>TagKey</code> values, with a maximum of 50 elements.</p>")
type tagKeys = array<tagKey>
@ocaml.doc("<p>Specifies a key-value pair for a resource tag.</p>")
type tag = {
  @ocaml.doc("<p>A value that specifies the <code>TagValue</code>, the value assigned to the
            corresponding tag key. Tag values can be null and don't have to be unique in a tag set.
            For example, you can have a key-value pair in a tag set of <code>finances : April</code>
            and also of <code>payroll : April</code>.</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>A value that specifies the <code>TagKey</code>, the name of the tag. Tag keys must
            be unique for the resource to which they are attached.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>A list of subnet IDs. Currently, you can specify only one subnet ID in a call to
            the <code>CreateFileSystem</code> operation.</p>")
type subnetIds = array<subnetId>
@ocaml.doc("<p>A list of security group IDs.</p>") type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>A list of network interface IDs.</p>")
type networkInterfaceIds = array<networkInterfaceId>
@ocaml.doc("<p>A list of filter values.</p>") type filterValues = array<filterValue>
@ocaml.doc("<p>A list of maintenance operations.</p>")
type fileSystemMaintenanceOperations = array<fileSystemMaintenanceOperation>
@ocaml.doc("<p>A list of <code>FileSystemId</code>s.</p>") type fileSystemIds = array<fileSystemId>
@ocaml.doc("<p>A structure providing details of any failures that occur when creating the file system
            has failed.</p>")
type fileSystemFailureDetails = {
  @ocaml.doc("<p>A message describing any failures that occurred during file system creation.</p>")
  @as("Message")
  message: option<errorMessage>,
}
type dnsIps = array<ipAddress>
@ocaml.doc("<p>Provides the task status showing a running total of the total number of files to be processed, 
            the number successfully processed, and the number of files the task failed to process.</p>")
type dataRepositoryTaskStatus = {
  @ocaml.doc("<p>The time at which the task status was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<lastUpdatedTime>,
  @ocaml.doc("<p>A running total of the number of files that the task failed to process.</p>")
  @as("FailedCount")
  failedCount: option<failedCount>,
  @ocaml.doc(
    "<p>A running total of the number of files that the task has successfully processed.</p>"
  )
  @as("SucceededCount")
  succeededCount: option<succeededCount>,
  @ocaml.doc("<p>The total number of files that the task will process. While a task is executing, the sum of 
            <code>SucceededCount</code> plus <code>FailedCount</code> may not equal <code>TotalCount</code>. When the task is complete, 
            <code>TotalCount</code> equals the sum of <code>SucceededCount</code> plus <code>FailedCount</code>.</p>")
  @as("TotalCount")
  totalCount: option<totalCount>,
}
type dataRepositoryTaskPaths = array<dataRepositoryTaskPath>
type dataRepositoryTaskFilterValues = array<dataRepositoryTaskFilterValue>
@ocaml.doc(
  "<p>Provides information about why a data repository task failed. Only populated when the task <code>Lifecycle</code> is set to <code>FAILED</code>.</p>"
)
type dataRepositoryTaskFailureDetails = {@as("Message") message: option<errorMessage>}
@ocaml.doc("<p>Provides detailed information about the data respository if its <code>Lifecycle</code> is 
            set to <code>MISCONFIGURED</code>.</p>")
type dataRepositoryFailureDetails = {@as("Message") message: option<errorMessage>}
@ocaml.doc("<p>The Lustre configuration for the file system being created. 
            </p>")
type createFileSystemLustreConfiguration = {
  @ocaml.doc("<p>Sets the data compression configuration for the file system. <code>DataCompressionType</code>
            can have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> - (Default) Data compression is turned off when
                the file system is created.</p>
            </li>
            <li>
               <p>
                  <code>LZ4</code> - Data compression is turned on with the LZ4
                algorithm.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html\">Lustre data compression</a>.</p>")
  @as("DataCompressionType")
  dataCompressionType: option<dataCompressionType>,
  @ocaml.doc("<p>The type of drive cache used by PERSISTENT_1 file systems that are provisioned with
            HDD storage devices. This parameter is required when storage type is HDD. Set to
            <code>READ</code>, improve the performance for frequently accessed files and allows 20%
            of the total storage capacity of the file system to be cached. </p>
        <p>This parameter is required when <code>StorageType</code> is set to HDD.</p>")
  @as("DriveCacheType")
  driveCacheType: option<driveCacheType>,
  @ocaml.doc("<p>(Optional) Not available to use with file systems that are linked to a data repository. 
            A boolean flag indicating whether tags for the file system should be copied to
            backups. The default value is false. If it's set to true, all file system
            tags are copied to all automatic and user-initiated backups when the user
            doesn't specify any backup-specific tags. If this value is true, and you specify one or more backup tags, only
            the specified tags are copied to backups. If you specify one or more tags when creating a
            user-initiated backup, no tags are copied from the file system, regardless of this value.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html\">Working with backups</a>.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>
            Required for the <code>PERSISTENT_1</code> deployment type, describes the amount of read and write 
            throughput for each 1 tebibyte of storage, in MB/s/TiB. 
            File system throughput capacity is calculated by multiplying ﬁle system storage capacity (TiB) by the PerUnitStorageThroughput
            (MB/s/TiB). For a 2.4 TiB ﬁle system, provisioning 50 MB/s/TiB of PerUnitStorageThroughput
            yields 120 MB/s of ﬁle system throughput. You pay for the amount of throughput that you
            provision.
        </p>
        <p>Valid values for  SSD storage: 50, 100, 200. Valid values for  HDD storage: 12, 40.</p>")
  @as("PerUnitStorageThroughput")
  perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @ocaml.doc("<p> (Optional) When you create your file system, your existing S3 objects appear as file and directory listings. 
            Use this property to choose how Amazon FSx keeps your file and directory listings up to date 
            as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code> can
            have the following values:</p>
        
        <ul>
            <li>
               <p>
                  <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
                file and directory listings from the linked S3 bucket 
                when the file system is created. FSx does not update file and directory 
                listings for any new or changed objects after choosing this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
                directory listings of any new objects added to the linked S3 bucket that 
                do not currently exist in the FSx file system. </p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
                file and directory listings of any new objects added to the S3 bucket and any 
                existing objects that are changed in the S3 bucket after you choose this option. 
            </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html\">Automatically import updates from your S3 bucket</a>.</p>")
  @as("AutoImportPolicy")
  autoImportPolicy: option<autoImportPolicyType>,
  @ocaml.doc("<p> 
            Choose <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment 
            types when you need temporary storage and shorter-term processing of data. 
            The <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
            throughput capacity than <code>SCRATCH_1</code>.</p>
        
            <p>Choose <code>PERSISTENT_1</code> deployment type for longer-term storage 
                and workloads and encryption of data in transit. To learn more about deployment types, see 
                <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html\">
                    FSx for Lustre Deployment Options</a>.</p>
            <p>Encryption of data in-transit is automatically 
            enabled when you access a <code>SCRATCH_2</code> or <code>PERSISTENT_1</code>
            file system from Amazon EC2 instances that <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/data-                 protection.html\">support this feature</a>.
            (Default = <code>SCRATCH_1</code>)
        </p>
            <p>Encryption of data in-transit for <code>SCRATCH_2</code> and <code>PERSISTENT_1</code> 
                deployment types is supported when accessed from supported instance types in supported AWS Regions. To learn more, 
                <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/encryption-in-transit-fsxl.html\">Encrypting Data in Transit</a>.</p>")
  @as("DeploymentType")
  deploymentType: option<lustreDeploymentType>,
  @ocaml.doc("<p>(Optional) For files imported from a data repository, this value determines the stripe
            count and maximum amount of data per file (in MiB) stored on a single physical disk. The
            maximum number of disks that a single file can be striped across is limited by the total
            number of disks that make up the file system.</p>
        
        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3 objects have a maximum size of 5 TB.</p>")
  @as("ImportedFileChunkSize")
  importedFileChunkSize: option<megabytes>,
  @ocaml.doc("<p>(Optional) The path in Amazon S3 where the root of your Amazon FSx file system is exported. 
            The path must use the same Amazon S3 bucket as specified in ImportPath. You can provide an optional prefix to which
            new and changed data is to be exported from your Amazon FSx for Lustre file system. If
            an <code>ExportPath</code> value is not provided, Amazon FSx sets a default export path,
            <code>s3://import-bucket/FSxLustre[creation-timestamp]</code>. The timestamp is in
            UTC format, for example
            <code>s3://import-bucket/FSxLustre20181105T222312Z</code>.</p>

        <p>The Amazon S3 export bucket must be the same as the import bucket specified by
            <code>ImportPath</code>. If you only specify a bucket name, such as
            <code>s3://import-bucket</code>, you get a 1:1 mapping of file system objects to S3
            bucket objects. This mapping means that the input data in S3 is overwritten on export.
            If you provide a custom prefix in the export path, such as
            <code>s3://import-bucket/[custom-optional-prefix]</code>, Amazon FSx exports the contents of your file 
            system to that export prefix in the Amazon S3 bucket.</p>")
  @as("ExportPath")
  exportPath: option<archivePath>,
  @ocaml.doc("<p>(Optional) The path to the Amazon S3 bucket (including the optional prefix) that
            you're using as the data repository for your Amazon FSx for Lustre file system.
            The root of your FSx for Lustre file system will
            be mapped to the root of the Amazon S3 bucket you select. An
            example is <code>s3://import-bucket/optional-prefix</code>. If you specify a prefix
            after the Amazon S3 bucket name, only object keys with that prefix are loaded into the
            file system.</p>")
  @as("ImportPath")
  importPath: option<archivePath>,
  @ocaml.doc("<p>(Optional) The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
@ocaml.doc("<p>Provides a report detailing the data repository task results of the files processed that match the criteria specified in the report <code>Scope</code> parameter. 
            FSx delivers the report to the file system's linked data repository in Amazon S3, 
            using the path specified in the report <code>Path</code> parameter. 
            You can specify whether or not a report gets generated for a task using the <code>Enabled</code> parameter.</p>")
type completionReport = {
  @ocaml.doc("<p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the scope of the <code>CompletionReport</code>; <code>FAILED_FILES_ONLY</code> is the only scope currently supported. 
            When <code>Scope</code> is set to <code>FAILED_FILES_ONLY</code>, the <code>CompletionReport</code> only contains information about files that the data repository task failed to process.</p>")
  @as("Scope")
  scope: option<reportScope>,
  @ocaml.doc("<p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the format of the <code>CompletionReport</code>. <code>REPORT_CSV_20191124</code> is the only format currently supported.
            When <code>Format</code> is set to <code>REPORT_CSV_20191124</code>, the <code>CompletionReport</code> is provided in CSV format, and is delivered to
            <code>{path}/task-{id}/failures.csv</code>. 
        </p>")
  @as("Format")
  format: option<reportFormat>,
  @ocaml.doc("<p>Required if <code>Enabled</code> is set to <code>true</code>. Specifies the location of the report on the file system's linked S3 data repository. An absolute path that defines where the completion report will be stored in the destination location. 
            The <code>Path</code> you provide must be located within the file system’s ExportPath. 
            An example <code>Path</code> value is \"s3://myBucket/myExportPath/optionalPrefix\". The report provides the following information for each file in the report:
            FilePath, FileStatus, and ErrorCode. To learn more about a file system's <code>ExportPath</code>, see .
            </p>")
  @as("Path")
  path: option<archivePath>,
  @ocaml.doc("<p>Set <code>Enabled</code> to <code>True</code> to generate a <code>CompletionReport</code> when the task completes. 
            If set to <code>true</code>, then you need to provide a report <code>Scope</code>, <code>Path</code>, and <code>Format</code>. 
            Set <code>Enabled</code> to <code>False</code> if you do not want a <code>CompletionReport</code> generated when the task completes.</p>")
  @as("Enabled")
  enabled: flag,
}
@ocaml.doc("<p>A list of backup IDs.</p>") type backupIds = array<backupId>
@ocaml.doc("<p>If backup creation fails, this structure contains the details of that
            failure.</p>")
type backupFailureDetails = {
  @ocaml.doc("<p>A message describing the backup creation failure.</p>") @as("Message")
  message: option<errorMessage>,
}
type alternateDNSNames = array<alternateDNSName>
@ocaml.doc("<p>A DNS alias that is associated with the file system. You can use a DNS alias to access a file system using 
            user-defined DNS names, in addition to the default DNS name
            that Amazon FSx assigns to the file system. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html\">DNS aliases</a> 
            in the <i>FSx for Windows File Server User Guide</i>.</p>")
type alias = {
  @ocaml.doc("<p>Describes the state of the DNS alias.</p>
        <ul>
            <li>
               <p>AVAILABLE - The DNS alias is associated with an Amazon FSx file system.</p>
            </li>
            <li>
               <p>CREATING - Amazon FSx is creating the DNS alias and associating it with the file system.</p>
            </li>
            <li>
               <p>CREATE_FAILED - Amazon FSx was unable to associate the DNS alias with the file system.</p>
            </li>
            <li>
               <p>DELETING - Amazon FSx is disassociating the DNS alias from the file system and deleting it.</p>
            </li>
            <li>
               <p>DELETE_FAILED - Amazon FSx was unable to disassocate the DNS alias from the file system.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<aliasLifecycle>,
  @ocaml.doc("<p>The name of the DNS alias. The alias name has to meet the following requirements:</p>
        <ul>
            <li>
               <p>Formatted as a fully-qualified domain name (FQDN), <code>hostname.domain</code>, for example, <code>accounting.example.com</code>.</p>
            </li>
            <li>
               <p>Can contain alphanumeric characters, the underscore (_), and the hyphen (-).</p>
            </li>
            <li>
               <p>Cannot start or end with a hyphen.</p>
            </li>
            <li>
               <p>Can start with a numeric.</p>
            </li>
         </ul>
        <p>For DNS names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
            as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>")
  @as("Name")
  name: option<alternateDNSName>,
}
@ocaml.doc("<p>Provides information about a failed administrative action.</p>")
type administrativeActionFailureDetails = {
  @ocaml.doc("<p>Error message providing details about the failed administrative action.</p>")
  @as("Message")
  message: option<errorMessage>,
}
@ocaml.doc(
  "<p>The Microsoft AD attributes of the Amazon FSx for Windows File Server file system.</p>"
)
type activeDirectoryBackupAttributes = {
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @ocaml.doc(
    "<p>The ID of the AWS Managed Microsoft Active Directory instance to which the file system is joined.</p>"
  )
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
  @ocaml.doc("<p>The fully qualified domain name of the self-managed AD directory.</p>")
  @as("DomainName")
  domainName: option<activeDirectoryFullyQualifiedName>,
}
@ocaml.doc("<p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>")
type tags = array<tag>
@ocaml.doc("<p>The configuration that Amazon FSx uses to join the Windows File Server instance to a
            self-managed Microsoft Active Directory (AD) directory.</p>")
type selfManagedActiveDirectoryConfigurationUpdates = {
  @ocaml.doc("<p>A list of up to two IP addresses of DNS servers or domain controllers in the
            self-managed AD directory.</p>")
  @as("DnsIps")
  dnsIps: option<dnsIps>,
  @ocaml.doc("<p>The password for the service account on your self-managed AD domain that Amazon FSx will use to join to
            your AD domain.</p>")
  @as("Password")
  password: option<directoryPassword>,
  @ocaml.doc("<p>The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to
            your AD domain. This account must have the permission to join
            computers to the domain in the organizational unit provided in
            <code>OrganizationalUnitDistinguishedName</code>.</p>")
  @as("UserName")
  userName: option<directoryUserName>,
}
@ocaml.doc("<p>The configuration that Amazon FSx uses to join the Windows File Server instance to
            your self-managed (including on-premises) Microsoft Active Directory (AD)
            directory. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html\">
                Using Amazon FSx with your self-managed Microsoft Active Directory</a>.</p>")
type selfManagedActiveDirectoryConfiguration = {
  @ocaml.doc("<p>A list of up to two IP addresses of DNS servers or domain controllers in the
            self-managed AD directory. </p>")
  @as("DnsIps")
  dnsIps: dnsIps,
  @ocaml.doc("<p>The password for the service account on your self-managed AD domain that Amazon FSx
            will use to join to your AD domain.</p>")
  @as("Password")
  password: directoryPassword,
  @ocaml.doc("<p>The user name for the service account on your self-managed AD domain that Amazon FSx
            will use to join to your AD domain. This account must have the permission to join
            computers to the domain in the organizational unit provided in
                <code>OrganizationalUnitDistinguishedName</code>, or in the default location of your
            AD domain.</p>")
  @as("UserName")
  userName: directoryUserName,
  @ocaml.doc("<p>(Optional) The name of the domain group whose members are granted administrative
            privileges for the file system. Administrative privileges include taking ownership of
            files and folders, setting audit controls (audit ACLs) on files and folders, and             
                administering the file system remotely by using the FSx Remote PowerShell.
            The group that you specify must already exist in your domain. If you don't provide one,
            your AD domain's Domain Admins group is used.</p>")
  @as("FileSystemAdministratorsGroup")
  fileSystemAdministratorsGroup: option<fileSystemAdministratorsGroupName>,
  @ocaml.doc("<p>(Optional) The fully qualified distinguished name of the organizational unit within
            your self-managed AD directory that the Windows File Server instance will join. Amazon
            FSx only accepts OU as the direct parent of the file system. An example is
                <code>OU=FSx,DC=yourdomain,DC=corp,DC=com</code>. To learn more, see <a href=\"https://tools.ietf.org/html/rfc2253\">RFC 2253</a>. If none is provided, the
            FSx file system is created in the default location of your self-managed AD directory. </p>
        <important>
            <p>Only Organizational Unit (OU) objects can be the direct parent of the file system
                that you're creating.</p>
        </important>")
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @ocaml.doc("<p>The fully qualified domain name of the self-managed AD directory, such as
                <code>corp.example.com</code>.</p>")
  @as("DomainName")
  domainName: activeDirectoryFullyQualifiedName,
}
@ocaml.doc("<p>The configuration of the self-managed Microsoft Active Directory (AD) directory to
            which the Windows File Server instance is joined.</p>")
type selfManagedActiveDirectoryAttributes = {
  @ocaml.doc("<p>A list of up to two IP addresses of DNS servers or domain controllers in the
            self-managed AD directory.</p>")
  @as("DnsIps")
  dnsIps: option<dnsIps>,
  @ocaml.doc("<p>The user name for the service account on your self-managed AD domain that FSx uses to
            join to your AD domain.</p>")
  @as("UserName")
  userName: option<directoryUserName>,
  @ocaml.doc("<p>The name of the domain group whose members have administrative privileges for the FSx
            file system.</p>")
  @as("FileSystemAdministratorsGroup")
  fileSystemAdministratorsGroup: option<fileSystemAdministratorsGroupName>,
  @ocaml.doc("<p>The fully qualified distinguished name of the organizational unit within the
            self-managed AD directory to which the Windows File Server instance is joined.</p>")
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @ocaml.doc("<p>The fully qualified domain name of the self-managed AD directory.</p>")
  @as("DomainName")
  domainName: option<activeDirectoryFullyQualifiedName>,
}
@ocaml.doc("<p>A filter used to restrict the results of describe calls. You can use multiple
            filters to return results that meet all applied filter requirements.</p>")
type filter = {
  @ocaml.doc("<p>The values of the filter. These are all the values for any of the applied
            filters.</p>")
  @as("Values")
  values: option<filterValues>,
  @ocaml.doc("<p>The name for this filter.</p>") @as("Name") name: option<filterName>,
}
@ocaml.doc("<p>(Optional) An array of filter objects you can use to filter the response of data repository tasks you will see in the the response. 
            You can filter the tasks returned in the response by one or more file system IDs, task lifecycles, and by task type. 
            A filter object consists of a filter <code>Name</code>, and one or more <code>Values</code> for the filter.</p>")
type dataRepositoryTaskFilter = {
  @ocaml.doc("<p>Use Values to include the specific file system IDs and task 
            lifecycle states for the filters you are using.</p>")
  @as("Values")
  values: option<dataRepositoryTaskFilterValues>,
  @ocaml.doc("<p>Name of the task property to use in filtering the tasks returned in the response.</p>
        <ul>
            <li>
               <p>Use <code>file-system-id</code> to retrieve data repository tasks for specific file systems.</p>
            </li>
            <li>
               <p>Use <code>task-lifecycle</code> to retrieve data repository tasks with one or more specific lifecycle states, 
                as follows: CANCELED, EXECUTING, FAILED, PENDING, and SUCCEEDED.</p>
            </li>
         </ul>")
  @as("Name")
  name: option<dataRepositoryTaskFilterName>,
}
@ocaml.doc("<p>The data repository configuration object for Lustre file systems returned in the response of
            the <code>CreateFileSystem</code> operation.</p>")
type dataRepositoryConfiguration = {
  @as("FailureDetails") failureDetails: option<dataRepositoryFailureDetails>,
  @ocaml.doc("<p>Describes the file system's linked S3 data repository's <code>AutoImportPolicy</code>. 
            The AutoImportPolicy configures how Amazon FSx keeps your file and directory listings up to date 
            as you add or modify objects in your linked S3 bucket. <code>AutoImportPolicy</code> can have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> - (Default) AutoImport is off. Amazon FSx only updates 
                file and directory listings from the linked S3 bucket 
                when the file system is created. FSx does not update file and directory 
                listings for any new or changed objects after choosing this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW</code> - AutoImport is on. Amazon FSx automatically imports
                directory listings of any new objects added to the linked S3 bucket that 
                do not currently exist in the FSx file system. </p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED</code> - AutoImport is on. Amazon FSx automatically imports 
                file and directory listings of any new objects added to the S3 bucket and any 
                existing objects that are changed in the S3 bucket after you choose this option. 
            </p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html\">Automatically import updates from your S3 bucket</a>.</p>")
  @as("AutoImportPolicy")
  autoImportPolicy: option<autoImportPolicyType>,
  @ocaml.doc("<p>For files imported from a data repository, this value determines the stripe count and
            maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
            number of disks that a single file can be striped across is limited by the total number
            of disks that make up the file system.</p>

        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3 objects have a maximum size of 5 TB.</p>")
  @as("ImportedFileChunkSize")
  importedFileChunkSize: option<megabytes>,
  @ocaml.doc("<p>The export path to the Amazon S3 bucket (and prefix) that you are using to store new and
            changed Lustre file system files in S3.</p>")
  @as("ExportPath")
  exportPath: option<archivePath>,
  @ocaml.doc("<p>The import path to the Amazon S3 bucket (and optional prefix) that you're using
            as the data repository for your FSx for Lustre file system, for example
                <code>s3://import-bucket/optional-prefix</code>. If a prefix is specified after the
            Amazon S3 bucket name, only object keys with that prefix are loaded into the file
            system.</p>")
  @as("ImportPath")
  importPath: option<archivePath>,
  @ocaml.doc("<p>Describes the state of the file system's S3 durable data repository, if it is configured with an S3 repository. 
        The lifecycle can have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>CREATING</code> - The data repository configuration between 
                the FSx file system and the linked S3 data repository is being created. 
                The data repository is unavailable.</p>
            </li>
            <li>
               <p>
                  <code>AVAILABLE</code> - The data repository is available for use.</p>
            </li>
            <li>
               <p>
                  <code>MISCONFIGURED</code> - Amazon FSx cannot automatically import updates from the S3 bucket 
                until the data repository configuration is corrected. For more information, see 
                <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/troubleshooting.html#troubleshooting-misconfigured-data-repository\">Troubleshooting a Misconfigured linked S3 bucket</a>.
                </p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The data repository is undergoing a customer initiated update and availability may be impacted.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<dataRepositoryLifecycle>,
}
@ocaml.doc("<p>An array of one or more DNS aliases that are currently associated with the Amazon FSx file system. 
            Aliases allow you to use existing DNS names to access the data in your Amazon FSx file system. 
            You can associate up to 50 aliases with a file system at any time. 
            You can associate additional DNS aliases after you create the file system using the AssociateFileSystemAliases operation. 
            You can remove DNS aliases from the file system after it is created using the DisassociateFileSystemAliases operation.
            You only need to specify the alias name in the request payload. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html\">DNS aliases</a>.</p>")
type aliases = array<alias>
@ocaml.doc("<p>The configuration for this Microsoft Windows file system.</p>")
type windowsFileSystemConfiguration = {
  @as("Aliases") aliases: option<aliases>,
  @ocaml.doc("<p>A boolean flag indicating whether tags on the file system should be copied to backups.
            This value defaults to false. If it's set to true, all tags on the file system are
            copied to all automatic backups and any user-initiated backups where the user
            doesn't specify any tags. If this value is true, and you specify one or more tags,
            only the specified tags are copied to backups. If you specify one or more tags when 
            creating a user-initiated backup, no tags are copied from the file system, 
            regardless of this value.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @ocaml.doc("<p>The number of days to retain automatic backups. Setting this to 0 disables automatic
            backups. You can retain automatic backups for a maximum of 90 days.</p>")
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @ocaml.doc("<p>The preferred time to take daily automatic backups, in the UTC time zone.</p>")
  @as("DailyAutomaticBackupStartTime")
  dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>The list of maintenance operations in progress for this file system.</p>")
  @as("MaintenanceOperationsInProgress")
  maintenanceOperationsInProgress: option<fileSystemMaintenanceOperations>,
  @ocaml.doc("<p>The throughput of the Amazon FSx file system, measured in megabytes per
            second.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: option<megabytesPerSecond>,
  @ocaml.doc("<p>For <code>MULTI_AZ_1</code> deployment types, the IP address of the primary, or preferred, file server.</p>
        <p>Use this IP address when mounting the file system on Linux SMB clients or Windows SMB clients that 
            are not joined to a Microsoft Active Directory. 
            Applicable for all Windows file system deployment types. 
            This IP address is temporarily unavailable 
            when the file system is undergoing maintenance. For Linux and Windows 
            SMB clients that are joined to an Active Directory, use the file system's DNSName instead. For more information
            on mapping and mounting file shares, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/accessing-file-shares.html\">Accessing File Shares</a>.</p>")
  @as("PreferredFileServerIp")
  preferredFileServerIp: option<ipAddress>,
  @ocaml.doc("<p>For <code>MULTI_AZ_1</code> deployment types, it specifies the ID of the subnet where the preferred file server is located. 
            Must be one of the two subnet IDs specified in <code>SubnetIds</code> property.
            Amazon FSx serves traffic from this subnet except in the event of a failover to the secondary file server.</p>
        <p>For <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> deployment types, this value is the same as that for <code>SubnetIDs</code>.
            For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html#single-multi-az-resources\">Availability and durability: Single-AZ and Multi-AZ file systems</a>.</p>")
  @as("PreferredSubnetId")
  preferredSubnetId: option<subnetId>,
  @ocaml.doc("<p>For <code>MULTI_AZ_1</code> deployment types, use this endpoint when performing administrative tasks on the file system using 
            Amazon FSx Remote PowerShell.</p>
        <p>For <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> deployment types, this is the DNS name of the file system.</p>
        <p>This endpoint is temporarily unavailable when the file system is undergoing maintenance.</p>")
  @as("RemoteAdministrationEndpoint")
  remoteAdministrationEndpoint: option<dnsname>,
  @ocaml.doc("<p>Specifies the file system deployment type, valid values are the following:</p>
        <ul>
            <li>
                <p>
                  <code>MULTI_AZ_1</code> - Specifies a high availability file system that is configured for Multi-AZ 
                    redundancy to tolerate temporary Availability Zone (AZ) unavailability, and supports SSD and HDD storage.</p>
            </li>
            <li>
                <p>
                  <code>SINGLE_AZ_1</code> - (Default) Specifies a file system that is configured for single AZ redundancy, 
                    only supports SSD storage.</p>
            </li>
            <li>
                <p>
                  <code>SINGLE_AZ_2</code> - Latest generation Single AZ file system. 
                    Specifies a file system that is configured for single AZ redundancy and supports SSD and HDD storage.</p>
            </li>
         </ul>
        <p>For more information, see 
         <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html\">Single-AZ and Multi-AZ File Systems</a>.</p>")
  @as("DeploymentType")
  deploymentType: option<windowsDeploymentType>,
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryAttributes>,
  @ocaml.doc(
    "<p>The ID for an existing AWS Managed Microsoft Active Directory instance that the file system is joined to.</p>"
  )
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
}
@ocaml.doc("<p>Updates the configuration for an existing Amazon FSx for Windows
            File Server file system. Amazon FSx only overwrites existing properties with non-null values
            provided in the request.</p>")
type updateFileSystemWindowsConfiguration = {
  @ocaml.doc("<p>The configuration Amazon FSx uses to join the Windows File Server instance to the
            self-managed Microsoft AD directory. You cannot make a self-managed Microsoft AD update request if there is an existing self-managed Microsoft AD update request in progress.</p>")
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfigurationUpdates>,
  @ocaml.doc("<p>Sets the target value for a file system's throughput capacity, in MB/s, that you are updating the file system to. Valid values are 
            8, 16, 32, 64, 128, 256, 512, 1024, 2048. You cannot make a throughput capacity update request if there is an existing throughput capacity update request in progress. For more information, 
            see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-throughput-capacity.html\">Managing Throughput Capacity</a>.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: option<megabytesPerSecond>,
  @ocaml.doc("<p>The number of days to retain automatic daily backups. Setting this to zero (0) disables automatic daily
            backups. You can retain automatic daily backups for a maximum of 90 days. For more information, see
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#automatic-backups\">Working with Automatic Daily Backups</a>.</p>")
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @ocaml.doc("<p>The preferred time to start the daily automatic backup, in the UTC time zone, for example, <code>02:00</code>
         </p>")
  @as("DailyAutomaticBackupStartTime")
  dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone. Where d is the weekday number, from 1 through 7, with 1 = Monday and 7 = Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
@ocaml.doc("<p>The configuration for the Amazon FSx for Lustre file system.</p>")
type lustreFileSystemConfiguration = {
  @ocaml.doc("<p>The data compression configuration for the file system. <code>DataCompressionType</code>
            can have the following values:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> - Data compression is turned off for
                the file system.</p>
            </li>
            <li>
               <p>
                  <code>LZ4</code> - Data compression is turned on with the LZ4
                algorithm.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html\">Lustre data compression</a>.</p>")
  @as("DataCompressionType")
  dataCompressionType: option<dataCompressionType>,
  @ocaml.doc("<p>The type of drive cache used by PERSISTENT_1 file systems that are provisioned with
            HDD storage devices. This parameter is required when storage type is HDD. Set to
            <code>READ</code>, improve the performance for frequently accessed files and allows 20%
            of the total storage capacity of the file system to be cached.  </p>
        <p>This parameter is required when <code>StorageType</code> is set to HDD.</p>")
  @as("DriveCacheType")
  driveCacheType: option<driveCacheType>,
  @ocaml.doc("<p>A boolean flag indicating whether tags on the file system should be copied to backups.
            If it's set to true, all tags on the file system are
            copied to all automatic backups and any user-initiated backups where the user
            doesn't specify any tags. If this value is true, and you specify one or more tags,
            only the specified tags are copied to backups. If you specify one or more tags when 
            creating a user-initiated backup, no tags are copied from the file system, 
            regardless of this value. (Default = false)</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>You use the <code>MountName</code> value when mounting the file system.</p>
        <p>For the <code>SCRATCH_1</code> deployment type, this value is always \"<code>fsx</code>\". 
            For <code>SCRATCH_2</code> and <code>PERSISTENT_1</code> deployment types, this 
            value is a string that is unique within an AWS Region. 
            
        </p>")
  @as("MountName")
  mountName: option<lustreFileSystemMountName>,
  @ocaml.doc("<p> Per unit storage throughput represents the megabytes per second of read or write
            throughput per 1 tebibyte of storage provisioned. File system throughput capacity is
            equal to Storage capacity (TiB) * PerUnitStorageThroughput (MB/s/TiB). This option is
            only valid for <code>PERSISTENT_1</code> deployment types. </p>
        <p>Valid values for SSD storage: 50, 100, 200. Valid values for HDD storage: 12, 40. </p>")
  @as("PerUnitStorageThroughput")
  perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @ocaml.doc("<p>The deployment type of the FSX for Lustre file system. <i>Scratch deployment type</i> is designed for temporary storage
            and shorter-term processing of data.</p>
        <p>
            <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment 
        types are best suited for when you need temporary storage and shorter-term processing of data. 
        The <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
        throughput capacity than <code>SCRATCH_1</code>.</p> 
        <p>The <code>PERSISTENT_1</code> deployment type is used for longer-term storage 
            and workloads and encryption of data in transit. To learn more about deployment types, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html\">
                FSx for Lustre Deployment Options</a>. (Default = <code>SCRATCH_1</code>)</p>")
  @as("DeploymentType")
  deploymentType: option<lustreDeploymentType>,
  @as("DataRepositoryConfiguration")
  dataRepositoryConfiguration: option<dataRepositoryConfiguration>,
  @ocaml.doc("<p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone. d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
@ocaml.doc("<p>A list of <code>Filter</code> elements.</p>") type filters = array<filter>
@ocaml.doc("<p>The response object for the Microsoft Windows file system used in the
                <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemWindowsResponse = {
  @ocaml.doc("<p>The set of tags applied to the final backup.</p>") @as("FinalBackupTags")
  finalBackupTags: option<tags>,
  @ocaml.doc("<p>The ID of the final backup for this file system.</p>") @as("FinalBackupId")
  finalBackupId: option<backupId>,
}
@ocaml.doc("<p>The configuration object for the Microsoft Windows file system used in the
                <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemWindowsConfiguration = {
  @ocaml.doc("<p>A set of tags for your final backup.</p>") @as("FinalBackupTags")
  finalBackupTags: option<tags>,
  @ocaml.doc("<p>By default, Amazon FSx for Windows takes a final backup on your behalf when the
                <code>DeleteFileSystem</code> operation is invoked. Doing this helps protect you
            from data loss, and we highly recommend taking the final backup. If you want to skip
            this backup, use this flag to do so.</p>")
  @as("SkipFinalBackup")
  skipFinalBackup: option<flag>,
}
@ocaml.doc("<p>The response object for the Amazon FSx for Lustre file system being deleted in the
                <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemLustreResponse = {
  @ocaml.doc("<p>The set of tags applied to the final backup.</p>") @as("FinalBackupTags")
  finalBackupTags: option<tags>,
  @ocaml.doc("<p>The ID of the final backup for this file system.</p>") @as("FinalBackupId")
  finalBackupId: option<backupId>,
}
@ocaml.doc("<p>The configuration object for the Amazon FSx for Lustre file system being deleted in the
                <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemLustreConfiguration = {
  @ocaml.doc("<p>Use if <code>SkipFinalBackup</code> is set to <code>false</code>, 
            and you want to apply an array of tags to the final backup. If you have set the file system property
            <code>CopyTagsToBackups</code> to true, and 
            you specify one or more <code>FinalBackupTags</code> when deleting a file system, Amazon FSx will not copy any existing file system tags to the backup.</p>")
  @as("FinalBackupTags")
  finalBackupTags: option<tags>,
  @ocaml.doc("<p>Set <code>SkipFinalBackup</code> to false if you want to take a final backup of the file 
            system you are deleting. By default, Amazon FSx will not take a final backup on your behalf when the
                <code>DeleteFileSystem</code> operation is invoked. (Default = true)</p>")
  @as("SkipFinalBackup")
  skipFinalBackup: option<flag>,
}
type dataRepositoryTaskFilters = array<dataRepositoryTaskFilter>
@ocaml.doc("<p>A description of the data repository task. You use data repository tasks
            to perform bulk transfer operations between your Amazon FSx file system and its linked data
            repository.</p>")
type dataRepositoryTask = {
  @as("Report") report: option<completionReport>,
  @ocaml.doc(
    "<p>Provides the status of the number of files that the task has processed successfully and failed to process.</p>"
  )
  @as("Status")
  status: option<dataRepositoryTaskStatus>,
  @ocaml.doc(
    "<p>Failure message describing why the task failed, it is populated only when <code>Lifecycle</code> is set to <code>FAILED</code>.</p>"
  )
  @as("FailureDetails")
  failureDetails: option<dataRepositoryTaskFailureDetails>,
  @ocaml.doc("<p>An array of paths on the Amazon FSx for Lustre file system that specify the data for the data repository task to process. 
            For example, in an EXPORT_TO_REPOSITORY task, the paths specify which data to export to the linked data repository.</p>
            <p>(Default) If <code>Paths</code> is not specified, Amazon FSx uses the file system root directory.</p>")
  @as("Paths")
  paths: option<dataRepositoryTaskPaths>,
  @as("FileSystemId") fileSystemId: fileSystemId,
  @as("Tags") tags: option<tags>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @ocaml.doc(
    "<p>The time that Amazon FSx completed processing the task, populated after the task is complete.</p>"
  )
  @as("EndTime")
  endTime: option<endTime>,
  @ocaml.doc("<p>The time that Amazon FSx began processing the task.</p>") @as("StartTime")
  startTime: option<startTime>,
  @as("CreationTime") creationTime: creationTime,
  @ocaml.doc(
    "<p>The type of data repository task; EXPORT_TO_REPOSITORY is the only type currently supported.</p>"
  )
  @as("Type")
  type_: dataRepositoryTaskType,
  @ocaml.doc("<p>The lifecycle status of the data repository task, as follows:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon FSx has not started the task.</p>
            </li>
            <li>
               <p>
                  <code>EXECUTING</code> - Amazon FSx is processing the task.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> -  Amazon FSx was not able to complete the task. For example, there may be files the task failed to process. 
                The <a>DataRepositoryTaskFailureDetails</a> property provides more information about task failures.</p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code> - FSx completed the task successfully.</p>
            </li>
            <li>
               <p>
                  <code>CANCELED</code> - Amazon FSx canceled the task and it did not complete.</p>
            </li>
            <li>
               <p>
                  <code>CANCELING</code> - FSx is in process of canceling the task.</p>
            </li>
         </ul>
        <note>
            <p>You cannot delete an FSx for Lustre file system if there are data 
                repository tasks for the file system in the <code>PENDING</code> or <code>EXECUTING</code> states.
                Please retry when the data repository task is finished (with a status of <code>CANCELED</code>, <code>SUCCEEDED</code>, or <code>FAILED</code>). 
                You can use the DescribeDataRepositoryTask action to monitor the task status. Contact the FSx team if you need to delete your file system immediately.</p>
        </note>")
  @as("Lifecycle")
  lifecycle: dataRepositoryTaskLifecycle,
  @ocaml.doc("<p>The system-generated, unique 17-digit ID of the data repository task.</p>")
  @as("TaskId")
  taskId: taskId,
}
@ocaml.doc("<p>The configuration object for the Microsoft Windows file system used in
                <code>CreateFileSystem</code> and <code>CreateFileSystemFromBackup</code>
            operations.</p>")
type createFileSystemWindowsConfiguration = {
  @ocaml.doc("<p>An array of one or more DNS alias names that you want to associate with the Amazon FSx file system. 
            Aliases allow you to use existing DNS names to access the data in your Amazon FSx file system. 
            You can associate up to 50 aliases with a file system at any time. 
            You can associate additional DNS aliases after you create the file system using the AssociateFileSystemAliases operation. 
            You can remove DNS aliases from the file system after it is created using the DisassociateFileSystemAliases operation.
            You only need to specify the alias name in the request payload.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html\">Working with DNS Aliases</a> and 
        <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html\">Walkthrough 5: Using DNS aliases to access your file system</a>, including
        additional steps you must take to be able to access your file system using a DNS alias.</p>
         <p>An alias name has to meet the following requirements:</p>
            <ul>
            <li>
               <p>Formatted as a fully-qualified domain name (FQDN), <code>hostname.domain</code>, for example, <code>accounting.example.com</code>.</p>
            </li>
            <li>
               <p>Can contain alphanumeric characters, the underscore (_), and the hyphen (-).</p>
            </li>
            <li>
               <p>Cannot start or end with a hyphen.</p>
            </li>
            <li>
               <p>Can start with a numeric.</p>
            </li>
         </ul>
        <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
            as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>")
  @as("Aliases")
  aliases: option<alternateDNSNames>,
  @ocaml.doc("<p>A boolean flag indicating whether tags for the file system should be copied to
            backups. This value defaults to false. If it's set to true, all tags for the file
            system are copied to all automatic and user-initiated backups where the user
            doesn't specify tags. If this value is true, and you specify one or more tags, only
            the specified tags are copied to backups. If you specify one or more tags when creating a
            user-initiated backup, no tags are copied from the file system, regardless of this value.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @ocaml.doc("<p>The number of days to retain automatic backups. The default is to retain backups for 7
            days. Setting this value to 0 disables the creation of automatic backups. The maximum
            retention period for backups is 90 days.</p>")
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @ocaml.doc("<p>The preferred time to take daily automatic backups, formatted HH:MM in the UTC time
            zone.</p>")
  @as("DailyAutomaticBackupStartTime")
  dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>The throughput of an Amazon FSx file system, measured in megabytes per second, in 2 to
            the <i>n</i>th increments, between 2^3 (8) and 2^11 (2048).</p>")
  @as("ThroughputCapacity")
  throughputCapacity: megabytesPerSecond,
  @ocaml.doc("<p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This specifies the subnet 
            in which you want the preferred file server to be located. For in-AWS applications, we recommend that you launch 
            your clients in the same Availability Zone (AZ) as your preferred file server to reduce cross-AZ 
            data transfer costs and minimize latency. </p>")
  @as("PreferredSubnetId")
  preferredSubnetId: option<subnetId>,
  @ocaml.doc("<p>Specifies the file system deployment type, valid values are the following:</p>
        <ul>
            <li>
                <p>
                  <code>MULTI_AZ_1</code> - Deploys a high availability file system that is configured 
                    for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ) unavailability. You 
                    can only deploy a Multi-AZ file system in AWS Regions that have a minimum of three Availability Zones. Also 
                supports HDD storage type</p>
            </li>
            <li>
                <p>
                  <code>SINGLE_AZ_1</code> - (Default) Choose to deploy a file system that is configured for single AZ redundancy.</p>
            </li>
            <li>
                <p>
                  <code>SINGLE_AZ_2</code> - The latest generation Single AZ file system. 
                    Specifies a file system that is configured for single AZ redundancy and supports HDD storage type.</p>
            </li>
         </ul>
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html\">
                Availability and Durability: Single-AZ and Multi-AZ File Systems</a>.</p>")
  @as("DeploymentType")
  deploymentType: option<windowsDeploymentType>,
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfiguration>,
  @ocaml.doc("<p>The ID for an existing AWS Managed Microsoft Active Directory (AD) instance that the
            file system should join when it's created.</p>")
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
}
type dataRepositoryTasks = array<dataRepositoryTask>
type rec fileSystem = {
  @ocaml.doc("<p>A list of administrative actions for the file system that are in process or waiting to be processed. 
            Administrative actions describe changes to the Windows file system that you have initiated using the <code>UpdateFileSystem</code> action.
        </p>")
  @as("AdministrativeActions")
  administrativeActions: option<administrativeActions>,
  @as("LustreConfiguration") lustreConfiguration: option<lustreFileSystemConfiguration>,
  @ocaml.doc("<p>The configuration for this Microsoft Windows file system.</p>")
  @as("WindowsConfiguration")
  windowsConfiguration: option<windowsFileSystemConfiguration>,
  @ocaml.doc("<p>The tags to associate with the file system. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\">Tagging Your
                Amazon EC2 Resources</a> in the <i>Amazon EC2 User
            Guide</i>.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the file system resource.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the file system's data
            for Amazon FSx for Windows File Server file systems and persistent Amazon FSx for Lustre file
            systems at rest. In either case, if not specified, the Amazon FSx managed key
            is used. The scratch Amazon FSx for Lustre file systems are always encrypted at rest using
            Amazon FSx managed keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html\">Encrypt</a>
            in the <i>AWS Key Management Service API Reference</i>.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The DNS name for the file system.</p>") @as("DNSName") dnsname: option<dnsname>,
  @ocaml.doc("<p>The IDs of the elastic network interface from which a specific file system is
            accessible. The elastic network interface is automatically created in the same VPC that
            the Amazon FSx file system was created in. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html\">Elastic Network
                Interfaces</a> in the <i>Amazon EC2 User Guide.</i>
         </p>

        <p>For an Amazon FSx for Windows File Server file system, you can have one network
            interface ID. For an Amazon FSx for Lustre file system, you can have more than
            one.</p>")
  @as("NetworkInterfaceIds")
  networkInterfaceIds: option<networkInterfaceIds>,
  @ocaml.doc("<p>Specifies the IDs of the subnets that the file system is accessible from. For Windows <code>MULTI_AZ_1</code> 
            file system deployment type, there are two subnet IDs, one for the preferred file server 
            and one for the standby file server. The preferred file server subnet identified in the  
            <code>PreferredSubnetID</code> property. All other file systems have only one subnet ID.</p>
        <p>For Lustre file systems, and Single-AZ Windows file systems, this is the ID of 
            the subnet that contains the endpoint for the file system. For <code>MULTI_AZ_1</code> Windows file systems,
            the endpoint for the file system is available in the <code>PreferredSubnetID</code>.</p>")
  @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The ID of the primary VPC for the file system.</p>") @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc("<p>The storage type of the file system. 
            Valid values are <code>SSD</code> and <code>HDD</code>.
            If set to <code>SSD</code>, the file system uses solid state drive storage. 
            If set to <code>HDD</code>, the file system uses hard disk drive storage.
        </p>")
  @as("StorageType")
  storageType: option<storageType>,
  @ocaml.doc("<p>The storage capacity of the file system in gibibytes (GiB).</p>")
  @as("StorageCapacity")
  storageCapacity: option<storageCapacity>,
  @as("FailureDetails") failureDetails: option<fileSystemFailureDetails>,
  @ocaml.doc("<p>The lifecycle status of the file system, following are the possible values and what they mean:</p> 
            <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - The file system is in a healthy state, and is reachable and available for use.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the new file system.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - Amazon FSx is deleting an existing file system.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - An existing file system has experienced an unrecoverable failure. 
                    When creating a new file system, Amazon FSx was unable to create the file system.</p>
            </li>
            <li>
                    <p>
                  <code>MISCONFIGURED</code> indicates that the file system is in a failed but recoverable state.</p>
                </li>
            <li>
                    <p>
                  <code>UPDATING</code> indicates that the file system is undergoing a customer initiated update.</p>
                </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<fileSystemLifecycle>,
  @ocaml.doc(
    "<p>The type of Amazon FSx file system, either <code>LUSTRE</code> or <code>WINDOWS</code>.</p>"
  )
  @as("FileSystemType")
  fileSystemType: option<fileSystemType>,
  @ocaml.doc("<p>The system-generated, unique 17-digit ID of the file system.</p>")
  @as("FileSystemId")
  fileSystemId: option<fileSystemId>,
  @ocaml.doc("<p>The time that the file system was created, in seconds (since 1970-01-01T00:00:00Z),
            also known as Unix time.</p>")
  @as("CreationTime")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The AWS account that created the file system. If the file system was created by an AWS
            Identity and Access Management (IAM) user, the AWS account to which the IAM user belongs
            is the owner.</p>")
  @as("OwnerId")
  ownerId: option<awsaccountId>,
}
and administrativeActions = array<administrativeAction>
and administrativeAction = {
  @as("FailureDetails") failureDetails: option<administrativeActionFailureDetails>,
  @ocaml.doc("<p>Describes the target value for the administration action,  
            provided in the <code>UpdateFileSystem</code> operation.  
           Returned for <code>FILE_SYSTEM_UPDATE</code> administrative actions. 
         </p>")
  @as("TargetFileSystemValues")
  targetFileSystemValues: option<fileSystem>,
  @ocaml.doc("<p>Describes the status of the administrative action, as follows:</p>
        <ul>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx failed to process the administrative action successfully.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Amazon FSx is processing the administrative action.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - Amazon FSx is waiting to process the administrative action.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - Amazon FSx has finished processing the administrative task.</p>
            </li>
            <li>
               <p>
                  <code>UPDATED_OPTIMIZING</code> - For a storage capacity increase update, Amazon FSx has
                    updated the file system with the new storage capacity, and is now performing the
                    storage optimization process. For more information, see
                        <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html\">Managing
                        storage capacity</a> in the <i>Amazon FSx for Windows File Server
                        User Guide</i> and <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html\">Managing storage
                        and throughput capacity</a> in the <i>Amazon FSx for Lustre User
                        Guide</i>.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>Time that the administrative action request was received.</p>") @as("RequestTime")
  requestTime: option<requestTime>,
  @ocaml.doc("<p>Provides the percent complete of a <code>STORAGE_OPTIMIZATION</code> administrative action. 
            Does not apply to any other administrative action type.</p>")
  @as("ProgressPercent")
  progressPercent: option<progressPercent>,
  @as("AdministrativeActionType") administrativeActionType: option<administrativeActionType>,
}
@ocaml.doc("<p>A list of file systems.</p>") type fileSystems = array<fileSystem>
@ocaml.doc("<p>A backup of an Amazon FSx file system.</p>")
type backup = {
  @ocaml.doc("<p>The source Region of the backup. Specifies the Region from where this backup
            is copied.</p>")
  @as("SourceBackupRegion")
  sourceBackupRegion: option<region>,
  @as("SourceBackupId") sourceBackupId: option<backupId>,
  @as("OwnerId") ownerId: option<awsaccountId>,
  @ocaml.doc(
    "<p>The configuration of the self-managed Microsoft Active Directory (AD) to which the Windows File Server instance is joined.</p>"
  )
  @as("DirectoryInformation")
  directoryInformation: option<activeDirectoryBackupAttributes>,
  @ocaml.doc("<p>Metadata of the file system associated with the backup. This metadata is persisted
            even if the file system is deleted.</p>")
  @as("FileSystem")
  fileSystem: fileSystem,
  @ocaml.doc("<p>Tags associated with a particular file system.</p>") @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the backup resource.</p>") @as("ResourceARN")
  resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the 
              backup of the Amazon FSx file system's data at rest. 
              </p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The time when a particular backup was created.</p>") @as("CreationTime")
  creationTime: creationTime,
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @ocaml.doc("<p>The type of the file system backup.</p>") @as("Type") type_: backupType,
  @ocaml.doc("<p>Details explaining any failures that occur when creating a backup.</p>")
  @as("FailureDetails")
  failureDetails: option<backupFailureDetails>,
  @ocaml.doc("<p>The lifecycle status of the backup.</p>
        <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - The backup is fully available.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx has not started creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>TRANSFERRING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx is transferring the backup to S3.</p>
            </li>
            <li>
               <p>
                  <code>COPYING</code> - Amazon FSx is copying the backup.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Amazon FSx deleted the backup and it is no longer available.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx could not complete the backup.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: backupLifecycle,
  @ocaml.doc("<p>The ID of the backup.</p>") @as("BackupId") backupId: backupId,
}
@ocaml.doc("<p>A list of file system backups.</p>") type backups = array<backup>
@ocaml.doc("<p>Amazon FSx is a fully managed service that makes it easy for storage and
            application administrators to launch and use shared file storage.</p>")
module DeleteBackup = {
  type t
  @ocaml.doc("<p>The request object for <code>DeleteBackup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent deletion. This is automatically filled on your behalf when using the AWS CLI
            or SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the backup you want to delete.</p>") @as("BackupId")
    backupId: backupId,
  }
  @ocaml.doc("<p>The response object for <code>DeleteBackup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The lifecycle of the backup. Should be <code>DELETED</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<backupLifecycle>,
    @ocaml.doc("<p>The ID of the backup deleted.</p>") @as("BackupId") backupId: option<backupId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteBackupCommand"
  let make = (~backupId, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, backupId: backupId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDataRepositoryTask = {
  type t
  @ocaml.doc("<p>Cancels a data repository task.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the data repository task to cancel.</p>") @as("TaskId") taskId: taskId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the task being canceled.</p>") @as("TaskId") taskId: option<taskId>,
    @ocaml.doc("<p>The lifecycle status of the data repository task, as follows:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon FSx has not started the task.</p>
            </li>
            <li>
               <p>
                  <code>EXECUTING</code> - Amazon FSx is processing the task.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> -  Amazon FSx was not able to complete the task. For example, there may be files the task failed to process. 
                The <a>DataRepositoryTaskFailureDetails</a> property provides more information about task failures.</p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code> - FSx completed the task successfully.</p>
            </li>
            <li>
               <p>
                  <code>CANCELED</code> - Amazon FSx canceled the task and it did not complete.</p>
            </li>
            <li>
               <p>
                  <code>CANCELING</code> - FSx is in process of canceling the task.</p>
            </li>
         </ul>")
    @as("Lifecycle")
    lifecycle: option<dataRepositoryTaskLifecycle>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CancelDataRepositoryTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  @ocaml.doc("<p>The request object for <code>UntagResource</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A list of keys of tags on the resource to untag. In case the tag key doesn't exist,
            the call will still succeed to be idempotent.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The ARN of the Amazon FSx resource to untag.</p>") @as("ResourceARN")
    resourceARN: resourceARN,
  }

  @module("@aws-sdk/client-fsx") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  @ocaml.doc("<p>The request object for the <code>TagResource</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of tags for the resource. If a tag with a given key already exists, the
            value is replaced by the one specified in this parameter.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon FSx resource that you want to
            tag.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
  }

  @module("@aws-sdk/client-fsx") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p>The request object for <code>ListTagsForResource</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous
                <code>ListTagsForResource</code> operation (String). If a token present, the action
            continues the list from where the returning call left off.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of tags to return in the response (integer). This
            parameter value must be greater than 0. The number of items that Amazon FSx returns is
            the minimum of the <code>MaxResults</code> parameter specified in the request and the
            service's internal maximum number of items per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the Amazon FSx resource that will have its tags listed.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
  }
  @ocaml.doc("<p>The response object for <code>ListTagsForResource</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>This is present if there are more tags than returned in the response (String). You
            can use the <code>NextToken</code> value in the later request to fetch the tags.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of tags on the resource.</p>") @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFileSystemAliases = {
  type t
  @ocaml.doc(
    "<p>The request object of DNS aliases to disassociate from an Amazon FSx for Windows File Server file system.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>An array of one or more DNS alias names to disassociate, or remove, from the file system.</p>"
    )
    @as("Aliases")
    aliases: alternateDNSNames,
    @ocaml.doc("<p>Specifies the file system from which to disassociate the DNS aliases.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  @ocaml.doc("<p>The system generated response showing the DNS aliases that Amazon FSx is attempting to disassociate from the file system. 
        Use the  API operation to monitor the status of the aliases Amazon FSx is removing from the file system.</p>")
  type response = {
    @ocaml.doc(
      "<p>An array of one or more DNS aliases that Amazon FSx is attempting to disassociate from the file system.</p>"
    )
    @as("Aliases")
    aliases: option<aliases>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DisassociateFileSystemAliasesCommand"
  let make = (~aliases, ~fileSystemId, ~clientRequestToken=?, ()) =>
    new({aliases: aliases, fileSystemId: fileSystemId, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystemAliases = {
  type t
  @ocaml.doc("<p>The request object for <code>DescribeFileSystemAliases</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous
                <code>DescribeFileSystemAliases</code> operation (String). If a token is included in the request, the action
            continues the list from where the previous returning call left off.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of DNS aliases to return in the response (integer). This
            parameter value must be greater than 0. The number of items that Amazon FSx returns is
            the minimum of the <code>MaxResults</code> parameter specified in the request and the
            service's internal maximum number of items per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the file system to return the associated DNS aliases for
            (String).</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  @ocaml.doc("<p>The response object for <code>DescribeFileSystemAliases</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Present if there are more DNS aliases than returned in the response (String). You
            can use the <code>NextToken</code> value in a later request to fetch additional
            descriptions. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of one or more DNS aliases currently associated with the specified file system.</p>"
    )
    @as("Aliases")
    aliases: option<aliases>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeFileSystemAliasesCommand"
  let make = (~fileSystemId, ~nextToken=?, ~maxResults=?, ~clientRequestToken=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      fileSystemId: fileSystemId,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateFileSystemAliases = {
  type t
  @ocaml.doc(
    "<p>The request object specifying one or more DNS alias names to associate with an Amazon FSx for Windows File Server file system.</p>"
  )
  type request = {
    @ocaml.doc("<p>An array of one or more DNS alias names to associate with the file system. 
            The alias name has to comply with the following formatting requirements:</p>
            <ul>
            <li>
               <p>Formatted as a fully-qualified domain name (FQDN), <i>
                     <code>hostname.domain</code>
                  </i>, 
                    for example, <code>accounting.corp.example.com</code>.</p>
            </li>
            <li>
               <p>Can contain alphanumeric characters and the hyphen (-).</p>
            </li>
            <li>
               <p>Cannot start or end with a hyphen.</p>
            </li>
            <li>
               <p>Can start with a numeric.</p>
            </li>
         </ul>
        <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them: 
            as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>")
    @as("Aliases")
    aliases: alternateDNSNames,
    @ocaml.doc(
      "<p>Specifies the file system with which you want to associate one or more DNS aliases.</p>"
    )
    @as("FileSystemId")
    fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  @ocaml.doc("<p>The system generated response showing the DNS aliases that 
            Amazon FSx is attempting to associate with the file system. 
            Use the  API 
            operation to monitor the status of the aliases Amazon FSx is 
            associating with the file system. It can take up to 2.5 minutes for 
        the alias status to change from <code>CREATING</code> to <code>AVAILABLE</code>. </p>")
  type response = {
    @ocaml.doc(
      "<p>An array of the DNS aliases that Amazon FSx is associating with the file system.</p>"
    )
    @as("Aliases")
    aliases: option<aliases>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "AssociateFileSystemAliasesCommand"
  let make = (~aliases, ~fileSystemId, ~clientRequestToken=?, ()) =>
    new({aliases: aliases, fileSystemId: fileSystemId, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFileSystem = {
  type t
  @ocaml.doc("<p>The request object for <code>DeleteFileSystem</code> operation.</p>")
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<deleteFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<deleteFileSystemWindowsConfiguration>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent deletion. This is automatically filled on your behalf when using the AWS CLI
            or SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the file system you want to delete.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  @ocaml.doc("<p>The response object for the <code>DeleteFileSystem</code> operation.</p>")
  type response = {
    @as("LustreResponse") lustreResponse: option<deleteFileSystemLustreResponse>,
    @as("WindowsResponse") windowsResponse: option<deleteFileSystemWindowsResponse>,
    @ocaml.doc("<p>The file system lifecycle for the deletion request. Should be
            <code>DELETING</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<fileSystemLifecycle>,
    @ocaml.doc("<p>The ID of the file system being deleted.</p>") @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteFileSystemCommand"
  let make = (
    ~fileSystemId,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      lustreConfiguration: lustreConfiguration,
      windowsConfiguration: windowsConfiguration,
      clientRequestToken: clientRequestToken,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataRepositoryTask = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Defines whether or not Amazon FSx provides a CompletionReport once the task has completed. 
            A CompletionReport provides a detailed  report on the files that Amazon FSx processed that meet the criteria specified by the 
            <code>Scope</code> parameter. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html\">Working with Task Completion Reports</a>.</p>")
    @as("Report")
    report: completionReport,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @ocaml.doc("<p>(Optional) The path or paths on the Amazon FSx file system to use when the data repository task is processed. 
            The default path is the file system root directory. The paths you provide need to be relative to the mount point of the file system. 
            If the mount point is <code>/mnt/fsx</code> and <code>/mnt/fsx/path1</code> is a directory or 
            file on the file system you want to export, then the path to provide is <code>path1</code>.
            If a path that you provide isn't valid, the task fails.</p>")
    @as("Paths")
    paths: option<dataRepositoryTaskPaths>,
    @ocaml.doc("<p>Specifies the type of data repository task to create.</p>") @as("Type")
    type_: dataRepositoryTaskType,
  }
  type response = {
    @ocaml.doc("<p>The description of the data repository task that you just created.</p>")
    @as("DataRepositoryTask")
    dataRepositoryTask: option<dataRepositoryTask>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateDataRepositoryTaskCommand"
  let make = (~report, ~fileSystemId, ~type_, ~tags=?, ~clientRequestToken=?, ~paths=?, ()) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      report: report,
      fileSystemId: fileSystemId,
      paths: paths,
      type_: type_,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataRepositoryTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("<p>(Optional) You can use filters to narrow the <code>DescribeDataRepositoryTasks</code> response to 
            include just tasks for specific file systems, or tasks in a specific lifecycle state.</p>")
    @as("Filters")
    filters: option<dataRepositoryTaskFilters>,
    @ocaml.doc("<p>(Optional) IDs of the tasks whose descriptions you want to retrieve
            (String).</p>")
    @as("TaskIds")
    taskIds: option<taskIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The collection of data repository task descriptions returned.</p>")
    @as("DataRepositoryTasks")
    dataRepositoryTasks: option<dataRepositoryTasks>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeDataRepositoryTasksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~taskIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, taskIds: taskIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystem = {
  type t
  @ocaml.doc("<p>The request object for the <code>UpdateFileSystem</code> operation.</p>")
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<updateFileSystemLustreConfiguration>,
    @ocaml.doc(
      "<p>The configuration updates for an Amazon FSx for Windows File Server file system.</p>"
    )
    @as("WindowsConfiguration")
    windowsConfiguration: option<updateFileSystemWindowsConfiguration>,
    @ocaml.doc("<p>Use this parameter to increase the storage capacity of an Amazon FSx file system.
      Specifies the storage capacity target value, GiB, to increase the storage capacity for the
      file system that you're updating. You cannot make a storage capacity increase request if
      there is an existing storage capacity increase request in progress.</p>
         <p>For Windows file systems, the storage capacity target value must be at least 10 percent
      (%) greater than the current storage capacity value. In order to increase storage capacity,
      the file system must have at least 16 MB/s of throughput capacity.</p>
         <p>For Lustre file systems, the storage capacity target value can be the following:</p>
         <ul>
            <li>
               <p>For <code>SCRATCH_2</code> and <code>PERSISTENT_1 SSD</code> deployment types, valid values
          are in multiples of 2400 GiB. The value must be greater than the current storage capacity.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT HDD</code> file systems, valid values are multiples of 6000 GiB for 
          12 MB/s/TiB file systems and multiples of 1800 GiB for 40 MB/s/TiB file systems. The values must be greater
          than the current storage capacity.</p>
            </li>
            <li>
               <p>For <code>SCRATCH_1</code> file systems, you cannot increase the storage capacity.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html\">Managing storage
        capacity</a> in the <i>Amazon FSx for Windows File Server User Guide</i>
      and <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html\">Managing storage and throughput capacity</a> in the <i>Amazon FSx for Lustre
        User Guide</i>.</p>")
    @as("StorageCapacity")
    storageCapacity: option<storageCapacity>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
          idempotent updates. This string is automatically filled on your behalf when you use the AWS
          Command Line Interface (AWS CLI) or an AWS SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Identifies the file system that you are updating.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  @ocaml.doc("<p>The response object for the <code>UpdateFileSystem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A description of the file system that was updated.</p>") @as("FileSystem")
    fileSystem: option<fileSystem>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UpdateFileSystemCommand"
  let make = (
    ~fileSystemId,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~storageCapacity=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      lustreConfiguration: lustreConfiguration,
      windowsConfiguration: windowsConfiguration,
      storageCapacity: storageCapacity,
      clientRequestToken: clientRequestToken,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystemFromBackup = {
  type t
  @ocaml.doc("<p>The request object for the <code>CreateFileSystemFromBackup</code>
            operation.</p>")
  type request = {
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>Sets the storage type for the Windows file system you're creating from a backup. 
            Valid values are <code>SSD</code> and <code>HDD</code>.</p>
        <ul>
            <li>
               <p>Set to <code>SSD</code> to use solid state drive storage. 
                Supported on all Windows deployment types.</p>
            </li>
            <li>
               <p>Set to <code>HDD</code> to use hard disk drive storage. 
                Supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types. 
                </p>
            </li>
         </ul>
        <p>
            Default value is <code>SSD</code>. 
        </p>
        <note>
            <p>HDD and SSD storage types have different minimum storage capacity requirements. 
            A restored file system's storage capacity is tied to the file system that was backed up. 
            You can create a file system that uses HDD storage from a backup of a file system that 
            used SSD storage only if the original SSD file system had a storage capacity of at least 2000 GiB. 
        </p>
         </note>")
    @as("StorageType")
    storageType: option<storageType>,
    @as("LustreConfiguration") lustreConfiguration: option<createFileSystemLustreConfiguration>,
    @ocaml.doc("<p>The configuration for this Microsoft Windows file system.</p>")
    @as("WindowsConfiguration")
    windowsConfiguration: option<createFileSystemWindowsConfiguration>,
    @ocaml.doc("<p>The tags to be applied to the file system at file system creation. The key value of
            the <code>Name</code> tag appears in the console as the file system
            name.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A list of IDs for the security groups that apply to the specified network
            interfaces created for file system access. These security groups apply to all network
            interfaces. This value isn't returned in later DescribeFileSystem requests.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc("<p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code> 
            file system deployment types, provide exactly two subnet IDs, one for the preferred file server 
            and one for the standby file server. You specify one of these subnets as the preferred subnet 
            using the <code>WindowsConfiguration > PreferredSubnetID</code> property.</p>
        <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> deployment 
            types and Lustre file systems, provide exactly one subnet ID.
            The file server is launched in that subnet's Availability Zone.</p>")
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent creation. This string is automatically filled on your behalf when you use the
            AWS Command Line Interface (AWS CLI) or an AWS SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @as("BackupId") backupId: backupId,
  }
  @ocaml.doc("<p>The response object for the <code>CreateFileSystemFromBackup</code>
            operation.</p>")
  type response = {
    @ocaml.doc("<p>A description of the file system.</p>") @as("FileSystem")
    fileSystem: option<fileSystem>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "CreateFileSystemFromBackupCommand"
  let make = (
    ~subnetIds,
    ~backupId,
    ~kmsKeyId=?,
    ~storageType=?,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~tags=?,
    ~securityGroupIds=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      kmsKeyId: kmsKeyId,
      storageType: storageType,
      lustreConfiguration: lustreConfiguration,
      windowsConfiguration: windowsConfiguration,
      tags: tags,
      securityGroupIds: securityGroupIds,
      subnetIds: subnetIds,
      clientRequestToken: clientRequestToken,
      backupId: backupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystem = {
  type t
  @ocaml.doc("<p>The request object used to create a new Amazon FSx file system.</p>")
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<createFileSystemLustreConfiguration>,
    @ocaml.doc("<p>The Microsoft Windows configuration for the file system being created. 
            </p>")
    @as("WindowsConfiguration")
    windowsConfiguration: option<createFileSystemWindowsConfiguration>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The tags to apply to the file system being created. The key value of
            the <code>Name</code> tag appears in the console as the file system name.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A list of IDs specifying the security groups to apply to all network interfaces
            created for file system access. This list isn't returned in later requests to
            describe the file system.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc("<p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code> 
            file system deployment types, provide exactly two subnet IDs, one for the preferred file server 
            and one for the standby file server. You specify one of these subnets as the preferred subnet 
            using the <code>WindowsConfiguration > PreferredSubnetID</code> property. For more information, 
            see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html\">
                Availability and durability: Single-AZ and Multi-AZ file systems</a>.</p>
        <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment types and Lustre file systems, provide exactly one subnet ID.
           The file server is launched in that subnet's Availability Zone.</p>")
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>Sets the storage type for the file system you're creating. 
            Valid values are <code>SSD</code> and <code>HDD</code>.</p>
        <ul>
            <li>
               <p>Set to <code>SSD</code> to use solid state drive storage. 
                SSD is supported on all Windows and Lustre deployment types.</p>
            </li>
            <li>
               <p>Set to <code>HDD</code> to use hard disk drive storage. 
                HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
                and on <code>PERSISTENT</code> Lustre file system deployment types. 
                </p>
            </li>
         </ul>
        <p>
            Default value is <code>SSD</code>. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options\">
            Storage Type Options</a> in the <i>Amazon FSx for Windows User Guide</i> and 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options\">Multiple Storage Options</a> 
            in the <i>Amazon FSx for Lustre User Guide</i>.
        </p>")
    @as("StorageType")
    storageType: option<storageType>,
    @ocaml.doc("<p>Sets the storage capacity of the file system that you're creating.</p>      
        <p>For Lustre file systems:</p>
        <ul>
            <li>
               <p>For <code>SCRATCH_2</code> and <code>PERSISTENT_1 SSD</code> deployment types, valid values are 
                1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT HDD</code> file systems, valid values are increments of 6000 GiB for 
                12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
            </li>
            <li>
               <p>For <code>SCRATCH_1</code> deployment type, valid values are 
                1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
            </li>
         </ul>
        <p>For Windows file systems:</p>
        <ul>
            <li>
               <p>If <code>StorageType=SSD</code>, valid values are 32 GiB - 65,536 GiB (64 TiB).</p>
            </li>
            <li>
               <p>If <code>StorageType=HDD</code>, valid values are 2000 GiB - 65,536 GiB (64 TiB).</p>
            </li>
         </ul>")
    @as("StorageCapacity")
    storageCapacity: storageCapacity,
    @ocaml.doc(
      "<p>The type of Amazon FSx file system to create, either <code>WINDOWS</code> or <code>LUSTRE</code>.</p>"
    )
    @as("FileSystemType")
    fileSystemType: fileSystemType,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent creation. This string is automatically filled on your behalf when you use the
            AWS Command Line Interface (AWS CLI) or an AWS SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
  }
  @ocaml.doc("<p>The response object returned after the file system is created.</p>")
  type response = {
    @ocaml.doc("<p>The configuration of the file system that was created.</p>") @as("FileSystem")
    fileSystem: option<fileSystem>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateFileSystemCommand"
  let make = (
    ~subnetIds,
    ~storageCapacity,
    ~fileSystemType,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~securityGroupIds=?,
    ~storageType=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      lustreConfiguration: lustreConfiguration,
      windowsConfiguration: windowsConfiguration,
      kmsKeyId: kmsKeyId,
      tags: tags,
      securityGroupIds: securityGroupIds,
      subnetIds: subnetIds,
      storageType: storageType,
      storageCapacity: storageCapacity,
      fileSystemType: fileSystemType,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystems = {
  type t
  @ocaml.doc("<p>The request object for <code>DescribeFileSystems</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous
                <code>DescribeFileSystems</code> operation (String). If a token present, the action
            continues the list from where the returning call left off.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of file systems to return in the response (integer). This
            parameter value must be greater than 0. The number of items that Amazon FSx returns is
            the minimum of the <code>MaxResults</code> parameter specified in the request and the
            service's internal maximum number of items per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>IDs of the file systems whose descriptions you want to retrieve
            (String).</p>")
    @as("FileSystemIds")
    fileSystemIds: option<fileSystemIds>,
  }
  @ocaml.doc("<p>The response object for <code>DescribeFileSystems</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Present if there are more file systems than returned in the response (String). You
            can use the <code>NextToken</code> value in the later request to fetch the
            descriptions. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of file system descriptions.</p>") @as("FileSystems")
    fileSystems: option<fileSystems>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeFileSystemsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~fileSystemIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, fileSystemIds: fileSystemIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackup = {
  type t
  @ocaml.doc("<p>The request object for the <code>CreateBackup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>(Optional) The tags to apply to the backup at backup creation. The key value of the
            <code>Name</code> tag appears in the console as the backup name. If you have set <code>CopyTagsToBackups</code> to true, and 
            you specify one or more tags using the <code>CreateBackup</code> action, no existing file system tags are copied from the file system to the backup.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>(Optional) A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent creation. This string is automatically filled on your behalf when you use the
            AWS Command Line Interface (AWS CLI) or an AWS SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the file system to back up.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  @ocaml.doc("<p>The response object for the <code>CreateBackup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A description of the backup.</p>") @as("Backup") backup: option<backup>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateBackupCommand"
  let make = (~fileSystemId, ~tags=?, ~clientRequestToken=?, ()) =>
    new({tags: tags, clientRequestToken: clientRequestToken, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyBackup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A boolean flag indicating whether tags from the source backup
         should be copied to the backup copy. This value defaults to false.</p>
         <p>If you set <code>CopyTags</code> to true and the source backup has
         existing tags, you can use the <code>Tags</code> parameter to create new
         tags, provided that the sum of the source backup tags and the new tags
         doesn't exceed 50. Both sets of tags are merged. If there are tag
         conflicts (for example, two tags with the same key but different values),
         the tags created with the <code>Tags</code> parameter take precedence.</p>")
    @as("CopyTags")
    copyTags: option<flag>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The source AWS Region of the backup. Specifies the AWS Region from which
         the backup is being copied. The source and destination Regions must be in
         the same AWS partition. If you don't specify a Region, it defaults to
         the Region where the request is sent from (in-Region copy).</p>")
    @as("SourceRegion")
    sourceRegion: option<region>,
    @ocaml.doc("<p>The ID of the source backup. Specifies the ID of the backup that is
         being copied.</p>")
    @as("SourceBackupId")
    sourceBackupId: sourceBackupId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {@as("Backup") backup: option<backup>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CopyBackupCommand"
  let make = (
    ~sourceBackupId,
    ~tags=?,
    ~copyTags=?,
    ~kmsKeyId=?,
    ~sourceRegion=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      tags: tags,
      copyTags: copyTags,
      kmsKeyId: kmsKeyId,
      sourceRegion: sourceRegion,
      sourceBackupId: sourceBackupId,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackups = {
  type t
  @ocaml.doc("<p>The request object for <code>DescribeBackups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous
                <code>DescribeBackups</code> operation (String). If a token present, the action
            continues the list from where the returning call left off.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of backups to return in the response (integer). This
            parameter value must be greater than 0. The number of items that Amazon FSx returns is
            the minimum of the <code>MaxResults</code> parameter specified in the request and the
            service's internal maximum number of items per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Filters structure. Supported names are file-system-id and
            backup-type.</p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>IDs of the backups you want to retrieve (String). This overrides any
            filters. If any IDs are not found, BackupNotFound will be thrown.</p>")
    @as("BackupIds")
    backupIds: option<backupIds>,
  }
  @ocaml.doc("<p>Response object for <code>DescribeBackups</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>This is present if there are more backups than returned in the response (String).
            You can use the <code>NextToken</code> value in the later request to fetch the backups.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of backups.</p>") @as("Backups") backups: option<backups>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeBackupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~backupIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, backupIds: backupIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
