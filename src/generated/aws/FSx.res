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
type weeklyTime = string
type vpcId = string
type totalCount = float
type taskId = string
type tagValue = string
type tagKey = string
type succeededCount = float
type subnetId = string
type storageType = [@as("HDD") #HDD | @as("SSD") #SSD]
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
type serviceLimit = [
  | @as("TOTAL_IN_PROGRESS_COPY_BACKUPS") #TOTAL_IN_PROGRESS_COPY_BACKUPS
  | @as("TOTAL_USER_TAGS") #TOTAL_USER_TAGS
  | @as("TOTAL_USER_INITIATED_BACKUPS") #TOTAL_USER_INITIATED_BACKUPS
  | @as("TOTAL_STORAGE") #TOTAL_STORAGE
  | @as("TOTAL_THROUGHPUT_CAPACITY") #TOTAL_THROUGHPUT_CAPACITY
  | @as("FILE_SYSTEM_COUNT") #FILE_SYSTEM_COUNT
]
type securityGroupId = string
type resourceARN = string
type requestTime = Js.Date.t
type reportScope = [@as("FAILED_FILES_ONLY") #FAILED_FILES_ONLY]
type reportFormat = [@as("REPORT_CSV_20191124") #REPORT_CSV_20191124]
type region = string
type progressPercent = int
type perUnitStorageThroughput = int
type parameter = string
type organizationalUnitDistinguishedName = string
type nextToken = string
type networkInterfaceId = string
type megabytesPerSecond = int
type megabytes = int
type maxResults = int
type lustreFileSystemMountName = string
type lustreDeploymentType = [
  | @as("PERSISTENT_1") #PERSISTENT_1
  | @as("SCRATCH_2") #SCRATCH_2
  | @as("SCRATCH_1") #SCRATCH_1
]
type lastUpdatedTime = Js.Date.t
type kmsKeyId = string
type ipAddress = string
type flag = bool
type filterValue = string
type filterName = [
  | @as("file-system-type") #File_System_Type
  | @as("backup-type") #Backup_Type
  | @as("file-system-id") #File_System_Id
]
type fileSystemType = [@as("LUSTRE") #LUSTRE | @as("WINDOWS") #WINDOWS]
type fileSystemMaintenanceOperation = [@as("BACKING_UP") #BACKING_UP | @as("PATCHING") #PATCHING]
type fileSystemLifecycle = [
  | @as("UPDATING") #UPDATING
  | @as("MISCONFIGURED") #MISCONFIGURED
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
type fileSystemId = string
type fileSystemAdministratorsGroupName = string
type failedCount = float
type errorMessage = string
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
type dailyTime = string
type dnsname = string
type creationTime = Js.Date.t
type clientRequestToken = string
type backupType = [
  | @as("AWS_BACKUP") #AWS_BACKUP
  | @as("USER_INITIATED") #USER_INITIATED
  | @as("AUTOMATIC") #AUTOMATIC
]
type backupLifecycle = [
  | @as("COPYING") #COPYING
  | @as("PENDING") #PENDING
  | @as("FAILED") #FAILED
  | @as("DELETED") #DELETED
  | @as("TRANSFERRING") #TRANSFERRING
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
type backupId = string
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
type administrativeActionType = [
  | @as("FILE_SYSTEM_ALIAS_DISASSOCIATION") #FILE_SYSTEM_ALIAS_DISASSOCIATION
  | @as("FILE_SYSTEM_ALIAS_ASSOCIATION") #FILE_SYSTEM_ALIAS_ASSOCIATION
  | @as("STORAGE_OPTIMIZATION") #STORAGE_OPTIMIZATION
  | @as("FILE_SYSTEM_UPDATE") #FILE_SYSTEM_UPDATE
]
type activeDirectoryFullyQualifiedName = string
type activeDirectoryErrorType = [
  | @as("INVALID_DOMAIN_STAGE") #INVALID_DOMAIN_STAGE
  | @as("WRONG_VPC") #WRONG_VPC
  | @as("INCOMPATIBLE_DOMAIN_MODE") #INCOMPATIBLE_DOMAIN_MODE
  | @as("DOMAIN_NOT_FOUND") #DOMAIN_NOT_FOUND
]
type awsaccountId = string
type updateFileSystemLustreConfiguration = {
  @as("DataCompressionType") dataCompressionType: option<dataCompressionType>,
  @as("AutoImportPolicy") autoImportPolicy: option<autoImportPolicyType>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
}
type taskIds = array<taskId>
type tagKeys = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type networkInterfaceIds = array<networkInterfaceId>
type filterValues = array<filterValue>
type fileSystemMaintenanceOperations = array<fileSystemMaintenanceOperation>
type fileSystemIds = array<fileSystemId>
type fileSystemFailureDetails = {@as("Message") message: option<errorMessage>}
type dnsIps = array<ipAddress>
type dataRepositoryTaskStatus = {
  @as("LastUpdatedTime") lastUpdatedTime: option<lastUpdatedTime>,
  @as("FailedCount") failedCount: option<failedCount>,
  @as("SucceededCount") succeededCount: option<succeededCount>,
  @as("TotalCount") totalCount: option<totalCount>,
}
type dataRepositoryTaskPaths = array<dataRepositoryTaskPath>
type dataRepositoryTaskFilterValues = array<dataRepositoryTaskFilterValue>
type dataRepositoryTaskFailureDetails = {@as("Message") message: option<errorMessage>}
type dataRepositoryFailureDetails = {@as("Message") message: option<errorMessage>}
type createFileSystemLustreConfiguration = {
  @as("DataCompressionType") dataCompressionType: option<dataCompressionType>,
  @as("DriveCacheType") driveCacheType: option<driveCacheType>,
  @as("CopyTagsToBackups") copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("PerUnitStorageThroughput") perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @as("AutoImportPolicy") autoImportPolicy: option<autoImportPolicyType>,
  @as("DeploymentType") deploymentType: option<lustreDeploymentType>,
  @as("ImportedFileChunkSize") importedFileChunkSize: option<megabytes>,
  @as("ExportPath") exportPath: option<archivePath>,
  @as("ImportPath") importPath: option<archivePath>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
}
type completionReport = {
  @as("Scope") scope: option<reportScope>,
  @as("Format") format: option<reportFormat>,
  @as("Path") path: option<archivePath>,
  @as("Enabled") enabled: flag,
}
type backupIds = array<backupId>
type backupFailureDetails = {@as("Message") message: option<errorMessage>}
type alternateDNSNames = array<alternateDNSName>
type alias = {
  @as("Lifecycle") lifecycle: option<aliasLifecycle>,
  @as("Name") name: option<alternateDNSName>,
}
type administrativeActionFailureDetails = {@as("Message") message: option<errorMessage>}
type activeDirectoryBackupAttributes = {
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @as("ActiveDirectoryId") activeDirectoryId: option<directoryId>,
  @as("DomainName") domainName: option<activeDirectoryFullyQualifiedName>,
}
type tags = array<tag>
type selfManagedActiveDirectoryConfigurationUpdates = {
  @as("DnsIps") dnsIps: option<dnsIps>,
  @as("Password") password: option<directoryPassword>,
  @as("UserName") userName: option<directoryUserName>,
}
type selfManagedActiveDirectoryConfiguration = {
  @as("DnsIps") dnsIps: dnsIps,
  @as("Password") password: directoryPassword,
  @as("UserName") userName: directoryUserName,
  @as("FileSystemAdministratorsGroup")
  fileSystemAdministratorsGroup: option<fileSystemAdministratorsGroupName>,
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @as("DomainName") domainName: activeDirectoryFullyQualifiedName,
}
type selfManagedActiveDirectoryAttributes = {
  @as("DnsIps") dnsIps: option<dnsIps>,
  @as("UserName") userName: option<directoryUserName>,
  @as("FileSystemAdministratorsGroup")
  fileSystemAdministratorsGroup: option<fileSystemAdministratorsGroupName>,
  @as("OrganizationalUnitDistinguishedName")
  organizationalUnitDistinguishedName: option<organizationalUnitDistinguishedName>,
  @as("DomainName") domainName: option<activeDirectoryFullyQualifiedName>,
}
type filter = {
  @as("Values") values: option<filterValues>,
  @as("Name") name: option<filterName>,
}
type dataRepositoryTaskFilter = {
  @as("Values") values: option<dataRepositoryTaskFilterValues>,
  @as("Name") name: option<dataRepositoryTaskFilterName>,
}
type dataRepositoryConfiguration = {
  @as("FailureDetails") failureDetails: option<dataRepositoryFailureDetails>,
  @as("AutoImportPolicy") autoImportPolicy: option<autoImportPolicyType>,
  @as("ImportedFileChunkSize") importedFileChunkSize: option<megabytes>,
  @as("ExportPath") exportPath: option<archivePath>,
  @as("ImportPath") importPath: option<archivePath>,
  @as("Lifecycle") lifecycle: option<dataRepositoryLifecycle>,
}
type aliases = array<alias>
type windowsFileSystemConfiguration = {
  @as("Aliases") aliases: option<aliases>,
  @as("CopyTagsToBackups") copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @as("MaintenanceOperationsInProgress")
  maintenanceOperationsInProgress: option<fileSystemMaintenanceOperations>,
  @as("ThroughputCapacity") throughputCapacity: option<megabytesPerSecond>,
  @as("PreferredFileServerIp") preferredFileServerIp: option<ipAddress>,
  @as("PreferredSubnetId") preferredSubnetId: option<subnetId>,
  @as("RemoteAdministrationEndpoint") remoteAdministrationEndpoint: option<dnsname>,
  @as("DeploymentType") deploymentType: option<windowsDeploymentType>,
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryAttributes>,
  @as("ActiveDirectoryId") activeDirectoryId: option<directoryId>,
}
type updateFileSystemWindowsConfiguration = {
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfigurationUpdates>,
  @as("ThroughputCapacity") throughputCapacity: option<megabytesPerSecond>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
}
type lustreFileSystemConfiguration = {
  @as("DataCompressionType") dataCompressionType: option<dataCompressionType>,
  @as("DriveCacheType") driveCacheType: option<driveCacheType>,
  @as("CopyTagsToBackups") copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("MountName") mountName: option<lustreFileSystemMountName>,
  @as("PerUnitStorageThroughput") perUnitStorageThroughput: option<perUnitStorageThroughput>,
  @as("DeploymentType") deploymentType: option<lustreDeploymentType>,
  @as("DataRepositoryConfiguration")
  dataRepositoryConfiguration: option<dataRepositoryConfiguration>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
}
type filters = array<filter>
type deleteFileSystemWindowsResponse = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("FinalBackupId") finalBackupId: option<backupId>,
}
type deleteFileSystemWindowsConfiguration = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("SkipFinalBackup") skipFinalBackup: option<flag>,
}
type deleteFileSystemLustreResponse = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("FinalBackupId") finalBackupId: option<backupId>,
}
type deleteFileSystemLustreConfiguration = {
  @as("FinalBackupTags") finalBackupTags: option<tags>,
  @as("SkipFinalBackup") skipFinalBackup: option<flag>,
}
type dataRepositoryTaskFilters = array<dataRepositoryTaskFilter>
type dataRepositoryTask = {
  @as("Report") report: option<completionReport>,
  @as("Status") status: option<dataRepositoryTaskStatus>,
  @as("FailureDetails") failureDetails: option<dataRepositoryTaskFailureDetails>,
  @as("Paths") paths: option<dataRepositoryTaskPaths>,
  @as("FileSystemId") fileSystemId: fileSystemId,
  @as("Tags") tags: option<tags>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @as("EndTime") endTime: option<endTime>,
  @as("StartTime") startTime: option<startTime>,
  @as("CreationTime") creationTime: creationTime,
  @as("Type") type_: dataRepositoryTaskType,
  @as("Lifecycle") lifecycle: dataRepositoryTaskLifecycle,
  @as("TaskId") taskId: taskId,
}
type createFileSystemWindowsConfiguration = {
  @as("Aliases") aliases: option<alternateDNSNames>,
  @as("CopyTagsToBackups") copyTagsToBackups: option<flag>,
  @as("AutomaticBackupRetentionDays")
  automaticBackupRetentionDays: option<automaticBackupRetentionDays>,
  @as("DailyAutomaticBackupStartTime") dailyAutomaticBackupStartTime: option<dailyTime>,
  @as("WeeklyMaintenanceStartTime") weeklyMaintenanceStartTime: option<weeklyTime>,
  @as("ThroughputCapacity") throughputCapacity: megabytesPerSecond,
  @as("PreferredSubnetId") preferredSubnetId: option<subnetId>,
  @as("DeploymentType") deploymentType: option<windowsDeploymentType>,
  @as("SelfManagedActiveDirectoryConfiguration")
  selfManagedActiveDirectoryConfiguration: option<selfManagedActiveDirectoryConfiguration>,
  @as("ActiveDirectoryId") activeDirectoryId: option<directoryId>,
}
type dataRepositoryTasks = array<dataRepositoryTask>
type rec fileSystem = {
  @as("AdministrativeActions") administrativeActions: option<administrativeActions>,
  @as("LustreConfiguration") lustreConfiguration: option<lustreFileSystemConfiguration>,
  @as("WindowsConfiguration") windowsConfiguration: option<windowsFileSystemConfiguration>,
  @as("Tags") tags: option<tags>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("DNSName") dnsname: option<dnsname>,
  @as("NetworkInterfaceIds") networkInterfaceIds: option<networkInterfaceIds>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
  @as("VpcId") vpcId: option<vpcId>,
  @as("StorageType") storageType: option<storageType>,
  @as("StorageCapacity") storageCapacity: option<storageCapacity>,
  @as("FailureDetails") failureDetails: option<fileSystemFailureDetails>,
  @as("Lifecycle") lifecycle: option<fileSystemLifecycle>,
  @as("FileSystemType") fileSystemType: option<fileSystemType>,
  @as("FileSystemId") fileSystemId: option<fileSystemId>,
  @as("CreationTime") creationTime: option<creationTime>,
  @as("OwnerId") ownerId: option<awsaccountId>,
}
and administrativeActions = array<administrativeAction>
and administrativeAction = {
  @as("FailureDetails") failureDetails: option<administrativeActionFailureDetails>,
  @as("TargetFileSystemValues") targetFileSystemValues: option<fileSystem>,
  @as("Status") status: option<status>,
  @as("RequestTime") requestTime: option<requestTime>,
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @as("AdministrativeActionType") administrativeActionType: option<administrativeActionType>,
}
type fileSystems = array<fileSystem>
type backup = {
  @as("SourceBackupRegion") sourceBackupRegion: option<region>,
  @as("SourceBackupId") sourceBackupId: option<backupId>,
  @as("OwnerId") ownerId: option<awsaccountId>,
  @as("DirectoryInformation") directoryInformation: option<activeDirectoryBackupAttributes>,
  @as("FileSystem") fileSystem: fileSystem,
  @as("Tags") tags: option<tags>,
  @as("ResourceARN") resourceARN: option<resourceARN>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("CreationTime") creationTime: creationTime,
  @as("ProgressPercent") progressPercent: option<progressPercent>,
  @as("Type") type_: backupType,
  @as("FailureDetails") failureDetails: option<backupFailureDetails>,
  @as("Lifecycle") lifecycle: backupLifecycle,
  @as("BackupId") backupId: backupId,
}
type backups = array<backup>

module DeleteBackup = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("BackupId") backupId: backupId,
  }
  type response = {
    @as("Lifecycle") lifecycle: option<backupLifecycle>,
    @as("BackupId") backupId: option<backupId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDataRepositoryTask = {
  type t
  type request = {@as("TaskId") taskId: taskId}
  type response = {
    @as("TaskId") taskId: option<taskId>,
    @as("Lifecycle") lifecycle: option<dataRepositoryTaskLifecycle>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CancelDataRepositoryTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("ResourceARN") resourceARN: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceARN") resourceARN: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-fsx") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ResourceARN") resourceARN: resourceARN,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFileSystemAliases = {
  type t
  type request = {
    @as("Aliases") aliases: alternateDNSNames,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {@as("Aliases") aliases: option<aliases>}
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DisassociateFileSystemAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystemAliases = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Aliases") aliases: option<aliases>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeFileSystemAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateFileSystemAliases = {
  type t
  type request = {
    @as("Aliases") aliases: alternateDNSNames,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {@as("Aliases") aliases: option<aliases>}
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "AssociateFileSystemAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFileSystem = {
  type t
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<deleteFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<deleteFileSystemWindowsConfiguration>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {
    @as("LustreResponse") lustreResponse: option<deleteFileSystemLustreResponse>,
    @as("WindowsResponse") windowsResponse: option<deleteFileSystemWindowsResponse>,
    @as("Lifecycle") lifecycle: option<fileSystemLifecycle>,
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DeleteFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataRepositoryTask = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Report") report: completionReport,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("Paths") paths: option<dataRepositoryTaskPaths>,
    @as("Type") type_: dataRepositoryTaskType,
  }
  type response = {@as("DataRepositoryTask") dataRepositoryTask: option<dataRepositoryTask>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateDataRepositoryTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataRepositoryTasks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<dataRepositoryTaskFilters>,
    @as("TaskIds") taskIds: option<taskIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("DataRepositoryTasks") dataRepositoryTasks: option<dataRepositoryTasks>,
  }
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "DescribeDataRepositoryTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystem = {
  type t
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<updateFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<updateFileSystemWindowsConfiguration>,
    @as("StorageCapacity") storageCapacity: option<storageCapacity>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {@as("FileSystem") fileSystem: option<fileSystem>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "UpdateFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystemFromBackup = {
  type t
  type request = {
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("StorageType") storageType: option<storageType>,
    @as("LustreConfiguration") lustreConfiguration: option<createFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<createFileSystemWindowsConfiguration>,
    @as("Tags") tags: option<tags>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
    @as("SubnetIds") subnetIds: subnetIds,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("BackupId") backupId: backupId,
  }
  type response = {@as("FileSystem") fileSystem: option<fileSystem>}
  @module("@aws-sdk/client-fsx") @new
  external new: request => t = "CreateFileSystemFromBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystem = {
  type t
  type request = {
    @as("LustreConfiguration") lustreConfiguration: option<createFileSystemLustreConfiguration>,
    @as("WindowsConfiguration") windowsConfiguration: option<createFileSystemWindowsConfiguration>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Tags") tags: option<tags>,
    @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
    @as("SubnetIds") subnetIds: subnetIds,
    @as("StorageType") storageType: option<storageType>,
    @as("StorageCapacity") storageCapacity: storageCapacity,
    @as("FileSystemType") fileSystemType: fileSystemType,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {@as("FileSystem") fileSystem: option<fileSystem>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystems = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("FileSystemIds") fileSystemIds: option<fileSystemIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("FileSystems") fileSystems: option<fileSystems>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeFileSystemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {@as("Backup") backup: option<backup>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CreateBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyBackup = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("CopyTags") copyTags: option<flag>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("SourceRegion") sourceRegion: option<region>,
    @as("SourceBackupId") sourceBackupId: sourceBackupId,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  }
  type response = {@as("Backup") backup: option<backup>}
  @module("@aws-sdk/client-fsx") @new external new: request => t = "CopyBackupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackups = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Filters") filters: option<filters>,
    @as("BackupIds") backupIds: option<backupIds>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Backups") backups: option<backups>,
  }
  @module("@aws-sdk/client-fsx") @new external new: request => t = "DescribeBackupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
