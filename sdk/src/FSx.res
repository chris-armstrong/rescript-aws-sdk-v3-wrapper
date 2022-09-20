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
type windowsAccessAuditLogLevel = [
  | @as("SUCCESS_AND_FAILURE") #SUCCESS_AND_FAILURE
  | @as("FAILURE_ONLY") #FAILURE_ONLY
  | @as("SUCCESS_ONLY") #SUCCESS_ONLY
  | @as("DISABLED") #DISABLED
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
                subnets</a> in the <i>Amazon VPC User Guide</i>.</p>")
type vpcId = string
type volumeType = [@as("OPENZFS") #OPENZFS | @as("ONTAP") #ONTAP]
type volumePath = string
type volumeName = string
type volumeLifecycle = [
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
]
type volumeId = string
type volumeFilterValue = string
type volumeFilterName = [
  | @as("storage-virtual-machine-id") #Storage_Virtual_Machine_Id
  | @as("file-system-id") #File_System_Id
]
type volumeCapacity = int
type uuid = string
type totalCount = float
type tieringPolicyName = [
  | @as("NONE") #NONE
  | @as("ALL") #ALL
  | @as("AUTO") #AUTO
  | @as("SNAPSHOT_ONLY") #SNAPSHOT_ONLY
]
type taskId = string
@ocaml.doc("<p>A string of 0 to 256 characters that specifies the value for a tag. Tag values can
            be null and don't have to be unique in a tag set.</p>")
type tagValue = string
@ocaml.doc("<p>A string of 1 to 128 characters that specifies the key for a tag. Tag keys must be
            unique for the resource to which they are attached.</p>")
type tagKey = string
type succeededCount = float
@ocaml.doc("<p>The ID for a subnet. A <i>subnet</i> is a range of IP addresses in
            your virtual private cloud (VPC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html\">VPC and subnets</a> in the
                <i>Amazon VPC User Guide.</i>
         </p>")
type subnetId = string
type storageVirtualMachineSubtype = [
  | @as("SYNC_SOURCE") #SYNC_SOURCE
  | @as("SYNC_DESTINATION") #SYNC_DESTINATION
  | @as("DP_DESTINATION") #DP_DESTINATION
  | @as("DEFAULT") #DEFAULT
]
type storageVirtualMachineRootVolumeSecurityStyle = [
  | @as("MIXED") #MIXED
  | @as("NTFS") #NTFS
  | @as("UNIX") #UNIX
]
type storageVirtualMachineName = string
type storageVirtualMachineLifecycle = [
  | @as("PENDING") #PENDING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("CREATED") #CREATED
]
type storageVirtualMachineId = string
type storageVirtualMachineFilterValue = string
type storageVirtualMachineFilterName = [@as("file-system-id") #File_System_Id]
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
type snapshotName = string
type snapshotLifecycle = [
  | @as("AVAILABLE") #AVAILABLE
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("PENDING") #PENDING
]
type snapshotId = string
type snapshotFilterValue = string
type snapshotFilterName = [@as("volume-id") #Volume_Id | @as("file-system-id") #File_System_Id]
@ocaml.doc("<p>The types of limits on your service utilization. Limits include file system count,
            total throughput capacity, total storage, and total user-initiated backups. These limits
            apply for a specific account in a specific Amazon Web Services Region. You can increase some of them by
            contacting Amazon Web Services Support.</p>")
type serviceLimit = [
  | @as("TOTAL_SSD_IOPS") #TOTAL_SSD_IOPS
  | @as("VOLUMES_PER_FILE_SYSTEM") #VOLUMES_PER_FILE_SYSTEM
  | @as("STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM") #STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM
  | @as("TOTAL_IN_PROGRESS_COPY_BACKUPS") #TOTAL_IN_PROGRESS_COPY_BACKUPS
  | @as("TOTAL_USER_TAGS") #TOTAL_USER_TAGS
  | @as("TOTAL_USER_INITIATED_BACKUPS") #TOTAL_USER_INITIATED_BACKUPS
  | @as("TOTAL_STORAGE") #TOTAL_STORAGE
  | @as("TOTAL_THROUGHPUT_CAPACITY") #TOTAL_THROUGHPUT_CAPACITY
  | @as("FILE_SYSTEM_COUNT") #FILE_SYSTEM_COUNT
]
type securityStyle = [@as("MIXED") #MIXED | @as("NTFS") #NTFS | @as("UNIX") #UNIX]
@ocaml.doc("<p>The ID of your Amazon EC2 security group. This ID is used to control network access
            to the endpoint that Amazon FSx creates on your behalf in each subnet. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html\">Amazon EC2 Security
                groups for Linux instances</a> in the <i>Amazon EC2 User
            Guide</i>.</p>")
type securityGroupId = string
type routeTableId = string
type restoreOpenZFSVolumeOption = [
  | @as("DELETE_CLONED_VOLUMES") #DELETE_CLONED_VOLUMES
  | @as("DELETE_INTERMEDIATE_SNAPSHOTS") #DELETE_INTERMEDIATE_SNAPSHOTS
]
type resourceType = [@as("VOLUME") #VOLUME | @as("FILE_SYSTEM") #FILE_SYSTEM]
@ocaml.doc("<p>The Amazon Resource Name (ARN) for a given resource. ARNs uniquely identify Amazon Web Services
            resources. We require an ARN when you need to specify a resource unambiguously across
            all of Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs)</a> in
            the <i>Amazon Web Services General Reference</i>.</p>")
type resourceARN = string
type requestTime = Js.Date.t
type reportScope = [@as("FAILED_FILES_ONLY") #FAILED_FILES_ONLY]
type reportFormat = [@as("REPORT_CSV_20191124") #REPORT_CSV_20191124]
type region = string
type readOnly = bool
@ocaml.doc("<p>The current percent of progress of an asynchronous task.</p>")
type progressPercent = int
type perUnitStorageThroughput = int
@ocaml.doc("<p>The name of a parameter for the request. Parameter names are returned in
            PascalCase.</p>")
type parameter = string
type organizationalUnitDistinguishedName = string
type openZFSQuotaType = [@as("GROUP") #GROUP | @as("USER") #USER]
type openZFSNfsExportOption = string
type openZFSDeploymentType = [@as("SINGLE_AZ_1") #SINGLE_AZ_1]
type openZFSDataCompressionType = [@as("LZ4") #LZ4 | @as("ZSTD") #ZSTD | @as("NONE") #NONE]
type openZFSCopyStrategy = [@as("FULL_COPY") #FULL_COPY | @as("CLONE") #CLONE]
type openZFSClients = string
type ontapVolumeType = [@as("LS") #LS | @as("DP") #DP | @as("RW") #RW]
type ontapDeploymentType = [@as("MULTI_AZ_1") #MULTI_AZ_1]
@ocaml.doc("<p>(Optional) Opaque pagination token returned from a previous operation (String). If
            present, this token indicates from what point you can continue processing the request, where
            the previous <code>NextToken</code> value left off.</p>")
type nextToken = string
@ocaml.doc("<p>An elastic network interface ID. An elastic network interface is a logical
            networking component in a virtual private cloud (VPC) that represents a virtual network
            card. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html\">Elastic Network Interfaces</a> in
            the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>")
type networkInterfaceId = string
type netBiosAlias = string
type namespace = string
@ocaml.doc(
  "<p>The sustained throughput of an Amazon FSx file system in Megabytes per second (MBps).</p>"
)
type megabytesPerSecond = int
type megabytes = int
@ocaml.doc("<p>The maximum number of resources to return in the response. This value must be an
            integer greater than zero.</p>")
type maxResults = int
type lustreFileSystemMountName = string
type lustreDeploymentType = [
  | @as("PERSISTENT_2") #PERSISTENT_2
  | @as("PERSISTENT_1") #PERSISTENT_1
  | @as("SCRATCH_2") #SCRATCH_2
  | @as("SCRATCH_1") #SCRATCH_1
]
type lustreAccessAuditLogLevel = [
  | @as("WARN_ERROR") #WARN_ERROR
  | @as("ERROR_ONLY") #ERROR_ONLY
  | @as("WARN_ONLY") #WARN_ONLY
  | @as("DISABLED") #DISABLED
]
type limitedMaxResults = int
type lastUpdatedTime = Js.Date.t
@ocaml.doc("<p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
             Amazon FSx file systems, as follows:</p>
        <ul>
            <li>
               <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
                and <code>PERSISTENT_2</code> deployment types only.</p>
                <p>
                  <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
                    the Amazon FSx service KMS key for your account.</p>
            </li>
            <li>
               <p>Amazon FSx for NetApp ONTAP</p>
            </li>
            <li>
               <p>Amazon FSx for OpenZFS</p>
            </li>
            <li>
               <p>Amazon FSx for Windows File Server</p>
            </li>
         </ul>
        <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
            For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html\">Encrypt</a> in the
            <i>Key Management Service API Reference</i>.</p>")
type kmsKeyId = string
type junctionPath = string
type ipAddressRange = string
type ipAddress = string
type iops = float
type integerRecordSizeKiB = int
type integerNoMaxFromNegativeOne = int
type integerNoMax = int
type generalARN = string
type flexCacheEndpointType = [@as("CACHE") #CACHE | @as("ORIGIN") #ORIGIN | @as("NONE") #NONE]
type flag = bool
@ocaml.doc("<p>The value for a filter.</p>") type filterValue = string
@ocaml.doc("<p>The name for a filter.</p>")
type filterName = [
  | @as("data-repository-type") #Data_Repository_Type
  | @as("volume-id") #Volume_Id
  | @as("file-system-type") #File_System_Type
  | @as("backup-type") #Backup_Type
  | @as("file-system-id") #File_System_Id
]
type fileSystemTypeVersion = string
@ocaml.doc("<p>The type of file system.</p>")
type fileSystemType = [
  | @as("OPENZFS") #OPENZFS
  | @as("ONTAP") #ONTAP
  | @as("LUSTRE") #LUSTRE
  | @as("WINDOWS") #WINDOWS
]
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
type eventType = [@as("DELETED") #DELETED | @as("CHANGED") #CHANGED | @as("NEW") #NEW]
@ocaml.doc("<p>A detailed error message.</p>") type errorMessage = string
type endTime = Js.Date.t
type driveCacheType = [@as("READ") #READ | @as("NONE") #NONE]
type diskIopsConfigurationMode = [
  | @as("USER_PROVISIONED") #USER_PROVISIONED
  | @as("AUTOMATIC") #AUTOMATIC
]
type directoryUserName = string
type directoryPassword = string
type directoryId = string
type deleteOpenZFSVolumeOption = [
  | @as("DELETE_CHILD_VOLUMES_AND_SNAPSHOTS") #DELETE_CHILD_VOLUMES_AND_SNAPSHOTS
]
type deleteFileSystemOpenZFSOption = [
  | @as("DELETE_CHILD_VOLUMES_AND_SNAPSHOTS") #DELETE_CHILD_VOLUMES_AND_SNAPSHOTS
]
type deleteDataInFileSystem = bool
type dataRepositoryTaskType = [
  | @as("IMPORT_METADATA_FROM_REPOSITORY") #IMPORT_METADATA_FROM_REPOSITORY
  | @as("EXPORT_TO_REPOSITORY") #EXPORT_TO_REPOSITORY
]
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
  | @as("data-repository-association-id") #Data_Repository_Association_Id
  | @as("task-lifecycle") #Task_Lifecycle
  | @as("file-system-id") #File_System_Id
]
type dataRepositoryLifecycle = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("AVAILABLE") #AVAILABLE
  | @as("CREATING") #CREATING
]
type dataRepositoryAssociationId = string
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
type coolingPeriod = int
@ocaml.doc("<p>(Optional) An idempotency token for resource creation, in a string of up to 64
            ASCII characters. This token is automatically filled on your behalf when you use the
            Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
type clientRequestToken = string
type batchImportMetaDataOnCreate = bool
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
                  <code>PENDING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx hasn't started creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the new user-initiated backup.</p>
            </li>
            <li>
               <p>
                  <code>TRANSFERRING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx is backing up the file
                    system.</p>
            </li>
            <li>
               <p>
                  <code>COPYING</code> - Amazon FSx is copying the backup.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Amazon FSx deleted the backup and it's no longer
                    available.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx couldn't finish the backup.</p>
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
@ocaml.doc("<p>The ID of the source backup. Specifies the backup that you are copying.</p>")
type backupId = string
@ocaml.doc("<p>The number of days to retain automatic backups. Setting this property to
                <code>0</code> disables automatic backups. You can retain automatic backups for a
            maximum of 90 days. The default is <code>0</code>.</p>")
type automaticBackupRetentionDays = int
type autoImportPolicyType = [
  | @as("NEW_CHANGED_DELETED") #NEW_CHANGED_DELETED
  | @as("NEW_CHANGED") #NEW_CHANGED
  | @as("NEW") #NEW
  | @as("NONE") #NONE
]
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
                  <code>FILE_SYSTEM_UPDATE</code> - A file system update administrative action
                    initiated from the Amazon FSx console, API
                        (<code>UpdateFileSystem</code>), or CLI
                    (<code>update-file-system</code>).</p>
            </li>
            <li>
                <p>
                  <code>STORAGE_OPTIMIZATION</code> - After the <code>FILE_SYSTEM_UPDATE</code>
                    task to increase a file system's storage capacity has been completed
                    successfully, a <code>STORAGE_OPTIMIZATION</code> task starts. </p>
                <ul>
                  <li>
                     <p>For Windows and ONTAP, storage optimization is the process of migrating the file system data
                        to newer larger disks.</p>
                  </li>
                  <li>
                     <p>For Lustre, storage optimization consists of rebalancing the data across the existing and
                            newly added file servers.</p>
                  </li>
               </ul>
                <p>You can track the storage-optimization progress using the
                        <code>ProgressPercent</code> property. When
                        <code>STORAGE_OPTIMIZATION</code> has been completed successfully, the
                    parent <code>FILE_SYSTEM_UPDATE</code> action status changes to
                        <code>COMPLETED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html\">Managing
                        storage capacity</a> in the <i>Amazon FSx for Windows
                        File Server User Guide</i>, <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html\">Managing storage
                        and throughput capacity</a> in the <i>Amazon FSx for
                            Lustre User Guide</i>, and
                    <a href=\"https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html\">Managing storage capacity and provisioned IOPS</a> in the <i>Amazon FSx for NetApp ONTAP User
                            Guide</i>.</p>
            </li>
            <li>
               <p>
                  <code>FILE_SYSTEM_ALIAS_ASSOCIATION</code> - A file system update to associate a new Domain
                    Name System (DNS) alias with the file system. For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/APIReference/API_AssociateFileSystemAliases.html\">
                        AssociateFileSystemAliases</a>.</p>
            </li>
            <li>
               <p>
                  <code>FILE_SYSTEM_ALIAS_DISASSOCIATION</code> - A file system update to disassociate a DNS alias from the file system.
                For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/APIReference/API_DisassociateFileSystemAliases.html\">DisassociateFileSystemAliases</a>.</p>
            </li>
            <li>
               <p>
                  <code>VOLUME_UPDATE</code> - A volume update to an Amazon FSx for NetApp ONTAP or
                        Amazon FSx for OpenZFS volume initiated from the Amazon FSx
                    console, API (<code>UpdateVolume</code>), or CLI
                    (<code>update-volume</code>).</p>
            </li>
            <li>
                <p>
                  <code>SNAPSHOT_UPDATE</code> - A snapshot update to an Amazon FSx for
                    OpenZFS volume initiated from the Amazon FSx console, API
                        (<code>UpdateSnapshot</code>), or CLI (<code>update-snapshot</code>).</p>
            </li>
            <li>
                <p>
                  <code>RELEASE_NFS_V3_LOCKS</code> - Tracks the release of Network File System
                    (NFS) V3 locks on an Amazon FSx for OpenZFS file system. </p>
            </li>
         </ul>")
type administrativeActionType = [
  | @as("RELEASE_NFS_V3_LOCKS") #RELEASE_NFS_V3_LOCKS
  | @as("SNAPSHOT_UPDATE") #SNAPSHOT_UPDATE
  | @as("VOLUME_UPDATE") #VOLUME_UPDATE
  | @as("FILE_SYSTEM_ALIAS_DISASSOCIATION") #FILE_SYSTEM_ALIAS_DISASSOCIATION
  | @as("FILE_SYSTEM_ALIAS_ASSOCIATION") #FILE_SYSTEM_ALIAS_ASSOCIATION
  | @as("STORAGE_OPTIMIZATION") #STORAGE_OPTIMIZATION
  | @as("FILE_SYSTEM_UPDATE") #FILE_SYSTEM_UPDATE
]
type adminPassword = string
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
@ocaml.doc("<p>An Amazon Web Services account ID. This ID is a 12-digit number that you use to construct Amazon
            Resource Names (ARNs) for resources.</p>")
type awsaccountId = string
@ocaml.doc("<p>The Windows file access auditing configuration used when creating
            or updating an Amazon FSx for Windows File Server file system.</p>")
type windowsAuditLogCreateConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that specifies the destination of the audit logs.</p>
        <p>The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis
            Data Firehose delivery stream ARN, with the following requirements:</p>
        <ul>
            <li>
                <p>The destination ARN that you provide (either CloudWatch Logs log group
                    or Kinesis Data Firehose delivery stream) must be in the same Amazon Web Services partition,
                    Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>
            </li>
            <li>
                <p>The name of the Amazon CloudWatch Logs log group must begin with
                    the <code>/aws/fsx</code> prefix. The name of the Amazon Kinesis Data
                    Firehouse delivery stream must begin with the <code>aws-fsx</code> prefix.</p>
            </li>
            <li>
                <p>If you do not provide a destination in <code>AuditLogDestination</code>,
                    Amazon FSx will create and use a log stream in the CloudWatch Logs
                    <code>/aws/fsx/windows</code> log group.</p>
            </li>
            <li>
                <p>If <code>AuditLogDestination</code> is provided and the resource does not
                    exist, the request will fail with a <code>BadRequest</code> error.</p>
            </li>
            <li>
                <p>If <code>FileAccessAuditLogLevel</code> and <code>FileShareAccessAuditLogLevel</code>
                    are both set to <code>DISABLED</code>, you cannot specify a destination in
                    <code>AuditLogDestination</code>.</p>
            </li>
         </ul>")
  @as("AuditLogDestination")
  auditLogDestination: option<generalARN>,
  @ocaml.doc("<p>Sets which attempt type is logged by Amazon FSx for file share accesses.</p>
        <ul>
            <li>
                <p>
                  <code>SUCCESS_ONLY</code> - only successful attempts to access file
                    shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>FAILURE_ONLY</code> - only failed attempts to access file
                    shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
                    failed attempts to access file shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - access auditing of file shares is turned off.</p>
            </li>
         </ul>")
  @as("FileShareAccessAuditLogLevel")
  fileShareAccessAuditLogLevel: windowsAccessAuditLogLevel,
  @ocaml.doc("<p>Sets which attempt type is logged by Amazon FSx for file and folder accesses.</p>
        <ul>
            <li>
                <p>
                  <code>SUCCESS_ONLY</code> - only successful attempts to access files
                    or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>FAILURE_ONLY</code> - only failed attempts to access files
                    or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
                    failed attempts to access files or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - access auditing of files and folders is turned off.</p>
            </li>
         </ul>")
  @as("FileAccessAuditLogLevel")
  fileAccessAuditLogLevel: windowsAccessAuditLogLevel,
}
@ocaml.doc("<p>The configuration that Amazon FSx for Windows File Server uses to audit and log
            user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
            file system. For more information,
            see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/file-access-auditing.html\">
                File access auditing</a>.</p>")
type windowsAuditLogConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the destination of the audit logs.
            The destination can be any Amazon CloudWatch Logs log group ARN or
            Amazon Kinesis Data Firehose delivery stream ARN.</p>
        <p>The name of the Amazon CloudWatch Logs log group must begin with
            the <code>/aws/fsx</code> prefix. The name of the Amazon Kinesis Data
            Firehouse delivery stream must begin with the <code>aws-fsx</code> prefix.</p>
        <p>The destination ARN (either CloudWatch Logs log group or Kinesis
            Data Firehose delivery stream) must be in the same Amazon Web Services partition,
            Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>")
  @as("AuditLogDestination")
  auditLogDestination: option<generalARN>,
  @ocaml.doc("<p>Sets which attempt type is logged by Amazon FSx for file share accesses.</p>
        <ul>
            <li>
                <p>
                  <code>SUCCESS_ONLY</code> - only successful attempts to access file
                    shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>FAILURE_ONLY</code> - only failed attempts to access file
                    shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
                    failed attempts to access file shares are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - access auditing of file shares is turned off.</p>
            </li>
         </ul>")
  @as("FileShareAccessAuditLogLevel")
  fileShareAccessAuditLogLevel: windowsAccessAuditLogLevel,
  @ocaml.doc("<p>Sets which attempt type is logged by Amazon FSx for file and folder accesses.</p>
        <ul>
            <li>
                <p>
                  <code>SUCCESS_ONLY</code> - only successful attempts to access files
                    or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>FAILURE_ONLY</code> - only failed attempts to access files
                    or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>SUCCESS_AND_FAILURE</code> - both successful attempts and
                    failed attempts to access files or folders are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - access auditing of files and folders is turned off.</p>
            </li>
         </ul>")
  @as("FileAccessAuditLogLevel")
  fileAccessAuditLogLevel: windowsAccessAuditLogLevel,
}
type volumeIds = array<volumeId>
type volumeFilterValues = array<volumeFilterValue>
@ocaml.doc("<p>Describes the data tiering policy for an ONTAP volume. When enabled, Amazon FSx for ONTAP's intelligent
            tiering automatically transitions a volume's data between the file system's primary storage and capacity
            pool storage based on your access patterns.</p>
        <p>Valid tiering policies are the following:</p>
        <ul>
            <li>
                <p>
                  <code>SNAPSHOT_ONLY</code> - (Default value) moves cold snapshots to the capacity pool storage tier.</p>
            </li>
         </ul>
        <ul>
            <li>
                <p>
                  <code>AUTO</code> - moves cold user data and snapshots to the capacity pool storage tier based on your access patterns.</p>
            </li>
         </ul>
        <ul>
            <li>
                <p>
                  <code>ALL</code> - moves all user data blocks in both the active file system and Snapshot copies to the storage pool tier.</p>
            </li>
         </ul>
        <ul>
            <li>
                <p>
                  <code>NONE</code> - keeps a volume's data in the primary storage tier, preventing it from being moved to the capacity pool tier.</p>
            </li>
         </ul>")
type tieringPolicy = {
  @ocaml.doc("<p>Specifies the tiering policy used to transition data. Default value is <code>SNAPSHOT_ONLY</code>.</p>
        <ul>
            <li>
               <p>
                  <code>SNAPSHOT_ONLY</code> - moves cold snapshots to the capacity pool storage tier.</p>
            </li>
            <li>
               <p>
                  <code>AUTO</code> - moves cold user data and snapshots to the capacity pool storage tier
                based on your access patterns.</p>
            </li>
            <li>
               <p>
                  <code>ALL</code> - moves all user data blocks in both the active file system and Snapshot copies to the
                storage pool tier.</p>
            </li>
            <li>
               <p>
                  <code>NONE</code> - keeps a volume's data in the primary storage tier, preventing it from being moved to
                the capacity pool tier.</p>
            </li>
         </ul>")
  @as("Name")
  name: option<tieringPolicyName>,
  @ocaml.doc("<p>Specifies the number of days that user data in a volume must remain inactive before it is considered \"cold\" 
            and moved to the capacity pool. Used with the <code>AUTO</code> and <code>SNAPSHOT_ONLY</code> tiering policies. 
            Enter a whole number between 2 and 183. Default values are 31 days for <code>AUTO</code> and 2 days for 
            <code>SNAPSHOT_ONLY</code>.</p>")
  @as("CoolingPeriod")
  coolingPeriod: option<coolingPeriod>,
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
type storageVirtualMachineIds = array<storageVirtualMachineId>
type storageVirtualMachineFilterValues = array<storageVirtualMachineFilterValue>
type snapshotIds = array<snapshotId>
type snapshotFilterValues = array<snapshotFilterValue>
@ocaml.doc("<p>A list of security group IDs.</p>") type securityGroupIds = array<securityGroupId>
type routeTableIds = array<routeTableId>
type restoreOpenZFSVolumeOptions = array<restoreOpenZFSVolumeOption>
@ocaml.doc("<p>The configuration for how much storage a user or group can use on the volume. </p>")
type openZFSUserOrGroupQuota = {
  @ocaml.doc("<p>The amount of storage that the user or group can use in gibibytes (GiB).</p>")
  @as("StorageCapacityQuotaGiB")
  storageCapacityQuotaGiB: integerNoMax,
  @ocaml.doc("<p>The ID of the user or group.</p>") @as("Id") id: integerNoMax,
  @ocaml.doc("<p>A value that specifies whether the quota applies to a user or group.</p>")
  @as("Type")
  type_: openZFSQuotaType,
}
@ocaml.doc("<p>The snapshot configuration to use when creating an OpenZFS volume from a
            snapshot.</p>")
type openZFSOriginSnapshotConfiguration = {
  @ocaml.doc("<p>The strategy used when copying data from the snapshot to the new volume. </p>
        <ul>
            <li>
                <p>
                  <code>CLONE</code> - The new volume references the data in the origin
                    snapshot. Cloning a snapshot is faster than copying the data from a snapshot to
                    a new volume and doesn't consume disk throughput. However, the origin snapshot
                    can't be deleted if there is a volume using its copied data. </p>
            </li>
            <li>
                <p>
                  <code>FULL_COPY</code> - Copies all data from the snapshot to the new volume.
                </p>
            </li>
         </ul>")
  @as("CopyStrategy")
  copyStrategy: option<openZFSCopyStrategy>,
  @as("SnapshotARN") snapshotARN: option<resourceARN>,
}
type openZFSNfsExportOptions = array<openZFSNfsExportOption>
type ontapEndpointIpAddresses = array<ipAddress>
@ocaml.doc("<p>A list of network interface IDs.</p>")
type networkInterfaceIds = array<networkInterfaceId>
@ocaml.doc("<p>The Lustre logging configuration used when creating or updating an
            Amazon FSx for Lustre file system. Lustre logging writes the enabled
            logging events for your file system to Amazon CloudWatch Logs.</p>
        <p>Error and warning events can be logged from the following data
            repository operations:</p>
        <ul>
            <li>
               <p>Automatic export</p>
            </li>
            <li>
               <p>Data repository tasks</p>
            </li>
         </ul>
        <p>To learn more about Lustre logging, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/cw-event-logging.html\">Logging to Amazon CloudWatch Logs</a>.</p>")
type lustreLogCreateConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that specifies the destination of the logs.</p>
        <p>The destination can be any Amazon CloudWatch Logs log group ARN, with the following
            requirements:</p>
        <ul>
            <li>
                <p>The destination ARN that you provide must be in the same Amazon Web Services partition,
                    Amazon Web Services Region, and Amazon Web Services account as your Amazon FSx file system.</p>
            </li>
            <li>
                <p>The name of the Amazon CloudWatch Logs log group must begin with
                    the <code>/aws/fsx</code> prefix.</p>
            </li>
            <li>
                <p>If you do not provide a destination, Amazon FSx will create and use a
                    log stream in the CloudWatch Logs <code>/aws/fsx/lustre</code> log group.</p>
            </li>
            <li>
                <p>If <code>Destination</code> is provided and the resource does not
                    exist, the request will fail with a <code>BadRequest</code> error.</p>
            </li>
            <li>
                <p>If <code>Level</code> is set to <code>DISABLED</code>, you cannot specify
                    a destination in <code>Destination</code>.</p>
            </li>
         </ul>")
  @as("Destination")
  destination: option<generalARN>,
  @ocaml.doc("<p>Sets which data repository events are logged by Amazon FSx.</p>
        <ul>
            <li>
                <p>
                  <code>WARN_ONLY</code> - only warning events are logged.</p>
            </li>
            <li>
                <p>
                  <code>ERROR_ONLY</code> - only error events are logged.</p>
            </li>
            <li>
                <p>
                  <code>WARN_ERROR</code> - both warning events and error events
                    are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - logging of data repository events
                    is turned off.</p>
            </li>
         </ul>")
  @as("Level")
  level: lustreAccessAuditLogLevel,
}
@ocaml.doc("<p>The configuration for Lustre logging used to write the enabled
            logging events for your file system to Amazon CloudWatch Logs.</p>
        <p>When logging is enabled, Lustre logs error and warning events
            from data repository operations such as automatic export and data repository tasks.
            To learn more about Lustre logging, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/cw-event-logging.html\">Logging with Amazon CloudWatch Logs</a>.
        </p>")
type lustreLogConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that specifies the destination of the logs.
            The destination can be any Amazon CloudWatch Logs log group ARN. The destination
            ARN must be in the same Amazon Web Services partition, Amazon Web Services Region,
            and Amazon Web Services account as your Amazon FSx file system.</p>")
  @as("Destination")
  destination: option<generalARN>,
  @ocaml.doc("<p>The data repository events that are logged by Amazon FSx.</p>
        <ul>
            <li>
                <p>
                  <code>WARN_ONLY</code> - only warning events are logged.</p>
            </li>
            <li>
                <p>
                  <code>ERROR_ONLY</code> - only error events are logged.</p>
            </li>
            <li>
                <p>
                  <code>WARN_ERROR</code> - both warning events and error events
                    are logged.</p>
            </li>
            <li>
                <p>
                  <code>DISABLED</code> - logging of data repository events
                    is turned off.</p>
            </li>
         </ul>")
  @as("Level")
  level: lustreAccessAuditLogLevel,
}
@ocaml.doc("<p>Describes why a resource lifecycle state changed.</p>")
type lifecycleTransitionReason = {@as("Message") message: option<errorMessage>}
@ocaml.doc("<p>A list of filter values.</p>") type filterValues = array<filterValue>
@ocaml.doc("<p>A list of maintenance operations.</p>")
type fileSystemMaintenanceOperations = array<fileSystemMaintenanceOperation>
@ocaml.doc("<p>A list of file system IDs.</p>") type fileSystemIds = array<fileSystemId>
@ocaml.doc("<p>A structure providing details of any failures that occurred when creating a file
            system.</p>")
type fileSystemFailureDetails = {
  @ocaml.doc("<p>A message describing any failures that occurred during file system creation.</p>")
  @as("Message")
  message: option<errorMessage>,
}
type eventTypes = array<eventType>
type dnsIps = array<ipAddress>
@ocaml.doc("<p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS file system. The
            default is 3 IOPS per GB of storage capacity, but you can provision additional IOPS per
            GB of storage. The configuration consists of the total number of provisioned SSD IOPS
            and how the amount was provisioned (by the customer or by the system).</p>")
type diskIopsConfiguration = {
  @ocaml.doc("<p>The total number of SSD IOPS provisioned for the file system.</p>") @as("Iops")
  iops: option<iops>,
  @ocaml.doc("<p>Specifies whether the number of IOPS for the file system is
            using the system default (<code>AUTOMATIC</code>) or was
            provisioned by the customer (<code>USER_PROVISIONED</code>).</p>")
  @as("Mode")
  mode: option<diskIopsConfigurationMode>,
}
type deleteOpenZFSVolumeOptions = array<deleteOpenZFSVolumeOption>
type deleteFileSystemOpenZFSOptions = array<deleteFileSystemOpenZFSOption>
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
            set to <code>MISCONFIGURED</code> or <code>FAILED</code>.</p>")
type dataRepositoryFailureDetails = {@as("Message") message: option<errorMessage>}
type dataRepositoryAssociationIds = array<dataRepositoryAssociationId>
@ocaml.doc(
  "<p>The snapshot configuration to use when creating an OpenZFS volume from a snapshot. </p>"
)
type createOpenZFSOriginSnapshotConfiguration = {
  @ocaml.doc("<p>The strategy used when copying data from the snapshot to the new volume. </p>
        <ul>
            <li>
                <p>
                  <code>CLONE</code> - The new volume references the data in the origin
                    snapshot. Cloning a snapshot is faster than copying data from the snapshot to a
                    new volume and doesn't consume disk throughput. However, the origin snapshot
                    can't be deleted if there is a volume using its copied data. </p>
            </li>
            <li>
                <p>
                  <code>FULL_COPY</code> - Copies all data from the snapshot to the new volume.
                </p>
            </li>
         </ul>")
  @as("CopyStrategy")
  copyStrategy: openZFSCopyStrategy,
  @as("SnapshotARN") snapshotARN: resourceARN,
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
  @ocaml.doc("<p>A message describing the backup-creation failure.</p>") @as("Message")
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
               <p>DELETE_FAILED - Amazon FSx was unable to disassociate the DNS alias from the file system.</p>
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
@ocaml.doc("<p>The Microsoft Active Directory attributes of the Amazon FSx for Windows File
            Server file system.</p>")
type activeDirectoryBackupAttributes = {
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services Managed Microsoft Active Directory instance to which the file system is joined.</p>"
  )
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
  @ocaml.doc(
    "<p>The fully qualified domain name of the self-managed Active Directory directory.</p>"
  )
  @as("DomainName")
  domainName: option<activeDirectoryFullyQualifiedName>,
}
@ocaml.doc("<p>A filter used to restrict the results of describe calls for Amazon FSx for
            NetApp ONTAP or Amazon FSx for OpenZFS volumes. You can use multiple filters to
            return results that meet all applied filter requirements.</p>")
type volumeFilter = {
  @ocaml.doc("<p>The values of the filter. These are all the values for any of the applied
            filters.</p>")
  @as("Values")
  values: option<volumeFilterValues>,
  @ocaml.doc("<p>The name for this filter.</p>") @as("Name") name: option<volumeFilterName>,
}
@ocaml.doc(
  "<p>Used to specify changes to the ONTAP configuration for the volume you are updating.</p>"
)
type updateOntapVolumeConfiguration = {
  @ocaml.doc("<p>Update the volume's data tiering policy.</p>") @as("TieringPolicy")
  tieringPolicy: option<tieringPolicy>,
  @ocaml.doc("<p>Default is <code>false</code>. Set to true to enable the deduplication,
            compression, and compaction storage efficiency features on the volume.</p>")
  @as("StorageEfficiencyEnabled")
  storageEfficiencyEnabled: option<flag>,
  @ocaml.doc("<p>Specifies the size of the volume in megabytes.</p>") @as("SizeInMegabytes")
  sizeInMegabytes: option<volumeCapacity>,
  @ocaml.doc("<p>The security style for the volume, which can be <code>UNIX</code>.
            <code>NTFS</code>, or <code>MIXED</code>.</p>")
  @as("SecurityStyle")
  securityStyle: option<securityStyle>,
  @ocaml.doc("<p>Specifies the location in the SVM's namespace where the volume is mounted. 
            The <code>JunctionPath</code> must have a leading forward slash, such as <code>/vol3</code>.</p>")
  @as("JunctionPath")
  junctionPath: option<junctionPath>,
}
@ocaml.doc("<p>The configuration updates for an Amazon FSx for OpenZFS file system.</p>")
type updateFileSystemOpenZFSConfiguration = {
  @as("DiskIopsConfiguration") diskIopsConfiguration: option<diskIopsConfiguration>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>The throughput of an Amazon FSx file system, measured in megabytes per second
            (MBps). Valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MB/s.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: option<megabytesPerSecond>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
            This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
            for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code> and you specify one or more tags, only the specified tags are
            copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
            are copied from the volume, regardless of this value.</p>")
  @as("CopyTagsToVolumes")
  copyTagsToVolumes: option<flag>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the file system should be copied to
            backups. This value defaults to <code>false</code>. If it's set to <code>true</code>,
            all tags for the file system are copied to all automatic and user-initiated backups
            where the user doesn't specify tags. If this value is <code>true</code> and you specify
            one or more tags, only the specified tags are copied to backups. If you specify one or
            more tags when creating a user-initiated backup, no tags are copied from the file
            system, regardless of this value.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
@ocaml.doc("<p>The configuration updates for an Amazon FSx for NetApp ONTAP file system.</p>")
type updateFileSystemOntapConfiguration = {
  @ocaml.doc("<p>Specifies the throughput of an FSx for NetApp ONTAP file system, measured in megabytes per second
            (MBps). Valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MB/s.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: option<megabytesPerSecond>,
  @ocaml.doc("<p>The SSD IOPS (input/output operations per second) configuration for an Amazon FSx for NetApp ONTAP file system. The default is 3 IOPS per GB of storage capacity,
            but you can provision additional IOPS per GB of storage. The configuration consists
            of an IOPS mode (<code>AUTOMATIC</code> or <code>USER_PROVISIONED</code>), and in
            the case of <code>USER_PROVISIONED</code> IOPS, the total number of SSD IOPS provisioned.</p>")
  @as("DiskIopsConfiguration")
  diskIopsConfiguration: option<diskIopsConfiguration>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>The ONTAP administrative password for the <code>fsxadmin</code> user.</p>")
  @as("FsxAdminPassword")
  fsxAdminPassword: option<adminPassword>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
@ocaml.doc("<p>The configuration object for Amazon FSx for Lustre file systems used in the
                <code>UpdateFileSystem</code> operation.</p>")
type updateFileSystemLustreConfiguration = {
  @ocaml.doc("<p>The Lustre logging configuration used when updating an Amazon FSx for Lustre
            file system. When logging is enabled, Lustre logs error and warning events for
            data repositories associated with your file system to Amazon CloudWatch Logs.</p>")
  @as("LogConfiguration")
  logConfiguration: option<lustreLogCreateConfiguration>,
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
                existing objects that are changed in the S3 bucket after you choose this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
                imports file and directory listings of any new objects added to the S3 bucket, any 
                existing objects that are changed in the S3 bucket, and any objects that were deleted
                in the S3 bucket.</p>
            </li>
         </ul>
        <p>The <code>AutoImportPolicy</code> parameter is not supported for Lustre file systems with
            the <code>Persistent_2</code> deployment type. Instead, use  
            to update a data repository association on your <code>Persistent_2</code> file system.</p>")
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
@ocaml.doc("<p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>")
type tags = array<tag>
@ocaml.doc("<p>An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has
            four endpoints  that are used to access data or to manage the SVM
            using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They
            are the <code>Iscsi</code>, <code>Management</code>, <code>Nfs</code>,
            and <code>Smb</code> endpoints.</p>")
type svmEndpoint = {
  @ocaml.doc("<p>The SVM endpoint's IP addresses.</p>") @as("IpAddresses")
  ipAddresses: option<ontapEndpointIpAddresses>,
  @as("DNSName") dnsname: option<dnsname>,
}
@ocaml.doc("<p>A filter used to restrict the results of describe calls for
            Amazon FSx for NetApp ONTAP storage virtual machines (SVMs). You can use multiple
            filters to return results that meet all applied filter requirements.</p>")
type storageVirtualMachineFilter = {
  @ocaml.doc("<p>The values of the filter. These are all the values for any of the applied
            filters.</p>")
  @as("Values")
  values: option<storageVirtualMachineFilterValues>,
  @ocaml.doc("<p>The name for this filter.</p>") @as("Name")
  name: option<storageVirtualMachineFilterName>,
}
@ocaml.doc("<p>A filter used to restrict the results of <code>DescribeSnapshots</code> calls. You can
            use multiple filters to return results that meet all applied filter requirements.</p>")
type snapshotFilter = {
  @ocaml.doc("<p>The <code>file-system-id</code> or <code>volume-id</code> that you are filtering
            for.</p>")
  @as("Values")
  values: option<snapshotFilterValues>,
  @ocaml.doc("<p>The name of the filter to use. You can filter by the <code>file-system-id</code> or by
                <code>volume-id</code>.</p>")
  @as("Name")
  name: option<snapshotFilterName>,
}
@ocaml.doc("<p>The configuration that Amazon FSx uses to join the Windows File Server instance to a
            self-managed Microsoft Active Directory (AD) directory.</p>")
type selfManagedActiveDirectoryConfigurationUpdates = {
  @ocaml.doc("<p>A list of up to three IP addresses of DNS servers or domain controllers in the
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
@ocaml.doc("<p>The configuration that Amazon FSx uses to join a FSx for Windows File Server file system or an ONTAP storage virtual machine (SVM) to
            a self-managed (including on-premises) Microsoft Active Directory (AD)
            directory. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html\">
                Using Amazon FSx with your self-managed Microsoft Active Directory</a> or 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html\">Managing SVMs</a>.</p>")
type selfManagedActiveDirectoryConfiguration = {
  @ocaml.doc("<p>A list of up to three IP addresses of DNS servers or domain controllers in the
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
            your self-managed AD directory. Amazon
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
            which the Windows File Server or ONTAP storage virtual machine (SVM) instance is joined.</p>")
type selfManagedActiveDirectoryAttributes = {
  @ocaml.doc("<p>A list of up to three IP addresses of DNS servers or domain controllers in the
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
            self-managed AD directory to which the Windows File Server  or ONTAP storage virtual machine (SVM) instance is joined.</p>")
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @ocaml.doc("<p>The fully qualified domain name of the self-managed AD directory.</p>")
  @as("DomainName")
  domainName: option<activeDirectoryFullyQualifiedName>,
}
type openZFSUserAndGroupQuotas = array<openZFSUserOrGroupQuota>
@ocaml.doc("<p>The configuration for the Amazon FSx for OpenZFS file system. </p>")
type openZFSFileSystemConfiguration = {
  @ocaml.doc("<p>The ID of the root volume of the OpenZFS file system. </p>") @as("RootVolumeId")
  rootVolumeId: option<volumeId>,
  @as("DiskIopsConfiguration") diskIopsConfiguration: option<diskIopsConfiguration>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>The throughput of an Amazon FSx file system, measured in megabytes per second
            (MBps). Valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MB/s.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: option<megabytesPerSecond>,
  @ocaml.doc("<p>Specifies the file-system deployment type. Amazon FSx for OpenZFS supports
                <code>SINGLE_AZ_1</code>. <code>SINGLE_AZ_1</code> is a file system configured for a
            single Availability Zone (AZ) of redundancy. </p>")
  @as("DeploymentType")
  deploymentType: option<openZFSDeploymentType>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
            This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
            for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code> and you specify one or more tags, only the specified tags are
            copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
            are copied from the volume, regardless of this value. </p>")
  @as("CopyTagsToVolumes")
  copyTagsToVolumes: option<flag>,
  @ocaml.doc("<p>A Boolean value indicating whether tags on the file system should be copied to
            backups.
            If it's set to <code>true</code>, all tags on the file system are copied to all
            automatic backups and any user-initiated backups where the user doesn't specify any
            tags. If this value is <code>true</code> and you specify one or more tags, only the
            specified tags are copied to backups. If you specify one or more tags when creating a
            user-initiated backup, no tags are copied from the file system, regardless of this
            value. </p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
@ocaml.doc("<p>Specifies who can mount an OpenZFS file system and the options available while
            mounting the file system.</p>")
type openZFSClientConfiguration = {
  @ocaml.doc("<p>The options to use when mounting the file system. For a list of options that you can
            use with Network File System (NFS), see the <a href=\"https://linux.die.net/man/5/exports\">exports(5) - Linux man page</a>. When
            choosing your options, consider the following:</p>
        <ul>
            <li>
                <p>
                  <code>crossmnt</code> is used by default. If you don't specify
                    <code>crossmnt</code> when changing the client configuration, you won't be
                    able to see or access snapshots in your file system's snapshot directory.</p>
            </li>
            <li>
                <p>
                  <code>sync</code> is used by default. If you instead specify
                        <code>async</code>, the system acknowledges writes before writing to disk.
                    If the system crashes before the writes are finished, you lose the unwritten
                    data. </p>
            </li>
         </ul>")
  @as("Options")
  options: openZFSNfsExportOptions,
  @ocaml.doc("<p>A value that specifies who can mount the file system. You can provide a wildcard
            character (<code>*</code>), an IP address (<code>0.0.0.0</code>), or a CIDR address
                (<code>192.0.2.0/24</code>). By default, Amazon FSx uses the wildcard
            character when specifying the client. </p>")
  @as("Clients")
  clients: openZFSClients,
}
@ocaml.doc("<p>The configuration of an Amazon FSx for NetApp ONTAP volume.</p>")
type ontapVolumeConfiguration = {
  @ocaml.doc("<p>Specifies the type of volume. Valid values are the following:</p>
        <ul>
            <li>
               <p>
                  <code>RW</code> specifies a read/write volume. <code>RW</code> is the default.</p>
            </li>
            <li>
               <p>
                  <code>DP</code> specifies a data-protection volume. You can protect data by replicating it to
                    data-protection mirror copies. If a disaster occurs, you can use these
                    data-protection mirror copies to recover data.</p>
            </li>
            <li>
               <p>
                  <code>LS</code> specifies a load-sharing mirror volume. A load-sharing mirror reduces the
                    network traffic to a FlexVol volume by providing additional read-only access to
                    clients.</p>
            </li>
         </ul>")
  @as("OntapVolumeType")
  ontapVolumeType: option<ontapVolumeType>,
  @ocaml.doc("<p>The volume's universally unique identifier (UUID).</p>") @as("UUID")
  uuid: option<uuid>,
  @ocaml.doc("<p>The volume's <code>TieringPolicy</code> setting.</p>") @as("TieringPolicy")
  tieringPolicy: option<tieringPolicy>,
  @ocaml.doc("<p>A Boolean flag indicating whether this volume is the root volume for its storage
            virtual machine (SVM). Only one volume on an SVM can be the root volume. This value
            defaults to <code>false</code>. If this value is <code>true</code>, then this is the SVM
            root volume.</p>
        <p>This flag is useful when you're deleting an SVM, because you must first delete all
            non-root volumes. This flag, when set to <code>false</code>, helps you identify which
            volumes to delete before you can delete the SVM.</p>")
  @as("StorageVirtualMachineRoot")
  storageVirtualMachineRoot: option<flag>,
  @ocaml.doc("<p>The ID of the volume's storage virtual machine.</p>")
  @as("StorageVirtualMachineId")
  storageVirtualMachineId: option<storageVirtualMachineId>,
  @ocaml.doc("<p>The volume's storage efficiency setting.</p>") @as("StorageEfficiencyEnabled")
  storageEfficiencyEnabled: option<flag>,
  @ocaml.doc("<p>The configured size of the volume, in megabytes (MBs).</p>") @as("SizeInMegabytes")
  sizeInMegabytes: option<volumeCapacity>,
  @ocaml.doc("<p>The security style for the volume, which can be <code>UNIX</code>, <code>NTFS</code>,
            or
                <code>MIXED</code>.</p>")
  @as("SecurityStyle")
  securityStyle: option<securityStyle>,
  @ocaml.doc("<p>Specifies the directory that network-attached storage (NAS) clients use to mount the
            volume, along with the storage virtual machine (SVM) Domain Name System (DNS) name or IP
            address. You can create a <code>JunctionPath</code> directly below a parent volume
            junction or on a directory within a volume. A <code>JunctionPath</code> for a volume
            named <code>vol3</code> might be <code>/vol1/vol2/vol3</code>, or
                <code>/vol1/dir2/vol3</code>, or even <code>/dir1/dir2/vol3</code>.</p>")
  @as("JunctionPath")
  junctionPath: option<junctionPath>,
  @ocaml.doc("<p>Specifies the FlexCache endpoint type of the volume.
            Valid values are the following:</p>
        <ul>
            <li>
               <p>
                  <code>NONE</code> specifies that the volume doesn't have a FlexCache configuration.
                <code>NONE</code> is the default.</p>
            </li>
            <li>
               <p>
                  <code>ORIGIN</code> specifies that the volume is the origin volume for a FlexCache volume.</p>
            </li>
            <li>
               <p>
                  <code>CACHE</code> specifies that the volume is a FlexCache volume.</p>
            </li>
         </ul>")
  @as("FlexCacheEndpointType")
  flexCacheEndpointType: option<flexCacheEndpointType>,
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
@ocaml.doc("<p>An Amazon FSx for NetApp ONTAP file system has two endpoints
            that are used to access data or to manage the file system
            using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. They
            are the <code>Management</code> and <code>Intercluster</code> endpoints.</p>")
type fileSystemEndpoint = {
  @ocaml.doc("<p>IP addresses of the file system endpoint.</p>") @as("IpAddresses")
  ipAddresses: option<ontapEndpointIpAddresses>,
  @as("DNSName") dnsname: option<dnsname>,
}
@ocaml.doc("<p>A value that specifies whether to delete all child volumes and snapshots. </p>")
type deleteVolumeOpenZFSConfiguration = {
  @ocaml.doc("<p>To delete the volume's child volumes, snapshots, and clones, use the string
              <code>DELETE_CHILD_VOLUMES_AND_SNAPSHOTS</code>.</p>")
  @as("Options")
  options: option<deleteOpenZFSVolumeOptions>,
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
            the <code>CreateFileSystem</code> operation.</p>
        <p>This data type is not supported for file systems with the <code>Persistent_2</code> deployment type.
            Instead, use .</p>")
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
                existing objects that are changed in the S3 bucket after you choose this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
                imports file and directory listings of any new objects added to the S3 bucket, any 
                existing objects that are changed in the S3 bucket, and any objects that were deleted
                in the S3 bucket.</p>
            </li>
         </ul>")
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
                  <code>UPDATING</code> - The data repository is undergoing a customer
                initiated update and availability may be impacted.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The data repository is in a terminal state that
                cannot be recovered.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<dataRepositoryLifecycle>,
}
@ocaml.doc("<p>Specifies the configuration of the ONTAP volume that you are creating.</p>")
type createOntapVolumeConfiguration = {
  @as("TieringPolicy") tieringPolicy: option<tieringPolicy>,
  @ocaml.doc("<p>Specifies the ONTAP SVM in which to create the volume.</p>")
  @as("StorageVirtualMachineId")
  storageVirtualMachineId: storageVirtualMachineId,
  @ocaml.doc("<p>Set to true to enable deduplication, compression, and
            compaction storage efficiency features on the volume.</p>")
  @as("StorageEfficiencyEnabled")
  storageEfficiencyEnabled: flag,
  @ocaml.doc("<p>Specifies the size of the volume, in megabytes (MB), that you are creating.</p>")
  @as("SizeInMegabytes")
  sizeInMegabytes: volumeCapacity,
  @ocaml.doc("<p>The security style for the volume. Specify one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>UNIX</code> if the file system is managed by a UNIX
                administrator, the majority of users are NFS clients, and an application
                accessing the data uses a UNIX user as the service account.
                <code>UNIX</code> is the default.</p>
            </li>
            <li>
               <p>
                  <code>NTFS</code> if the file system is managed by a Windows
                administrator, the majority of users are SMB clients, and an application
                accessing the data uses a Windows user as the service account.</p>
            </li>
            <li>
               <p>
                  <code>MIXED</code> if the file system is managed by both UNIX
                and Windows administrators and users consist of both NFS and SMB clients.</p>
            </li>
         </ul>")
  @as("SecurityStyle")
  securityStyle: option<securityStyle>,
  @ocaml.doc("<p>Specifies the location in the SVM's namespace where the volume is mounted. 
            The <code>JunctionPath</code> must have a leading forward slash, such as <code>/vol3</code>.</p>")
  @as("JunctionPath")
  junctionPath: junctionPath,
}
@ocaml.doc(
  "<p>The ONTAP configuration properties of the FSx for ONTAP file system that you are creating.</p>"
)
type createFileSystemOntapConfiguration = {
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>Sets the throughput capacity for the file system that you're creating. 
            Valid values are 128, 256, 512, 1024, and 2048 MBps.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: megabytesPerSecond,
  @ocaml.doc("<p>Specifies the virtual private cloud (VPC) route tables in which your file system's
            endpoints will be created. You should specify all VPC route tables associated with the
            subnets in which your clients are located. By default, Amazon FSx selects your VPC's
            default route table.</p>")
  @as("RouteTableIds")
  routeTableIds: option<routeTableIds>,
  @ocaml.doc("<p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This specifies the subnet 
            in which you want the preferred file server to be located.</p>")
  @as("PreferredSubnetId")
  preferredSubnetId: option<subnetId>,
  @ocaml.doc("<p>The SSD IOPS configuration for the FSx for ONTAP file system.</p>")
  @as("DiskIopsConfiguration")
  diskIopsConfiguration: option<diskIopsConfiguration>,
  @ocaml.doc("<p>The ONTAP administrative password for the <code>fsxadmin</code> user with which you
            administer your file system using the NetApp ONTAP CLI and REST API.</p>")
  @as("FsxAdminPassword")
  fsxAdminPassword: option<adminPassword>,
  @ocaml.doc("<p>Specifies the IP address range in which the endpoints to access your file system
            will be created. By default, Amazon FSx selects an unused IP address range for you
            from the 198.19.* range.</p>
        <important>
            <p>The Endpoint IP address range you select for your file system
            must exist outside the VPC's CIDR range and must be at least /30 or larger.</p>
        </important>")
  @as("EndpointIpAddressRange")
  endpointIpAddressRange: option<ipAddressRange>,
  @ocaml.doc("<p>Specifies the FSx for ONTAP file system deployment type to use in creating the file system. 
            <code>MULTI_AZ_1</code> is the supported ONTAP deployment type.</p>")
  @as("DeploymentType")
  deploymentType: ontapDeploymentType,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
@ocaml.doc("<p>The Lustre configuration for the file system being created.</p>
        <note>
            <p>The following parameters are not supported for file systems with the <code>Persistent_2</code>
            deployment type. Instead, use <code>CreateDataRepositoryAssociation</code> 
            to create a data repository association to link your Lustre file system to a data repository.</p>
            <ul>
               <li>
                  <p>
                     <code>AutoImportPolicy</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>ExportPath</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>ImportedChunkSize</code>
                  </p>
               </li>
               <li>
                  <p>
                     <code>ImportPath</code>
                  </p>
               </li>
            </ul>
         </note>")
type createFileSystemLustreConfiguration = {
  @ocaml.doc("<p>The Lustre logging configuration used when creating an Amazon FSx for Lustre
            file system. When logging is enabled, Lustre logs error and warning events for data repositories
            associated with your file system to Amazon CloudWatch Logs.</p>")
  @as("LogConfiguration")
  logConfiguration: option<lustreLogCreateConfiguration>,
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
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-compression.html\">Lustre data compression</a> 
            in the <i>Amazon FSx for Lustre User Guide</i>.</p>")
  @as("DataCompressionType")
  dataCompressionType: option<dataCompressionType>,
  @ocaml.doc("<p>The type of drive cache used by <code>PERSISTENT_1</code> file systems that are provisioned with
            HDD storage devices. This parameter is required when storage type is HDD. Set this property to
            <code>READ</code> to improve the performance for frequently accessed files by caching up to 20%
            of the total storage capacity of the file system.</p>
        <p>This parameter is required when <code>StorageType</code> is set to <code>HDD</code>.</p>")
  @as("DriveCacheType")
  driveCacheType: option<driveCacheType>,
  @ocaml.doc("<p>(Optional) Not available for use with file systems that are linked to a data
            repository. A boolean flag indicating whether tags for the file system should be copied
            to backups. The default value is false. If <code>CopyTagsToBackups</code> is set to
            true, all file system tags are copied to all automatic and user-initiated backups when
            the user doesn't specify any backup-specific tags. If
                <code>CopyTagsToBackups</code> is set to true and you specify one or more backup
            tags, only the specified tags are copied to backups. If you specify one or more tags
            when creating a user-initiated backup, no tags are copied from the file system,
            regardless of this value.</p>
        <p>(Default = <code>false</code>)</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html\">
            Working with backups</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>Required with <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment
            types, provisions the amount of read and write throughput for each 1 tebibyte (TiB) of
            file system storage capacity, in MB/s/TiB. File system throughput capacity is calculated
            by multiplying ﬁle system storage capacity (TiB) by the
                <code>PerUnitStorageThroughput</code> (MB/s/TiB). For a 2.4-TiB ﬁle system,
            provisioning 50 MB/s/TiB of <code>PerUnitStorageThroughput</code> yields 120 MB/s of ﬁle
            system throughput. You pay for the amount of throughput that you provision. </p>
        <p>Valid values:</p>
        <ul>
            <li>
               <p>For <code>PERSISTENT_1</code> SSD storage: 50, 100, 200 MB/s/TiB.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT_1</code> HDD storage: 12, 40 MB/s/TiB.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT_2</code> SSD storage: 125, 250, 500, 1000 MB/s/TiB.</p>
            </li>
         </ul>")
  @as("PerUnitStorageThroughput")
  perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @ocaml.doc("<p> (Optional) Available with <code>Scratch</code> and <code>Persistent_1</code> deployment types. When you 
            create your file system, your existing S3 objects appear as file and directory listings. 
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
                existing objects that are changed in the S3 bucket after you choose this option.</p>
            </li>
            <li>
               <p>
                  <code>NEW_CHANGED_DELETED</code> - AutoImport is on. Amazon FSx automatically
                imports file and directory listings of any new objects added to the S3 bucket, any 
                existing objects that are changed in the S3 bucket, and any objects that were deleted
                in the S3 bucket.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/older-deployment-types.html#legacy-auto-import-from-s3\">
            Automatically import updates from your S3 bucket</a>.</p>
        <note>
            <p>This parameter is not supported for file systems with the <code>Persistent_2</code> deployment type.
            Instead, use <code>CreateDataRepositoryAssociation</code> to create
            a data repository association to link your Lustre file system to a data repository.</p>
         </note>")
  @as("AutoImportPolicy")
  autoImportPolicy: option<autoImportPolicyType>,
  @ocaml.doc("<p>(Optional) Choose <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment 
            types when you need temporary storage and shorter-term processing of data. 
            The <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
            throughput capacity than <code>SCRATCH_1</code>.</p>
        <p>Choose <code>PERSISTENT_1</code> for longer-term storage and for throughput-focused 
            workloads that aren’t latency-sensitive.
            <code>PERSISTENT_1</code> supports encryption of data in transit, and is available in all 
            Amazon Web Services Regions in which FSx for Lustre is available.</p>
        <p>Choose <code>PERSISTENT_2</code> for longer-term storage and for latency-sensitive workloads 
            that require the highest levels of IOPS/throughput. <code>PERSISTENT_2</code> supports 
            SSD storage, and offers higher <code>PerUnitStorageThroughput</code> (up to 1000 MB/s/TiB). <code>PERSISTENT_2</code> 
            is available in a limited number of Amazon Web Services Regions. 
            For more information, and an up-to-date list of Amazon Web Services Regions in which 
            <code>PERSISTENT_2</code> is available, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-fsx-lustre.html#lustre-deployment-types\">File 
                system deployment options for FSx for Lustre</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
        <note>
            <p>If you choose <code>PERSISTENT_2</code>, and you set <code>FileSystemTypeVersion</code> to
                    <code>2.10</code>, the <code>CreateFileSystem</code> operation fails.</p>
         </note>
        
            <p>Encryption of data in transit is automatically turned on when you access
                <code>SCRATCH_2</code>, <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> file
            systems from Amazon EC2 instances that <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/data-                 protection.html\">support
                automatic encryption</a> in the Amazon Web Services Regions where they are
            available. For more information about encryption in transit for FSx for Lustre
            file systems, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/encryption-in-transit-fsxl.html\">Encrypting data in
                transit</a>  in the <i>Amazon FSx for Lustre User Guide</i>. </p>
            <p>(Default = <code>SCRATCH_1</code>)</p>")
  @as("DeploymentType")
  deploymentType: option<lustreDeploymentType>,
  @ocaml.doc("<p>(Optional) For files imported from a data repository, this value determines the stripe
            count and maximum amount of data per file (in MiB) stored on a single physical disk. The
            maximum number of disks that a single file can be striped across is limited by the total
            number of disks that make up the file system.</p>
        
        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3  objects have a maximum size of 5 TB.</p>
        <p>This parameter is not supported for file systems with the <code>Persistent_2</code> deployment type.
            Instead, use <code>CreateDataRepositoryAssociation</code> to create
            a data repository association to link your Lustre file system to a data repository.</p>")
  @as("ImportedFileChunkSize")
  importedFileChunkSize: option<megabytes>,
  @ocaml.doc("<p>(Optional) Available with <code>Scratch</code> and <code>Persistent_1</code> deployment types. 
            Specifies the path in the Amazon S3 bucket where the root of your Amazon FSx file system is exported. 
            The path must use the same Amazon S3 bucket as specified in ImportPath. You can provide an optional prefix to which
            new and changed data is to be exported from your Amazon FSx for Lustre file system. If
            an <code>ExportPath</code> value is not provided, Amazon FSx sets a default export path,
            <code>s3://import-bucket/FSxLustre[creation-timestamp]</code>. The timestamp is in
            UTC format, for example
            <code>s3://import-bucket/FSxLustre20181105T222312Z</code>.</p>
        <p>The Amazon S3 export bucket must be the same as the import bucket specified by
                <code>ImportPath</code>. If you specify only a bucket name, such as
                <code>s3://import-bucket</code>, you get a 1:1 mapping of file system objects to S3
            bucket objects. This mapping means that the input data in S3 is overwritten on export.
            If you provide a custom prefix in the export path, such as
            <code>s3://import-bucket/[custom-optional-prefix]</code>, Amazon FSx exports the contents of your file 
            system to that export prefix in the Amazon S3 bucket.</p>

        <note>
            <p>This parameter is not supported for file systems with the <code>Persistent_2</code> deployment type.
            Instead, use <code>CreateDataRepositoryAssociation</code> to create
            a data repository association to link your Lustre file system to a data repository.</p>
         </note>")
  @as("ExportPath")
  exportPath: option<archivePath>,
  @ocaml.doc("<p>(Optional) The path to the Amazon S3 bucket (including the optional prefix) that
            you're using as the data repository for your Amazon FSx for Lustre file system.
            The root of your FSx for Lustre file system will
            be mapped to the root of the Amazon S3 bucket you select. An
            example is <code>s3://import-bucket/optional-prefix</code>. If you specify a prefix
            after the Amazon S3 bucket name, only object keys with that prefix are loaded into the
            file system.</p>
        <note>
            <p>This parameter is not supported for file systems with the <code>Persistent_2</code> deployment type.
            Instead, use <code>CreateDataRepositoryAssociation</code> to create
            a data repository association to link your Lustre file system to a data repository.</p>
         </note>")
  @as("ImportPath")
  importPath: option<archivePath>,
  @ocaml.doc("<p>(Optional) The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone, where d is the weekday number, from 1 through 7, beginning with Monday and ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
@ocaml.doc("<p>Describes the data repository association's automatic import policy.
            The AutoImportPolicy defines how Amazon FSx keeps your file metadata and directory
            listings up to date by importing changes to your file system as you modify
            objects in a linked S3 bucket.</p>
        <p>This <code>AutoImportPolicy</code> is supported only for file systems
            with the <code>Persistent_2</code> deployment type.</p>")
type autoImportPolicy = {
  @ocaml.doc("<p>The <code>AutoImportPolicy</code> can have the following event values:</p>
        <ul>
            <li>
               <p>
                  <code>NEW</code> - Amazon FSx automatically imports metadata of
                files added to the linked S3 bucket that do not currently exist in the FSx
                file system.</p>
            </li>
            <li>
               <p>
                  <code>CHANGED</code> - Amazon FSx automatically updates file
                metadata and invalidates existing file content on the file system as files
                change in the data repository.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Amazon FSx automatically deletes files
                on the file system as corresponding files are deleted in the data repository.</p>
            </li>
         </ul>
        <p>You can define any combination of event types for your <code>AutoImportPolicy</code>.</p>")
  @as("Events")
  events: option<eventTypes>,
}
@ocaml.doc("<p>Describes a data repository association's automatic export policy. The
            <code>AutoExportPolicy</code>  defines the types of updated objects on the
            file system that will be automatically exported to the data repository.
            As you create, modify, or delete files, Amazon FSx automatically
            exports the defined changes asynchronously once your application finishes
            modifying the file.</p>
        <p>This <code>AutoExportPolicy</code> is supported only for file systems with the
            <code>Persistent_2</code> deployment type.</p>")
type autoExportPolicy = {
  @ocaml.doc("<p>The <code>AutoExportPolicy</code> can have the following event values:</p>
        <ul>
            <li>
               <p>
                  <code>NEW</code> - Amazon FSx automatically exports new files and
                directories to the data repository as they are added to the file system.</p>
            </li>
            <li>
               <p>
                  <code>CHANGED</code> - Amazon FSx automatically exports changes to
                files and directories on the file system to the data repository.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Files and directories are automatically deleted
                on the data repository when they are deleted on the file system.</p>
            </li>
         </ul>
        <p>You can define any combination of event types for your <code>AutoExportPolicy</code>.</p>")
  @as("Events")
  events: option<eventTypes>,
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
  @ocaml.doc("<p>The configuration that Amazon FSx for Windows File Server uses to audit and log
            user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
            file system.</p>")
  @as("AuditLogConfiguration")
  auditLogConfiguration: option<windowsAuditLogConfiguration>,
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
    "<p>The ID for an existing Amazon Web Services Managed Microsoft Active Directory instance that the file system is joined to.</p>"
  )
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
}
type volumeFilters = array<volumeFilter>
@ocaml.doc("<p>Updates the Microsoft Active Directory (AD) configuration of an SVM joined to an AD. 
            Please note, account credentials are not returned in the response payload.</p>")
type updateSvmActiveDirectoryConfiguration = {
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfigurationUpdates>,
}
@ocaml.doc("<p>Updates the configuration for an existing Amazon FSx for Windows
            File Server file system. Amazon FSx only overwrites existing properties with non-null values
            provided in the request.</p>")
type updateFileSystemWindowsConfiguration = {
  @ocaml.doc("<p>The configuration that Amazon FSx for Windows File Server uses to audit and log
            user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
            file system..</p>")
  @as("AuditLogConfiguration")
  auditLogConfiguration: option<windowsAuditLogCreateConfiguration>,
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
@ocaml.doc("<p>An Amazon FSx for NetApp ONTAP storage virtual machine (SVM) has
            the following endpoints that are used to access data or to manage
            the SVM using the NetApp ONTAP CLI, REST API, or NetApp CloudManager.</p>")
type svmEndpoints = {
  @ocaml.doc("<p>An endpoint for connecting using the Server Message Block (SMB) protocol.</p>")
  @as("Smb")
  smb: option<svmEndpoint>,
  @ocaml.doc("<p>An endpoint for connecting using the Network File System (NFS) protocol.</p>")
  @as("Nfs")
  nfs: option<svmEndpoint>,
  @ocaml.doc(
    "<p>An endpoint for managing SVMs using the NetApp ONTAP CLI, NetApp ONTAP API, or NetApp CloudManager.</p>"
  )
  @as("Management")
  management: option<svmEndpoint>,
  @ocaml.doc(
    "<p>An endpoint for connecting using the Internet Small Computer Systems Interface (iSCSI)  protocol.</p>"
  )
  @as("Iscsi")
  iscsi: option<svmEndpoint>,
}
@ocaml.doc("<p>Describes the configuration of the Microsoft Active Directory (AD) 
            directory to which the Amazon FSx for ONTAP storage virtual machine (SVM) is joined.
            Pleae note, account credentials are not returned in the response payload.</p>")
type svmActiveDirectoryConfiguration = {
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryAttributes>,
  @ocaml.doc(
    "<p>The NetBIOS name of the Active Directory computer object that is joined to your SVM.</p>"
  )
  @as("NetBiosName")
  netBiosName: option<netBiosAlias>,
}
type storageVirtualMachineFilters = array<storageVirtualMachineFilter>
type snapshotFilters = array<snapshotFilter>
@ocaml.doc("<p>The configuration for an Amazon S3 data repository linked to an
            Amazon FSx Lustre file system with a data repository association.
            The configuration consists of an <code>AutoImportPolicy</code> that
            defines file events on the data repository are automatically
            imported to the file system and an <code>AutoExportPolicy</code>
            that defines which file events on the file system are automatically
            exported to the data repository. File events are when files or
            directories are added, changed, or deleted on the file system or
            the data repository.</p>")
type s3DataRepositoryConfiguration = {
  @ocaml.doc("<p>Specifies the type of updated objects (new, changed, deleted)
            that will be automatically exported from your file system to
            the linked S3 bucket.</p>")
  @as("AutoExportPolicy")
  autoExportPolicy: option<autoExportPolicy>,
  @ocaml.doc("<p>Specifies the type of updated objects (new, changed, deleted)
            that will be automatically imported from the linked S3 bucket
            to your file system.</p>")
  @as("AutoImportPolicy")
  autoImportPolicy: option<autoImportPolicy>,
}
type openZFSClientConfigurations = array<openZFSClientConfiguration>
@ocaml.doc("<p>The configuration for the Amazon FSx for Lustre file system.</p>")
type lustreFileSystemConfiguration = {
  @ocaml.doc("<p>The Lustre logging configuration. Lustre logging writes the enabled log
            events for your file system to Amazon CloudWatch Logs.</p>")
  @as("LogConfiguration")
  logConfiguration: option<lustreLogConfiguration>,
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
  @ocaml.doc("<p>The type of drive cache used by <code>PERSISTENT_1</code> file systems that are provisioned with
            HDD storage devices. This parameter is required when <code>StorageType</code> is HDD. When set to
            <code>READ</code> the file system has an SSD storage cache that is sized to 20% of the file system's
            storage capacity. This improves the performance for frequently accessed files by caching up to 20%
            of the total storage capacity.</p>
        <p>This parameter is required when <code>StorageType</code> is set to HDD.</p>")
  @as("DriveCacheType")
  driveCacheType: option<driveCacheType>,
  @ocaml.doc("<p>A boolean flag indicating whether tags on the file system are copied to backups.
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
            For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2</code> deployment
            types, this value is a string that is unique within an Amazon Web Services Region. 
            
        </p>")
  @as("MountName")
  mountName: option<lustreFileSystemMountName>,
  @ocaml.doc("<p>Per unit storage throughput represents the megabytes per second of read or write
            throughput per 1 tebibyte of storage provisioned. File system throughput capacity is
            equal to Storage capacity (TiB) * PerUnitStorageThroughput (MB/s/TiB). This option is
            only valid for <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment types. </p>
        <p>Valid values:</p>
        <ul>
            <li>
               <p>For <code>PERSISTENT_1</code> SSD storage: 50, 100, 200.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT_1</code> HDD storage: 12, 40.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT_2</code> SSD storage: 125, 250, 500, 1000.</p>
            </li>
         </ul>")
  @as("PerUnitStorageThroughput")
  perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @ocaml.doc("<p>The deployment type of the FSx for Lustre file system. 
            <i>Scratch deployment type</i> is designed for temporary storage
            and shorter-term processing of data.</p>
        <p>
            <code>SCRATCH_1</code> and <code>SCRATCH_2</code> deployment types are best suited 
            for when you need temporary storage and shorter-term processing of data. The 
            <code>SCRATCH_2</code> deployment type provides in-transit encryption of data and higher burst 
            throughput capacity than <code>SCRATCH_1</code>.</p> 
        <p>The <code>PERSISTENT_1</code> and <code>PERSISTENT_2</code> deployment type is used
            for longer-term storage and workloads and encryption of data in transit.
                <code>PERSISTENT_2</code> is built on Lustre v2.12 and offers higher
                <code>PerUnitStorageThroughput</code> (up to 1000 MB/s/TiB) along with a lower
            minimum storage capacity requirement (600 GiB). To learn more about FSx for Lustre deployment types, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/lustre-deployment-types.html\">
                FSx for Lustre deployment options</a>.</p>
        <p>The default is <code>SCRATCH_1</code>.</p>")
  @as("DeploymentType")
  deploymentType: option<lustreDeploymentType>,
  @as("DataRepositoryConfiguration")
  dataRepositoryConfiguration: option<dataRepositoryConfiguration>,
  @ocaml.doc("<p>The preferred start time to perform weekly maintenance, formatted d:HH:MM in the UTC
            time zone. Here, d is the weekday number, from 1 through 7, beginning with Monday and
            ending with Sunday.</p>")
  @as("WeeklyMaintenanceStartTime")
  weeklyMaintenanceStartTime: option<weeklyTime>,
}
@ocaml.doc("<p>A list of <code>Filter</code> elements.</p>") type filters = array<filter>
@ocaml.doc("<p>An Amazon FSx for NetApp ONTAP file system has the following endpoints
            that are used to access data or to manage the file system using the
            NetApp ONTAP CLI, REST API, or NetApp SnapMirror.</p>")
type fileSystemEndpoints = {
  @ocaml.doc("<p>An endpoint for managing your file system using the NetApp ONTAP CLI
            and NetApp ONTAP API.</p>")
  @as("Management")
  management: option<fileSystemEndpoint>,
  @ocaml.doc("<p>An endpoint for managing your file system by setting up NetApp SnapMirror
            with other ONTAP systems.</p>")
  @as("Intercluster")
  intercluster: option<fileSystemEndpoint>,
}
@ocaml.doc("<p>The response object for the Amazon FSx for NetApp ONTAP volume being deleted
            in the <code>DeleteVolume</code> operation.</p>")
type deleteVolumeOntapResponse = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("FinalBackupId") finalBackupId: option<backupId>,
}
@ocaml.doc("<p>Use to specify skipping a final backup, or to add tags to a final backup.</p>")
type deleteVolumeOntapConfiguration = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @ocaml.doc("<p>Set to true if you want to skip taking a final backup of the volume 
        you are deleting.</p>")
  @as("SkipFinalBackup")
  skipFinalBackup: option<flag>,
}
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
@ocaml.doc("<p>The response object for the Amazon FSx for OpenZFS file system that's being
            deleted in the <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemOpenZFSResponse = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("FinalBackupId") finalBackupId: option<backupId>,
}
@ocaml.doc("<p>The configuration object for the Amazon FSx for OpenZFS file system used in the
                <code>DeleteFileSystem</code> operation.</p>")
type deleteFileSystemOpenZFSConfiguration = {
  @ocaml.doc("<p>To delete a file system if there are child volumes present below the root volume,
            use the string <code>DELETE_CHILD_VOLUMES_AND_SNAPSHOTS</code>. If your file system
            has child volumes and you don't use this option, the delete request will fail.</p>")
  @as("Options")
  options: option<deleteFileSystemOpenZFSOptions>,
  @ocaml.doc("<p>A list of tags to apply to the file system's final backup.</p>")
  @as("FinalBackupTags")
  finalBackupTags: option<tags>,
  @ocaml.doc("<p>By default, Amazon FSx for OpenZFS takes a final backup on your behalf when
            the <code>DeleteFileSystem</code> operation is invoked. Doing this helps protect you
            from data loss, and we highly recommend taking the final backup. If you want to skip
            taking a final backup, set this value to <code>true</code>.</p>")
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
                <code>DeleteFileSystem</code> operation is invoked. (Default = true)</p>
        <note>
            <p>The <code>fsx:CreateBackup</code> permission is required if you set <code>SkipFinalBackup</code> to <code>false</code> in order to delete the file system and take a final backup.</p>
         </note>")
  @as("SkipFinalBackup")
  skipFinalBackup: option<flag>,
}
type dataRepositoryTaskFilters = array<dataRepositoryTaskFilter>
@ocaml.doc("<p>A description of the data repository task. You use data repository tasks
            to perform bulk transfer operations between your Amazon FSx file system and a linked data
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
  @ocaml.doc("<p>The type of data repository task.</p>
        <ul>
            <li>
               <p>The <code>EXPORT_TO_REPOSITORY</code> data repository task exports
                from your Lustre file system from to a linked S3 bucket.</p>
            </li>
            <li>
               <p>The <code>IMPORT_METADATA_FROM_REPOSITORY</code> data repository task
                imports metadata changes from a linked S3 bucket to your Lustre file system.</p>
            </li>
         </ul>")
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
@ocaml.doc("<p>The configuration that Amazon FSx uses to join the ONTAP storage virtual machine
            (SVM) to your self-managed (including on-premises) Microsoft Active Directory (AD) directory.</p>")
type createSvmActiveDirectoryConfiguration = {
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfiguration>,
  @ocaml.doc(
    "<p>The NetBIOS name of the Active Directory computer object that will be created for your SVM.</p>"
  )
  @as("NetBiosName")
  netBiosName: netBiosAlias,
}
@ocaml.doc("<p>The configuration object for the Microsoft Windows file system used in
                <code>CreateFileSystem</code> and <code>CreateFileSystemFromBackup</code>
            operations.</p>")
type createFileSystemWindowsConfiguration = {
  @ocaml.doc("<p>The configuration that Amazon FSx for Windows File Server uses to audit and log
            user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server
            file system.</p>")
  @as("AuditLogConfiguration")
  auditLogConfiguration: option<windowsAuditLogCreateConfiguration>,
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
  @ocaml.doc("<p>Sets the throughput capacity of an Amazon FSx file system, measured in megabytes per second (MB/s), in 2 to
            the <i>n</i>th increments, between 2^3 (8) and 2^11 (2048).</p>")
  @as("ThroughputCapacity")
  throughputCapacity: megabytesPerSecond,
  @ocaml.doc("<p>Required when <code>DeploymentType</code> is set to <code>MULTI_AZ_1</code>. This specifies the subnet 
            in which you want the preferred file server to be located. For in-Amazon Web Services applications, we recommend that you launch 
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
                    can only deploy a Multi-AZ file system in Amazon Web Services Regions that have a minimum of three Availability Zones. Also 
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
  @ocaml.doc("<p>The ID for an existing Amazon Web Services Managed Microsoft Active Directory (AD) instance that the
            file system should join when it's created.</p>")
  @as("ActiveDirectoryId")
  activeDirectoryId: option<directoryId>,
}
@ocaml.doc(
  "<p>Describes the Amazon FSx for NetApp ONTAP storage virtual machine (SVM) configuration.</p>"
)
type storageVirtualMachine = {
  @ocaml.doc("<p>The security style of the root volume of the SVM.</p>")
  @as("RootVolumeSecurityStyle")
  rootVolumeSecurityStyle: option<storageVirtualMachineRootVolumeSecurityStyle>,
  @ocaml.doc("<p>Describes why the SVM lifecycle state changed.</p>")
  @as("LifecycleTransitionReason")
  lifecycleTransitionReason: option<lifecycleTransitionReason>,
  @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The SVM's UUID (universally unique identifier).</p>") @as("UUID")
  uuid: option<uuid>,
  @ocaml.doc("<p>Describes the SVM's subtype.</p>") @as("Subtype")
  subtype: option<storageVirtualMachineSubtype>,
  @ocaml.doc("<p>The SVM's system generated unique ID.</p>") @as("StorageVirtualMachineId")
  storageVirtualMachineId: option<storageVirtualMachineId>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The name of the SVM, if provisioned.</p>") @as("Name")
  name: option<storageVirtualMachineName>,
  @ocaml.doc("<p>Describes the SVM's lifecycle status.</p>
        <ul>
            <li>
               <p>
                  <code>CREATED</code> - The SVM is fully available for use.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the new SVM.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - Amazon FSx is deleting an existing SVM.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx was unable to create the SVM.</p>
            </li>
            <li>
               <p>
                  <code>MISCONFIGURED</code> - The SVM is in a failed but recoverable state.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - Amazon FSx has not started creating the SVM.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<storageVirtualMachineLifecycle>,
  @as("FileSystemId") fileSystemId: option<fileSystemId>,
  @ocaml.doc("<p>The endpoints  that are used to access data or to manage the SVM
            using the NetApp ONTAP CLI, REST API, or NetApp CloudManager. They
            are the <code>Iscsi</code>, <code>Management</code>, <code>Nfs</code>,
            and <code>Smb</code> endpoints.</p>")
  @as("Endpoints")
  endpoints: option<svmEndpoints>,
  @as("CreationTime") creationTime: option<creationTime>,
  @ocaml.doc(
    "<p>Describes the Microsoft Active Directory configuration to which the SVM is joined, if applicable.</p>"
  )
  @as("ActiveDirectoryConfiguration")
  activeDirectoryConfiguration: option<svmActiveDirectoryConfiguration>,
}
@ocaml.doc("<p>The Network File System (NFS) configurations for mounting an Amazon FSx for
            OpenZFS file system. </p>")
type openZFSNfsExport = {
  @ocaml.doc("<p>A list of configuration objects that contain the client and options for mounting the
            OpenZFS file system. </p>")
  @as("ClientConfigurations")
  clientConfigurations: openZFSClientConfigurations,
}
@ocaml.doc("<p>Configuration for the FSx for NetApp ONTAP file system.</p>")
type ontapFileSystemConfiguration = {
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @as("ThroughputCapacity") throughputCapacity: option<megabytesPerSecond>,
  @ocaml.doc("<p>The VPC route tables in which your file system's endpoints are
            created.</p>")
  @as("RouteTableIds")
  routeTableIds: option<routeTableIds>,
  @as("PreferredSubnetId") preferredSubnetId: option<subnetId>,
  @ocaml.doc("<p>The SSD IOPS configuration for the ONTAP file system, specifying
            the number of provisioned IOPS and the provision mode.</p>")
  @as("DiskIopsConfiguration")
  diskIopsConfiguration: option<diskIopsConfiguration>,
  @ocaml.doc("<p>The <code>Management</code> and <code>Intercluster</code> endpoints
            that are used to access data or to manage the file system using the
            NetApp ONTAP CLI, REST API, or NetApp SnapMirror.</p>")
  @as("Endpoints")
  endpoints: option<fileSystemEndpoints>,
  @ocaml.doc("<p>The IP address range in which the endpoints to access your file system
            are created.</p>
        <important>
            <p>The Endpoint IP address range you select for your file system
            must exist outside the VPC's CIDR range and must be at least /30 or larger.
            If you do not specify this optional parameter, Amazon FSx will automatically
            select a CIDR block for you.</p>
         </important>")
  @as("EndpointIpAddressRange")
  endpointIpAddressRange: option<ipAddressRange>,
  @ocaml.doc("<p>The ONTAP file system deployment type.</p>") @as("DeploymentType")
  deploymentType: option<ontapDeploymentType>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
type dataRepositoryTasks = array<dataRepositoryTask>
@ocaml.doc("<p>The configuration of a data repository association that links
            an Amazon FSx for Lustre file system to an Amazon S3 bucket.
            The data repository association configuration object is returned 
            in the response of the following operations:</p>
        <ul>
            <li>
               <p>
                  <code>CreateDataRepositoryAssociation</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UpdateDataRepositoryAssociation</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDataRepositoryAssociations</code>
               </p>
            </li>
         </ul>
        <p>Data repository associations are supported only for file systems
            with the <code>Persistent_2</code> deployment type.</p>")
type dataRepositoryAssociation = {
  @as("CreationTime") creationTime: option<creationTime>,
  @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The configuration for an Amazon S3 data repository linked to an
            Amazon FSx Lustre file system with a data repository association.
            The configuration defines which file events (new, changed, or
            deleted files or directories) are automatically imported from
            the linked data repository to the file system or automatically
            exported from the file system to the data repository.</p>")
  @as("S3")
  s3: option<s3DataRepositoryConfiguration>,
  @ocaml.doc("<p>For files imported from a data repository, this value determines the stripe count and
            maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
            number of disks that a single file can be striped across is limited by the total number
            of disks that make up the file system.</p>
        
        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3 objects have a maximum size of 5 TB.</p>")
  @as("ImportedFileChunkSize")
  importedFileChunkSize: option<megabytes>,
  @ocaml.doc("<p>A boolean flag indicating whether an import data repository task to import
            metadata should run after the data repository association is created. The
            task runs if this flag is set to <code>true</code>.</p>")
  @as("BatchImportMetaDataOnCreate")
  batchImportMetaDataOnCreate: option<batchImportMetaDataOnCreate>,
  @ocaml.doc("<p>The path to the Amazon S3 data repository that will be linked to the file
            system. The path can be an S3 bucket or prefix in the format
            <code>s3://myBucket/myPrefix/</code>. This path specifies where in the S3
            data repository files will be imported from or exported to.</p>")
  @as("DataRepositoryPath")
  dataRepositoryPath: option<archivePath>,
  @ocaml.doc("<p>A path on the file system that points to a high-level directory (such
            as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
            that will be mapped 1-1 with <code>DataRepositoryPath</code>.
            The leading forward slash in the name is required. Two data repository
            associations cannot have overlapping file system paths. For example, if
            a data repository is associated with file system path <code>/ns1/</code>,
            then you cannot link another data repository with file system
            path <code>/ns1/ns2</code>.</p>
        <p>This path specifies where in your file system files will be exported
            from or imported to. This file system directory can be linked to only one
            Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
        <note>
            <p>If you specify only a forward slash (<code>/</code>) as the file system
            path, you can link only 1 data repository to the file system. You can only specify
            \"/\" as the file system path for the first data repository associated with a file system.</p>
         </note>")
  @as("FileSystemPath")
  fileSystemPath: option<namespace>,
  @as("FailureDetails") failureDetails: option<dataRepositoryFailureDetails>,
  @ocaml.doc("<p>Describes the state of a data repository association. The lifecycle can have
            the following values:</p>
        <ul>
            <li>
               <p>
                  <code>CREATING</code> - The data repository association between 
                the FSx file system and the S3 data repository is being created. 
                The data repository is unavailable.</p>
            </li>
            <li>
               <p>
                  <code>AVAILABLE</code> - The data repository association is
                available for use.</p>
            </li>
            <li>
               <p>
                  <code>MISCONFIGURED</code> - Amazon FSx cannot automatically import updates
                from the S3 bucket or automatically export updates to the S3 bucket until the data
                repository association configuration is corrected.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The data repository association is undergoing
                a customer initiated update that might affect its availability.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - The data repository association is undergoing
                a customer initiated deletion.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The data repository association is in a terminal
                state that cannot be recovered.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<dataRepositoryLifecycle>,
  @as("FileSystemId") fileSystemId: option<fileSystemId>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The system-generated, unique ID of the data repository association.</p>")
  @as("AssociationId")
  associationId: option<dataRepositoryAssociationId>,
}
type storageVirtualMachines = array<storageVirtualMachine>
type openZFSNfsExports = array<openZFSNfsExport>
type dataRepositoryAssociations = array<dataRepositoryAssociation>
@ocaml.doc("<p>Used to specify changes to the OpenZFS configuration for the volume
            that you are updating.</p>")
type updateOpenZFSVolumeConfiguration = {
  @ocaml.doc("<p>A Boolean value indicating whether the volume is read-only.</p>") @as("ReadOnly")
  readOnly: option<readOnly>,
  @ocaml.doc("<p>An object specifying how much storage users or groups can use on the volume.</p>")
  @as("UserAndGroupQuotas")
  userAndGroupQuotas: option<openZFSUserAndGroupQuotas>,
  @ocaml.doc(
    "<p>The configuration object for mounting a Network File System (NFS) file system.</p>"
  )
  @as("NfsExports")
  nfsExports: option<openZFSNfsExports>,
  @ocaml.doc("<p>Specifies the method used to compress the data on the volume. The compression
            type is <code>NONE</code> by default.</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code> - Doesn't compress the data on the volume.
                    <code>NONE</code> is the default.</p>
            </li>
            <li>
                <p>
                  <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
                    (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
                    compression ratio to minimize on-disk storage utilization.</p>
            </li>
            <li>
                <p>
                  <code>LZ4</code> - Compresses the data in the volume using the LZ4
                    compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
                    and delivers higher write throughput speeds.</p>
            </li>
         </ul>")
  @as("DataCompressionType")
  dataCompressionType: option<openZFSDataCompressionType>,
  @ocaml.doc("<p>Specifies the record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8,
            16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB.
            Most workloads should use the default record size. Database workflows can benefit from a smaller 
            record size, while streaming workflows can benefit from a larger record size. For additional guidance on when
            to set a custom record size, see <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs\">
                Tips for maximizing performance</a> in the
            <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("RecordSizeKiB")
  recordSizeKiB: option<integerRecordSizeKiB>,
  @ocaml.doc("<p>The maximum amount of storage in gibibytes (GiB) that the volume can use from its
            parent. You can specify a quota larger than the storage on the parent volume. You
            can specify a value of <code>-1</code> to unset a volume's storage capacity quota.</p>")
  @as("StorageCapacityQuotaGiB")
  storageCapacityQuotaGiB: option<integerNoMaxFromNegativeOne>,
  @ocaml.doc("<p>The amount of storage in gibibytes (GiB) to reserve from the parent volume.
            You can't reserve more storage than the parent volume has reserved. You can specify
            a value of <code>-1</code> to unset a volume's storage capacity reservation.</p>")
  @as("StorageCapacityReservationGiB")
  storageCapacityReservationGiB: option<integerNoMaxFromNegativeOne>,
}
@ocaml.doc("<p>The configuration of an Amazon FSx for OpenZFS volume.</p>")
type openZFSVolumeConfiguration = {
  @ocaml.doc("<p>An object specifying how much storage users or groups can use on the volume.</p>")
  @as("UserAndGroupQuotas")
  userAndGroupQuotas: option<openZFSUserAndGroupQuotas>,
  @ocaml.doc("<p>The configuration object for mounting a Network File System (NFS)
            file system.</p>")
  @as("NfsExports")
  nfsExports: option<openZFSNfsExports>,
  @ocaml.doc("<p>A Boolean value indicating whether the volume is read-only.</p>") @as("ReadOnly")
  readOnly: option<readOnly>,
  @ocaml.doc("<p>The configuration object that specifies the snapshot to use as the origin of the data
            for the volume.</p>")
  @as("OriginSnapshot")
  originSnapshot: option<openZFSOriginSnapshotConfiguration>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
            This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
            for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code> and you specify one or more tags, only the specified tags are
            copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
            are copied from the volume, regardless of this value.</p>")
  @as("CopyTagsToSnapshots")
  copyTagsToSnapshots: option<flag>,
  @ocaml.doc("<p>Specifies the method used to compress the data on the volume. The compression
            type is <code>NONE</code> by default.</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code> - Doesn't compress the data on the volume.
                    <code>NONE</code> is the default.</p>
            </li>
            <li>
                <p>
                  <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
                    (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
                    compression ratio to minimize on-disk storage utilization.</p>
            </li>
            <li>
                <p>
                  <code>LZ4</code> - Compresses the data in the volume using the LZ4
                    compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
                    and delivers higher write throughput speeds.</p>
            </li>
         </ul>")
  @as("DataCompressionType")
  dataCompressionType: option<openZFSDataCompressionType>,
  @ocaml.doc("<p>The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are 4, 8,
            16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB.
            Most workloads should use the default record size. For guidance on when
            to set a custom record size, see the
            <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("RecordSizeKiB")
  recordSizeKiB: option<integerRecordSizeKiB>,
  @ocaml.doc("<p>The maximum amount of storage in gibibtyes (GiB) that the volume can use from its
            parent. You can specify a quota larger than the storage on the parent volume.</p>")
  @as("StorageCapacityQuotaGiB")
  storageCapacityQuotaGiB: option<integerNoMax>,
  @ocaml.doc("<p>The amount of storage in gibibytes (GiB) to reserve from the parent volume. You can't
            reserve more storage than the parent volume has reserved.</p>")
  @as("StorageCapacityReservationGiB")
  storageCapacityReservationGiB: option<integerNoMax>,
  @ocaml.doc("<p>The path to the volume from the root volume. For example,
                <code>fsx/parentVolume/volume1</code>.</p>")
  @as("VolumePath")
  volumePath: option<volumePath>,
  @ocaml.doc("<p>The ID of the parent volume.</p>") @as("ParentVolumeId")
  parentVolumeId: option<volumeId>,
}
@ocaml.doc("<p>The configuration of an Amazon FSx for OpenZFS root volume.</p>")
type openZFSCreateRootVolumeConfiguration = {
  @ocaml.doc("<p>A Boolean value indicating whether the volume is read-only. Setting this value to
                <code>true</code> can be useful after you have completed changes to a volume and no
            longer want changes to occur. </p>")
  @as("ReadOnly")
  readOnly: option<readOnly>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots
            of the volume. This value defaults to <code>false</code>. If it's set to <code>true</code>,
            all tags for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code> and you specify one or more tags, only the specified tags are
            copied to snapshots. If you specify one or more tags when creating the snapshot, no tags
            are copied from the volume, regardless of this value. </p>")
  @as("CopyTagsToSnapshots")
  copyTagsToSnapshots: option<flag>,
  @ocaml.doc("<p>An object specifying how much storage users or groups can use on the volume.</p>")
  @as("UserAndGroupQuotas")
  userAndGroupQuotas: option<openZFSUserAndGroupQuotas>,
  @ocaml.doc("<p>The configuration object for mounting a file system.</p>") @as("NfsExports")
  nfsExports: option<openZFSNfsExports>,
  @ocaml.doc("<p>Specifies the method used to compress the data on the volume. The compression
            type is <code>NONE</code> by default.</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code> - Doesn't compress the data on the volume.
                    <code>NONE</code> is the default.</p>
            </li>
            <li>
                <p>
                  <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
                    (ZSTD) compression algorithm. Compared to LZ4, Z-Standard provides a better
                    compression ratio to minimize on-disk storage utilization.</p>
            </li>
            <li>
                <p>
                  <code>LZ4</code> - Compresses the data in the volume using the LZ4
                    compression algorithm. Compared to Z-Standard, LZ4 is less compute-intensive
                    and delivers higher write throughput speeds.</p>
            </li>
         </ul>")
  @as("DataCompressionType")
  dataCompressionType: option<openZFSDataCompressionType>,
  @ocaml.doc("<p>Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are 4, 8,
        16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB. Most workloads should use the 
        default record size. Database workflows can benefit from a smaller record size, while streaming 
        workflows can benefit from a larger record size. For additional guidance on setting a custom record 
        size, see <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs\">
        Tips for maximizing performance</a> in the
        <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("RecordSizeKiB")
  recordSizeKiB: option<integerRecordSizeKiB>,
}
@ocaml.doc(
  "<p>Specifies the configuration of the Amazon FSx for OpenZFS volume that you are creating.</p>"
)
type createOpenZFSVolumeConfiguration = {
  @ocaml.doc("<p>An object specifying how much storage users or groups can use on the volume.</p>")
  @as("UserAndGroupQuotas")
  userAndGroupQuotas: option<openZFSUserAndGroupQuotas>,
  @ocaml.doc(
    "<p>The configuration object for mounting a Network File System (NFS) file system.</p>"
  )
  @as("NfsExports")
  nfsExports: option<openZFSNfsExports>,
  @ocaml.doc("<p>A Boolean value indicating whether the volume is read-only.</p>") @as("ReadOnly")
  readOnly: option<readOnly>,
  @ocaml.doc("<p>The configuration object that specifies the snapshot to use as the origin of the data
            for the volume.</p>")
  @as("OriginSnapshot")
  originSnapshot: option<createOpenZFSOriginSnapshotConfiguration>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
            This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
            for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code>, and you specify one or more tags, only the specified tags
            are copied to snapshots. If you specify one or more tags when creating the snapshot, no
            tags are copied from the volume, regardless of this value.</p>")
  @as("CopyTagsToSnapshots")
  copyTagsToSnapshots: option<flag>,
  @ocaml.doc("<p>Specifies the method used to compress the data on the volume. The compression
            type is <code>NONE</code> by default.</p>
        <ul>
            <li>
                <p>
                  <code>NONE</code> - Doesn't compress the data on the volume.
                    <code>NONE</code> is the default.</p>
            </li>
            <li>
                <p>
                  <code>ZSTD</code> - Compresses the data in the volume using the Zstandard
                    (ZSTD) compression algorithm. ZSTD compression provides a higher level of 
                    data compression and higher read throughput performance than LZ4 compression.</p>
            </li>
            <li>
                <p>
                  <code>LZ4</code> - Compresses the data in the volume using the LZ4
                    compression algorithm. LZ4 compression provides a lower level of compression 
                    and higher write throughput performance than ZSTD compression.</p>
            </li>
         </ul>
        <p>For more information about volume compression types and the performance of your Amazon FSx for OpenZFS file system,
            see <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#performance-tips-zfs\">
                Tips for maximizing performance</a> File system and volume settings in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("DataCompressionType")
  dataCompressionType: option<openZFSDataCompressionType>,
  @ocaml.doc("<p>Specifies the suggested block size for a volume in a ZFS dataset, in kibibytes (KiB). Valid values are 4, 8,
            16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB.
            We recommend using the default setting for the majority of use cases. 
            Generally, workloads that write in fixed small or large record sizes 
            may benefit from setting a custom record size, like database workloads 
            (small record size) or media streaming workloads (large record size). 
            For additional guidance on when
            to set a custom record size, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/performance.html#record-size-performance\">
            ZFS Record size</a> in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("RecordSizeKiB")
  recordSizeKiB: option<integerRecordSizeKiB>,
  @ocaml.doc("<p>Sets the maximum storage size in gibibytes (GiB) for the volume. You can specify 
            a quota that is larger than the storage on the parent volume. A volume quota limits 
            the amount of storage that the volume can consume to the configured amount, but does not 
            guarantee the space will be available on the parent volume. To guarantee quota space, you must also set 
            <code>StorageCapacityReservationGiB</code>. To <i>not</i> specify a storage capacity quota, set this to <code>-1</code>.
        </p>
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-volumes.html#volume-properties\">Volume properties</a> 
            in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("StorageCapacityQuotaGiB")
  storageCapacityQuotaGiB: option<integerNoMaxFromNegativeOne>,
  @ocaml.doc("<p>Specifies the amount of storage in gibibytes (GiB) to reserve from the parent volume. Setting
            <code>StorageCapacityReservationGiB</code> guarantees that the specified amount of storage space
            on the parent volume will always be available for the volume. 
            You can't reserve more storage than the parent volume has. To <i>not</i> specify a storage capacity 
            reservation, set this to <code>0</code> or <code>-1</code>. For more information, see 
            <a href=\"https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/managing-volumes.html#volume-properties\">Volume properties</a> 
            in the <i>Amazon FSx for OpenZFS User Guide</i>.</p>")
  @as("StorageCapacityReservationGiB")
  storageCapacityReservationGiB: option<integerNoMaxFromNegativeOne>,
  @ocaml.doc(
    "<p>The ID of the volume to use as the parent volume of the volume that you are creating.</p>"
  )
  @as("ParentVolumeId")
  parentVolumeId: volumeId,
}
@ocaml.doc(
  "<p>The Amazon FSx for OpenZFS configuration properties for the file system that you are creating.</p>"
)
type createFileSystemOpenZFSConfiguration = {
  @ocaml.doc("<p>The configuration Amazon FSx uses when creating the root value of the Amazon FSx for OpenZFS
            file system. All volumes are children of the root volume. </p>")
  @as("RootVolumeConfiguration")
  rootVolumeConfiguration: option<openZFSCreateRootVolumeConfiguration>,
  @as("DiskIopsConfiguration") diskIopsConfiguration: option<diskIopsConfiguration>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @ocaml.doc("<p>Specifies the throughput of an Amazon FSx for OpenZFS file system, measured in megabytes per second
            (MB/s). Valid values are 64, 128, 256, 512, 1024, 2048, 3072, or 4096 MB/s. 
            You pay for additional throughput capacity that you provision.</p>")
  @as("ThroughputCapacity")
  throughputCapacity: megabytesPerSecond,
  @ocaml.doc("<p>Specifies the file system deployment type. Amazon FSx for OpenZFS supports
            <code>SINGLE_AZ_1</code>. <code>SINGLE_AZ_1</code> deployment type is configured for redundancy
            within a single Availability Zone.</p>")
  @as("DeploymentType")
  deploymentType: openZFSDeploymentType,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the volume should be copied to snapshots.
            This value defaults to <code>false</code>. If it's set to <code>true</code>, all tags
            for the volume are copied to snapshots where the user doesn't specify tags. If this
            value is <code>true</code>, and you specify one or more tags, only the specified tags
            are copied to snapshots. If you specify one or more tags when creating the snapshot, no
            tags are copied from the volume, regardless of this value. </p>")
  @as("CopyTagsToVolumes")
  copyTagsToVolumes: option<flag>,
  @ocaml.doc("<p>A Boolean value indicating whether tags for the file system should be copied to
            backups. This value defaults to <code>false</code>. If it's set to <code>true</code>,
            all tags for the file system are copied to all automatic and user-initiated backups
            where the user doesn't specify tags. If this value is <code>true</code>, and you specify
            one or more tags, only the specified tags are copied to backups. If you specify one or
            more tags when creating a user-initiated backup, no tags are copied from the file
            system, regardless of this value.</p>")
  @as("CopyTagsToBackups")
  copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
}
type rec volume = {
  @ocaml.doc("<p>The configuration of an Amazon FSx for OpenZFS volume.</p>")
  @as("OpenZFSConfiguration")
  openZFSConfiguration: option<openZFSVolumeConfiguration>,
  @ocaml.doc("<p>A list of administrative actions for the file system that are in process or waiting to
            be processed. Administrative actions describe changes to the Amazon FSx system
            that you initiated.</p>")
  @as("AdministrativeActions")
  administrativeActions: option<administrativeActions>,
  @ocaml.doc("<p>The reason why the volume lifecycle status changed.</p>")
  @as("LifecycleTransitionReason")
  lifecycleTransitionReason: option<lifecycleTransitionReason>,
  @ocaml.doc("<p>The type of the volume.</p>") @as("VolumeType") volumeType: option<volumeType>,
  @ocaml.doc("<p>The system-generated, unique ID of the volume.</p>") @as("VolumeId")
  volumeId: option<volumeId>,
  @as("Tags") tags: option<tags>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @as("OntapConfiguration") ontapConfiguration: option<ontapVolumeConfiguration>,
  @ocaml.doc("<p>The name of the volume.</p>") @as("Name") name: option<volumeName>,
  @ocaml.doc("<p>The lifecycle status of the volume.</p>
        <ul>
            <li>
                <p>
                  <code>AVAILABLE</code> - The volume is fully available for
                    use.</p>
            </li>
            <li>
                <p>
                  <code>CREATED</code> - The volume has been created.</p>
            </li>
            <li>
                <p>
                  <code>CREATING</code> - Amazon FSx is creating the new volume.</p>
            </li>
            <li>
                <p>
                  <code>DELETING</code> - Amazon FSx is deleting an existing
                    volume.</p>
            </li>
            <li>
                <p>
                  <code>FAILED</code> - Amazon FSx was unable to create the
                    volume.</p>
            </li>
            <li>
                <p>
                  <code>MISCONFIGURED</code> - The volume is in a failed but recoverable
                    state.</p>
            </li>
            <li>
                <p>
                  <code>PENDING</code> - Amazon FSx hasn't started creating the
                    volume.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<volumeLifecycle>,
  @as("FileSystemId") fileSystemId: option<fileSystemId>,
  @as("CreationTime") creationTime: option<creationTime>,
}
and administrativeActions = array<administrativeAction>
and administrativeAction = {
  @as("TargetSnapshotValues") targetSnapshotValues: option<snapshot>,
  @as("TargetVolumeValues") targetVolumeValues: option<volume>,
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
                  <code>FAILED</code> - Amazon FSx failed to process the administrative action
                    successfully.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - Amazon FSx is processing the administrative action.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - Amazon FSx is waiting to process the administrative
                    action.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - Amazon FSx has finished processing the administrative
                    task.</p>
            </li>
            <li>
               <p>
                  <code>UPDATED_OPTIMIZING</code> - For a storage-capacity increase update, Amazon FSx
                    has updated the file system with the new storage capacity, and is now performing
                    the storage-optimization process. </p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>The time that the administrative action request was received.</p>")
  @as("RequestTime")
  requestTime: option<requestTime>,
  @ocaml.doc("<p>The percentage-complete status of a <code>STORAGE_OPTIMIZATION</code> administrative
            action. Does not apply to any other administrative action type.</p>")
  @as("ProgressPercent")
  progressPercent: option<progressPercent>,
  @as("AdministrativeActionType") administrativeActionType: option<administrativeActionType>,
}
and snapshot = {
  @ocaml.doc("<p>A list of administrative actions for the file system that are in process or waiting to
            be processed. Administrative actions describe changes to the Amazon FSx
            system.</p>")
  @as("AdministrativeActions")
  administrativeActions: option<administrativeActions>,
  @as("Tags") tags: option<tags>,
  @as("LifecycleTransitionReason") lifecycleTransitionReason: option<lifecycleTransitionReason>,
  @ocaml.doc("<p>The lifecycle status of the snapshot.</p>
        <ul>
            <li>
                <p>
                  <code>PENDING</code> - Amazon FSx hasn't started creating the
                    snapshot.</p>
            </li>
            <li>
                <p>
                  <code>CREATING</code> - Amazon FSx is creating the snapshot.</p>
            </li>
            <li>
                <p>
                  <code>DELETING</code> - Amazon FSx is deleting the snapshot.</p>
            </li>
            <li>
                <p>
                  <code>AVAILABLE</code> - The snapshot is fully available.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<snapshotLifecycle>,
  @as("CreationTime") creationTime: option<creationTime>,
  @ocaml.doc("<p>The ID of the volume that the snapshot is of.</p>") @as("VolumeId")
  volumeId: option<volumeId>,
  @ocaml.doc("<p>The name of the snapshot.</p>") @as("Name") name: option<snapshotName>,
  @ocaml.doc("<p>The ID of the snapshot.</p>") @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
}
and fileSystem = {
  @ocaml.doc("<p>The configuration for this Amazon FSx for OpenZFS file system.</p>")
  @as("OpenZFSConfiguration")
  openZFSConfiguration: option<openZFSFileSystemConfiguration>,
  @ocaml.doc("<p>The Lustre version of the Amazon FSx for Lustre file system, either
            <code>2.10</code> or <code>2.12</code>.</p>")
  @as("FileSystemTypeVersion")
  fileSystemTypeVersion: option<fileSystemTypeVersion>,
  @ocaml.doc("<p>The configuration for this Amazon FSx for NetApp ONTAP file system.</p>")
  @as("OntapConfiguration")
  ontapConfiguration: option<ontapFileSystemConfiguration>,
  @ocaml.doc("<p>A list of administrative actions for the file system that are in process or waiting to
            be processed. Administrative actions describe changes to the Amazon FSx system
            that you have initiated using the <code>UpdateFileSystem</code> operation.</p>")
  @as("AdministrativeActions")
  administrativeActions: option<administrativeActions>,
  @as("LustreConfiguration") lustreConfiguration: option<lustreFileSystemConfiguration>,
  @ocaml.doc("<p>The configuration for this Amazon FSx for Windows File Server file system.</p>")
  @as("WindowsConfiguration")
  windowsConfiguration: option<windowsFileSystemConfiguration>,
  @ocaml.doc("<p>The tags to associate with the file system. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\">Tagging your
                Amazon EC2 resources</a> in the <i>Amazon EC2 User
            Guide</i>.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file system resource.</p>")
  @as("ResourceARN")
  resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The ID of the Key Management Service (KMS) key used to encrypt Amazon FSx file
            system data. Used as follows with Amazon FSx file system types:</p>
        <ul>
            <li>
               <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
               and <code>PERSISTENT_2</code> deployment types only.</p>
                <p>
                  <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using 
                    the Amazon FSx service KMS key for your account.</p>
            </li>
            <li>
               <p>Amazon FSx for NetApp ONTAP</p>
            </li>
            <li>
               <p>Amazon FSx for OpenZFS</p>
            </li>
            <li>
               <p>Amazon FSx for Windows File Server</p>
            </li>
         </ul>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The Domain Name System (DNS) name for the file system.</p>") @as("DNSName")
  dnsname: option<dnsname>,
  @ocaml.doc("<p>The IDs of the elastic network interfaces from which a specific file system is
            accessible. The elastic network interface is automatically created in the same virtual
            private cloud (VPC) that the Amazon FSx file system was created in. For more
            information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html\">Elastic Network Interfaces</a> in
            the <i>Amazon EC2 User Guide.</i>
         </p>

        <p>For an Amazon FSx for Windows File Server file system, you can have one
            network interface ID. For an Amazon FSx for Lustre file system, you can have
            more than one.</p>")
  @as("NetworkInterfaceIds")
  networkInterfaceIds: option<networkInterfaceIds>,
  @ocaml.doc("<p>Specifies the IDs of the subnets that the file system is accessible from. For the Amazon FSx Windows and
            ONTAP <code>MULTI_AZ_1</code> file system deployment type, there are two subnet IDs, one for
            the preferred file server and one for the standby file server. The preferred file server subnet
            identified in the <code>PreferredSubnetID</code> property. All other file systems have only one subnet ID.</p>
        <p>For FSx for Lustre file systems, and Single-AZ Windows file systems, this is the ID of 
            the subnet that contains the file system's endpoint. For <code>MULTI_AZ_1</code> Windows and
            ONTAP file systems, the file system endpoint is available in the <code>PreferredSubnetID</code>.</p>")
  @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The ID of the primary virtual private cloud (VPC) for the file system.</p>")
  @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc("<p>The type of storage the file system is using. 
            If set to <code>SSD</code>, the file system uses solid state drive storage. 
            If set to <code>HDD</code>, the file system uses hard disk drive storage.
        </p>")
  @as("StorageType")
  storageType: option<storageType>,
  @ocaml.doc("<p>The storage capacity of the file system in gibibytes (GiB).</p>")
  @as("StorageCapacity")
  storageCapacity: option<storageCapacity>,
  @as("FailureDetails") failureDetails: option<fileSystemFailureDetails>,
  @ocaml.doc("<p>The lifecycle status of the file system. The following are the possible values and
            what they mean:</p> 
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
                  <code>MISCONFIGURED</code> - The file system is in a failed but recoverable state.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The file system is undergoing a customer-initiated update.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: option<fileSystemLifecycle>,
  @ocaml.doc("<p>The type of Amazon FSx file system, which can be <code>LUSTRE</code>,
                <code>WINDOWS</code>, <code>ONTAP</code>, or <code>OPENZFS</code>.</p>")
  @as("FileSystemType")
  fileSystemType: option<fileSystemType>,
  @ocaml.doc("<p>The system-generated, unique 17-digit ID of the file system.</p>")
  @as("FileSystemId")
  fileSystemId: option<fileSystemId>,
  @ocaml.doc("<p>The time that the file system was created, in seconds (since 1970-01-01T00:00:00Z),
            also known as Unix time.</p>")
  @as("CreationTime")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The Amazon Web Services account that created the file system. If the file system was created by an
            Identity and Access Management (IAM) user, the Amazon Web Services account to which the
            IAM user belongs is the owner.</p>")
  @as("OwnerId")
  ownerId: option<awsaccountId>,
}
type volumes = array<volume>
type snapshots = array<snapshot>
@ocaml.doc("<p>A list of file system resource descriptions.</p>")
type fileSystems = array<fileSystem>
@ocaml.doc("<p>A backup of an Amazon FSx for Windows File Server, Amazon FSx for
            Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx
            for OpenZFS file system.</p>")
type backup = {
  @as("Volume") volume: option<volume>,
  @ocaml.doc("<p>Specifies the resource type that's backed up.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The source Region of the backup. Specifies the Region from where this backup
            is copied.</p>")
  @as("SourceBackupRegion")
  sourceBackupRegion: option<region>,
  @as("SourceBackupId") sourceBackupId: option<backupId>,
  @as("OwnerId") ownerId: option<awsaccountId>,
  @ocaml.doc("<p>The configuration of the self-managed Microsoft Active Directory directory to which
            the Windows File Server instance is joined.</p>")
  @as("DirectoryInformation")
  directoryInformation: option<activeDirectoryBackupAttributes>,
  @ocaml.doc("<p>The metadata of the file system associated with the backup. This metadata is persisted
            even if the file system is deleted.</p>")
  @as("FileSystem")
  fileSystem: fileSystem,
  @ocaml.doc("<p>The tags associated with a particular file system.</p>") @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the backup resource.</p>") @as("ResourceARN")
  resourceARN: option<resourceARN>,
  @ocaml.doc("<p>The ID of the Key Management Service (KMS) key used to encrypt the
            backup of the Amazon FSx file system's data at rest. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The time when a particular backup was created.</p>") @as("CreationTime")
  creationTime: creationTime,
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @ocaml.doc("<p>The type of the file-system backup.</p>") @as("Type") type_: backupType,
  @ocaml.doc("<p>Details explaining any failures that occurred when creating a backup.</p>")
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
                  <code>PENDING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx hasn't started creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Amazon FSx is creating the backup.</p>
            </li>
            <li>
               <p>
                  <code>TRANSFERRING</code> - For user-initiated backups on Lustre file systems only; Amazon FSx is transferring the backup to Amazon S3.</p>
            </li>
            <li>
               <p>
                  <code>COPYING</code> - Amazon FSx is copying the backup.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Amazon FSx deleted the backup and it's no longer
                    available.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Amazon FSx couldn't finish the backup.</p>
            </li>
         </ul>")
  @as("Lifecycle")
  lifecycle: backupLifecycle,
  @ocaml.doc("<p>The ID of the backup.</p>") @as("BackupId") backupId: backupId,
}
@ocaml.doc("<p>A list of file system backups.</p>") type backups = array<backup>
@ocaml.doc("<p>Amazon FSx is a fully managed service that makes it easy for storage and
            application administrators to launch and use shared file storage.</p>")
module DeleteStorageVirtualMachine = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the SVM that you want to delete.</p>") @as("StorageVirtualMachineId")
    storageVirtualMachineId: storageVirtualMachineId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>Describes the lifecycle state of the SVM being deleted.</p>") @as("Lifecycle")
    lifecycle: option<storageVirtualMachineLifecycle>,
    @ocaml.doc("<p>The ID of the SVM Amazon FSx is deleting.</p>") @as("StorageVirtualMachineId")
    storageVirtualMachineId: option<storageVirtualMachineId>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DeleteStorageVirtualMachineCommand"
  let make = (~storageVirtualMachineId, ~clientRequestToken=?, ()) =>
    new({storageVirtualMachineId: storageVirtualMachineId, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the snapshot that you want to delete.</p>") @as("SnapshotId")
    snapshotId: snapshotId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>The lifecycle status of the snapshot. If the <code>DeleteSnapshot</code> operation is
            successful, this status is <code>DELETING</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<snapshotLifecycle>,
    @ocaml.doc("<p>The ID of the deleted snapshot.</p>") @as("SnapshotId")
    snapshotId: option<snapshotId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteSnapshotCommand"
  let make = (~snapshotId, ~clientRequestToken=?, ()) =>
    new({snapshotId: snapshotId, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataRepositoryAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to delete the data in the file system that corresponds
            to the data repository association.</p>")
    @as("DeleteDataInFileSystem")
    deleteDataInFileSystem: deleteDataInFileSystem,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the data repository association that you want to delete.</p>")
    @as("AssociationId")
    associationId: dataRepositoryAssociationId,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether data in the file system that corresponds to the data
            repository association is being deleted. Default is <code>false</code>.</p>")
    @as("DeleteDataInFileSystem")
    deleteDataInFileSystem: option<deleteDataInFileSystem>,
    @ocaml.doc(
      "<p>Describes the lifecycle state of the data repository association being deleted.</p>"
    )
    @as("Lifecycle")
    lifecycle: option<dataRepositoryLifecycle>,
    @ocaml.doc("<p>The ID of the data repository association being deleted.</p>")
    @as("AssociationId")
    associationId: option<dataRepositoryAssociationId>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DeleteDataRepositoryAssociationCommand"
  let make = (~deleteDataInFileSystem, ~associationId, ~clientRequestToken=?, ()) =>
    new({
      deleteDataInFileSystem: deleteDataInFileSystem,
      clientRequestToken: clientRequestToken,
      associationId: associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackup = {
  type t
  @ocaml.doc("<p>The request object for the <code>DeleteBackup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent deletion. This parameter is automatically filled on your behalf when using
            the CLI or SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the backup that you want to delete.</p>") @as("BackupId")
    backupId: backupId,
  }
  @ocaml.doc("<p>The response object for the <code>DeleteBackup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The lifecycle status of the backup. If the <code>DeleteBackup</code> operation is
            successful, the status is <code>DELETED</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<backupLifecycle>,
    @ocaml.doc("<p>The ID of the backup that was deleted.</p>") @as("BackupId")
    backupId: option<backupId>,
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
  type response = {.}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestoreVolumeFromSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The settings used when restoring the specified volume from snapshot. </p>
        <ul>
            <li>
                <p>
                  <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots between the
                    current state and the specified snapshot. If there are intermediate snapshots
                    and this option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
            </li>
            <li>
                <p>
                  <code>DELETE_CLONED_VOLUMES</code> - Deletes any volumes cloned from this
                    volume. If there are any cloned volumes and this option isn't used,
                        <code>RestoreVolumeFromSnapshot</code> fails.</p>
            </li>
         </ul>")
    @as("Options")
    options: option<restoreOpenZFSVolumeOptions>,
    @ocaml.doc("<p>The ID of the source snapshot. Specifies the snapshot that you are restoring
            from.</p>")
    @as("SnapshotId")
    snapshotId: snapshotId,
    @ocaml.doc("<p>The ID of the volume that you are restoring.</p>") @as("VolumeId")
    volumeId: volumeId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>The lifecycle state of the volume being restored.</p>") @as("Lifecycle")
    lifecycle: option<volumeLifecycle>,
    @ocaml.doc("<p>The ID of the volume that you restored.</p>") @as("VolumeId")
    volumeId: option<volumeId>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "RestoreVolumeFromSnapshotCommand"
  let make = (~snapshotId, ~volumeId, ~options=?, ~clientRequestToken=?, ()) =>
    new({
      options: options,
      snapshotId: snapshotId,
      volumeId: volumeId,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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
  type response = {.}
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

module DeleteVolume = {
  type t
  type request = {
    @ocaml.doc("<p>For Amazon FSx for OpenZFS volumes, specify whether to delete all child
            volumes and snapshots.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<deleteVolumeOpenZFSConfiguration>,
    @ocaml.doc("<p>For Amazon FSx for ONTAP volumes, specify whether to take a final backup of
            the volume and apply tags to the backup. To apply tags to the backup, you must have the
                <code>fsx:TagResource</code> permission.</p>")
    @as("OntapConfiguration")
    ontapConfiguration: option<deleteVolumeOntapConfiguration>,
    @ocaml.doc("<p>The ID of the volume that you are deleting.</p>") @as("VolumeId")
    volumeId: volumeId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>Returned after a <code>DeleteVolume</code> request, showing the status of the delete
            request.</p>")
    @as("OntapResponse")
    ontapResponse: option<deleteVolumeOntapResponse>,
    @ocaml.doc("<p>The lifecycle state of the volume being deleted. If the <code>DeleteVolume</code>
            operation is successful, this value is <code>DELETING</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<volumeLifecycle>,
    @ocaml.doc("<p>The ID of the volume that's being deleted.</p>") @as("VolumeId")
    volumeId: option<volumeId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteVolumeCommand"
  let make = (
    ~volumeId,
    ~openZFSConfiguration=?,
    ~ontapConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      openZFSConfiguration: openZFSConfiguration,
      ontapConfiguration: ontapConfiguration,
      volumeId: volumeId,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFileSystem = {
  type t
  @ocaml.doc("<p>The request object for <code>DeleteFileSystem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The configuration object for the OpenZFS file system used in the
                <code>DeleteFileSystem</code> operation.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<deleteFileSystemOpenZFSConfiguration>,
    @as("LustreConfiguration") lustreConfiguration: option<deleteFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<deleteFileSystemWindowsConfiguration>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent deletion. This token is automatically filled on your behalf when using the
                Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the file system that you want to delete.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  @ocaml.doc("<p>The response object for the <code>DeleteFileSystem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The response object for the OpenZFS file system that's being deleted in the
                <code>DeleteFileSystem</code> operation.</p>")
    @as("OpenZFSResponse")
    openZFSResponse: option<deleteFileSystemOpenZFSResponse>,
    @as("LustreResponse") lustreResponse: option<deleteFileSystemLustreResponse>,
    @as("WindowsResponse") windowsResponse: option<deleteFileSystemWindowsResponse>,
    @ocaml.doc("<p>The file system lifecycle for the deletion request. If the
                <code>DeleteFileSystem</code> operation is successful, this status is
                <code>DELETING</code>.</p>")
    @as("Lifecycle")
    lifecycle: option<fileSystemLifecycle>,
    @ocaml.doc("<p>The ID of the file system that's being deleted.</p>") @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteFileSystemCommand"
  let make = (
    ~fileSystemId,
    ~openZFSConfiguration=?,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      openZFSConfiguration: openZFSConfiguration,
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

module UpdateStorageVirtualMachine = {
  type t
  type request = {
    @ocaml.doc("<p>Enter a new SvmAdminPassword if you are updating it.</p>")
    @as("SvmAdminPassword")
    svmAdminPassword: option<adminPassword>,
    @ocaml.doc(
      "<p>The ID of the SVM that you want to update, in the format <code>svm-0123456789abcdef0</code>.</p>"
    )
    @as("StorageVirtualMachineId")
    storageVirtualMachineId: storageVirtualMachineId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>Updates the Microsoft Active Directory (AD) configuration for an SVM that is joined to an AD.</p>"
    )
    @as("ActiveDirectoryConfiguration")
    activeDirectoryConfiguration: option<updateSvmActiveDirectoryConfiguration>,
  }
  type response = {
    @as("StorageVirtualMachine") storageVirtualMachine: option<storageVirtualMachine>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "UpdateStorageVirtualMachineCommand"
  let make = (
    ~storageVirtualMachineId,
    ~svmAdminPassword=?,
    ~clientRequestToken=?,
    ~activeDirectoryConfiguration=?,
    (),
  ) =>
    new({
      svmAdminPassword: svmAdminPassword,
      storageVirtualMachineId: storageVirtualMachineId,
      clientRequestToken: clientRequestToken,
      activeDirectoryConfiguration: activeDirectoryConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDataRepositoryAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration for an Amazon S3 data repository linked to an
            Amazon FSx Lustre file system with a data repository association.
            The configuration defines which file events (new, changed, or
            deleted files or directories) are automatically imported from
            the linked data repository to the file system or automatically
            exported from the file system to the data repository.</p>")
    @as("S3")
    s3: option<s3DataRepositoryConfiguration>,
    @ocaml.doc("<p>For files imported from a data repository, this value determines the stripe count and
            maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
            number of disks that a single file can be striped across is limited by the total number
            of disks that make up the file system.</p>
        
        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3 objects have a maximum size of 5 TB.</p>")
    @as("ImportedFileChunkSize")
    importedFileChunkSize: option<megabytes>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the data repository association that you are updating.</p>")
    @as("AssociationId")
    associationId: dataRepositoryAssociationId,
  }
  type response = {
    @ocaml.doc(
      "<p>The response object returned after the data repository association is updated.</p>"
    )
    @as("Association")
    association: option<dataRepositoryAssociation>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "UpdateDataRepositoryAssociationCommand"
  let make = (~associationId, ~s3=?, ~importedFileChunkSize=?, ~clientRequestToken=?, ()) =>
    new({
      s3: s3,
      importedFileChunkSize: importedFileChunkSize,
      clientRequestToken: clientRequestToken,
      associationId: associationId,
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

module CreateStorageVirtualMachine = {
  type t
  type request = {
    @ocaml.doc("<p>The security style of the root volume of the SVM. Specify one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>UNIX</code> if the file system is managed by a UNIX
                administrator, the majority of users are NFS clients, and an application
                accessing the data uses a UNIX user as the service account.</p>
            </li>
            <li>
               <p>
                  <code>NTFS</code> if the file system is managed by a Windows
                administrator, the majority of users are SMB clients, and an application
                accessing the data uses a Windows user as the service account.</p>
            </li>
            <li>
               <p>
                  <code>MIXED</code> if the file system is managed by both UNIX
                and Windows administrators and users consist of both NFS and SMB clients.</p>
            </li>
         </ul>")
    @as("RootVolumeSecurityStyle")
    rootVolumeSecurityStyle: option<storageVirtualMachineRootVolumeSecurityStyle>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The password to use when managing the SVM using the NetApp ONTAP CLI or REST API.
            If you do not specify a password, you can still use the file system's
            <code>fsxadmin</code> user to manage the SVM.</p>")
    @as("SvmAdminPassword")
    svmAdminPassword: option<adminPassword>,
    @ocaml.doc("<p>The name of the SVM.</p>") @as("Name") name: storageVirtualMachineName,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Describes the self-managed Microsoft Active Directory to which you want to join the SVM. 
      Joining an Active Directory provides user authentication and access control for SMB clients, 
      including Microsoft Windows and macOS client accessing the file system.</p>")
    @as("ActiveDirectoryConfiguration")
    activeDirectoryConfiguration: option<createSvmActiveDirectoryConfiguration>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returned after a successful <code>CreateStorageVirtualMachine</code> operation; describes the SVM just created.</p>"
    )
    @as("StorageVirtualMachine")
    storageVirtualMachine: option<storageVirtualMachine>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "CreateStorageVirtualMachineCommand"
  let make = (
    ~name,
    ~fileSystemId,
    ~rootVolumeSecurityStyle=?,
    ~tags=?,
    ~svmAdminPassword=?,
    ~clientRequestToken=?,
    ~activeDirectoryConfiguration=?,
    (),
  ) =>
    new({
      rootVolumeSecurityStyle: rootVolumeSecurityStyle,
      tags: tags,
      svmAdminPassword: svmAdminPassword,
      name: name,
      fileSystemId: fileSystemId,
      clientRequestToken: clientRequestToken,
      activeDirectoryConfiguration: activeDirectoryConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataRepositoryAssociation = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The configuration for an Amazon S3 data repository linked to an
            Amazon FSx Lustre file system with a data repository association.
            The configuration defines which file events (new, changed, or
            deleted files or directories) are automatically imported from
            the linked data repository to the file system or automatically
            exported from the file system to the data repository.</p>")
    @as("S3")
    s3: option<s3DataRepositoryConfiguration>,
    @ocaml.doc("<p>For files imported from a data repository, this value determines the stripe count and
            maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
            number of disks that a single file can be striped across is limited by the total number
            of disks that make up the file system.</p>
        
        <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
            GiB). Amazon S3 objects have a maximum size of 5 TB.</p>")
    @as("ImportedFileChunkSize")
    importedFileChunkSize: option<megabytes>,
    @ocaml.doc("<p>Set to <code>true</code> to run an import data repository task to import
            metadata from the data repository to the file system after the data repository
            association is created. Default is <code>false</code>.</p>")
    @as("BatchImportMetaDataOnCreate")
    batchImportMetaDataOnCreate: option<batchImportMetaDataOnCreate>,
    @ocaml.doc("<p>The path to the Amazon S3 data repository that will be linked to the file
            system. The path can be an S3 bucket or prefix in the format
            <code>s3://myBucket/myPrefix/</code>. This path specifies where in the S3
            data repository files will be imported from or exported to.</p>")
    @as("DataRepositoryPath")
    dataRepositoryPath: archivePath,
    @ocaml.doc("<p>A path on the file system that points to a high-level directory (such
            as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
            that will be mapped 1-1 with <code>DataRepositoryPath</code>.
            The leading forward slash in the name is required. Two data repository
            associations cannot have overlapping file system paths. For example, if
            a data repository is associated with file system path <code>/ns1/</code>,
            then you cannot link another data repository with file system
            path <code>/ns1/ns2</code>.</p>
        <p>This path specifies where in your file system files will be exported
            from or imported to. This file system directory can be linked to only one
            Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
        <note>
            <p>If you specify only a forward slash (<code>/</code>) as the file system
            path, you can link only 1 data repository to the file system. You can only specify
            \"/\" as the file system path for the first data repository associated with a file system.</p>
         </note>")
    @as("FileSystemPath")
    fileSystemPath: namespace,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc(
      "<p>The response object returned after the data repository association is created.</p>"
    )
    @as("Association")
    association: option<dataRepositoryAssociation>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "CreateDataRepositoryAssociationCommand"
  let make = (
    ~dataRepositoryPath,
    ~fileSystemPath,
    ~fileSystemId,
    ~tags=?,
    ~clientRequestToken=?,
    ~s3=?,
    ~importedFileChunkSize=?,
    ~batchImportMetaDataOnCreate=?,
    (),
  ) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      s3: s3,
      importedFileChunkSize: importedFileChunkSize,
      batchImportMetaDataOnCreate: batchImportMetaDataOnCreate,
      dataRepositoryPath: dataRepositoryPath,
      fileSystemPath: fileSystemPath,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStorageVirtualMachines = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("<p>Enter a filter name:value pair to view a select set of SVMs.</p>") @as("Filters")
    filters: option<storageVirtualMachineFilters>,
    @ocaml.doc("<p>Enter the ID of one or more SVMs that you want to view.</p>")
    @as("StorageVirtualMachineIds")
    storageVirtualMachineIds: option<storageVirtualMachineIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Returned after a successful <code>DescribeStorageVirtualMachines</code> operation, describing each SVM.</p>"
    )
    @as("StorageVirtualMachines")
    storageVirtualMachines: option<storageVirtualMachines>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeStorageVirtualMachinesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~storageVirtualMachineIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      storageVirtualMachineIds: storageVirtualMachineIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataRepositoryAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of resources to return in the response. This value must be
            an integer greater than zero.</p>")
    @as("MaxResults")
    maxResults: option<limitedMaxResults>,
    @as("Filters") filters: option<filters>,
    @ocaml.doc("<p>IDs of the data repository associations whose descriptions you want to retrieve
            (String).</p>")
    @as("AssociationIds")
    associationIds: option<dataRepositoryAssociationIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of one ore more data repository association descriptions.</p>")
    @as("Associations")
    associations: option<dataRepositoryAssociations>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeDataRepositoryAssociationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~associationIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      associationIds: associationIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVolume = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration of the OpenZFS volume that you are updating.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<updateOpenZFSVolumeConfiguration>,
    @ocaml.doc("<p>The name of the OpenZFS volume. OpenZFS root volumes are automatically named
                <code>FSX</code>. Child volume names must be unique among their parent volume's
            children. The name of the volume is part of the mount string for the OpenZFS volume. </p>")
    @as("Name")
    name: option<volumeName>,
    @ocaml.doc("<p>The configuration of the ONTAP volume that you are updating.</p>")
    @as("OntapConfiguration")
    ontapConfiguration: option<updateOntapVolumeConfiguration>,
    @ocaml.doc("<p>The ID of the volume that you want to update, in the format
                <code>fsvol-0123456789abcdef0</code>.</p>")
    @as("VolumeId")
    volumeId: volumeId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A description of the volume just updated. Returned after a successful
                <code>UpdateVolume</code> API operation.</p>")
    @as("Volume")
    volume: option<volume>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UpdateVolumeCommand"
  let make = (
    ~volumeId,
    ~openZFSConfiguration=?,
    ~name=?,
    ~ontapConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      openZFSConfiguration: openZFSConfiguration,
      name: name,
      ontapConfiguration: ontapConfiguration,
      volumeId: volumeId,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the snapshot that you want to update, in the format
                <code>fsvolsnap-0123456789abcdef0</code>.</p>")
    @as("SnapshotId")
    snapshotId: snapshotId,
    @ocaml.doc("<p>The name of the snapshot to update.</p>") @as("Name") name: snapshotName,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>Returned after a successful <code>UpdateSnapshot</code> operation, describing the
            snapshot that you updated.</p>")
    @as("Snapshot")
    snapshot: option<snapshot>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UpdateSnapshotCommand"
  let make = (~snapshotId, ~name, ~clientRequestToken=?, ()) =>
    new({snapshotId: snapshotId, name: name, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystem = {
  type t
  @ocaml.doc("<p>The request object for the <code>UpdateFileSystem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The configuration updates for an Amazon FSx for OpenZFS file system.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<updateFileSystemOpenZFSConfiguration>,
    @as("OntapConfiguration") ontapConfiguration: option<updateFileSystemOntapConfiguration>,
    @as("LustreConfiguration") lustreConfiguration: option<updateFileSystemLustreConfiguration>,
    @ocaml.doc("<p>The configuration updates for an Amazon FSx for Windows File Server file
      system.</p>")
    @as("WindowsConfiguration")
    windowsConfiguration: option<updateFileSystemWindowsConfiguration>,
    @ocaml.doc("<p>Use this parameter to increase the storage capacity of an Amazon FSx for Windows
      File Server, Amazon FSx for Lustre, or Amazon FSx for NetApp ONTAP file system.
      Specifies the storage capacity target value, in GiB, to increase the storage capacity for
      the file system that you're updating. </p>
         <note>
            <p>You can't make a storage capacity increase request if there is an existing storage
        capacity increase request in progress.</p>
         </note>
         <p>For Windows file systems, the storage capacity target value must be at least 10 percent
      greater than the current storage capacity value. To increase storage capacity, the file system
      must have at least 16 MBps of throughput capacity. For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html\">Managing storage
        capacity</a> in the <i>Amazon FSx for Windows File Server User
          Guide</i>.</p>
         <p>For Lustre file systems, the storage capacity target value can be the following:</p>
         <ul>
            <li>
               <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2 SSD</code> deployment types, valid values
          are in multiples of 2400 GiB. The value must be greater than the current storage capacity.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT HDD</code> file systems, valid values are multiples of 6000 GiB for
          12-MBps throughput per TiB file systems and multiples of 1800 GiB for 40-MBps throughput
          per TiB file systems. The values must be greater than the current storage capacity.</p>
            </li>
            <li>
               <p>For <code>SCRATCH_1</code> file systems, you can't increase the storage capacity.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html\">Managing storage and throughput
          capacity</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
         <p>For ONTAP file systems, the storage capacity target value must be at least 10 percent
      greater than the current storage capacity value.  For more information, see
      <a href=\"https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html\">Managing storage capacity and provisioned IOPS</a> in the <i>Amazon FSx for NetApp ONTAP User
          Guide</i>.</p>")
    @as("StorageCapacity")
    storageCapacity: option<storageCapacity>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
      idempotent updates. This string is automatically filled on your behalf when you use the
        Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the file system that you are updating.</p>") @as("FileSystemId")
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
    ~openZFSConfiguration=?,
    ~ontapConfiguration=?,
    ~lustreConfiguration=?,
    ~windowsConfiguration=?,
    ~storageCapacity=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      openZFSConfiguration: openZFSConfiguration,
      ontapConfiguration: ontapConfiguration,
      lustreConfiguration: lustreConfiguration,
      windowsConfiguration: windowsConfiguration,
      storageCapacity: storageCapacity,
      clientRequestToken: clientRequestToken,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReleaseFileSystemNfsV3Locks = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {@as("FileSystem") fileSystem: option<fileSystem>}
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "ReleaseFileSystemNfsV3LocksCommand"
  let make = (~fileSystemId, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVolumeFromBackup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>Specifies the configuration of the ONTAP volume that you are creating.</p>")
    @as("OntapConfiguration")
    ontapConfiguration: option<createOntapVolumeConfiguration>,
    @ocaml.doc("<p>The name of the new volume you're creating.</p>") @as("Name") name: volumeName,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("BackupId") backupId: backupId,
  }
  type response = {
    @ocaml.doc("<p>Returned after a successful <code>CreateVolumeFromBackup</code> API operation,
            describing the volume just created.</p>")
    @as("Volume")
    volume: option<volume>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateVolumeFromBackupCommand"
  let make = (~name, ~backupId, ~tags=?, ~ontapConfiguration=?, ~clientRequestToken=?, ()) =>
    new({
      tags: tags,
      ontapConfiguration: ontapConfiguration,
      name: name,
      clientRequestToken: clientRequestToken,
      backupId: backupId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVolume = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the configuration to use when creating the OpenZFS volume.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<createOpenZFSVolumeConfiguration>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>Specifies the configuration to use when creating the ONTAP volume.</p>")
    @as("OntapConfiguration")
    ontapConfiguration: option<createOntapVolumeConfiguration>,
    @ocaml.doc("<p>Specifies the name of the volume that you're creating.</p>") @as("Name")
    name: volumeName,
    @ocaml.doc("<p>Specifies the type of volume to create; <code>ONTAP</code> and <code>OPENZFS</code> are
            the only valid volume types.</p>")
    @as("VolumeType")
    volumeType: volumeType,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returned after a successful <code>CreateVolume</code> API operation, describing the volume just created.</p>"
    )
    @as("Volume")
    volume: option<volume>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateVolumeCommand"
  let make = (
    ~name,
    ~volumeType,
    ~openZFSConfiguration=?,
    ~tags=?,
    ~ontapConfiguration=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      openZFSConfiguration: openZFSConfiguration,
      tags: tags,
      ontapConfiguration: ontapConfiguration,
      name: name,
      volumeType: volumeType,
      clientRequestToken: clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The ID of the volume that you are taking a snapshot of.</p>") @as("VolumeId")
    volumeId: volumeId,
    @ocaml.doc("<p>The name of the snapshot. </p>") @as("Name") name: snapshotName,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A description of the snapshot.</p>") @as("Snapshot") snapshot: option<snapshot>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateSnapshotCommand"
  let make = (~volumeId, ~name, ~tags=?, ~clientRequestToken=?, ()) =>
    new({tags: tags, volumeId: volumeId, name: name, clientRequestToken: clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystemFromBackup = {
  type t
  @ocaml.doc("<p>The request object for the <code>CreateFileSystemFromBackup</code>
            operation.</p>")
  type request = {
    @ocaml.doc("<p>The OpenZFS configuration for the file system that's being created. </p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<createFileSystemOpenZFSConfiguration>,
    @ocaml.doc("<p>Sets the version for the Amazon FSx for Lustre file system that you're
            creating from a backup. Valid values are <code>2.10</code> and <code>2.12</code>.</p>
        <p>You don't need to specify <code>FileSystemTypeVersion</code> because it will
            be applied using the backup's <code>FileSystemTypeVersion</code> setting.
            If you choose to specify <code>FileSystemTypeVersion</code> when creating from backup, the
            value must match the backup's <code>FileSystemTypeVersion</code> setting.</p>")
    @as("FileSystemTypeVersion")
    fileSystemTypeVersion: option<fileSystemTypeVersion>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>Sets the storage type for the Windows or OpenZFS file system that you're creating from
            a backup. Valid values are <code>SSD</code> and <code>HDD</code>.</p>
        <ul>
            <li>
               <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows and OpenZFS
                    deployment types.</p>
            </li>
            <li>
               <p>Set to <code>HDD</code> to use hard disk drive storage. 
                    HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> FSx for Windows File Server file system deployment types.</p>
            </li>
         </ul>
        <p> The default value is <code>SSD</code>. </p>
        <note>
            <p>HDD and SSD storage types have different minimum storage capacity requirements. 
            A restored file system's storage capacity is tied to the file system that was backed up. 
            You can create a file system that uses HDD storage from a backup of a file system that 
            used SSD storage if the original SSD file system had a storage capacity of at least 2000 GiB.</p>
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
    @ocaml.doc("<p>A list of IDs for the security groups that apply to the specified network interfaces
            created for file system access. These security groups apply to all network interfaces.
            This value isn't returned in later <code>DescribeFileSystem</code> requests.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc("<p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code> 
            file system deployment types, provide exactly two subnet IDs, one for the preferred file server 
            and one for the standby file server. You specify one of these subnets as the preferred subnet 
            using the <code>WindowsConfiguration > PreferredSubnetID</code> property.</p>
        <p>Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment
            types, Lustre file systems, and OpenZFS file systems provide exactly one subnet ID. The
            file server is launched in that subnet's Availability Zone.</p>")
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent creation. This string is automatically filled on your behalf when you use the
                Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
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
    ~openZFSConfiguration=?,
    ~fileSystemTypeVersion=?,
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
      openZFSConfiguration: openZFSConfiguration,
      fileSystemTypeVersion: fileSystemTypeVersion,
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
    @ocaml.doc("<p>The OpenZFS configuration for the file system that's being created.</p>")
    @as("OpenZFSConfiguration")
    openZFSConfiguration: option<createFileSystemOpenZFSConfiguration>,
    @ocaml.doc("<p>(Optional) For FSx for Lustre file systems, sets the Lustre version for the
            file system that you're creating. Valid values are <code>2.10</code> and
                <code>2.12</code>:</p>

        <ul>
            <li>
               <p>2.10 is supported by the Scratch and Persistent_1 Lustre deployment types.</p>
            </li>
            <li>
               <p>2.12 is supported by all Lustre deployment types. <code>2.12</code> is 
                required when setting FSx for Lustre <code>DeploymentType</code> to 
                <code>PERSISTENT_2</code>.</p>
            </li>
         </ul>
        <p>Default value = <code>2.10</code>, except when <code>DeploymentType</code> is set to 
            <code>PERSISTENT_2</code>, then the default is <code>2.12</code>.</p>
        <note>
            <p>If you set <code>FileSystemTypeVersion</code> to <code>2.10</code> for a   
            <code>PERSISTENT_2</code> Lustre deployment type, the <code>CreateFileSystem</code> 
            operation fails.</p>
         </note>")
    @as("FileSystemTypeVersion")
    fileSystemTypeVersion: option<fileSystemTypeVersion>,
    @as("OntapConfiguration") ontapConfiguration: option<createFileSystemOntapConfiguration>,
    @as("LustreConfiguration") lustreConfiguration: option<createFileSystemLustreConfiguration>,
    @ocaml.doc(
      "<p>The Microsoft Windows configuration for the file system that's being created. </p>"
    )
    @as("WindowsConfiguration")
    windowsConfiguration: option<createFileSystemWindowsConfiguration>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The tags to apply to the file system that's being created. The key value of the
                <code>Name</code> tag appears in the console as the file system name.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A list of IDs specifying the security groups to apply to all network interfaces
            created for file system access. This list isn't returned in later requests to
            describe the file system.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc("<p>Specifies the IDs of the subnets that the file system will be accessible from. For
            Windows and ONTAP <code>MULTI_AZ_1</code> deployment types,provide exactly two subnet
            IDs, one for the preferred file server and one for the standby file server. You specify
            one of these subnets as the preferred subnet using the <code>WindowsConfiguration >
                PreferredSubnetID</code> or <code>OntapConfiguration > PreferredSubnetID</code>
            properties. For more information about Multi-AZ file system configuration, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html\">
                Availability and durability: Single-AZ and Multi-AZ file systems</a> in the
                <i>Amazon FSx for Windows User Guide</i> and <a href=\"https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html\">
                Availability and durability</a> in the <i>Amazon FSx for ONTAP User
                Guide</i>.</p>
        <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> and all Lustre 
            deployment types, provide exactly one subnet ID.
           The file server is launched in that subnet's Availability Zone.</p>")
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>Sets the storage type for the file system that you're creating. Valid values are
                <code>SSD</code> and <code>HDD</code>.</p>
        <ul>
            <li>
               <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows,
                    Lustre, ONTAP, and OpenZFS deployment types.</p>
            </li>
            <li>
               <p>Set to <code>HDD</code> to use hard disk drive storage. 
                HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
                and on <code>PERSISTENT_1</code> Lustre file system deployment types. 
                </p>
            </li>
         </ul>
        <p>Default value is <code>SSD</code>. For more information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options\"> Storage
                type options</a> in the <i>FSx for Windows File Server User
                Guide</i> and <a href=\"https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options\">Multiple storage
                options</a> in the <i>FSx for Lustre User
            Guide</i>. </p>")
    @as("StorageType")
    storageType: option<storageType>,
    @ocaml.doc("<p>Sets the storage capacity of the file system that you're creating, in gibibytes (GiB).</p>      
        <p>
            <b>FSx for Lustre file systems</b> - The amount of
            storage capacity that you can configure depends on the value that you set for
                <code>StorageType</code> and the Lustre <code>DeploymentType</code>, as
            follows:</p>
        <ul>
            <li>
               <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_2</code> and <code>PERSISTENT_1</code> deployment types 
                using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
            </li>
            <li>
               <p>For <code>PERSISTENT_1</code> HDD file systems, valid values are increments of 6000 GiB for 
                12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
            </li>
            <li>
               <p>For <code>SCRATCH_1</code> deployment type, valid values are 
                1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
            </li>
         </ul>
        <p>
            <b>FSx for ONTAP file systems</b> - The amount of storage capacity 
            that you can configure is from 1024 GiB up to 196,608 GiB (192 TiB).</p>
        <p>
            <b>FSx for OpenZFS file systems</b> - The amount of storage capacity that 
            you can configure is from 64 GiB up to 524,288 GiB (512 TiB).</p>
        <p>
            <b>FSx for Windows File Server file systems</b> - The amount
            of storage capacity that you can configure depends on the value that you set for
                <code>StorageType</code> as follows:</p>
        <ul>
            <li>
               <p>For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).</p>
            </li>
            <li>
               <p>For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).</p>
            </li>
         </ul>")
    @as("StorageCapacity")
    storageCapacity: storageCapacity,
    @ocaml.doc("<p>The type of Amazon FSx file system to create. Valid values are
                <code>WINDOWS</code>, <code>LUSTRE</code>, <code>ONTAP</code>, and
                <code>OPENZFS</code>.</p>")
    @as("FileSystemType")
    fileSystemType: fileSystemType,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
            idempotent creation. This string is automatically filled on your behalf when you use the
                Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
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
    ~openZFSConfiguration=?,
    ~fileSystemTypeVersion=?,
    ~ontapConfiguration=?,
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
      openZFSConfiguration: openZFSConfiguration,
      fileSystemTypeVersion: fileSystemTypeVersion,
      ontapConfiguration: ontapConfiguration,
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

module DescribeVolumes = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("<p>Enter a filter <code>Name</code> and <code>Values</code> pair to view a select set of
            volumes.</p>")
    @as("Filters")
    filters: option<volumeFilters>,
    @ocaml.doc("<p>The IDs of the volumes whose descriptions you want to retrieve.</p>")
    @as("VolumeIds")
    volumeIds: option<volumeIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Returned after a successful <code>DescribeVolumes</code> operation, describing each volume.</p>"
    )
    @as("Volumes")
    volumes: option<volumes>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeVolumesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~volumeIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, volumeIds: volumeIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshots = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc("<p>The filters structure. The supported names are <code>file-system-id</code> or
                <code>volume-id</code>.</p>")
    @as("Filters")
    filters: option<snapshotFilters>,
    @ocaml.doc("<p>The IDs of the snapshots that you want to retrieve. This parameter value overrides any
            filters. If any IDs aren't found, a <code>SnapshotNotFound</code> error occurs.</p>")
    @as("SnapshotIds")
    snapshotIds: option<snapshotIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of snapshots.</p>") @as("Snapshots") snapshots: option<snapshots>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeSnapshotsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~snapshotIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, snapshotIds: snapshotIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystems = {
  type t
  @ocaml.doc("<p>The request object for <code>DescribeFileSystems</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous <code>DescribeFileSystems</code>
            operation (String). If a token present, the operation continues the list from where the
            returning call left off.</p>")
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
    @ocaml.doc("<p>(Optional) The ID of the FSx for ONTAP volume to back up.</p>") @as("VolumeId")
    volumeId: option<volumeId>,
    @ocaml.doc("<p>(Optional) The tags to apply to the backup at backup creation. The key value of the
                <code>Name</code> tag appears in the console as the backup name. If you have set
                <code>CopyTagsToBackups</code> to <code>true</code>, and you specify one or more
            tags using the <code>CreateBackup</code> operation, no existing file system tags are
            copied from the file system to the backup.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>(Optional) A string of up to 64 ASCII characters that Amazon FSx uses to
            ensure idempotent creation. This string is automatically filled on your behalf when you
            use the Command Line Interface (CLI) or an Amazon Web Services SDK.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The ID of the file system to back up.</p>") @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  @ocaml.doc("<p>The response object for the <code>CreateBackup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A description of the backup.</p>") @as("Backup") backup: option<backup>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateBackupCommand"
  let make = (~volumeId=?, ~tags=?, ~clientRequestToken=?, ~fileSystemId=?, ()) =>
    new({
      volumeId: volumeId,
      tags: tags,
      clientRequestToken: clientRequestToken,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyBackup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>A Boolean flag indicating whether tags from the source backup should be copied to the
         backup copy. This value defaults to <code>false</code>.</p>
         <p>If you set <code>CopyTags</code> to <code>true</code> and the source backup has existing
         tags, you can use the <code>Tags</code> parameter to create new tags, provided that the sum
         of the source backup tags and the new tags doesn't exceed 50. Both sets of tags are
         merged. If there are tag conflicts (for example, two tags with the same key but different
         values), the tags created with the <code>Tags</code> parameter take precedence.</p>")
    @as("CopyTags")
    copyTags: option<flag>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The source Amazon Web Services Region of the backup. Specifies the Amazon Web Services Region from which the backup is being copied. The source and destination
         Regions must be in the same Amazon Web Services partition. If you don't specify a
         Region, <code>SourceRegion</code> defaults to the Region where the request is sent from
         (in-Region copy).</p>")
    @as("SourceRegion")
    sourceRegion: option<region>,
    @ocaml.doc(
      "<p>The ID of the source backup. Specifies the ID of the backup that's being copied.</p>"
    )
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
  @ocaml.doc("<p>The request object for the <code>DescribeBackups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An opaque pagination token returned from a previous <code>DescribeBackups</code>
            operation. If a token is present, the operation continues the list from where the
            returning call left off.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Maximum number of backups to return in the response. This parameter value must be
            greater than 0. The number of items that Amazon FSx returns is the minimum of
            the <code>MaxResults</code> parameter specified in the request and the service's
            internal maximum number of items per page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The filters structure. The supported names are <code>file-system-id</code>,
                <code>backup-type</code>, <code>file-system-type</code>, and
            <code>volume-id</code>.</p>")
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc("<p>The IDs of the backups that you want to retrieve. This parameter value overrides any
            filters. If any IDs aren't found, a <code>BackupNotFound</code> error occurs.</p>")
    @as("BackupIds")
    backupIds: option<backupIds>,
  }
  @ocaml.doc("<p>Response object for the <code>DescribeBackups</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A <code>NextToken</code> value is present if there are more backups than returned in
            the response. You can use the <code>NextToken</code> value in the subsequent request to
            fetch the backups. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of backups.</p>") @as("Backups") backups: option<backups>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeBackupsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~backupIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, backupIds: backupIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
