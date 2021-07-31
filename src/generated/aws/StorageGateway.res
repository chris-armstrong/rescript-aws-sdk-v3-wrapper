type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsString = string
type long = float;
type integer = int;
type double = float;
type volumeUsedInBytes = float;
type volumeType = string
type volumeStatus = string
type volumeId = string
type volumeAttachmentStatus = string
type volumeARN = string
type vTLDeviceVendor = string
type vTLDeviceType = string
type vTLDeviceProductIdentifier = string
type vTLDeviceARN = string
type userListUser = string
type timeoutInSeconds = int;
type time = Js.Date.t;
type targetName = string
type targetARN = string
type tapeUsage = float;
type tapeStorageClass = [@as("GLACIER") #GLACIER | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE]
type tapeStatus = string
type tapeSize = float;
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
type sMBSecurityStrategy = [@as("MandatoryEncryption") #MandatoryEncryption | @as("MandatorySigning") #MandatorySigning | @as("ClientSpecified") #ClientSpecified]
type sMBGuestPassword = string
type role = string
type retentionLockType = [@as("NONE") #NONE | @as("GOVERNANCE") #GOVERNANCE | @as("COMPLIANCE") #COMPLIANCE]
type retentionLockTimeInDays = int;
type resourceARN = string
type regionId = string
type recurrenceInHours = int;
type positiveIntObject = int;
type poolStatus = [@as("DELETED") #DELETED | @as("ACTIVE") #ACTIVE]
type poolName = string
type poolId = string
type poolARN = string
type permissionMode = string
type permissionId = float;
type path = string
type organizationalUnit = string
type objectACL = [@as("aws-exec-read") #aws_exec_read | @as("bucket-owner-full-control") #bucket_owner_full_control | @as("bucket-owner-read") #bucket_owner_read | @as("authenticated-read") #authenticated_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type numTapesToCreate = int;
type notificationPolicy = string
type notificationId = string
type nextUpdateAvailabilityDate = string
type networkInterfaceId = string
type minuteOfHour = int;
type minimumNumTapes = int;
type mediumChangerType = string
type marker = string
type locationARN = string
type localConsolePassword = string
type lastSoftwareUpdate = string
type kMSKey = string
type iqnName = string
type initiator = string
type iPV4AddressCIDR = string
type hourOfDay = int;
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
type errorCode = [@as("VolumeNotReady") #VolumeNotReady | @as("VolumeNotFound") #VolumeNotFound | @as("VolumeInUse") #VolumeInUse | @as("VolumeIdInvalid") #VolumeIdInvalid | @as("VolumeAlreadyExists") #VolumeAlreadyExists | @as("UnauthorizedOperation") #UnauthorizedOperation | @as("TargetNotFound") #TargetNotFound | @as("TargetInvalid") #TargetInvalid | @as("TargetAlreadyExists") #TargetAlreadyExists | @as("TapeCartridgeNotFound") #TapeCartridgeNotFound | @as("StorageFailure") #StorageFailure | @as("StagingAreaFull") #StagingAreaFull | @as("SnapshotScheduleNotFound") #SnapshotScheduleNotFound | @as("SnapshotNotFound") #SnapshotNotFound | @as("SnapshotInProgress") #SnapshotInProgress | @as("SnapshotIdInvalid") #SnapshotIdInvalid | @as("SnapshotDeleted") #SnapshotDeleted | @as("ServiceUnavailable") #ServiceUnavailable | @as("RequestTimeout") #RequestTimeout | @as("RegionInvalid") #RegionInvalid | @as("ParametersNotImplemented") #ParametersNotImplemented | @as("OutdatedGateway") #OutdatedGateway | @as("OperationAborted") #OperationAborted | @as("NotSupported") #NotSupported | @as("NotImplemented") #NotImplemented | @as("NoDisksAvailable") #NoDisksAvailable | @as("NetworkConfigurationChanged") #NetworkConfigurationChanged | @as("MaximumVolumeCountExceeded") #MaximumVolumeCountExceeded | @as("MaximumTapeCartridgeCountExceeded") #MaximumTapeCartridgeCountExceeded | @as("MaximumContentLengthExceeded") #MaximumContentLengthExceeded | @as("JoinDomainInProgress") #JoinDomainInProgress | @as("LunInvalid") #LunInvalid | @as("LunAlreadyAllocated ") #LunAlreadyAllocated  | @as("LocalStorageLimitExceeded") #LocalStorageLimitExceeded | @as("InvalidSchedule") #InvalidSchedule | @as("InvalidParameters") #InvalidParameters | @as("InvalidEndpoint") #InvalidEndpoint | @as("InvalidGateway") #InvalidGateway | @as("InternalError") #InternalError | @as("InitiatorNotFound") #InitiatorNotFound | @as("InitiatorInvalid") #InitiatorInvalid | @as("IAMNotSupported") #IAMNotSupported | @as("EndpointNotFound") #EndpointNotFound | @as("DuplicateSchedule") #DuplicateSchedule | @as("DuplicateCertificateInfo") #DuplicateCertificateInfo | @as("DiskSizeNotGigAligned") #DiskSizeNotGigAligned | @as("DiskSizeLessThanVolumeSize") #DiskSizeLessThanVolumeSize | @as("DiskSizeGreaterThanVolumeMaxSize") #DiskSizeGreaterThanVolumeMaxSize | @as("DiskDoesNotExist") #DiskDoesNotExist | @as("DiskAlreadyAllocated") #DiskAlreadyAllocated | @as("ChapCredentialNotFound") #ChapCredentialNotFound | @as("CannotExportSnapshot") #CannotExportSnapshot | @as("Blocked") #Blocked | @as("BandwidthThrottleScheduleNotFound") #BandwidthThrottleScheduleNotFound | @as("AuthenticationFailure") #AuthenticationFailure | @as("GatewayProxyNetworkConnectionBusy") #GatewayProxyNetworkConnectionBusy | @as("GatewayNotFound") #GatewayNotFound | @as("GatewayNotConnected") #GatewayNotConnected | @as("GatewayInternalError") #GatewayInternalError | @as("ActivationKeyNotFound") #ActivationKeyNotFound | @as("ActivationKeyInvalid") #ActivationKeyInvalid | @as("ActivationKeyExpired") #ActivationKeyExpired]
type endpointType = string
type ec2InstanceRegion = string
type ec2InstanceId = string
type doubleObject = float;
type domainUserPassword = string
type domainUserName = string
type domainName = string
type diskId = string
type diskAttribute = string
type diskAllocationType = string
type deviceType = string
type description = string
type deprecationDate = string
type dayOfWeek = int;
type dayOfMonth = int;
type createdDate = Js.Date.t;
type cloudWatchLogGroupARN = string
type clientToken = string
type chapSecret = string
type caseSensitivity = [@as("CaseSensitive") #CaseSensitive | @as("ClientSpecified") #ClientSpecified]
type cacheStaleTimeoutInSeconds = int;
type boolean2 = bool;
type amazonawsBoolean = bool;
type bandwidthUploadRateLimit = float;
type bandwidthType = string
type bandwidthDownloadRateLimit = float;
type availabilityMonitorTestStatus = [@as("PENDING") #PENDING | @as("FAILED") #FAILED | @as("COMPLETE") #COMPLETE]
type authentication = string
type auditDestinationARN = string
type activeDirectoryStatus = [@as("UNKNOWN_ERROR") #UNKNOWN_ERROR | @as("TIMEOUT") #TIMEOUT | @as("NETWORK_ERROR") #NETWORK_ERROR | @as("JOINING") #JOINING | @as("JOINED") #JOINED | @as("DETACHED") #DETACHED | @as("ACCESS_DENIED") #ACCESS_DENIED]
type activationKey = string
type errorDetails = Js.Dict.t< amazonawsString>
type volumeiSCSIAttributes = {
@as("ChapEnabled") chapEnabled: boolean2,
@as("LunNumber") lunNumber: positiveIntObject,
@as("NetworkInterfacePort") networkInterfacePort: integer,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("TargetARN") targetARN: targetARN
}
type volumeRecoveryPointInfo = {
@as("VolumeRecoveryPointTime") volumeRecoveryPointTime: amazonawsString,
@as("VolumeUsageInBytes") volumeUsageInBytes: long,
@as("VolumeSizeInBytes") volumeSizeInBytes: long,
@as("VolumeARN") volumeARN: volumeARN
}
type volumeInfo = {
@as("VolumeAttachmentStatus") volumeAttachmentStatus: volumeAttachmentStatus,
@as("VolumeSizeInBytes") volumeSizeInBytes: long,
@as("VolumeType") volumeType: volumeType,
@as("GatewayId") gatewayId: gatewayId,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("VolumeId") volumeId: volumeId,
@as("VolumeARN") volumeARN: volumeARN
}
type volumeARNs = array<volumeARN>
type vTLDeviceARNs = array<vTLDeviceARN>
type userList = array<userListUser>
type tapeRecoveryPointInfo = {
@as("TapeStatus") tapeStatus: tapeRecoveryPointStatus,
@as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
@as("TapeRecoveryPointTime") tapeRecoveryPointTime: time,
@as("TapeARN") tapeARN: tapeARN
}
type tapeInfo = {
@as("PoolEntryDate") poolEntryDate: time,
@as("RetentionStartDate") retentionStartDate: time,
@as("PoolId") poolId: poolId,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("TapeStatus") tapeStatus: tapeStatus,
@as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
@as("TapeBarcode") tapeBarcode: tapeBarcode,
@as("TapeARN") tapeARN: tapeARN
}
type tapeArchive = {
@as("PoolEntryDate") poolEntryDate: time,
@as("RetentionStartDate") retentionStartDate: time,
@as("Worm") worm: boolean2,
@as("PoolId") poolId: poolId,
@as("KMSKey") kMSKey: kMSKey,
@as("TapeUsedInBytes") tapeUsedInBytes: tapeUsage,
@as("TapeStatus") tapeStatus: tapeArchiveStatus,
@as("RetrievedTo") retrievedTo: gatewayARN,
@as("CompletionTime") completionTime: time,
@as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
@as("TapeCreatedDate") tapeCreatedDate: time,
@as("TapeBarcode") tapeBarcode: tapeBarcode,
@as("TapeARN") tapeARN: tapeARN
}
type tapeARNs = array<tapeARN>
type tape = {
@as("PoolEntryDate") poolEntryDate: time,
@as("RetentionStartDate") retentionStartDate: time,
@as("Worm") worm: boolean2,
@as("PoolId") poolId: poolId,
@as("KMSKey") kMSKey: kMSKey,
@as("TapeUsedInBytes") tapeUsedInBytes: tapeUsage,
@as("Progress") progress: doubleObject,
@as("VTLDevice") vTLDevice: vTLDeviceARN,
@as("TapeStatus") tapeStatus: tapeStatus,
@as("TapeSizeInBytes") tapeSizeInBytes: tapeSize,
@as("TapeCreatedDate") tapeCreatedDate: time,
@as("TapeBarcode") tapeBarcode: tapeBarcode,
@as("TapeARN") tapeARN: tapeARN
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type poolInfo = {
@as("PoolStatus") poolStatus: poolStatus,
@as("RetentionLockTimeInDays") retentionLockTimeInDays: retentionLockTimeInDays,
@as("RetentionLockType") retentionLockType: retentionLockType,
@as("StorageClass") storageClass: tapeStorageClass,
@as("PoolName") poolName: poolName,
@as("PoolARN") poolARN: poolARN
}
type poolARNs = array<poolARN>
type networkInterface = {
@as("Ipv6Address") ipv6Address: amazonawsString,
@as("MacAddress") macAddress: amazonawsString,
@as("Ipv4Address") ipv4Address: amazonawsString
}
type nFSFileShareDefaults = {
@as("OwnerId") ownerId: permissionId,
@as("GroupId") groupId: permissionId,
@as("DirectoryMode") directoryMode: permissionMode,
@as("FileMode") fileMode: permissionMode
}
type initiators = array<initiator>
type hosts = array<host>
type gatewayInfo = {
@as("Ec2InstanceRegion") ec2InstanceRegion: ec2InstanceRegion,
@as("Ec2InstanceId") ec2InstanceId: ec2InstanceId,
@as("GatewayName") gatewayName: amazonawsString,
@as("GatewayOperationalState") gatewayOperationalState: gatewayOperationalState,
@as("GatewayType") gatewayType: gatewayType,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("GatewayId") gatewayId: gatewayId
}
type folderList = array<folder>
type fileSystemAssociationSummary = {
@as("GatewayARN") gatewayARN: gatewayARN,
@as("FileSystemAssociationStatus") fileSystemAssociationStatus: fileSystemAssociationStatus,
@as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN,
@as("FileSystemAssociationId") fileSystemAssociationId: fileSystemAssociationId
}
type fileSystemAssociationARNList = array<fileSystemAssociationARN>
type fileShareInfo = {
@as("GatewayARN") gatewayARN: gatewayARN,
@as("FileShareStatus") fileShareStatus: fileShareStatus,
@as("FileShareId") fileShareId: fileShareId,
@as("FileShareARN") fileShareARN: fileShareARN,
@as("FileShareType") fileShareType: fileShareType
}
type fileShareClientList = array<iPV4AddressCIDR>
type fileShareARNList = array<fileShareARN>
type diskIds = array<diskId>
type diskAttributeList = array<diskAttribute>
type deviceiSCSIAttributes = {
@as("ChapEnabled") chapEnabled: boolean2,
@as("NetworkInterfacePort") networkInterfacePort: integer,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("TargetARN") targetARN: targetARN
}
type daysOfWeek = array<dayOfWeek>
type chapInfo = {
@as("SecretToAuthenticateTarget") secretToAuthenticateTarget: chapSecret,
@as("InitiatorName") initiatorName: iqnName,
@as("SecretToAuthenticateInitiator") secretToAuthenticateInitiator: chapSecret,
@as("TargetARN") targetARN: targetARN
}
type cacheAttributes = {
@as("CacheStaleTimeoutInSeconds") cacheStaleTimeoutInSeconds: cacheStaleTimeoutInSeconds
}
type automaticTapeCreationRule = {
@as("Worm") worm: boolean2,
@as("MinimumNumTapes") minimumNumTapes: option<minimumNumTapes>,
@as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
@as("PoolId") poolId: option<poolId>,
@as("TapeBarcodePrefix") tapeBarcodePrefix: option<tapeBarcodePrefix>
}
type volumeRecoveryPointInfos = array<volumeRecoveryPointInfo>
type volumeInfos = array<volumeInfo>
type vTLDevice = {
@as("DeviceiSCSIAttributes") deviceiSCSIAttributes: deviceiSCSIAttributes,
@as("VTLDeviceProductIdentifier") vTLDeviceProductIdentifier: vTLDeviceProductIdentifier,
@as("VTLDeviceVendor") vTLDeviceVendor: vTLDeviceVendor,
@as("VTLDeviceType") vTLDeviceType: vTLDeviceType,
@as("VTLDeviceARN") vTLDeviceARN: vTLDeviceARN
}
type tapes = array<tape>
type tapeRecoveryPointInfos = array<tapeRecoveryPointInfo>
type tapeInfos = array<tapeInfo>
type tapeArchives = array<tapeArchive>
type tags = array<tag>
type storediSCSIVolume = {
@as("TargetName") targetName: targetName,
@as("KMSKey") kMSKey: kMSKey,
@as("VolumeUsedInBytes") volumeUsedInBytes: volumeUsedInBytes,
@as("CreatedDate") createdDate: createdDate,
@as("VolumeiSCSIAttributes") volumeiSCSIAttributes: volumeiSCSIAttributes,
@as("PreservedExistingData") preservedExistingData: boolean2,
@as("SourceSnapshotId") sourceSnapshotId: snapshotId,
@as("VolumeDiskId") volumeDiskId: diskId,
@as("VolumeProgress") volumeProgress: doubleObject,
@as("VolumeSizeInBytes") volumeSizeInBytes: long,
@as("VolumeAttachmentStatus") volumeAttachmentStatus: volumeAttachmentStatus,
@as("VolumeStatus") volumeStatus: volumeStatus,
@as("VolumeType") volumeType: volumeType,
@as("VolumeId") volumeId: volumeId,
@as("VolumeARN") volumeARN: volumeARN
}
type storageGatewayError = {
@as("errorDetails") errorDetails: errorDetails,
@as("errorCode") errorCode: errorCode
}
type poolInfos = array<poolInfo>
type gateways = array<gatewayInfo>
type gatewayNetworkInterfaces = array<networkInterface>
type fileSystemAssociationSummaryList = array<fileSystemAssociationSummary>
type fileShareInfoList = array<fileShareInfo>
type disk = {
@as("DiskAttributeList") diskAttributeList: diskAttributeList,
@as("DiskAllocationResource") diskAllocationResource: amazonawsString,
@as("DiskAllocationType") diskAllocationType: diskAllocationType,
@as("DiskSizeInBytes") diskSizeInBytes: long,
@as("DiskStatus") diskStatus: amazonawsString,
@as("DiskNode") diskNode: amazonawsString,
@as("DiskPath") diskPath: amazonawsString,
@as("DiskId") diskId: diskId
}
type chapCredentials = array<chapInfo>
type cachediSCSIVolume = {
@as("TargetName") targetName: targetName,
@as("KMSKey") kMSKey: kMSKey,
@as("VolumeUsedInBytes") volumeUsedInBytes: volumeUsedInBytes,
@as("CreatedDate") createdDate: createdDate,
@as("VolumeiSCSIAttributes") volumeiSCSIAttributes: volumeiSCSIAttributes,
@as("SourceSnapshotId") sourceSnapshotId: snapshotId,
@as("VolumeProgress") volumeProgress: doubleObject,
@as("VolumeSizeInBytes") volumeSizeInBytes: long,
@as("VolumeAttachmentStatus") volumeAttachmentStatus: volumeAttachmentStatus,
@as("VolumeStatus") volumeStatus: volumeStatus,
@as("VolumeType") volumeType: volumeType,
@as("VolumeId") volumeId: volumeId,
@as("VolumeARN") volumeARN: volumeARN
}
type bandwidthRateLimitInterval = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: bandwidthDownloadRateLimit,
@as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: bandwidthUploadRateLimit,
@as("DaysOfWeek") daysOfWeek: option<daysOfWeek>,
@as("EndMinuteOfHour") endMinuteOfHour: option<minuteOfHour>,
@as("EndHourOfDay") endHourOfDay: option<hourOfDay>,
@as("StartMinuteOfHour") startMinuteOfHour: option<minuteOfHour>,
@as("StartHourOfDay") startHourOfDay: option<hourOfDay>
}
type automaticTapeCreationRules = array<automaticTapeCreationRule>
type vTLDevices = array<vTLDevice>
type storediSCSIVolumes = array<storediSCSIVolume>
type sMBFileShareInfo = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("Tags") tags: tags,
@as("CaseSensitivity") caseSensitivity: caseSensitivity,
@as("Authentication") authentication: authentication,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("InvalidUserList") invalidUserList: userList,
@as("ValidUserList") validUserList: userList,
@as("AdminUserList") adminUserList: userList,
@as("AccessBasedEnumeration") accessBasedEnumeration: amazonawsBoolean,
@as("SMBACLEnabled") sMBACLEnabled: amazonawsBoolean,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("LocationARN") locationARN: locationARN,
@as("Role") role: role,
@as("Path") path: path,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: boolean2,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("FileShareStatus") fileShareStatus: fileShareStatus,
@as("FileShareId") fileShareId: fileShareId,
@as("FileShareARN") fileShareARN: fileShareARN
}
type nFSFileShareInfo = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("Tags") tags: tags,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("Squash") squash: squash,
@as("ClientList") clientList: fileShareClientList,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("LocationARN") locationARN: locationARN,
@as("Role") role: role,
@as("Path") path: path,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: boolean2,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("FileShareStatus") fileShareStatus: fileShareStatus,
@as("FileShareId") fileShareId: fileShareId,
@as("FileShareARN") fileShareARN: fileShareARN,
@as("NFSFileShareDefaults") nFSFileShareDefaults: nFSFileShareDefaults
}
type fileSystemAssociationInfo = {
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("Tags") tags: tags,
@as("GatewayARN") gatewayARN: gatewayARN,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("FileSystemAssociationStatus") fileSystemAssociationStatus: fileSystemAssociationStatus,
@as("LocationARN") locationARN: fileSystemLocationARN,
@as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
type disks = array<disk>
type cachediSCSIVolumes = array<cachediSCSIVolume>
type bandwidthRateLimitIntervals = array<bandwidthRateLimitInterval>
type automaticTapeCreationPolicyInfo = {
@as("GatewayARN") gatewayARN: gatewayARN,
@as("AutomaticTapeCreationRules") automaticTapeCreationRules: automaticTapeCreationRules
}
type sMBFileShareInfoList = array<sMBFileShareInfo>
type nFSFileShareInfoList = array<nFSFileShareInfo>
type fileSystemAssociationInfoList = array<fileSystemAssociationInfo>
type automaticTapeCreationPolicyInfos = array<automaticTapeCreationPolicyInfo>
type clientType;
@module("@aws-sdk/client-storagegateway") @new external createClient: unit => clientType = "StorageGatewayClient";
module UpdateVTLDeviceType = {
  type t;
  type request = {
@as("DeviceType") deviceType: option<deviceType>,
@as("VTLDeviceARN") vTLDeviceARN: option<vTLDeviceARN>
}
  type response = {
@as("VTLDeviceARN") vTLDeviceARN: vTLDeviceARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateVTLDeviceTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSnapshotSchedule = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Description") description: description,
@as("RecurrenceInHours") recurrenceInHours: option<recurrenceInHours>,
@as("StartAt") startAt: option<hourOfDay>,
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBSecurityStrategy = {
  type t;
  type request = {
@as("SMBSecurityStrategy") sMBSecurityStrategy: option<sMBSecurityStrategy>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBSecurityStrategyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBFileShareVisibility = {
  type t;
  type request = {
@as("FileSharesVisible") fileSharesVisible: option<amazonawsBoolean>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBFileShareVisibilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSMBFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("CaseSensitivity") caseSensitivity: caseSensitivity,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("InvalidUserList") invalidUserList: userList,
@as("ValidUserList") validUserList: userList,
@as("AdminUserList") adminUserList: userList,
@as("AccessBasedEnumeration") accessBasedEnumeration: amazonawsBoolean,
@as("SMBACLEnabled") sMBACLEnabled: amazonawsBoolean,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  type response = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateSMBFileShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNFSFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("Squash") squash: squash,
@as("ClientList") clientList: fileShareClientList,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("NFSFileShareDefaults") nFSFileShareDefaults: nFSFileShareDefaults,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  type response = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateNFSFileShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMaintenanceStartTime = {
  type t;
  type request = {
@as("DayOfMonth") dayOfMonth: dayOfMonth,
@as("DayOfWeek") dayOfWeek: dayOfWeek,
@as("MinuteOfHour") minuteOfHour: option<minuteOfHour>,
@as("HourOfDay") hourOfDay: option<hourOfDay>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateMaintenanceStartTimeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewaySoftwareNow = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateGatewaySoftwareNowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayInformation = {
  type t;
  type request = {
@as("CloudWatchLogGroupARN") cloudWatchLogGroupARN: cloudWatchLogGroupARN,
@as("GatewayTimezone") gatewayTimezone: gatewayTimezone,
@as("GatewayName") gatewayName: gatewayName,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayName") gatewayName: amazonawsString,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateGatewayInformationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFileSystemAssociation = {
  type t;
  type request = {
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("Password") password: domainUserPassword,
@as("UserName") userName: domainUserName,
@as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateFileSystemAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChapCredentials = {
  type t;
  type request = {
@as("SecretToAuthenticateTarget") secretToAuthenticateTarget: chapSecret,
@as("InitiatorName") initiatorName: option<iqnName>,
@as("SecretToAuthenticateInitiator") secretToAuthenticateInitiator: option<chapSecret>,
@as("TargetARN") targetARN: option<targetARN>
}
  type response = {
@as("InitiatorName") initiatorName: iqnName,
@as("TargetARN") targetARN: targetARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateChapCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBandwidthRateLimit = {
  type t;
  type request = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: bandwidthDownloadRateLimit,
@as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: bandwidthUploadRateLimit,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateBandwidthRateLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAutomaticTapeCreationPolicy = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("AutomaticTapeCreationRules") automaticTapeCreationRules: option<automaticTapeCreationRules>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateAutomaticTapeCreationPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "StartGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartAvailabilityMonitorTest = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "StartAvailabilityMonitorTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ShutdownGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ShutdownGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetSMBGuestPassword = {
  type t;
  type request = {
@as("Password") password: option<sMBGuestPassword>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "SetSMBGuestPasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetLocalConsolePassword = {
  type t;
  type request = {
@as("LocalConsolePassword") localConsolePassword: option<localConsolePassword>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "SetLocalConsolePasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetrieveTapeRecoveryPoint = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("TapeARN") tapeARN: option<tapeARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RetrieveTapeRecoveryPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetrieveTapeArchive = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("TapeARN") tapeARN: option<tapeARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RetrieveTapeArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetCache = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ResetCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = {
@as("ResourceARN") resourceARN: resourceARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RefreshCache = {
  type t;
  type request = {
@as("Recursive") recursive: amazonawsBoolean,
@as("FolderList") folderList: folderList,
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  type response = {
@as("NotificationId") notificationId: notificationId,
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "RefreshCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module NotifyWhenUploaded = {
  type t;
  type request = {
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  type response = {
@as("NotificationId") notificationId: notificationId,
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "NotifyWhenUploadedCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVolumes = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("VolumeInfos") volumeInfos: volumeInfos,
@as("Marker") marker: marker,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVolumeRecoveryPoints = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("VolumeRecoveryPointInfos") volumeRecoveryPointInfos: volumeRecoveryPointInfos,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumeRecoveryPointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVolumeInitiators = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("Initiators") initiators: initiators
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListVolumeInitiatorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTapes = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("TapeARNs") tapeARNs: tapeARNs
}
  type response = {
@as("Marker") marker: marker,
@as("TapeInfos") tapeInfos: tapeInfos
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTapesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTapePools = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("PoolARNs") poolARNs: poolARNs
}
  type response = {
@as("Marker") marker: marker,
@as("PoolInfos") poolInfos: poolInfos
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTapePoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = {
@as("Tags") tags: tags,
@as("Marker") marker: marker,
@as("ResourceARN") resourceARN: resourceARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGateways = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker
}
  type response = {
@as("Marker") marker: marker,
@as("Gateways") gateways: gateways
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFileSystemAssociations = {
  type t;
  type request = {
@as("Marker") marker: marker,
@as("Limit") limit: positiveIntObject,
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("FileSystemAssociationSummaryList") fileSystemAssociationSummaryList: fileSystemAssociationSummaryList,
@as("NextMarker") nextMarker: marker,
@as("Marker") marker: marker
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListFileSystemAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFileShares = {
  type t;
  type request = {
@as("Marker") marker: marker,
@as("Limit") limit: positiveIntObject,
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("FileShareInfoList") fileShareInfoList: fileShareInfoList,
@as("NextMarker") nextMarker: marker,
@as("Marker") marker: marker
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListFileSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module JoinDomain = {
  type t;
  type request = {
@as("Password") password: option<domainUserPassword>,
@as("UserName") userName: option<domainUserName>,
@as("TimeoutInSeconds") timeoutInSeconds: timeoutInSeconds,
@as("DomainControllers") domainControllers: hosts,
@as("OrganizationalUnit") organizationalUnit: organizationalUnit,
@as("DomainName") domainName: option<domainName>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("ActiveDirectoryStatus") activeDirectoryStatus: activeDirectoryStatus,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "JoinDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFileSystem = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: boolean2,
@as("FileSystemAssociationARN") fileSystemAssociationARN: option<fileSystemAssociationARN>
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DisassociateFileSystemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DisableGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachVolume = {
  type t;
  type request = {
@as("ForceDetach") forceDetach: amazonawsBoolean,
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DetachVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWorkingStorage = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("WorkingStorageAllocatedInBytes") workingStorageAllocatedInBytes: long,
@as("WorkingStorageUsedInBytes") workingStorageUsedInBytes: long,
@as("DiskIds") diskIds: diskIds,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeWorkingStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUploadBuffer = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("UploadBufferAllocatedInBytes") uploadBufferAllocatedInBytes: long,
@as("UploadBufferUsedInBytes") uploadBufferUsedInBytes: long,
@as("DiskIds") diskIds: diskIds,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeUploadBufferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTapes = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("TapeARNs") tapeARNs: tapeARNs,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("Marker") marker: marker,
@as("Tapes") tapes: tapes
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTapeRecoveryPoints = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("Marker") marker: marker,
@as("TapeRecoveryPointInfos") tapeRecoveryPointInfos: tapeRecoveryPointInfos,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapeRecoveryPointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTapeArchives = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("TapeARNs") tapeARNs: tapeARNs
}
  type response = {
@as("Marker") marker: marker,
@as("TapeArchives") tapeArchives: tapeArchives
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeTapeArchivesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshotSchedule = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("Tags") tags: tags,
@as("Timezone") timezone: gatewayTimezone,
@as("Description") description: description,
@as("RecurrenceInHours") recurrenceInHours: recurrenceInHours,
@as("StartAt") startAt: hourOfDay,
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSMBSettings = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("FileSharesVisible") fileSharesVisible: amazonawsBoolean,
@as("SMBSecurityStrategy") sMBSecurityStrategy: sMBSecurityStrategy,
@as("SMBGuestPasswordSet") sMBGuestPasswordSet: amazonawsBoolean,
@as("ActiveDirectoryStatus") activeDirectoryStatus: activeDirectoryStatus,
@as("DomainName") domainName: domainName,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSMBSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMaintenanceStartTime = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("Timezone") timezone: gatewayTimezone,
@as("DayOfMonth") dayOfMonth: dayOfMonth,
@as("DayOfWeek") dayOfWeek: dayOfWeek,
@as("MinuteOfHour") minuteOfHour: minuteOfHour,
@as("HourOfDay") hourOfDay: hourOfDay,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeMaintenanceStartTimeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGatewayInformation = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("DeprecationDate") deprecationDate: deprecationDate,
@as("SoftwareUpdatesEndDate") softwareUpdatesEndDate: softwareUpdatesEndDate,
@as("EndpointType") endpointType: endpointType,
@as("HostEnvironment") hostEnvironment: hostEnvironment,
@as("CloudWatchLogGroupARN") cloudWatchLogGroupARN: cloudWatchLogGroupARN,
@as("VPCEndpoint") vPCEndpoint: amazonawsString,
@as("Tags") tags: tags,
@as("Ec2InstanceRegion") ec2InstanceRegion: ec2InstanceRegion,
@as("Ec2InstanceId") ec2InstanceId: ec2InstanceId,
@as("LastSoftwareUpdate") lastSoftwareUpdate: lastSoftwareUpdate,
@as("NextUpdateAvailabilityDate") nextUpdateAvailabilityDate: nextUpdateAvailabilityDate,
@as("GatewayType") gatewayType: gatewayType,
@as("GatewayNetworkInterfaces") gatewayNetworkInterfaces: gatewayNetworkInterfaces,
@as("GatewayState") gatewayState: gatewayState,
@as("GatewayTimezone") gatewayTimezone: gatewayTimezone,
@as("GatewayName") gatewayName: amazonawsString,
@as("GatewayId") gatewayId: gatewayId,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeGatewayInformationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChapCredentials = {
  type t;
  type request = {
@as("TargetARN") targetARN: option<targetARN>
}
  type response = {
@as("ChapCredentials") chapCredentials: chapCredentials
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeChapCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCache = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("CacheMissPercentage") cacheMissPercentage: double,
@as("CacheHitPercentage") cacheHitPercentage: double,
@as("CacheDirtyPercentage") cacheDirtyPercentage: double,
@as("CacheUsedPercentage") cacheUsedPercentage: double,
@as("CacheAllocatedInBytes") cacheAllocatedInBytes: long,
@as("DiskIds") diskIds: diskIds,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBandwidthRateLimit = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("AverageDownloadRateLimitInBitsPerSec") averageDownloadRateLimitInBitsPerSec: bandwidthDownloadRateLimit,
@as("AverageUploadRateLimitInBitsPerSec") averageUploadRateLimitInBitsPerSec: bandwidthUploadRateLimit,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeBandwidthRateLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAvailabilityMonitorTest = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("StartTime") startTime: time,
@as("Status") status: availabilityMonitorTestStatus,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeAvailabilityMonitorTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVolume = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTapePool = {
  type t;
  type request = {
@as("PoolARN") poolARN: option<poolARN>
}
  type response = {
@as("PoolARN") poolARN: poolARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTapeArchive = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: boolean2,
@as("TapeARN") tapeARN: option<tapeARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapeArchiveCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTape = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: boolean2,
@as("TapeARN") tapeARN: option<tapeARN>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteTapeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSnapshotSchedule = {
  type t;
  type request = {
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGateway = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFileShare = {
  type t;
  type request = {
@as("ForceDelete") forceDelete: boolean2,
@as("FileShareARN") fileShareARN: option<fileShareARN>
}
  type response = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteFileShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteChapCredentials = {
  type t;
  type request = {
@as("InitiatorName") initiatorName: option<iqnName>,
@as("TargetARN") targetARN: option<targetARN>
}
  type response = {
@as("InitiatorName") initiatorName: iqnName,
@as("TargetARN") targetARN: targetARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteChapCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBandwidthRateLimit = {
  type t;
  type request = {
@as("BandwidthType") bandwidthType: option<bandwidthType>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteBandwidthRateLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAutomaticTapeCreationPolicy = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DeleteAutomaticTapeCreationPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTapes = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Worm") worm: boolean2,
@as("PoolId") poolId: poolId,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("TapeBarcodePrefix") tapeBarcodePrefix: option<tapeBarcodePrefix>,
@as("NumTapesToCreate") numTapesToCreate: option<numTapesToCreate>,
@as("ClientToken") clientToken: option<clientToken>,
@as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TapeARNs") tapeARNs: tapeARNs
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTapeWithBarcode = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Worm") worm: boolean2,
@as("PoolId") poolId: poolId,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("TapeBarcode") tapeBarcode: option<tapeBarcode>,
@as("TapeSizeInBytes") tapeSizeInBytes: option<tapeSize>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapeWithBarcodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTapePool = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("RetentionLockTimeInDays") retentionLockTimeInDays: retentionLockTimeInDays,
@as("RetentionLockType") retentionLockType: retentionLockType,
@as("StorageClass") storageClass: option<tapeStorageClass>,
@as("PoolName") poolName: option<poolName>
}
  type response = {
@as("PoolARN") poolARN: poolARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateTapePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStorediSCSIVolume = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("TargetName") targetName: option<targetName>,
@as("PreserveExistingData") preserveExistingData: option<boolean2>,
@as("SnapshotId") snapshotId: snapshotId,
@as("DiskId") diskId: option<diskId>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TargetARN") targetARN: targetARN,
@as("VolumeSizeInBytes") volumeSizeInBytes: long,
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateStorediSCSIVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshotFromVolumeRecoveryPoint = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SnapshotDescription") snapshotDescription: option<snapshotDescription>,
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("VolumeRecoveryPointTime") volumeRecoveryPointTime: amazonawsString,
@as("VolumeARN") volumeARN: volumeARN,
@as("SnapshotId") snapshotId: snapshotId
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSnapshotFromVolumeRecoveryPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SnapshotDescription") snapshotDescription: option<snapshotDescription>,
@as("VolumeARN") volumeARN: option<volumeARN>
}
  type response = {
@as("SnapshotId") snapshotId: snapshotId,
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSMBFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("Tags") tags: tags,
@as("CaseSensitivity") caseSensitivity: caseSensitivity,
@as("Authentication") authentication: authentication,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("InvalidUserList") invalidUserList: userList,
@as("ValidUserList") validUserList: userList,
@as("AdminUserList") adminUserList: userList,
@as("AccessBasedEnumeration") accessBasedEnumeration: amazonawsBoolean,
@as("SMBACLEnabled") sMBACLEnabled: amazonawsBoolean,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("LocationARN") locationARN: option<locationARN>,
@as("Role") role: option<role>,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("ClientToken") clientToken: option<clientToken>
}
  type response = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateSMBFileShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNFSFileShare = {
  type t;
  type request = {
@as("NotificationPolicy") notificationPolicy: notificationPolicy,
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("FileShareName") fileShareName: fileShareName,
@as("Tags") tags: tags,
@as("RequesterPays") requesterPays: amazonawsBoolean,
@as("GuessMIMETypeEnabled") guessMIMETypeEnabled: amazonawsBoolean,
@as("ReadOnly") readOnly: amazonawsBoolean,
@as("Squash") squash: squash,
@as("ClientList") clientList: fileShareClientList,
@as("ObjectACL") objectACL: objectACL,
@as("DefaultStorageClass") defaultStorageClass: storageClass,
@as("LocationARN") locationARN: option<locationARN>,
@as("Role") role: option<role>,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("NFSFileShareDefaults") nFSFileShareDefaults: nFSFileShareDefaults,
@as("ClientToken") clientToken: option<clientToken>
}
  type response = {
@as("FileShareARN") fileShareARN: fileShareARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateNFSFileShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCachediSCSIVolume = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("KMSKey") kMSKey: kMSKey,
@as("KMSEncrypted") kMSEncrypted: amazonawsBoolean,
@as("ClientToken") clientToken: option<clientToken>,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("SourceVolumeARN") sourceVolumeARN: volumeARN,
@as("TargetName") targetName: option<targetName>,
@as("SnapshotId") snapshotId: snapshotId,
@as("VolumeSizeInBytes") volumeSizeInBytes: option<long>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TargetARN") targetARN: targetARN,
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CreateCachediSCSIVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelRetrieval = {
  type t;
  type request = {
@as("TapeARN") tapeARN: option<tapeARN>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CancelRetrievalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelArchival = {
  type t;
  type request = {
@as("TapeARN") tapeARN: option<tapeARN>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "CancelArchivalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachVolume = {
  type t;
  type request = {
@as("DiskId") diskId: diskId,
@as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
@as("VolumeARN") volumeARN: option<volumeARN>,
@as("TargetName") targetName: targetName,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("TargetARN") targetARN: targetARN,
@as("VolumeARN") volumeARN: volumeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AttachVolumeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateFileSystem = {
  type t;
  type request = {
@as("CacheAttributes") cacheAttributes: cacheAttributes,
@as("AuditDestinationARN") auditDestinationARN: auditDestinationARN,
@as("Tags") tags: tags,
@as("LocationARN") locationARN: option<fileSystemLocationARN>,
@as("GatewayARN") gatewayARN: option<gatewayARN>,
@as("ClientToken") clientToken: option<clientToken>,
@as("Password") password: option<domainUserPassword>,
@as("UserName") userName: option<domainUserName>
}
  type response = {
@as("FileSystemAssociationARN") fileSystemAssociationARN: fileSystemAssociationARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AssociateFileSystemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssignTapePool = {
  type t;
  type request = {
@as("BypassGovernanceRetention") bypassGovernanceRetention: boolean2,
@as("PoolId") poolId: option<poolId>,
@as("TapeARN") tapeARN: option<tapeARN>
}
  type response = {
@as("TapeARN") tapeARN: tapeARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AssignTapePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddWorkingStorage = {
  type t;
  type request = {
@as("DiskIds") diskIds: option<diskIds>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddWorkingStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddUploadBuffer = {
  type t;
  type request = {
@as("DiskIds") diskIds: option<diskIds>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddUploadBufferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = {
@as("ResourceARN") resourceARN: resourceARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddCache = {
  type t;
  type request = {
@as("DiskIds") diskIds: option<diskIds>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "AddCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateGateway = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("MediumChangerType") mediumChangerType: mediumChangerType,
@as("TapeDriveType") tapeDriveType: tapeDriveType,
@as("GatewayType") gatewayType: gatewayType,
@as("GatewayRegion") gatewayRegion: option<regionId>,
@as("GatewayTimezone") gatewayTimezone: option<gatewayTimezone>,
@as("GatewayName") gatewayName: option<gatewayName>,
@as("ActivationKey") activationKey: option<activationKey>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ActivateGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBandwidthRateLimitSchedule = {
  type t;
  type request = {
@as("BandwidthRateLimitIntervals") bandwidthRateLimitIntervals: option<bandwidthRateLimitIntervals>,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "UpdateBandwidthRateLimitScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLocalDisks = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("Disks") disks: disks,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListLocalDisksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVTLDevices = {
  type t;
  type request = {
@as("Limit") limit: positiveIntObject,
@as("Marker") marker: marker,
@as("VTLDeviceARNs") vTLDeviceARNs: vTLDeviceARNs,
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("Marker") marker: marker,
@as("VTLDevices") vTLDevices: vTLDevices,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeVTLDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStorediSCSIVolumes = {
  type t;
  type request = {
@as("VolumeARNs") volumeARNs: option<volumeARNs>
}
  type response = {
@as("StorediSCSIVolumes") storediSCSIVolumes: storediSCSIVolumes
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeStorediSCSIVolumesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCachediSCSIVolumes = {
  type t;
  type request = {
@as("VolumeARNs") volumeARNs: option<volumeARNs>
}
  type response = {
@as("CachediSCSIVolumes") cachediSCSIVolumes: cachediSCSIVolumes
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeCachediSCSIVolumesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBandwidthRateLimitSchedule = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: option<gatewayARN>
}
  type response = {
@as("BandwidthRateLimitIntervals") bandwidthRateLimitIntervals: bandwidthRateLimitIntervals,
@as("GatewayARN") gatewayARN: gatewayARN
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeBandwidthRateLimitScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAutomaticTapeCreationPolicies = {
  type t;
  type request = {
@as("GatewayARN") gatewayARN: gatewayARN
}
  type response = {
@as("AutomaticTapeCreationPolicyInfos") automaticTapeCreationPolicyInfos: automaticTapeCreationPolicyInfos
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "ListAutomaticTapeCreationPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSMBFileShares = {
  type t;
  type request = {
@as("FileShareARNList") fileShareARNList: option<fileShareARNList>
}
  type response = {
@as("SMBFileShareInfoList") sMBFileShareInfoList: sMBFileShareInfoList
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeSMBFileSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNFSFileShares = {
  type t;
  type request = {
@as("FileShareARNList") fileShareARNList: option<fileShareARNList>
}
  type response = {
@as("NFSFileShareInfoList") nFSFileShareInfoList: nFSFileShareInfoList
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeNFSFileSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFileSystemAssociations = {
  type t;
  type request = {
@as("FileSystemAssociationARNList") fileSystemAssociationARNList: option<fileSystemAssociationARNList>
}
  type response = {
@as("FileSystemAssociationInfoList") fileSystemAssociationInfoList: fileSystemAssociationInfoList
}
  @module("@aws-sdk/client-storagegateway") @new external new_: (request) => t = "DescribeFileSystemAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
