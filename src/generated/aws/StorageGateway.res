type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-storagegateway") @new external createClient: unit => awsServiceClient = "StorageGatewayClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type string_ = string
type long = float
type integer_ = int
type double = float
type volumeUsedInBytes = float
type volumeType = string
type volumeStatus = string
type volumeId = string
type volumeAttachmentStatus = string
type volumeARN = string
type vtldeviceVendor = string
type vtldeviceType = string
type vtldeviceProductIdentifier = string
type vtldeviceARN = string
type userListUser = string
type timeoutInSeconds = int
type time = Js.Date.t;
type targetName = string
type targetARN = string
type tapeUsage = float
type tapeStorageClass = [@as("GLACIER") #GLACIER | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE]
type tapeStatus = string
type tapeSize = float
type tapeRecoveryPointStatus = string
type tapeDriveType = string
type tapeBarcodePrefix = string
type tapeBarcode = string
type tapeArchiveStatus = string
type tapeARN = string
type tagValue = string
type tagKey = string
type storageClass = string
type squash = string
type softwareUpdatesEndDate = string
type snapshotId = string
type snapshotDescription = string
type smbsecurityStrategy = [@as("MandatoryEncryption") #MandatoryEncryption | @as("MandatorySigning") #MandatorySigning | @as("ClientSpecified") #ClientSpecified]
type smbguestPassword = string
type role = string
type retentionLockType = [@as("NONE") #NONE | @as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type retentionLockTimeInDays = int
type resourceARN = string
type regionId = string
type recurrenceInHours = int
type positiveIntObject = int
type poolStatus = [@as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE]
type poolName = string
type poolId = string
type poolARN = string
type permissionMode = string
type permissionId = float
type path = string
type organizationalUnit = string
type objectACL = [@as("aws-exec-read") #Aws_Exec_Read | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control | @as("bucket-owner-read") #Bucket_Owner_Read | @as("authenticated-read") #Authenticated_Read | @as("public-read-write") #Public_Read_Write | @as("public-read") #Public_Read | @as("private") #Private]
type numTapesToCreate = int
type notificationPolicy = string
type notificationId = string
type nextUpdateAvailabilityDate = string
type networkInterfaceId = string
type minuteOfHour = int
type minimumNumTapes = int
type mediumChangerType = string
type marker = string
type locationARN = string
type localConsolePassword = string
type lastSoftwareUpdate = string
type kmskey = string
type iqnName = string
type initiator = string
type ipv4AddressCIDR = string
type hourOfDay = int
type hostEnvironment = [@as("OTHER") #OTHER | @as("KVM") #KVM | @as("EC2") #EC2 | @as("HYPER-V") #HYPER_V | @as("VMWARE") #VMWARE]
type host = string
type gatewayType = string
type gatewayTimezone = string
type gatewayState = string
type gatewayOperationalState = string
type gatewayName = string
type gatewayId = string
type gatewayARN = string
type folder = string
type fileSystemLocationARN = string
type fileSystemAssociationStatus = string
type fileSystemAssociationId = string
type fileSystemAssociationARN = string
type fileShareType = [@as("SMB") #SMB | @as("NFS") #NFS]
type fileShareStatus = string
type fileShareName = string
type fileShareId = string
type fileShareARN = string
type errorCode = [@as("VolumeNotReady") #VolumeNotReady | @as("VolumeNotFound") #VolumeNotFound | @as("VolumeInUse") #VolumeInUse | @as("VolumeIdInvalid") #VolumeIdInvalid | @as("VolumeAlreadyExists") #VolumeAlreadyExists | @as("UnauthorizedOperation") #UnauthorizedOperation | @as("TargetNotFound") #TargetNotFound | @as("TargetInvalid") #TargetInvalid | @as("TargetAlreadyExists") #TargetAlreadyExists | @as("TapeCartridgeNotFound") #TapeCartridgeNotFound | @as("StorageFailure") #StorageFailure | @as("StagingAreaFull") #StagingAreaFull | @as("SnapshotScheduleNotFound") #SnapshotScheduleNotFound | @as("SnapshotNotFound") #SnapshotNotFound | @as("SnapshotInProgress") #SnapshotInProgress | @as("SnapshotIdInvalid") #SnapshotIdInvalid | @as("SnapshotDeleted") #SnapshotDeleted | @as("ServiceUnavailable") #ServiceUnavailable | @as("RequestTimeout") #RequestTimeout | @as("RegionInvalid") #RegionInvalid | @as("ParametersNotImplemented") #ParametersNotImplemented | @as("OutdatedGateway") #OutdatedGateway | @as("OperationAborted") #OperationAborted | @as("NotSupported") #NotSupported | @as("NotImplemented") #NotImplemented | @as("NoDisksAvailable") #NoDisksAvailable | @as("NetworkConfigurationChanged") #NetworkConfigurationChanged | @as("MaximumVolumeCountExceeded") #MaximumVolumeCountExceeded | @as("MaximumTapeCartridgeCountExceeded") #MaximumTapeCartridgeCountExceeded | @as("MaximumContentLengthExceeded") #MaximumContentLengthExceeded | @as("JoinDomainInProgress") #JoinDomainInProgress | @as("LunInvalid") #LunInvalid | @as("LunAlreadyAllocated ") #LunAlreadyAllocated | @as("LocalStorageLimitExceeded") #LocalStorageLimitExceeded | @as("InvalidSchedule") #InvalidSchedule | @as("InvalidParameters") #InvalidParameters | @as("InvalidEndpoint") #InvalidEndpoint | @as("InvalidGateway") #InvalidGateway | @as("InternalError") #InternalError | @as("InitiatorNotFound") #InitiatorNotFound | @as("InitiatorInvalid") #InitiatorInvalid | @as("IAMNotSupported") #IAMNotSupported | @as("EndpointNotFound") #EndpointNotFound | @as("DuplicateSchedule") #DuplicateSchedule | @as("DuplicateCertificateInfo") #DuplicateCertificateInfo | @as("DiskSizeNotGigAligned") #DiskSizeNotGigAligned | @as("DiskSizeLessThanVolumeSize") #DiskSizeLessThanVolumeSize | @as("DiskSizeGreaterThanVolumeMaxSize") #DiskSizeGreaterThanVolumeMaxSize | @as("DiskDoesNotExist") #DiskDoesNotExist | @as("DiskAlreadyAllocated") #DiskAlreadyAllocated | @as("ChapCredentialNotFound") #ChapCredentialNotFound | @as("CannotExportSnapshot") #CannotExportSnapshot | @as("Blocked") #Blocked | @as("BandwidthThrottleScheduleNotFound") #BandwidthThrottleScheduleNotFound | @as("AuthenticationFailure") #AuthenticationFailure | @as("GatewayProxyNetworkConnectionBusy") #GatewayProxyNetworkConnectionBusy | @as("GatewayNotFound") #GatewayNotFound | @as("GatewayNotConnected") #GatewayNotConnected | @as("GatewayInternalError") #GatewayInternalError | @as("ActivationKeyNotFound") #ActivationKeyNotFound | @as("ActivationKeyInvalid") #ActivationKeyInvalid | @as("ActivationKeyExpired") #ActivationKeyExpired]
type endpointType = string
type ec2InstanceRegion = string
type ec2InstanceId = string
type doubleObject = float
type domainUserPassword = string
type domainUserName = string
type domainName = string
type diskId = string
type diskAttribute = string
type diskAllocationType = string
type deviceType = string
type description = string
type deprecationDate = string
type dayOfWeek = int
type dayOfMonth = int
type createdDate = Js.Date.t;
type cloudWatchLogGroupARN = string
type clientToken = string
type chapSecret = string
type caseSensitivity = [@as("CaseSensitive") #CaseSensitive | @as("ClientSpecified") #ClientSpecified]
type cacheStaleTimeoutInSeconds = int
type boolean2 = bool
type boolean_ = bool
type bandwidthUploadRateLimit = float
type bandwidthType = string
type bandwidthDownloadRateLimit = float
type availabilityMonitorTestStatus = [@as("PENDING") #PENDING | @as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE]
type authentication = string
type auditDestinationARN = string
type activeDirectoryStatus = [@as("UNKNOWN_ERROR") #UNKNOWN_ERROR | @as("TIMEOUT") #TIMEOUT | @as("NETWORK_ERROR") #NETWORK_ERROR | @as("JOINING") #JOINING | @as("JOINED") #JOINED | @as("DETACHED") #DETACHED | @as("ACCESS_DENIED") #ACCESS_DENIED]
type activationKey = string
type errorDetails = Js.Dict.t<string_>
type volumeiSCSIAttributes = {
@as("ChapEnabled") chapEnabled: option<boolean2>,
  @as("LunNumber") lunNumber: option<positiveIntObject>,
  @as("NetworkInterfacePort") networkInterfacePort: option<integer_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("TargetARN") targetARN: option<targetARN>
}
type volumeRecoveryPointInfo = {
@as("VolumeRecoveryPointTime") volumeRecoveryPointTime: option<string_>,
  @as("VolumeUsageInBytes") volumeUsageInBytes: option<long>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
type volumeInfo = {
@as("VolumeAttachmentStatus") volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("GatewayId") gatewayId: option<gatewayId>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("VolumeId") volumeId: option<volumeId>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
type volumeARNs = array<volumeARN>
type vtldeviceARNs = array<vtldeviceARN>
type userList = array<userListUser>
type tapeRecoveryPointInfo = {
@as("TapeStatus") tapeStatus: option<tapeRecoveryPointStatus>,
  @as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
  @as("TapeRecoveryPointTime") tapeRecoveryPointTime: option<time>,
  @as("TapeARN") tapeARN: option<tapeARN>
}
type tapeInfo = {
@as("PoolEntryDate") poolEntryDate: option<time>,
  @as("RetentionStartDate") retentionStartDate: option<time>,
  @as("PoolId") poolId: option<poolId>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("TapeStatus") tapeStatus: option<tapeStatus>,
  @as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
  @as("TapeBarcode") tapeBarcode: option<tapeBarcode>,
  @as("TapeARN") tapeARN: option<tapeARN>
}
type tapeArchive = {
@as("PoolEntryDate") poolEntryDate: option<time>,
  @as("RetentionStartDate") retentionStartDate: option<time>,
  @as("Worm") worm: option<boolean2>,
  @as("PoolId") poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("TapeUsedInBytes") tapeUsedInBytes: option<tapeUsage>,
  @as("TapeStatus") tapeStatus: option<tapeArchiveStatus>,
  @as("RetrievedTo") retrievedTo: option<gatewayARN>,
  @as("CompletionTime") completionTime: option<time>,
  @as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
  @as("TapeCreatedDate") tapeCreatedDate: option<time>,
  @as("TapeBarcode") tapeBarcode: option<tapeBarcode>,
  @as("TapeARN") tapeARN: option<tapeARN>
}
type tapeARNs = array<tapeARN>
type tape = {
@as("PoolEntryDate") poolEntryDate: option<time>,
  @as("RetentionStartDate") retentionStartDate: option<time>,
  @as("Worm") worm: option<boolean2>,
  @as("PoolId") poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("TapeUsedInBytes") tapeUsedInBytes: option<tapeUsage>,
  @as("Progress") progress: option<doubleObject>,
  @as("VTLDevice") vtldevice: option<vtldeviceARN>,
  @as("TapeStatus") tapeStatus: option<tapeStatus>,
  @as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
  @as("TapeCreatedDate") tapeCreatedDate: option<time>,
  @as("TapeBarcode") tapeBarcode: option<tapeBarcode>,
  @as("TapeARN") tapeARN: option<tapeARN>
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
  @as("Key") key: tagKey
}
type poolInfo = {
@as("PoolStatus") poolStatus: option<poolStatus>,
  @as("RetentionLockTimeInDays") retentionLockTimeInDays: option<retentionLockTimeInDays>,
  @as("RetentionLockType") retentionLockType: option<retentionLockType>,
  @as("StorageClass") storageClass: option<tapeStorageClass>,
  @as("PoolName") poolName: option<poolName>,
  @as("PoolARN") poolARN: option<poolARN>
}
type poolARNs = array<poolARN>
type networkInterface = {
@as("Ipv6Address") ipv6Address: option<string_>,
  @as("MacAddress") macAddress: option<string_>,
  @as("Ipv4Address") ipv4Address: option<string_>
}
type nfsfileShareDefaults = {
@as("OwnerId") ownerId: option<permissionId>,
  @as("GroupId") groupId: option<permissionId>,
  @as("DirectoryMode") directoryMode: option<permissionMode>,
  @as("FileMode") fileMode: option<permissionMode>
}
type initiators = array<initiator>
type hosts = array<host>
type gatewayInfo = {
@as("Ec2InstanceRegion") ec2InstanceRegion: option<ec2InstanceRegion>,
  @as("Ec2InstanceId") ec2InstanceId: option<ec2InstanceId>,
  @as("GatewayName") gatewayName: option<string_>,
  @as("GatewayOperationalState") gatewayOperationalState: option<gatewayOperationalState>,
  @as("GatewayType") gatewayType: option<gatewayType>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("GatewayId") gatewayId: option<gatewayId>
}
type folderList = array<folder>
type fileSystemAssociationSummary = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileSystemAssociationStatus") fileSystemAssociationStatus: option<fileSystemAssociationStatus>,
  @as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>,
  @as("FileSystemAssociationId") fileSystemAssociationId: option<fileSystemAssociationId>
}
type fileSystemAssociationARNList = array<fileSystemAssociationARN>
type fileShareInfo = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>,
  @as("FileShareType") fileShareType: option<fileShareType>
}
type fileShareClientList = array<ipv4AddressCIDR>
type fileShareARNList = array<fileShareARN>
type diskIds = array<diskId>
type diskAttributeList = array<diskAttribute>
type deviceiSCSIAttributes = {
@as("ChapEnabled") chapEnabled: option<boolean2>,
  @as("NetworkInterfacePort") networkInterfacePort: option<integer_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("TargetARN") targetARN: option<targetARN>
}
type daysOfWeek = array<dayOfWeek>
type chapInfo = {
@as("SecretToAuthenticateTarget") secretToAuthenticateTarget: option<chapSecret>,
  @as("InitiatorName") initiatorName: option<iqnName>,
  @as("SecretToAuthenticateInitiator") secretToAuthenticateInitiator: option<chapSecret>,
  @as("TargetARN") targetARN: option<targetARN>
}
type cacheAttributes = {
@as("CacheStaleTimeoutInSeconds") cacheStaleTimeoutInSeconds: option<cacheStaleTimeoutInSeconds>
}
type automaticTapeCreationRule = {
@as("Worm") worm: option<boolean2>,
  @as("MinimumNumTapes") minimumNumTapes: minimumNumTapes,
  @as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
  @as("PoolId") poolId: poolId,
  @as("TapeBarcodePrefix") tapeBarcodePrefix: tapeBarcodePrefix
}
type volumeRecoveryPointInfos = array<volumeRecoveryPointInfo>
type volumeInfos = array<volumeInfo>
type vtldevice = {
@as("DeviceiSCSIAttributes") deviceiSCSIAttributes: option<deviceiSCSIAttributes>,
  @as("VTLDeviceProductIdentifier") vtldeviceProductIdentifier: option<vtldeviceProductIdentifier>,
  @as("VTLDeviceVendor") vtldeviceVendor: option<vtldeviceVendor>,
  @as("VTLDeviceType") vtldeviceType: option<vtldeviceType>,
  @as("VTLDeviceARN") vtldeviceARN: option<vtldeviceARN>
}
type tapes = array<tape>
type tapeRecoveryPointInfos = array<tapeRecoveryPointInfo>
type tapeInfos = array<tapeInfo>
type tapeArchives = array<tapeArchive>
type tags = array<tag>
type storediSCSIVolume = {
@as("TargetName") targetName: option<targetName>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("VolumeUsedInBytes") volumeUsedInBytes: option<volumeUsedInBytes>,
  @as("CreatedDate") createdDate: option<createdDate>,
  @as("VolumeiSCSIAttributes") volumeiSCSIAttributes: option<volumeiSCSIAttributes>,
  @as("PreservedExistingData") preservedExistingData: option<boolean2>,
  @as("SourceSnapshotId") sourceSnapshotId: option<snapshotId>,
  @as("VolumeDiskId") volumeDiskId: option<diskId>,
  @as("VolumeProgress") volumeProgress: option<doubleObject>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
  @as("VolumeAttachmentStatus") volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @as("VolumeStatus") volumeStatus: option<volumeStatus>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeId") volumeId: option<volumeId>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
type storageGatewayError = {
errorDetails: option<errorDetails>,
  errorCode: option<errorCode>
}
type poolInfos = array<poolInfo>
type gateways = array<gatewayInfo>
type gatewayNetworkInterfaces = array<networkInterface>
type fileSystemAssociationSummaryList = array<fileSystemAssociationSummary>
type fileShareInfoList = array<fileShareInfo>
type disk = {
@as("DiskAttributeList") diskAttributeList: option<diskAttributeList>,
  @as("DiskAllocationResource") diskAllocationResource: option<string_>,
  @as("DiskAllocationType") diskAllocationType: option<diskAllocationType>,
  @as("DiskSizeInBytes") diskSizeInBytes: option<long>,
  @as("DiskStatus") diskStatus: option<string_>,
  @as("DiskNode") diskNode: option<string_>,
  @as("DiskPath") diskPath: option<string_>,
  @as("DiskId") diskId: option<diskId>
}
type chapCredentials = array<chapInfo>
type cachediSCSIVolume = {
@as("TargetName") targetName: option<targetName>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("VolumeUsedInBytes") volumeUsedInBytes: option<volumeUsedInBytes>,
  @as("CreatedDate") createdDate: option<createdDate>,
  @as("VolumeiSCSIAttributes") volumeiSCSIAttributes: option<volumeiSCSIAttributes>,
  @as("SourceSnapshotId") sourceSnapshotId: option<snapshotId>,
  @as("VolumeProgress") volumeProgress: option<doubleObject>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
  @as("VolumeAttachmentStatus") volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @as("VolumeStatus") volumeStatus: option<volumeStatus>,
  @as("VolumeType") volumeType: option<volumeType>,
  @as("VolumeId") volumeId: option<volumeId>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
type bandwidthRateLimitInterval = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
  @as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
  @as("DaysOfWeek") daysOfWeek: daysOfWeek,
  @as("EndMinuteOfHour") endMinuteOfHour: minuteOfHour,
  @as("EndHourOfDay") endHourOfDay: hourOfDay,
  @as("StartMinuteOfHour") startMinuteOfHour: minuteOfHour,
  @as("StartHourOfDay") startHourOfDay: hourOfDay
}
type automaticTapeCreationRules = array<automaticTapeCreationRule>
type vtldevices = array<vtldevice>
type storediSCSIVolumes = array<storediSCSIVolume>
type smbfileShareInfo = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("Tags") tags: option<tags>,
  @as("CaseSensitivity") caseSensitivity: option<caseSensitivity>,
  @as("Authentication") authentication: option<authentication>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("InvalidUserList") invalidUserList: option<userList>,
  @as("ValidUserList") validUserList: option<userList>,
  @as("AdminUserList") adminUserList: option<userList>,
  @as("AccessBasedEnumeration") accessBasedEnumeration: option<boolean_>,
  @as("SMBACLEnabled") smbaclenabled: option<boolean_>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: option<locationARN>,
  @as("Role") role: option<role>,
  @as("Path") path: option<path>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean2>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>
}
type nfsfileShareInfo = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("Tags") tags: option<tags>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("Squash") squash: option<squash>,
  @as("ClientList") clientList: option<fileShareClientList>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: option<locationARN>,
  @as("Role") role: option<role>,
  @as("Path") path: option<path>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean2>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>,
  @as("NFSFileShareDefaults") nfsfileShareDefaults: option<nfsfileShareDefaults>
}
type fileSystemAssociationInfo = {
@as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("Tags") tags: option<tags>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("FileSystemAssociationStatus") fileSystemAssociationStatus: option<fileSystemAssociationStatus>,
  @as("LocationARN") locationARN: option<fileSystemLocationARN>,
  @as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
type disks = array<disk>
type cachediSCSIVolumes = array<cachediSCSIVolume>
type bandwidthRateLimitIntervals = array<bandwidthRateLimitInterval>
type automaticTapeCreationPolicyInfo = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("AutomaticTapeCreationRules") automaticTapeCreationRules: option<automaticTapeCreationRules>
}
type smbfileShareInfoList = array<smbfileShareInfo>
type nfsfileShareInfoList = array<nfsfileShareInfo>
type fileSystemAssociationInfoList = array<fileSystemAssociationInfo>
type automaticTapeCreationPolicyInfos = array<automaticTapeCreationPolicyInfo>

module UpdateVTLDeviceType = {
  type t;
  type request = {
@as("DeviceType") deviceType: deviceType,
  @as("VTLDeviceARN") vtldeviceARN: vtldeviceARN
}
  type response = {
@as("VTLDeviceARN") vtldeviceARN: option<vtldeviceARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateVTLDeviceTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSnapshotSchedule = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Description") description: option<description>,
  @as("RecurrenceInHours") recurrenceInHours: recurrenceInHours,
  @as("StartAt") startAt: hourOfDay,
  @as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSnapshotScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBSecurityStrategy = {
  type t;
  type request = {
@as("SMBSecurityStrategy") smbsecurityStrategy: smbsecurityStrategy,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBSecurityStrategyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBFileShareVisibility = {
  type t;
  type request = {
@as("FileSharesVisible") fileSharesVisible: boolean_,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBFileShareVisibilityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("CaseSensitivity") caseSensitivity: option<caseSensitivity>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("InvalidUserList") invalidUserList: option<userList>,
  @as("ValidUserList") validUserList: option<userList>,
  @as("AdminUserList") adminUserList: option<userList>,
  @as("AccessBasedEnumeration") accessBasedEnumeration: option<boolean_>,
  @as("SMBACLEnabled") smbaclenabled: option<boolean_>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("FileShareARN") fileShareARN: fileShareARN
}
  type response = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBFileShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNFSFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("Squash") squash: option<squash>,
  @as("ClientList") clientList: option<fileShareClientList>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("NFSFileShareDefaults") nfsfileShareDefaults: option<nfsfileShareDefaults>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("FileShareARN") fileShareARN: fileShareARN
}
  type response = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateNFSFileShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateMaintenanceStartTime = {
  type t;
  type request = {
@as("DayOfMonth") dayOfMonth: option<dayOfMonth>,
  @as("DayOfWeek") dayOfWeek: option<dayOfWeek>,
  @as("MinuteOfHour") minuteOfHour: minuteOfHour,
  @as("HourOfDay") hourOfDay: hourOfDay,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateMaintenanceStartTimeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewaySoftwareNow = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateGatewaySoftwareNowCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayInformation = {
  type t;
  type request = {
@as("CloudWatchLogGroupARN") cloudWatchLogGroupARN: option<cloudWatchLogGroupARN>,
  @as("GatewayTimezone") gatewayTimezone: option<gatewayTimezone>,
  @as("GatewayName") gatewayName: option<gatewayName>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayName") gatewayName: option<string_>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateGatewayInformationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFileSystemAssociation = {
  type t;
  type request = {
@as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("Password") password: option<domainUserPassword>,
  @as("UserName") userName: option<domainUserName>,
  @as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateFileSystemAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateChapCredentials = {
  type t;
  type request = {
@as("SecretToAuthenticateTarget") secretToAuthenticateTarget: option<chapSecret>,
  @as("InitiatorName") initiatorName: iqnName,
  @as("SecretToAuthenticateInitiator") secretToAuthenticateInitiator: chapSecret,
  @as("TargetARN") targetARN: targetARN
}
  type response = {
@as("InitiatorName") initiatorName: option<iqnName>,
  @as("TargetARN") targetARN: option<targetARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateChapCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBandwidthRateLimit = {
  type t;
  type request = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
  @as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateBandwidthRateLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAutomaticTapeCreationPolicy = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN,
  @as("AutomaticTapeCreationRules") automaticTapeCreationRules: automaticTapeCreationRules
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateAutomaticTapeCreationPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "StartGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartAvailabilityMonitorTest = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "StartAvailabilityMonitorTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ShutdownGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ShutdownGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetSMBGuestPassword = {
  type t;
  type request = {
@as("Password") password: smbguestPassword,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "SetSMBGuestPasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetLocalConsolePassword = {
  type t;
  type request = {
@as("LocalConsolePassword") localConsolePassword: localConsolePassword,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "SetLocalConsolePasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetrieveTapeRecoveryPoint = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN,
  @as("TapeARN") tapeARN: tapeARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RetrieveTapeRecoveryPointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RetrieveTapeArchive = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN,
  @as("TapeARN") tapeARN: tapeARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RetrieveTapeArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResetCache = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ResetCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
  @as("ResourceARN") resourceARN: resourceARN
}
  type response = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RefreshCache = {
  type t;
  type request = {
@as("Recursive") recursive: option<boolean_>,
  @as("FolderList") folderList: option<folderList>,
  @as("FileShareARN") fileShareARN: fileShareARN
}
  type response = {
@as("NotificationId") notificationId: option<notificationId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RefreshCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module NotifyWhenUploaded = {
  type t;
  type request = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  type response = {
@as("NotificationId") notificationId: option<notificationId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "NotifyWhenUploadedCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVolumes = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("VolumeInfos") volumeInfos: option<volumeInfos>,
  @as("Marker") marker: option<marker>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVolumeRecoveryPoints = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("VolumeRecoveryPointInfos") volumeRecoveryPointInfos: option<volumeRecoveryPointInfos>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumeRecoveryPointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVolumeInitiators = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("Initiators") initiators: option<initiators>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumeInitiatorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTapes = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("TapeARNs") tapeARNs: option<tapeARNs>
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("TapeInfos") tapeInfos: option<tapeInfos>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTapesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTapePools = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("PoolARNs") poolARNs: option<poolARNs>
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("PoolInfos") poolInfos: option<poolInfos>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTapePoolsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("ResourceARN") resourceARN: resourceARN
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("Marker") marker: option<marker>,
  @as("ResourceARN") resourceARN: option<resourceARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGateways = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("Gateways") gateways: option<gateways>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListGatewaysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFileSystemAssociations = {
  type t;
  type request = {
@as("Marker") marker: option<marker>,
  @as("Limit") limit: option<positiveIntObject>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("FileSystemAssociationSummaryList") fileSystemAssociationSummaryList: option<fileSystemAssociationSummaryList>,
  @as("NextMarker") nextMarker: option<marker>,
  @as("Marker") marker: option<marker>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListFileSystemAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFileShares = {
  type t;
  type request = {
@as("Marker") marker: option<marker>,
  @as("Limit") limit: option<positiveIntObject>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("FileShareInfoList") fileShareInfoList: option<fileShareInfoList>,
  @as("NextMarker") nextMarker: option<marker>,
  @as("Marker") marker: option<marker>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListFileSharesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module JoinDomain = {
  type t;
  type request = {
@as("Password") password: domainUserPassword,
  @as("UserName") userName: domainUserName,
  @as("TimeoutInSeconds") timeoutInSeconds: option<timeoutInSeconds>,
  @as("DomainControllers") domainControllers: option<hosts>,
  @as("OrganizationalUnit") organizationalUnit: option<organizationalUnit>,
  @as("DomainName") domainName: domainName,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("ActiveDirectoryStatus") activeDirectoryStatus: option<activeDirectoryStatus>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "JoinDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFileSystem = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: option<boolean2>,
  @as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DisassociateFileSystemCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DisableGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachVolume = {
  type t;
  type request = {
@as("ForceDetach") forceDetach: option<boolean_>,
  @as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DetachVolumeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkingStorage = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("WorkingStorageAllocatedInBytes") workingStorageAllocatedInBytes: option<long>,
  @as("WorkingStorageUsedInBytes") workingStorageUsedInBytes: option<long>,
  @as("DiskIds") diskIds: option<diskIds>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeWorkingStorageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUploadBuffer = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("UploadBufferAllocatedInBytes") uploadBufferAllocatedInBytes: option<long>,
  @as("UploadBufferUsedInBytes") uploadBufferUsedInBytes: option<long>,
  @as("DiskIds") diskIds: option<diskIds>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeUploadBufferCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTapes = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("TapeARNs") tapeARNs: option<tapeARNs>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("Tapes") tapes: option<tapes>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTapeRecoveryPoints = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("TapeRecoveryPointInfos") tapeRecoveryPointInfos: option<tapeRecoveryPointInfos>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapeRecoveryPointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTapeArchives = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("TapeARNs") tapeARNs: option<tapeARNs>
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("TapeArchives") tapeArchives: option<tapeArchives>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapeArchivesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshotSchedule = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("Timezone") timezone: option<gatewayTimezone>,
  @as("Description") description: option<description>,
  @as("RecurrenceInHours") recurrenceInHours: option<recurrenceInHours>,
  @as("StartAt") startAt: option<hourOfDay>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSnapshotScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSMBSettings = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("FileSharesVisible") fileSharesVisible: option<boolean_>,
  @as("SMBSecurityStrategy") smbsecurityStrategy: option<smbsecurityStrategy>,
  @as("SMBGuestPasswordSet") smbguestPasswordSet: option<boolean_>,
  @as("ActiveDirectoryStatus") activeDirectoryStatus: option<activeDirectoryStatus>,
  @as("DomainName") domainName: option<domainName>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSMBSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeMaintenanceStartTime = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("Timezone") timezone: option<gatewayTimezone>,
  @as("DayOfMonth") dayOfMonth: option<dayOfMonth>,
  @as("DayOfWeek") dayOfWeek: option<dayOfWeek>,
  @as("MinuteOfHour") minuteOfHour: option<minuteOfHour>,
  @as("HourOfDay") hourOfDay: option<hourOfDay>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeMaintenanceStartTimeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGatewayInformation = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("DeprecationDate") deprecationDate: option<deprecationDate>,
  @as("SoftwareUpdatesEndDate") softwareUpdatesEndDate: option<softwareUpdatesEndDate>,
  @as("EndpointType") endpointType: option<endpointType>,
  @as("HostEnvironment") hostEnvironment: option<hostEnvironment>,
  @as("CloudWatchLogGroupARN") cloudWatchLogGroupARN: option<cloudWatchLogGroupARN>,
  @as("VPCEndpoint") vpcendpoint: option<string_>,
  @as("Tags") tags: option<tags>,
  @as("Ec2InstanceRegion") ec2InstanceRegion: option<ec2InstanceRegion>,
  @as("Ec2InstanceId") ec2InstanceId: option<ec2InstanceId>,
  @as("LastSoftwareUpdate") lastSoftwareUpdate: option<lastSoftwareUpdate>,
  @as("NextUpdateAvailabilityDate") nextUpdateAvailabilityDate: option<nextUpdateAvailabilityDate>,
  @as("GatewayType") gatewayType: option<gatewayType>,
  @as("GatewayNetworkInterfaces") gatewayNetworkInterfaces: option<gatewayNetworkInterfaces>,
  @as("GatewayState") gatewayState: option<gatewayState>,
  @as("GatewayTimezone") gatewayTimezone: option<gatewayTimezone>,
  @as("GatewayName") gatewayName: option<string_>,
  @as("GatewayId") gatewayId: option<gatewayId>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeGatewayInformationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChapCredentials = {
  type t;
  type request = {
@as("TargetARN") targetARN: targetARN
}
  type response = {
@as("ChapCredentials") chapCredentials: option<chapCredentials>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeChapCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCache = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("CacheMissPercentage") cacheMissPercentage: option<double>,
  @as("CacheHitPercentage") cacheHitPercentage: option<double>,
  @as("CacheDirtyPercentage") cacheDirtyPercentage: option<double>,
  @as("CacheUsedPercentage") cacheUsedPercentage: option<double>,
  @as("CacheAllocatedInBytes") cacheAllocatedInBytes: option<long>,
  @as("DiskIds") diskIds: option<diskIds>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBandwidthRateLimit = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
  @as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeBandwidthRateLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAvailabilityMonitorTest = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("StartTime") startTime: option<time>,
  @as("Status") status: option<availabilityMonitorTestStatus>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeAvailabilityMonitorTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVolume = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteVolumeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTapePool = {
  type t;
  type request = {
@as("PoolARN") poolARN: poolARN
}
  type response = {
@as("PoolARN") poolARN: option<poolARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTapeArchive = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: option<boolean2>,
  @as("TapeARN") tapeARN: tapeARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapeArchiveCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTape = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: option<boolean2>,
  @as("TapeARN") tapeARN: tapeARN,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSnapshotSchedule = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteSnapshotScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFileShare = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: option<boolean2>,
  @as("FileShareARN") fileShareARN: fileShareARN
}
  type response = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteFileShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteChapCredentials = {
  type t;
  type request = {
@as("InitiatorName") initiatorName: iqnName,
  @as("TargetARN") targetARN: targetARN
}
  type response = {
@as("InitiatorName") initiatorName: option<iqnName>,
  @as("TargetARN") targetARN: option<targetARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteChapCredentialsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBandwidthRateLimit = {
  type t;
  type request = {
@as("BandwidthType") bandwidthType: bandwidthType,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteBandwidthRateLimitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAutomaticTapeCreationPolicy = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteAutomaticTapeCreationPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTapes = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Worm") worm: option<boolean2>,
  @as("PoolId") poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("TapeBarcodePrefix") tapeBarcodePrefix: tapeBarcodePrefix,
  @as("NumTapesToCreate") numTapesToCreate: numTapesToCreate,
  @as("ClientToken") clientToken: clientToken,
  @as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TapeARNs") tapeARNs: option<tapeARNs>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTapeWithBarcode = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("Worm") worm: option<boolean2>,
  @as("PoolId") poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("TapeBarcode") tapeBarcode: tapeBarcode,
  @as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapeWithBarcodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTapePool = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("RetentionLockTimeInDays") retentionLockTimeInDays: option<retentionLockTimeInDays>,
  @as("RetentionLockType") retentionLockType: option<retentionLockType>,
  @as("StorageClass") storageClass: tapeStorageClass,
  @as("PoolName") poolName: poolName
}
  type response = {
@as("PoolARN") poolARN: option<poolARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateStorediSCSIVolume = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  @as("TargetName") targetName: targetName,
  @as("PreserveExistingData") preserveExistingData: boolean2,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("DiskId") diskId: diskId,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TargetARN") targetARN: option<targetARN>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateStorediSCSIVolumeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshotFromVolumeRecoveryPoint = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("SnapshotDescription") snapshotDescription: snapshotDescription,
  @as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("VolumeRecoveryPointTime") volumeRecoveryPointTime: option<string_>,
  @as("VolumeARN") volumeARN: option<volumeARN>,
  @as("SnapshotId") snapshotId: option<snapshotId>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSnapshotFromVolumeRecoveryPointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("SnapshotDescription") snapshotDescription: snapshotDescription,
  @as("VolumeARN") volumeARN: volumeARN
}
  type response = {
@as("SnapshotId") snapshotId: option<snapshotId>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSMBFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("Tags") tags: option<tags>,
  @as("CaseSensitivity") caseSensitivity: option<caseSensitivity>,
  @as("Authentication") authentication: option<authentication>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("InvalidUserList") invalidUserList: option<userList>,
  @as("ValidUserList") validUserList: option<userList>,
  @as("AdminUserList") adminUserList: option<userList>,
  @as("AccessBasedEnumeration") accessBasedEnumeration: option<boolean_>,
  @as("SMBACLEnabled") smbaclenabled: option<boolean_>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: locationARN,
  @as("Role") role: role,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("GatewayARN") gatewayARN: gatewayARN,
  @as("ClientToken") clientToken: clientToken
}
  type response = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSMBFileShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNFSFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: option<notificationPolicy>,
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("FileShareName") fileShareName: option<fileShareName>,
  @as("Tags") tags: option<tags>,
  @as("RequesterPays") requesterPays: option<boolean_>,
  @as("GuessMIMETypeEnabled") guessMIMETypeEnabled: option<boolean_>,
  @as("ReadOnly") readOnly: option<boolean_>,
  @as("Squash") squash: option<squash>,
  @as("ClientList") clientList: option<fileShareClientList>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @as("DefaultStorageClass") defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: locationARN,
  @as("Role") role: role,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("GatewayARN") gatewayARN: gatewayARN,
  @as("NFSFileShareDefaults") nfsfileShareDefaults: option<nfsfileShareDefaults>,
  @as("ClientToken") clientToken: clientToken
}
  type response = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateNFSFileShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCachediSCSIVolume = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("KMSKey") kmskey: option<kmskey>,
  @as("KMSEncrypted") kmsencrypted: option<boolean_>,
  @as("ClientToken") clientToken: clientToken,
  @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  @as("SourceVolumeARN") sourceVolumeARN: option<volumeARN>,
  @as("TargetName") targetName: targetName,
  @as("SnapshotId") snapshotId: option<snapshotId>,
  @as("VolumeSizeInBytes") volumeSizeInBytes: long,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TargetARN") targetARN: option<targetARN>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateCachediSCSIVolumeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelRetrieval = {
  type t;
  type request = {
@as("TapeARN") tapeARN: tapeARN,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CancelRetrievalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelArchival = {
  type t;
  type request = {
@as("TapeARN") tapeARN: tapeARN,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CancelArchivalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachVolume = {
  type t;
  type request = {
@as("DiskId") diskId: option<diskId>,
  @as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
  @as("VolumeARN") volumeARN: volumeARN,
  @as("TargetName") targetName: option<targetName>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("TargetARN") targetARN: option<targetARN>,
  @as("VolumeARN") volumeARN: option<volumeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AttachVolumeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateFileSystem = {
  type t;
  type request = {
@as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @as("AuditDestinationARN") auditDestinationARN: option<auditDestinationARN>,
  @as("Tags") tags: option<tags>,
  @as("LocationARN") locationARN: fileSystemLocationARN,
  @as("GatewayARN") gatewayARN: gatewayARN,
  @as("ClientToken") clientToken: clientToken,
  @as("Password") password: domainUserPassword,
  @as("UserName") userName: domainUserName
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AssociateFileSystemCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssignTapePool = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: option<boolean2>,
  @as("PoolId") poolId: poolId,
  @as("TapeARN") tapeARN: tapeARN
}
  type response = {
@as("TapeARN") tapeARN: option<tapeARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AssignTapePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddWorkingStorage = {
  type t;
  type request = {
@as("DiskIds") diskIds: diskIds,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddWorkingStorageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddUploadBuffer = {
  type t;
  type request = {
@as("DiskIds") diskIds: diskIds,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddUploadBufferCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
  @as("ResourceARN") resourceARN: resourceARN
}
  type response = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddCache = {
  type t;
  type request = {
@as("DiskIds") diskIds: diskIds,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivateGateway = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
  @as("MediumChangerType") mediumChangerType: option<mediumChangerType>,
  @as("TapeDriveType") tapeDriveType: option<tapeDriveType>,
  @as("GatewayType") gatewayType: option<gatewayType>,
  @as("GatewayRegion") gatewayRegion: regionId,
  @as("GatewayTimezone") gatewayTimezone: gatewayTimezone,
  @as("GatewayName") gatewayName: gatewayName,
  @as("ActivationKey") activationKey: activationKey
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ActivateGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBandwidthRateLimitSchedule = {
  type t;
  type request = {
@as("BandwidthRateLimitIntervals") bandwidthRateLimitIntervals: bandwidthRateLimitIntervals,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateBandwidthRateLimitScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLocalDisks = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("Disks") disks: option<disks>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListLocalDisksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVTLDevices = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntObject>,
  @as("Marker") marker: option<marker>,
  @as("VTLDeviceARNs") vtldeviceARNs: option<vtldeviceARNs>,
  @as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("Marker") marker: option<marker>,
  @as("VTLDevices") vtldevices: option<vtldevices>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeVTLDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStorediSCSIVolumes = {
  type t;
  type request = {
@as("VolumeARNs") volumeARNs: volumeARNs
}
  type response = {
@as("StorediSCSIVolumes") storediSCSIVolumes: option<storediSCSIVolumes>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeStorediSCSIVolumesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCachediSCSIVolumes = {
  type t;
  type request = {
@as("VolumeARNs") volumeARNs: volumeARNs
}
  type response = {
@as("CachediSCSIVolumes") cachediSCSIVolumes: option<cachediSCSIVolumes>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeCachediSCSIVolumesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBandwidthRateLimitSchedule = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("BandwidthRateLimitIntervals") bandwidthRateLimitIntervals: option<bandwidthRateLimitIntervals>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeBandwidthRateLimitScheduleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAutomaticTapeCreationPolicies = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("AutomaticTapeCreationPolicyInfos") automaticTapeCreationPolicyInfos: option<automaticTapeCreationPolicyInfos>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListAutomaticTapeCreationPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSMBFileShares = {
  type t;
  type request = {
@as("FileShareARNList") fileShareARNList: fileShareARNList
}
  type response = {
@as("SMBFileShareInfoList") smbfileShareInfoList: option<smbfileShareInfoList>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSMBFileSharesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNFSFileShares = {
  type t;
  type request = {
@as("FileShareARNList") fileShareARNList: fileShareARNList
}
  type response = {
@as("NFSFileShareInfoList") nfsfileShareInfoList: option<nfsfileShareInfoList>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeNFSFileSharesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFileSystemAssociations = {
  type t;
  type request = {
@as("FileSystemAssociationARNList") fileSystemAssociationARNList: fileSystemAssociationARNList
}
  type response = {
@as("FileSystemAssociationInfoList") fileSystemAssociationInfoList: option<fileSystemAssociationInfoList>
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeFileSystemAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
