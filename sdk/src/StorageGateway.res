type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-storagegateway") @new
external createClient: unit => awsServiceClient = "StorageGatewayClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
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
type time = Js.Date.t
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
@ocaml.doc("<p></p>") type storageClass = string
@ocaml.doc("<p>The user mapped to anonymous user. Valid options are the following:</p>

         <ul>
            <li>
               <p>
                  <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>NoSquash</code>: No one is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
            </li>
         </ul>")
type squash = string
type softwareUpdatesEndDate = string
type snapshotId = string
type snapshotDescription = string
type smbsecurityStrategy = [
  | @as("MandatoryEncryption") #MandatoryEncryption
  | @as("MandatorySigning") #MandatorySigning
  | @as("ClientSpecified") #ClientSpecified
]
type smbguestPassword = string
@ocaml.doc("<p>The ARN of the IAM role that file gateway assumes when it accesses the underlying
         storage.</p>")
type role = string
type retentionLockType = [
  | @as("NONE") #NONE
  | @as("GOVERNANCE") #GOVERNANCE
  | @as("COMPLIANCE") #COMPLIANCE
]
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
@ocaml.doc("<p>The file share path used by the NFS client to identify the mount point.</p>")
type path = string
type organizationalUnit = string
@ocaml.doc("<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
         that a file gateway puts objects into. The default value is <code>private</code>.</p>")
type objectACL = [
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type numTapesToCreate = int
type notificationPolicy = string
@ocaml.doc("<p>The randomly generated ID of the notification that was sent. This ID is in UUID
         format.</p>")
type notificationId = string
type nextUpdateAvailabilityDate = string
type networkInterfaceId = string
type minuteOfHour = int
type minimumNumTapes = int
type mediumChangerType = string
type marker = string
@ocaml.doc("<p>The ARN of the backend storage used for storing file data. A prefix name can be added to
         the S3 bucket name. It must end with a \"/\".</p>")
type locationARN = string
type localConsolePassword = string
type lastSoftwareUpdate = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
type kmskey = string
type iqnName = string
type initiator = string
type ipv4AddressCIDR = string
type hourOfDay = int
type hostEnvironment = [
  | @as("OTHER") #OTHER
  | @as("KVM") #KVM
  | @as("EC2") #EC2
  | @as("HYPER-V") #HYPER_V
  | @as("VMWARE") #VMWARE
]
type host = string
type gatewayType = string
type gatewayTimezone = string
type gatewayState = string
type gatewayOperationalState = string
@ocaml.doc("<p>The name you configured for your gateway.</p>") type gatewayName = string
type gatewayId = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
         operation to return a list of gateways for your account and AWS Region.</p>")
type gatewayARN = string
type folder = string
type fileSystemLocationARN = string
type fileSystemAssociationStatus = string
type fileSystemAssociationId = string
type fileSystemAssociationARN = string
@ocaml.doc("<p>The type of the file share.</p>")
type fileShareType = [@as("SMB") #SMB | @as("NFS") #NFS]
@ocaml.doc("<p>The status of the file share.</p>

         <p>Valid Values: <code>CREATING</code> | <code>UPDATING</code> | <code>AVAILABLE</code> |
            <code>DELETING</code>
         </p>")
type fileShareStatus = string
type fileShareName = string
@ocaml.doc("<p>The ID of the file share.</p>") type fileShareId = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the file share.</p>") type fileShareARN = string
type errorCode = [
  | @as("VolumeNotReady") #VolumeNotReady
  | @as("VolumeNotFound") #VolumeNotFound
  | @as("VolumeInUse") #VolumeInUse
  | @as("VolumeIdInvalid") #VolumeIdInvalid
  | @as("VolumeAlreadyExists") #VolumeAlreadyExists
  | @as("UnauthorizedOperation") #UnauthorizedOperation
  | @as("TargetNotFound") #TargetNotFound
  | @as("TargetInvalid") #TargetInvalid
  | @as("TargetAlreadyExists") #TargetAlreadyExists
  | @as("TapeCartridgeNotFound") #TapeCartridgeNotFound
  | @as("StorageFailure") #StorageFailure
  | @as("StagingAreaFull") #StagingAreaFull
  | @as("SnapshotScheduleNotFound") #SnapshotScheduleNotFound
  | @as("SnapshotNotFound") #SnapshotNotFound
  | @as("SnapshotInProgress") #SnapshotInProgress
  | @as("SnapshotIdInvalid") #SnapshotIdInvalid
  | @as("SnapshotDeleted") #SnapshotDeleted
  | @as("ServiceUnavailable") #ServiceUnavailable
  | @as("RequestTimeout") #RequestTimeout
  | @as("RegionInvalid") #RegionInvalid
  | @as("ParametersNotImplemented") #ParametersNotImplemented
  | @as("OutdatedGateway") #OutdatedGateway
  | @as("OperationAborted") #OperationAborted
  | @as("NotSupported") #NotSupported
  | @as("NotImplemented") #NotImplemented
  | @as("NoDisksAvailable") #NoDisksAvailable
  | @as("NetworkConfigurationChanged") #NetworkConfigurationChanged
  | @as("MaximumVolumeCountExceeded") #MaximumVolumeCountExceeded
  | @as("MaximumTapeCartridgeCountExceeded") #MaximumTapeCartridgeCountExceeded
  | @as("MaximumContentLengthExceeded") #MaximumContentLengthExceeded
  | @as("JoinDomainInProgress") #JoinDomainInProgress
  | @as("LunInvalid") #LunInvalid
  | @as("LunAlreadyAllocated ") #LunAlreadyAllocated
  | @as("LocalStorageLimitExceeded") #LocalStorageLimitExceeded
  | @as("InvalidSchedule") #InvalidSchedule
  | @as("InvalidParameters") #InvalidParameters
  | @as("InvalidEndpoint") #InvalidEndpoint
  | @as("InvalidGateway") #InvalidGateway
  | @as("InternalError") #InternalError
  | @as("InitiatorNotFound") #InitiatorNotFound
  | @as("InitiatorInvalid") #InitiatorInvalid
  | @as("IAMNotSupported") #IAMNotSupported
  | @as("EndpointNotFound") #EndpointNotFound
  | @as("DuplicateSchedule") #DuplicateSchedule
  | @as("DuplicateCertificateInfo") #DuplicateCertificateInfo
  | @as("DiskSizeNotGigAligned") #DiskSizeNotGigAligned
  | @as("DiskSizeLessThanVolumeSize") #DiskSizeLessThanVolumeSize
  | @as("DiskSizeGreaterThanVolumeMaxSize") #DiskSizeGreaterThanVolumeMaxSize
  | @as("DiskDoesNotExist") #DiskDoesNotExist
  | @as("DiskAlreadyAllocated") #DiskAlreadyAllocated
  | @as("ChapCredentialNotFound") #ChapCredentialNotFound
  | @as("CannotExportSnapshot") #CannotExportSnapshot
  | @as("Blocked") #Blocked
  | @as("BandwidthThrottleScheduleNotFound") #BandwidthThrottleScheduleNotFound
  | @as("AuthenticationFailure") #AuthenticationFailure
  | @as("GatewayProxyNetworkConnectionBusy") #GatewayProxyNetworkConnectionBusy
  | @as("GatewayNotFound") #GatewayNotFound
  | @as("GatewayNotConnected") #GatewayNotConnected
  | @as("GatewayInternalError") #GatewayInternalError
  | @as("ActivationKeyNotFound") #ActivationKeyNotFound
  | @as("ActivationKeyInvalid") #ActivationKeyInvalid
  | @as("ActivationKeyExpired") #ActivationKeyExpired
]
type endpointType = string
type ec2InstanceRegion = string
type ec2InstanceId = string
type doubleObject = float
type domainUserPassword = string
type domainUserName = string
type domainName = string
type diskId = string
type diskAttribute = string
@ocaml.doc("<p>One of the <code>DiskAllocationType</code> enumeration values that identifies how a
         local disk is used.</p>

         <p>Valid Values: <code>UPLOAD_BUFFER</code> | <code>CACHE_STORAGE</code>
         </p>")
type diskAllocationType = string
type deviceType = string
type description = string
type deprecationDate = string
type dayOfWeek = int
type dayOfMonth = int
type createdDate = Js.Date.t
type cloudWatchLogGroupARN = string
type clientToken = string
type chapSecret = string
type caseSensitivity = [
  | @as("CaseSensitive") #CaseSensitive
  | @as("ClientSpecified") #ClientSpecified
]
type cacheStaleTimeoutInSeconds = int
type boolean2 = bool
type boolean_ = bool
type bandwidthUploadRateLimit = float
type bandwidthType = string
type bandwidthDownloadRateLimit = float
type availabilityMonitorTestStatus = [
  | @as("PENDING") #PENDING
  | @as("FAILED") #FAILED
  | @as("COMPLETE") #COMPLETE
]
@ocaml.doc("<p>The authentication method of the file share. The default is
         <code>ActiveDirectory</code>.</p>

         <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
         </p>")
type authentication = string
type auditDestinationARN = string
type activeDirectoryStatus = [
  | @as("UNKNOWN_ERROR") #UNKNOWN_ERROR
  | @as("TIMEOUT") #TIMEOUT
  | @as("NETWORK_ERROR") #NETWORK_ERROR
  | @as("JOINING") #JOINING
  | @as("JOINED") #JOINED
  | @as("DETACHED") #DETACHED
  | @as("ACCESS_DENIED") #ACCESS_DENIED
]
type activationKey = string
type errorDetails = Js.Dict.t<string_>
@ocaml.doc("<p>Lists iSCSI information about a volume.</p>")
type volumeiSCSIAttributes = {
  @ocaml.doc("<p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>")
  @as("ChapEnabled")
  chapEnabled: option<boolean2>,
  @ocaml.doc("<p>The logical disk number.</p>") @as("LunNumber")
  lunNumber: option<positiveIntObject>,
  @ocaml.doc("<p>The port used to communicate with iSCSI targets.</p>") @as("NetworkInterfacePort")
  networkInterfacePort: option<integer_>,
  @ocaml.doc("<p>The network interface identifier.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<networkInterfaceId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume target.</p>") @as("TargetARN")
  targetARN: option<targetARN>,
}
@ocaml.doc("<p>Describes a storage volume recovery point object.</p>")
type volumeRecoveryPointInfo = {
  @ocaml.doc("<p>The time the recovery point was taken.</p>") @as("VolumeRecoveryPointTime")
  volumeRecoveryPointTime: option<string_>,
  @ocaml.doc("<p>The size of the data stored on the volume in bytes.</p>

         <note>
            <p>This value is not available for volumes created prior to May 13, 2015, until you
            store data on the volume.</p>
         </note>")
  @as("VolumeUsageInBytes")
  volumeUsageInBytes: option<long>,
  @ocaml.doc("<p>The size of the volume in bytes.</p>") @as("VolumeSizeInBytes")
  volumeSizeInBytes: option<long>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume target.</p>") @as("VolumeARN")
  volumeARN: option<volumeARN>,
}
@ocaml.doc("<p>Describes a storage volume object.</p>")
type volumeInfo = {
  @ocaml.doc(
    "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"
  )
  @as("VolumeAttachmentStatus")
  volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @ocaml.doc("<p>The size of the volume in bytes.</p>

         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>")
  @as("VolumeSizeInBytes")
  volumeSizeInBytes: option<long>,
  @ocaml.doc("<p>One of the VolumeType enumeration values describing the type of the volume.</p>")
  @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc("<p>The unique identifier assigned to your gateway during activation. This ID becomes part
         of the gateway Amazon Resource Name (ARN), which you use as input for other
         operations.</p>

         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>")
  @as("GatewayId")
  gatewayId: option<gatewayId>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>The unique identifier assigned to the volume. This ID becomes part of the volume Amazon
         Resource Name (ARN), which you use as input for other operations.</p>

         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>")
  @as("VolumeId")
  volumeId: option<volumeId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the storage volume. For example, the following is a
         valid ARN:</p>

         <p>
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB</code>
         </p>

         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>")
  @as("VolumeARN")
  volumeARN: option<volumeARN>,
}
type volumeARNs = array<volumeARN>
type vtldeviceARNs = array<vtldeviceARN>
type userList = array<userListUser>
@ocaml.doc("<p>Describes a recovery point.</p>")
type tapeRecoveryPointInfo = {
  @ocaml.doc("<p>The status of the virtual tapes.</p>") @as("TapeStatus")
  tapeStatus: option<tapeRecoveryPointStatus>,
  @ocaml.doc("<p>The size, in bytes, of the virtual tapes to recover.</p>") @as("TapeSizeInBytes")
  tapeSizeInBytes: option<tapeSize>,
  @ocaml.doc("<p>The time when the point-in-time view of the virtual tape was replicated for later
         recovery.</p>

         <p>The default timestamp format of the tape recovery point time is in the ISO8601 extended
         YYYY-MM-DD'T'HH:MM:SS'Z' format.</p>")
  @as("TapeRecoveryPointTime")
  tapeRecoveryPointTime: option<time>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape.</p>") @as("TapeARN")
  tapeARN: option<tapeARN>,
}
@ocaml.doc("<p>Describes a virtual tape.</p>")
type tapeInfo = {
  @ocaml.doc("<p>The date that the tape entered the custom tape pool with tape retention lock
         enabled.</p>")
  @as("PoolEntryDate")
  poolEntryDate: option<time>,
  @ocaml.doc("<p>The date that the tape became subject to tape retention lock.</p>")
  @as("RetentionStartDate")
  retentionStartDate: option<time>,
  @ocaml.doc("<p>The ID of the pool that you want to add your tape to for archiving. The tape in this
         pool is archived in the S3 storage class that is associated with the pool. When you use
         your backup application to eject the tape, the tape is archived directly into the storage
         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
  @as("PoolId")
  poolId: option<poolId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
         operation to return a list of gateways for your account and AWS Region.</p>")
  @as("GatewayARN")
  gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>The status of the tape.</p>") @as("TapeStatus") tapeStatus: option<tapeStatus>,
  @ocaml.doc("<p>The size, in bytes, of a virtual tape.</p>") @as("TapeSizeInBytes")
  tapeSizeInBytes: option<tapeSize>,
  @ocaml.doc("<p>The barcode that identifies a specific virtual tape.</p>") @as("TapeBarcode")
  tapeBarcode: option<tapeBarcode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a virtual tape.</p>") @as("TapeARN")
  tapeARN: option<tapeARN>,
}
@ocaml.doc("<p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>")
type tapeArchive = {
  @ocaml.doc("<p>The time that the tape entered the custom tape pool.</p>

         <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'
         format.</p>")
  @as("PoolEntryDate")
  poolEntryDate: option<time>,
  @ocaml.doc("<p>If the archived tape is subject to tape retention lock, the date that the archived tape
         started being retained.</p>")
  @as("RetentionStartDate")
  retentionStartDate: option<time>,
  @ocaml.doc("<p>Set to <code>true</code> if the archived tape is stored as write-once-read-many
         (WORM).</p>")
  @as("Worm")
  worm: option<boolean2>,
  @ocaml.doc("<p>The ID of the pool that was used to archive the tape. The tapes in this pool are
         archived in the S3 storage class that is associated with the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
  @as("PoolId")
  poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>The size, in bytes, of data stored on the virtual tape.</p>

         <note>
            <p>This value is not available for tapes created prior to May 13, 2015.</p>
         </note>")
  @as("TapeUsedInBytes")
  tapeUsedInBytes: option<tapeUsage>,
  @ocaml.doc("<p>The current state of the archived virtual tape.</p>") @as("TapeStatus")
  tapeStatus: option<tapeArchiveStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the tape gateway that the virtual tape is being
         retrieved to.</p>

         <p>The virtual tape is retrieved from the virtual tape shelf (VTS).</p>")
  @as("RetrievedTo")
  retrievedTo: option<gatewayARN>,
  @ocaml.doc("<p>The time that the archiving of the virtual tape was completed.</p>

         <p>The default timestamp format is in the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z'
         format.</p>")
  @as("CompletionTime")
  completionTime: option<time>,
  @ocaml.doc("<p>The size, in bytes, of the archived virtual tape.</p>") @as("TapeSizeInBytes")
  tapeSizeInBytes: option<tapeSize>,
  @ocaml.doc("<p>The date the virtual tape was created.</p>") @as("TapeCreatedDate")
  tapeCreatedDate: option<time>,
  @ocaml.doc("<p>The barcode that identifies the archived virtual tape.</p>") @as("TapeBarcode")
  tapeBarcode: option<tapeBarcode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an archived virtual tape.</p>") @as("TapeARN")
  tapeARN: option<tapeARN>,
}
@ocaml.doc("<p>The Amazon Resource Name (ARN) of each of the tapes you want to list. If you don't
         specify a tape ARN, the response lists all tapes in both your VTL and VTS.</p>")
type tapeARNs = array<tapeARN>
@ocaml.doc("<p>Describes a virtual tape object.</p>")
type tape = {
  @ocaml.doc("<p>The date that the tape enters a custom tape pool.</p>") @as("PoolEntryDate")
  poolEntryDate: option<time>,
  @ocaml.doc("<p>The date that the tape is first archived with tape retention lock enabled.</p>")
  @as("RetentionStartDate")
  retentionStartDate: option<time>,
  @ocaml.doc("<p>If the tape is archived as write-once-read-many (WORM), this value is
         <code>true</code>.</p>")
  @as("Worm")
  worm: option<boolean2>,
  @ocaml.doc("<p>The ID of the pool that contains tapes that will be archived. The tapes in this pool are
         archived in the S3 storage class that is associated with the pool. When you use your backup
         application to eject the tape, the tape is archived directly into the storage class (S3
         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
  @as("PoolId")
  poolId: option<poolId>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>The size, in bytes, of data stored on the virtual tape.</p>

         <note>
            <p>This value is not available for tapes created prior to May 13, 2015.</p>
         </note>")
  @as("TapeUsedInBytes")
  tapeUsedInBytes: option<tapeUsage>,
  @ocaml.doc("<p>For archiving virtual tapes, indicates how much data remains to be uploaded before
         archiving is complete.</p>

         <p>Range: 0 (not started) to 100 (complete).</p>")
  @as("Progress")
  progress: option<doubleObject>,
  @ocaml.doc(
    "<p>The virtual tape library (VTL) device that the virtual tape is associated with.</p>"
  )
  @as("VTLDevice")
  vtldevice: option<vtldeviceARN>,
  @ocaml.doc("<p>The current state of the virtual tape.</p>") @as("TapeStatus")
  tapeStatus: option<tapeStatus>,
  @ocaml.doc("<p>The size, in bytes, of the virtual tape capacity.</p>") @as("TapeSizeInBytes")
  tapeSizeInBytes: option<tapeSize>,
  @ocaml.doc("<p>The date the virtual tape was created.</p>") @as("TapeCreatedDate")
  tapeCreatedDate: option<time>,
  @ocaml.doc("<p>The barcode that identifies a specific virtual tape.</p>") @as("TapeBarcode")
  tapeBarcode: option<tapeBarcode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape.</p>") @as("TapeARN")
  tapeARN: option<tapeARN>,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>A key-value pair that helps you manage, filter, and search for your resource. Allowed
         characters: letters, white space, and numbers, representable in UTF-8, and the following
         characters: + - = . _ : /.</p>")
type tag = {
  @ocaml.doc("<p>Value of the tag key.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>Tag key. The key can't start with aws:.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>Describes a custom tape pool.</p>")
type poolInfo = {
  @ocaml.doc("<p>Status of the custom tape pool. Pool can be <code>ACTIVE</code> or
         <code>DELETED</code>.</p>")
  @as("PoolStatus")
  poolStatus: option<poolStatus>,
  @ocaml.doc("<p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
         100 years (36,500 days).</p>")
  @as("RetentionLockTimeInDays")
  retentionLockTimeInDays: option<retentionLockTimeInDays>,
  @ocaml.doc("<p>Tape retention lock type, which can be configured in two modes. When configured in
         governance mode, AWS accounts with specific IAM permissions are authorized to remove the
         tape retention lock from archived virtual tapes. When configured in compliance mode, the
         tape retention lock cannot be removed by any user, including the root AWS account.</p>")
  @as("RetentionLockType")
  retentionLockType: option<retentionLockType>,
  @ocaml.doc("<p>The storage class that is associated with the custom pool. When you use your backup
         application to eject the tape, the tape is archived directly into the storage class (S3
         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>")
  @as("StorageClass")
  storageClass: option<tapeStorageClass>,
  @ocaml.doc("<p>The name of the custom tape pool. <code>PoolName</code> can use all ASCII characters,
         except '/' and '\\'.</p>")
  @as("PoolName")
  poolName: option<poolName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom tape pool. Use the <a>ListTapePools</a> operation to return a list of custom tape pools for your
         account and AWS Region.</p>")
  @as("PoolARN")
  poolARN: option<poolARN>,
}
type poolARNs = array<poolARN>
@ocaml.doc("<p>Describes a gateway's network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>The Internet Protocol version 6 (IPv6) address of the interface. <i>Currently not
            supported</i>.</p>")
  @as("Ipv6Address")
  ipv6Address: option<string_>,
  @ocaml.doc("<p>The Media Access Control (MAC) address of the interface.</p>

         <note>
            <p>This is currently unsupported and will not be returned in output.</p>
         </note>")
  @as("MacAddress")
  macAddress: option<string_>,
  @ocaml.doc("<p>The Internet Protocol version 4 (IPv4) address of the interface.</p>")
  @as("Ipv4Address")
  ipv4Address: option<string_>,
}
@ocaml.doc("<p>Describes Network File System (NFS) file share default values. Files and folders stored
         as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions
         assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that
         represent files and folders are assigned these default Unix permissions. This operation is
         only supported for file gateways.</p>")
type nfsfileShareDefaults = {
  @ocaml.doc("<p>The default owner ID for files in the file share (unless the files have another owner ID
         specified). The default value is <code>nfsnobody</code>.</p>")
  @as("OwnerId")
  ownerId: option<permissionId>,
  @ocaml.doc("<p>The default group ID for the file share (unless the files have another group ID
         specified). The default value is <code>nfsnobody</code>.</p>")
  @as("GroupId")
  groupId: option<permissionId>,
  @ocaml.doc("<p>The Unix directory mode in the form \"nnnn\". For example, <code>0666</code> represents
         the default access mode for all directories inside the file share. The default value is
            <code>0777</code>.</p>")
  @as("DirectoryMode")
  directoryMode: option<permissionMode>,
  @ocaml.doc("<p>The Unix file mode in the form \"nnnn\". For example, <code>0666</code> represents the
         default file mode inside the file share. The default value is <code>0666</code>.</p>")
  @as("FileMode")
  fileMode: option<permissionMode>,
}
type initiators = array<initiator>
type hosts = array<host>
@ocaml.doc("<p>Describes a gateway object.</p>")
type gatewayInfo = {
  @ocaml.doc("<p>The AWS Region where the Amazon EC2 instance is located.</p>")
  @as("Ec2InstanceRegion")
  ec2InstanceRegion: option<ec2InstanceRegion>,
  @ocaml.doc("<p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>")
  @as("Ec2InstanceId")
  ec2InstanceId: option<ec2InstanceId>,
  @ocaml.doc("<p>The name of the gateway.</p>") @as("GatewayName") gatewayName: option<string_>,
  @ocaml.doc("<p>The state of the gateway.</p>

         <p>Valid Values: <code>DISABLED</code> | <code>ACTIVE</code>
         </p>")
  @as("GatewayOperationalState")
  gatewayOperationalState: option<gatewayOperationalState>,
  @ocaml.doc("<p>The type of the gateway.</p>") @as("GatewayType") gatewayType: option<gatewayType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
         operation to return a list of gateways for your account and AWS Region.</p>")
  @as("GatewayARN")
  gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>The unique identifier assigned to your gateway during activation. This ID becomes part
         of the gateway Amazon Resource Name (ARN), which you use as input for other
         operations.</p>")
  @as("GatewayId")
  gatewayId: option<gatewayId>,
}
type folderList = array<folder>
@ocaml.doc("<p>Gets the summary returned by <code>ListFileSystemAssociation</code>, which is a summary
         of a created file system association.</p>")
type fileSystemAssociationSummary = {
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>The status of the file share. Valid Values: <code>AVAILABLE</code> | <code>CREATING</code> | <code>DELETING</code> | 
         <code>FORCE_DELETING</code> | <code>MISCONFIGURED</code> | <code>UPDATING</code> | <code>UNAVAILABLE</code>
         </p>")
  @as("FileSystemAssociationStatus")
  fileSystemAssociationStatus: option<fileSystemAssociationStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file system association.</p>")
  @as("FileSystemAssociationARN")
  fileSystemAssociationARN: option<fileSystemAssociationARN>,
  @ocaml.doc("<p>The ID of the file system association.</p>") @as("FileSystemAssociationId")
  fileSystemAssociationId: option<fileSystemAssociationId>,
}
type fileSystemAssociationARNList = array<fileSystemAssociationARN>
@ocaml.doc("<p>Describes a file share.</p>")
type fileShareInfo = {
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>,
  @as("FileShareType") fileShareType: option<fileShareType>,
}
@ocaml.doc("<p>The list of clients that are allowed to access the file gateway. The list must contain
         either valid IP addresses or valid CIDR blocks.</p>")
type fileShareClientList = array<ipv4AddressCIDR>
type fileShareARNList = array<fileShareARN>
type diskIds = array<diskId>
@ocaml.doc("<p>A list of values that represents attributes of a local disk.</p>")
type diskAttributeList = array<diskAttribute>
@ocaml.doc("<p>Lists iSCSI information about a VTL device.</p>")
type deviceiSCSIAttributes = {
  @ocaml.doc("<p>Indicates whether mutual CHAP is enabled for the iSCSI target.</p>")
  @as("ChapEnabled")
  chapEnabled: option<boolean2>,
  @ocaml.doc("<p>The port used to communicate with iSCSI VTL device targets.</p>")
  @as("NetworkInterfacePort")
  networkInterfacePort: option<integer_>,
  @ocaml.doc("<p>The network interface identifier of the VTL device.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<networkInterfaceId>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) that encodes the iSCSI qualified
         name(iqn) of a tape drive or media changer target.</p>")
  @as("TargetARN")
  targetARN: option<targetARN>,
}
type daysOfWeek = array<dayOfWeek>
@ocaml.doc("<p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports
         authentication between your gateway and iSCSI initiators.</p>")
type chapInfo = {
  @ocaml.doc("<p>The secret key that the target must provide to participate in mutual CHAP with the
         initiator (e.g., Windows client).</p>")
  @as("SecretToAuthenticateTarget")
  secretToAuthenticateTarget: option<chapSecret>,
  @ocaml.doc("<p>The iSCSI initiator that connects to the target.</p>") @as("InitiatorName")
  initiatorName: option<iqnName>,
  @ocaml.doc("<p>The secret key that the initiator (for example, the Windows client) must provide to
         participate in mutual CHAP with the target.</p>")
  @as("SecretToAuthenticateInitiator")
  secretToAuthenticateInitiator: option<chapSecret>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume.</p>

         <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>")
  @as("TargetARN")
  targetARN: option<targetARN>,
}
@ocaml.doc("<p>The refresh cache information for the file share.</p>")
type cacheAttributes = {
  @ocaml.doc("<p>Refreshes a file share's cache by using Time To Live (TTL). TTL is the length of
         time since the last refresh after which access to the directory would cause the file
         gateway to first refresh that directory's contents from the Amazon S3 bucket or Amazon FSx file system. The TTL
         duration is in seconds.</p>

         <p>Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)</p>")
  @as("CacheStaleTimeoutInSeconds")
  cacheStaleTimeoutInSeconds: option<cacheStaleTimeoutInSeconds>,
}
@ocaml.doc("<p>An automatic tape creation policy consists of automatic tape creation rules where each
         rule defines when and how to create new tapes. For more information about automatic tape
         creation, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically\">Creating Tapes Automatically</a>.</p>")
type automaticTapeCreationRule = {
  @ocaml.doc("<p>Set to <code>true</code> to indicate that tapes are to be archived as
         write-once-read-many (WORM). Set to <code>false</code> when WORM is not enabled for
         tapes.</p>")
  @as("Worm")
  worm: option<boolean2>,
  @ocaml.doc("<p>The minimum number of available virtual tapes that the gateway maintains at all times.
         If the number of tapes on the gateway goes below this value, the gateway creates as many
         new tapes as are needed to have <code>MinimumNumTapes</code> on the gateway. For more
         information about automatic tape creation, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically\">Creating Tapes Automatically</a>.</p>")
  @as("MinimumNumTapes")
  minimumNumTapes: minimumNumTapes,
  @ocaml.doc("<p>The size, in bytes, of the virtual tape capacity.</p>") @as("TapeSizeInBytes")
  tapeSizeInBytes: tapeSize,
  @ocaml.doc("<p>The ID of the pool that you want to add your tape to for archiving. The tape in this
         pool is archived in the Amazon S3 storage class that is associated with the pool. When you
         use your backup application to eject the tape, the tape is archived directly into the
         storage class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
  @as("PoolId")
  poolId: poolId,
  @ocaml.doc("<p>A prefix that you append to the barcode of the virtual tape that you are creating. This
         prefix makes the barcode unique.</p>

         <note>
            <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
            from A to Z.</p>
         </note>")
  @as("TapeBarcodePrefix")
  tapeBarcodePrefix: tapeBarcodePrefix,
}
type volumeRecoveryPointInfos = array<volumeRecoveryPointInfo>
type volumeInfos = array<volumeInfo>
@ocaml.doc("<p>Represents a device object associated with a tape gateway.</p>")
type vtldevice = {
  @ocaml.doc("<p>A list of iSCSI information about a VTL device.</p>") @as("DeviceiSCSIAttributes")
  deviceiSCSIAttributes: option<deviceiSCSIAttributes>,
  @ocaml.doc("<p>Specifies the model number of device that the VTL device emulates.</p>")
  @as("VTLDeviceProductIdentifier")
  vtldeviceProductIdentifier: option<vtldeviceProductIdentifier>,
  @ocaml.doc("<p>Specifies the vendor of the device that the VTL device object emulates.</p>")
  @as("VTLDeviceVendor")
  vtldeviceVendor: option<vtldeviceVendor>,
  @ocaml.doc("<p>Specifies the type of device that the VTL device emulates.</p>")
  @as("VTLDeviceType")
  vtldeviceType: option<vtldeviceType>,
  @ocaml.doc("<p>Specifies the unique Amazon Resource Name (ARN) of the device (tape drive or media
         changer).</p>")
  @as("VTLDeviceARN")
  vtldeviceARN: option<vtldeviceARN>,
}
type tapes = array<tape>
type tapeRecoveryPointInfos = array<tapeRecoveryPointInfo>
@ocaml.doc("<p>An array of <a>TapeInfo</a> objects, where each object describes a single
         tape. If there are no tapes in the tape library or VTS, then the <code>TapeInfos</code> is
         an empty array.</p>")
type tapeInfos = array<tapeInfo>
type tapeArchives = array<tapeArchive>
type tags = array<tag>
@ocaml.doc("<p>Describes an iSCSI stored volume.</p>")
type storediSCSIVolume = {
  @ocaml.doc("<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
         suffix for the target ARN. For example, specifying <code>TargetName</code> as
            <i>myvolume</i> results in the target ARN of
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
         The target name must be unique across all volumes on a gateway.</p>

         <p>If you don't specify a value, Storage Gateway uses the value that was previously
         used for this volume as the new target name.</p>")
  @as("TargetName")
  targetName: option<targetName>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>The size of the data stored on the volume in bytes. This value is calculated based on
         the number of blocks that are touched, instead of the actual amount of data written. This
         value can be useful for sequential write patterns but less accurate for random write
         patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the
         volume, which is the value that is used to calculate your bill.</p>

         <note>
            <p>This value is not available for volumes created prior to May 13, 2015, until you
            store data on the volume.</p>
         </note>")
  @as("VolumeUsedInBytes")
  volumeUsedInBytes: option<volumeUsedInBytes>,
  @ocaml.doc("<p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this
         timestamp.</p>")
  @as("CreatedDate")
  createdDate: option<createdDate>,
  @ocaml.doc("<p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI
         attributes for one stored volume.</p>")
  @as("VolumeiSCSIAttributes")
  volumeiSCSIAttributes: option<volumeiSCSIAttributes>,
  @ocaml.doc("<p>Indicates if when the stored volume was created, existing data on the underlying local
         disk was preserved.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("PreservedExistingData")
  preservedExistingData: option<boolean2>,
  @ocaml.doc("<p>If the stored volume was created from a snapshot, this field contains the snapshot ID
         used, e.g. snap-78e22663. Otherwise, this field is not included.</p>")
  @as("SourceSnapshotId")
  sourceSnapshotId: option<snapshotId>,
  @ocaml.doc(
    "<p>The ID of the local disk that was specified in the <a>CreateStorediSCSIVolume</a> operation.</p>"
  )
  @as("VolumeDiskId")
  volumeDiskId: option<diskId>,
  @ocaml.doc("<p>Represents the percentage complete if the volume is restoring or bootstrapping that
         represents the percent of data transferred. This field does not appear in the response if
         the stored volume is not restoring or bootstrapping.</p>")
  @as("VolumeProgress")
  volumeProgress: option<doubleObject>,
  @ocaml.doc("<p>The size of the volume in bytes.</p>") @as("VolumeSizeInBytes")
  volumeSizeInBytes: option<long>,
  @ocaml.doc("<p>A value that indicates whether a storage volume is attached to, detached from, or is in
         the process of detaching from a gateway. For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume\">Moving
            your volumes to a different gateway</a>.</p>")
  @as("VolumeAttachmentStatus")
  volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @ocaml.doc(
    "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"
  )
  @as("VolumeStatus")
  volumeStatus: option<volumeStatus>,
  @ocaml.doc("<p>One of the VolumeType enumeration values describing the type of the volume.</p>")
  @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc("<p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>") @as("VolumeId")
  volumeId: option<volumeId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage volume.</p>") @as("VolumeARN")
  volumeARN: option<volumeARN>,
}
@ocaml.doc("<p>Provides additional information about an error that was returned by the service. See the
            <code>errorCode</code> and <code>errorDetails</code> members for more information about
         the error.</p>")
type storageGatewayError = {
  @ocaml.doc("<p>Human-readable text that provides detail about the error that occurred.</p>")
  errorDetails: option<errorDetails>,
  @ocaml.doc("<p>Additional information about the error.</p>") errorCode: option<errorCode>,
}
type poolInfos = array<poolInfo>
type gateways = array<gatewayInfo>
type gatewayNetworkInterfaces = array<networkInterface>
type fileSystemAssociationSummaryList = array<fileSystemAssociationSummary>
type fileShareInfoList = array<fileShareInfo>
@ocaml.doc("<p>Represents a gateway's local disk.</p>")
type disk = {
  @as("DiskAttributeList") diskAttributeList: option<diskAttributeList>,
  @ocaml.doc("<p>The iSCSI qualified name (IQN) that is defined for a disk. This field is not included in
         the response if the local disk is not defined as an iSCSI target. The format of this field
         is <i>targetIqn::LUNNumber::region-volumeId</i>.</p>")
  @as("DiskAllocationResource")
  diskAllocationResource: option<string_>,
  @as("DiskAllocationType") diskAllocationType: option<diskAllocationType>,
  @ocaml.doc("<p>The local disk size in bytes.</p>") @as("DiskSizeInBytes")
  diskSizeInBytes: option<long>,
  @ocaml.doc("<p>A value that represents the status of a local disk.</p>") @as("DiskStatus")
  diskStatus: option<string_>,
  @ocaml.doc(
    "<p>The device node of a local disk as assigned by the virtualization environment.</p>"
  )
  @as("DiskNode")
  diskNode: option<string_>,
  @ocaml.doc("<p>The path of a local disk in the gateway virtual machine (VM).</p>") @as("DiskPath")
  diskPath: option<string_>,
  @ocaml.doc(
    "<p>The unique device ID or other distinguishing data that identifies a local disk.</p>"
  )
  @as("DiskId")
  diskId: option<diskId>,
}
type chapCredentials = array<chapInfo>
@ocaml.doc("<p>Describes an iSCSI cached volume.</p>")
type cachediSCSIVolume = {
  @ocaml.doc("<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
         suffix for the target ARN. For example, specifying <code>TargetName</code> as
            <i>myvolume</i> results in the target ARN of
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
         The target name must be unique across all volumes on a gateway.</p>

         <p>If you don't specify a value, Storage Gateway uses the value that was previously
         used for this volume as the new target name.</p>")
  @as("TargetName")
  targetName: option<targetName>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>The size of the data stored on the volume in bytes. This value is calculated based on
         the number of blocks that are touched, instead of the actual amount of data written. This
         value can be useful for sequential write patterns but less accurate for random write
         patterns. <code>VolumeUsedInBytes</code> is different from the compressed size of the
         volume, which is the value that is used to calculate your bill.</p>

         <note>
            <p>This value is not available for volumes created prior to May 13, 2015, until you
            store data on the volume.</p>
         </note>")
  @as("VolumeUsedInBytes")
  volumeUsedInBytes: option<volumeUsedInBytes>,
  @ocaml.doc("<p>The date the volume was created. Volumes created prior to March 28, 2017 don’t have this
         timestamp.</p>")
  @as("CreatedDate")
  createdDate: option<createdDate>,
  @ocaml.doc("<p>An <a>VolumeiSCSIAttributes</a> object that represents a collection of iSCSI
         attributes for one stored volume.</p>")
  @as("VolumeiSCSIAttributes")
  volumeiSCSIAttributes: option<volumeiSCSIAttributes>,
  @ocaml.doc("<p>If the cached volume was created from a snapshot, this field contains the snapshot ID
         used, e.g., snap-78e22663. Otherwise, this field is not included.</p>")
  @as("SourceSnapshotId")
  sourceSnapshotId: option<snapshotId>,
  @ocaml.doc("<p>Represents the percentage complete if the volume is restoring or bootstrapping that
         represents the percent of data transferred. This field does not appear in the response if
         the cached volume is not restoring or bootstrapping.</p>")
  @as("VolumeProgress")
  volumeProgress: option<doubleObject>,
  @ocaml.doc("<p>The size, in bytes, of the volume capacity.</p>") @as("VolumeSizeInBytes")
  volumeSizeInBytes: option<long>,
  @ocaml.doc("<p>A value that indicates whether a storage volume is attached to or detached from a
         gateway. For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume\">Moving
            your volumes to a different gateway</a>.</p>")
  @as("VolumeAttachmentStatus")
  volumeAttachmentStatus: option<volumeAttachmentStatus>,
  @ocaml.doc(
    "<p>One of the VolumeStatus values that indicates the state of the storage volume.</p>"
  )
  @as("VolumeStatus")
  volumeStatus: option<volumeStatus>,
  @ocaml.doc(
    "<p>One of the VolumeType enumeration values that describes the type of the volume.</p>"
  )
  @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc("<p>The unique identifier of the volume, e.g., vol-AE4B946D.</p>") @as("VolumeId")
  volumeId: option<volumeId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage volume.</p>") @as("VolumeARN")
  volumeARN: option<volumeARN>,
}
@ocaml.doc("<p>
         Describes a bandwidth rate limit interval for a gateway. A bandwidth
         rate limit schedule consists of one or more bandwidth rate limit intervals. A bandwidth rate limit
         interval defines a period of time on one or more days of the week, during which bandwidth rate 
         limits are specified for uploading, downloading, or both. 
      </p>")
type bandwidthRateLimitInterval = {
  @ocaml.doc("<p>
         The average download rate limit component of the bandwidth rate limit interval, 
         in bits per second. This field does not appear in the response if the download rate limit is not set. 
      </p>")
  @as("AverageDownloadRateLimitInBitsPerSec")
  averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
  @ocaml.doc("<p>
         The average upload rate limit component of the bandwidth rate limit interval,
         in bits per second. This field does not appear in the response if the upload rate limit is not set. 
      </p>")
  @as("AverageUploadRateLimitInBitsPerSec")
  averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
  @ocaml.doc("<p> The days of the week component of the bandwidth rate limit interval, represented as
         ordinal numbers from 0 to 6, where 0 represents Sunday and 6 represents Saturday. </p>")
  @as("DaysOfWeek")
  daysOfWeek: daysOfWeek,
  @ocaml.doc("<p>
         The minute of the hour to end the bandwidth rate limit interval.
      </p>
      
         <important>
            <p>
            The bandwidth rate limit interval ends at the end of the minute. To end an interval
            at the end of an hour, use the value <code>59</code>.
         </p>
         </important>")
  @as("EndMinuteOfHour")
  endMinuteOfHour: minuteOfHour,
  @ocaml.doc("<p>
         The hour of the day to end the bandwidth rate limit interval.
      </p>")
  @as("EndHourOfDay")
  endHourOfDay: hourOfDay,
  @ocaml.doc("<p>
         The minute of the hour to start the bandwidth rate limit interval.
         The interval begins at the start of that minute. To begin an interval exactly at 
         the start of the hour, use the value <code>0</code>.
      </p>")
  @as("StartMinuteOfHour")
  startMinuteOfHour: minuteOfHour,
  @ocaml.doc("<p>
         The hour of the day to start the bandwidth rate limit interval.
      </p>")
  @as("StartHourOfDay")
  startHourOfDay: hourOfDay,
}
type automaticTapeCreationRules = array<automaticTapeCreationRule>
type vtldevices = array<vtldevice>
type storediSCSIVolumes = array<storediSCSIVolume>
@ocaml.doc("<p>The Windows file permissions and ownership information assigned, by default, to native
         S3 objects when file gateway discovers them in S3 buckets. This operation is only supported
         for file gateways.</p>")
type smbfileShareInfo = {
  @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
  @as("NotificationPolicy")
  notificationPolicy: option<notificationPolicy>,
  @ocaml.doc("<p>Refresh cache information for the file share.</p>") @as("CacheAttributes")
  cacheAttributes: option<cacheAttributes>,
  @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
  @as("FileShareName")
  fileShareName: option<fileShareName>,
  @ocaml.doc("<p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key
         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
         view all tags using the <code>ListTagsForResource</code> API operation.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The case of an object name in an Amazon S3 bucket. For <code>ClientSpecified</code>, the
         client determines the case sensitivity. For <code>CaseSensitive</code>, the gateway
         determines the case sensitivity. The default value is <code>ClientSpecified</code>.</p>")
  @as("CaseSensitivity")
  caseSensitivity: option<caseSensitivity>,
  @as("Authentication") authentication: option<authentication>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>")
  @as("AuditDestinationARN")
  auditDestinationARN: option<auditDestinationARN>,
  @ocaml.doc("<p>A list of users or groups in the Active Directory that are not allowed to access the
         file share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
  @as("InvalidUserList")
  invalidUserList: option<userList>,
  @ocaml.doc("<p>A list of users or groups in the Active Directory that are allowed to access the file
         share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
  @as("ValidUserList")
  validUserList: option<userList>,
  @ocaml.doc("<p>A list of users or groups in the Active Directory that have administrator rights to the
         file share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
  @as("AdminUserList")
  adminUserList: option<userList>,
  @ocaml.doc("<p>Indicates whether <code>AccessBasedEnumeration</code> is enabled.</p>")
  @as("AccessBasedEnumeration")
  accessBasedEnumeration: option<boolean_>,
  @ocaml.doc("<p>If this value is set to <code>true</code>, it indicates that access control list (ACL)
         is enabled on the SMB file share. If it is set to <code>false</code>, it indicates that
         file and directory permissions are mapped to the POSIX permission.</p>

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html\">Using Microsoft Windows ACLs to
            control access to an SMB file share</a> in the <i>AWS Storage Gateway User
            Guide</i>.</p>")
  @as("SMBACLEnabled")
  smbaclenabled: option<boolean_>,
  @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("RequesterPays")
  requesterPays: option<boolean_>,
  @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("GuessMIMETypeEnabled")
  guessMIMETypeEnabled: option<boolean_>,
  @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set the write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("ReadOnly")
  readOnly: option<boolean_>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
  @as("DefaultStorageClass")
  defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: option<locationARN>,
  @as("Role") role: option<role>,
  @ocaml.doc("<p>The file share path used by the SMB client to identify the mount point.</p>")
  @as("Path")
  path: option<path>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("KMSEncrypted")
  kmsencrypted: option<boolean2>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>,
}
@ocaml.doc("<p>The Unix file permissions and ownership information assigned, by default, to native S3
         objects when file gateway discovers them in S3 buckets. This operation is only supported in
         file gateways.</p>")
type nfsfileShareInfo = {
  @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
  @as("NotificationPolicy")
  notificationPolicy: option<notificationPolicy>,
  @ocaml.doc("<p>Refresh cache information for the file share.</p>") @as("CacheAttributes")
  cacheAttributes: option<cacheAttributes>,
  @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
  @as("FileShareName")
  fileShareName: option<fileShareName>,
  @ocaml.doc("<p>A list of up to 50 tags assigned to the NFS file share, sorted alphabetically by key
         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
         view all tags using the <code>ListTagsForResource</code> API operation.</p>")
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("RequesterPays")
  requesterPays: option<boolean_>,
  @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("GuessMIMETypeEnabled")
  guessMIMETypeEnabled: option<boolean_>,
  @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set the write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("ReadOnly")
  readOnly: option<boolean_>,
  @as("Squash") squash: option<squash>,
  @as("ClientList") clientList: option<fileShareClientList>,
  @as("ObjectACL") objectACL: option<objectACL>,
  @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
  @as("DefaultStorageClass")
  defaultStorageClass: option<storageClass>,
  @as("LocationARN") locationARN: option<locationARN>,
  @as("Role") role: option<role>,
  @as("Path") path: option<path>,
  @as("KMSKey") kmskey: option<kmskey>,
  @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("KMSEncrypted")
  kmsencrypted: option<boolean2>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @as("FileShareStatus") fileShareStatus: option<fileShareStatus>,
  @as("FileShareId") fileShareId: option<fileShareId>,
  @as("FileShareARN") fileShareARN: option<fileShareARN>,
  @as("NFSFileShareDefaults") nfsfileShareDefaults: option<nfsfileShareDefaults>,
}
@ocaml.doc("<p>Describes the object returned by <code>DescribeFileSystemAssociations</code> that
         describes a created file system association.</p>")
type fileSystemAssociationInfo = {
  @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
  @ocaml.doc(
    "<p>A list of up to 50 tags assigned to the SMB file share, sorted alphabetically by key name. Each tag is a key-value pair.</p>"
  )
  @as("Tags")
  tags: option<tags>,
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>")
  @as("AuditDestinationARN")
  auditDestinationARN: option<auditDestinationARN>,
  @ocaml.doc("<p>The status of the file system association. 
         Valid Values: <code>AVAILABLE</code> | <code>CREATING</code> | <code>DELETING</code> | 
         <code>FORCE_DELETING</code> | <code>MISCONFIGURED</code> | <code>UPDATING</code> | <code>UNAVAILABLE</code>
         </p>")
  @as("FileSystemAssociationStatus")
  fileSystemAssociationStatus: option<fileSystemAssociationStatus>,
  @ocaml.doc("<p>The ARN of the backend Amazon FSx file system used for storing file data. For
         information, see <a href=\"https://docs.aws.amazon.com/fsx/latest/APIReference/API_FileSystem.html\">FileSystem</a> in the <i>Amazon FSx
               API Reference</i>.</p>")
  @as("LocationARN")
  locationARN: option<fileSystemLocationARN>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file system association.</p>")
  @as("FileSystemAssociationARN")
  fileSystemAssociationARN: option<fileSystemAssociationARN>,
}
type disks = array<disk>
type cachediSCSIVolumes = array<cachediSCSIVolume>
type bandwidthRateLimitIntervals = array<bandwidthRateLimitInterval>
@ocaml.doc("<p>Information about the gateway's automatic tape creation policies, including the
         automatic tape creation rules and the gateway that is using the policies.</p>")
type automaticTapeCreationPolicyInfo = {
  @as("GatewayARN") gatewayARN: option<gatewayARN>,
  @ocaml.doc("<p>An automatic tape creation policy consists of a list of automatic tape creation rules.
         This returns the rules that determine when and how to automatically create new
         tapes.</p>")
  @as("AutomaticTapeCreationRules")
  automaticTapeCreationRules: option<automaticTapeCreationRules>,
}
type smbfileShareInfoList = array<smbfileShareInfo>
type nfsfileShareInfoList = array<nfsfileShareInfo>
type fileSystemAssociationInfoList = array<fileSystemAssociationInfo>
type automaticTapeCreationPolicyInfos = array<automaticTapeCreationPolicyInfo>
@ocaml.doc("<fullname>AWS Storage Gateway Service</fullname>

         <p>AWS Storage Gateway is the service that connects an on-premises software appliance with
         cloud-based storage to provide seamless and secure integration between an
         organization's on-premises IT environment and the AWS storage infrastructure. The
         service enables you to securely upload data to the AWS Cloud for cost effective backup and
         rapid disaster recovery.</p>

         <p>Use the following links to get started using the <i>AWS Storage Gateway Service
            API Reference</i>:</p>

         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders\">AWS Storage Gateway required request headers</a>: Describes the required
               headers that you must send with every POST request to AWS Storage Gateway.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests\">Signing requests</a>: AWS Storage Gateway requires that you authenticate
               every request you send; this topic describes how sign such a request.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses\">Error responses</a>: Provides reference information about AWS Storage Gateway
               errors.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html\">Operations in AWS
                  Storage Gateway</a>: Contains detailed descriptions of all AWS Storage Gateway
               operations, their request parameters, response elements, possible errors, and
               examples of requests and responses.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/general/latest/gr/sg.html\">AWS Storage Gateway
                  endpoints and quotas</a>: Provides a list of each AWS Region and the endpoints
               available for use with AWS Storage Gateway.</p>
            </li>
         </ul>

         <note>
            <p>AWS Storage Gateway resource IDs are in uppercase. When you use these resource IDs
            with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change your
            resource ID to lowercase to use it with the EC2 API. For example, in Storage Gateway the
            ID for a volume might be <code>vol-AA22BB012345DAF670</code>. When you use this ID with
            the EC2 API, you must change it to <code>vol-aa22bb012345daf670</code>. Otherwise, the
            EC2 API might not behave as expected.</p>
         </note>

         <important>
            <p>IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway volumes
            are changing to a longer format. Starting in December 2016, all new volumes and
            snapshots will be created with a 17-character string. Starting in April 2016, you will
            be able to use these longer IDs so you can test your systems with the new format. For
            more information, see <a href=\"http://aws.amazon.com/ec2/faqs/#longer-ids\">Longer EC2 and
               EBS resource IDs</a>.</p>

            <p>For example, a volume Amazon Resource Name (ARN) with the longer volume ID format
            looks like the following:</p>

            <p>
               <code>arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG</code>.</p>

            <p>A snapshot ID with the longer ID format looks like the following:
               <code>snap-78e226633445566ee</code>.</p>

            <p>For more information, see <a href=\"http://forums.aws.amazon.com/ann.jspa?annID=3557\">Announcement:
               Heads-up – Longer AWS Storage Gateway volume and snapshot IDs coming in
            2016</a>.</p>
         </important>")
module UpdateVTLDeviceType = {
  type t
  type request = {
    @ocaml.doc("<p>The type of medium changer you want to select.</p>

         <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
            <code>IBM-03584L32-0402</code>
         </p>")
    @as("DeviceType")
    deviceType: deviceType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the medium changer you want to select.</p>")
    @as("VTLDeviceARN")
    vtldeviceARN: vtldeviceARN,
  }
  @ocaml.doc("<p>UpdateVTLDeviceTypeOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the medium changer you have selected.</p>")
    @as("VTLDeviceARN")
    vtldeviceARN: option<vtldeviceARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateVTLDeviceTypeCommand"
  let make = (~deviceType, ~vtldeviceARN, ()) =>
    new({deviceType: deviceType, vtldeviceARN: vtldeviceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSnapshotSchedule = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>UpdateSnapshotScheduleInput$Description</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateSnapshotScheduleInput$StartAt</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateSnapshotScheduleInput$VolumeARN</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>Optional description of the snapshot that overwrites the existing description.</p>"
    )
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Frequency of snapshots. Specify the number of hours between snapshots.</p>")
    @as("RecurrenceInHours")
    recurrenceInHours: recurrenceInHours,
    @ocaml.doc("<p>The hour of the day at which the snapshot schedule begins represented as
            <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
         of the day is in the time zone of the gateway.</p>")
    @as("StartAt")
    startAt: hourOfDay,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the updated storage
         volume.</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes.</p>")
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateSnapshotScheduleCommand"
  let make = (~recurrenceInHours, ~startAt, ~volumeARN, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      description: description,
      recurrenceInHours: recurrenceInHours,
      startAt: startAt,
      volumeARN: volumeARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSMBSecurityStrategy = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the type of security strategy.</p>

         <p>ClientSpecified: if you use this option, requests are established based on what is
         negotiated by the client. This option is recommended when you want to maximize
         compatibility across different clients in your environment.</p>

         <p>MandatorySigning: if you use this option, file gateway only allows connections from
         SMBv2 or SMBv3 clients that have signing enabled. This option works with SMB clients on
         Microsoft Windows Vista, Windows Server 2008 or newer.</p>

         <p>MandatoryEncryption: if you use this option, file gateway only allows connections from
         SMBv3 clients that have encryption enabled. This option is highly recommended for
         environments that handle sensitive data. This option works with SMB clients on Microsoft
         Windows 8, Windows Server 2012 or newer.</p>")
    @as("SMBSecurityStrategy")
    smbsecurityStrategy: smbsecurityStrategy,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateSMBSecurityStrategyCommand"
  let make = (~smbsecurityStrategy, ~gatewayARN, ()) =>
    new({smbsecurityStrategy: smbsecurityStrategy, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSMBFileShareVisibility = {
  type t
  type request = {
    @ocaml.doc("<p>The shares on this gateway appear when listing shares.</p>")
    @as("FileSharesVisible")
    fileSharesVisible: boolean_,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateSMBFileShareVisibilityCommand"
  let make = (~fileSharesVisible, ~gatewayARN, ()) =>
    new({fileSharesVisible: fileSharesVisible, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSMBFileShare = {
  type t
  @ocaml.doc("<p>UpdateSMBFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
    @as("NotificationPolicy")
    notificationPolicy: option<notificationPolicy>,
    @ocaml.doc("<p>Specifies refresh cache information for the file share.</p>")
    @as("CacheAttributes")
    cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
    @as("FileShareName")
    fileShareName: option<fileShareName>,
    @ocaml.doc("<p>The case of an object name in an Amazon S3 bucket. For <code>ClientSpecified</code>, the
         client determines the case sensitivity. For <code>CaseSensitive</code>, the gateway
         determines the case sensitivity. The default value is <code>ClientSpecified</code>.</p>")
    @as("CaseSensitivity")
    caseSensitivity: option<caseSensitivity>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>")
    @as("AuditDestinationARN")
    auditDestinationARN: option<auditDestinationARN>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that are not allowed to access the
         file share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
    @as("InvalidUserList")
    invalidUserList: option<userList>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that are allowed to access the file
         share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
    @as("ValidUserList")
    validUserList: option<userList>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that have administrator rights to the
         file share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
    @as("AdminUserList")
    adminUserList: option<userList>,
    @ocaml.doc("<p>The files and folders on this share will only be visible to users with read
         access.</p>")
    @as("AccessBasedEnumeration")
    accessBasedEnumeration: option<boolean_>,
    @ocaml.doc("<p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
         share. Set it to <code>false</code> to map file and directory permissions to the POSIX
         permissions.</p>

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html\">Using Microsoft Windows ACLs to
            control access to an SMB file share</a> in the <i>AWS Storage Gateway User
            Guide</i>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("SMBACLEnabled")
    smbaclenabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("RequesterPays")
    requesterPays: option<boolean_>,
    @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("GuessMIMETypeEnabled")
    guessMIMETypeEnabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ReadOnly")
    readOnly: option<boolean_>,
    @ocaml.doc("<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
         that a file gateway puts objects into. The default value is <code>private</code>.</p>")
    @as("ObjectACL")
    objectACL: option<objectACL>,
    @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
    @as("DefaultStorageClass")
    defaultStorageClass: option<storageClass>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the SMB file share that you want to update.</p>"
    )
    @as("FileShareARN")
    fileShareARN: fileShareARN,
  }
  @ocaml.doc("<p>UpdateSMBFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the updated SMB file share.</p>")
    @as("FileShareARN")
    fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateSMBFileShareCommand"
  let make = (
    ~fileShareARN,
    ~notificationPolicy=?,
    ~cacheAttributes=?,
    ~fileShareName=?,
    ~caseSensitivity=?,
    ~auditDestinationARN=?,
    ~invalidUserList=?,
    ~validUserList=?,
    ~adminUserList=?,
    ~accessBasedEnumeration=?,
    ~smbaclenabled=?,
    ~requesterPays=?,
    ~guessMIMETypeEnabled=?,
    ~readOnly=?,
    ~objectACL=?,
    ~defaultStorageClass=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    (),
  ) =>
    new({
      notificationPolicy: notificationPolicy,
      cacheAttributes: cacheAttributes,
      fileShareName: fileShareName,
      caseSensitivity: caseSensitivity,
      auditDestinationARN: auditDestinationARN,
      invalidUserList: invalidUserList,
      validUserList: validUserList,
      adminUserList: adminUserList,
      accessBasedEnumeration: accessBasedEnumeration,
      smbaclenabled: smbaclenabled,
      requesterPays: requesterPays,
      guessMIMETypeEnabled: guessMIMETypeEnabled,
      readOnly: readOnly,
      objectACL: objectACL,
      defaultStorageClass: defaultStorageClass,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      fileShareARN: fileShareARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNFSFileShare = {
  type t
  @ocaml.doc("<p>UpdateNFSFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
    @as("NotificationPolicy")
    notificationPolicy: option<notificationPolicy>,
    @ocaml.doc("<p>specifies refresh cache information for the file share.</p>")
    @as("CacheAttributes")
    cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
    @as("FileShareName")
    fileShareName: option<fileShareName>,
    @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("RequesterPays")
    requesterPays: option<boolean_>,
    @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("GuessMIMETypeEnabled")
    guessMIMETypeEnabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set the write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ReadOnly")
    readOnly: option<boolean_>,
    @ocaml.doc("<p>The user mapped to anonymous user.</p>

         <p>Valid values are the following:</p>

         <ul>
            <li>
               <p>
                  <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>NoSquash</code>: No one is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
            </li>
         </ul>")
    @as("Squash")
    squash: option<squash>,
    @ocaml.doc("<p>The list of clients that are allowed to access the file gateway. The list must contain
         either valid IP addresses or valid CIDR blocks.</p>")
    @as("ClientList")
    clientList: option<fileShareClientList>,
    @ocaml.doc("<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
         that a file gateway puts objects into. The default value is <code>private</code>.</p>")
    @as("ObjectACL")
    objectACL: option<objectACL>,
    @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
    @as("DefaultStorageClass")
    defaultStorageClass: option<storageClass>,
    @ocaml.doc("<p>The default values for the file share. Optional.</p>")
    @as("NFSFileShareDefaults")
    nfsfileShareDefaults: option<nfsfileShareDefaults>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file share to be updated.</p>")
    @as("FileShareARN")
    fileShareARN: fileShareARN,
  }
  @ocaml.doc("<p>UpdateNFSFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the updated file share.</p>")
    @as("FileShareARN")
    fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateNFSFileShareCommand"
  let make = (
    ~fileShareARN,
    ~notificationPolicy=?,
    ~cacheAttributes=?,
    ~fileShareName=?,
    ~requesterPays=?,
    ~guessMIMETypeEnabled=?,
    ~readOnly=?,
    ~squash=?,
    ~clientList=?,
    ~objectACL=?,
    ~defaultStorageClass=?,
    ~nfsfileShareDefaults=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    (),
  ) =>
    new({
      notificationPolicy: notificationPolicy,
      cacheAttributes: cacheAttributes,
      fileShareName: fileShareName,
      requesterPays: requesterPays,
      guessMIMETypeEnabled: guessMIMETypeEnabled,
      readOnly: readOnly,
      squash: squash,
      clientList: clientList,
      objectACL: objectACL,
      defaultStorageClass: defaultStorageClass,
      nfsfileShareDefaults: nfsfileShareDefaults,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      fileShareARN: fileShareARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMaintenanceStartTime = {
  type t
  @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>UpdateMaintenanceStartTimeInput$DayOfMonth</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateMaintenanceStartTimeInput$HourOfDay</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>The day of the month component of the maintenance start time represented as an ordinal
         number from 1 to 28, where 1 represents the first day of the month and 28 represents the
         last day of the month.</p>")
    @as("DayOfMonth")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>The day of the week component of the maintenance start time week represented as an
         ordinal number from 0 to 6, where 0 represents Sunday and 6 Saturday.</p>")
    @as("DayOfWeek")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The minute component of the maintenance start time represented as
            <i>mm</i>, where <i>mm</i> is the minute (00 to 59). The
         minute of the hour is in the time zone of the gateway.</p>")
    @as("MinuteOfHour")
    minuteOfHour: minuteOfHour,
    @ocaml.doc("<p>The hour component of the maintenance start time represented as <i>hh</i>,
         where <i>hh</i> is the hour (00 to 23). The hour of the day is in the time
         zone of the gateway.</p>")
    @as("HourOfDay")
    hourOfDay: hourOfDay,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose maintenance
         start time is updated.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateMaintenanceStartTimeCommand"
  let make = (~minuteOfHour, ~hourOfDay, ~gatewayARN, ~dayOfMonth=?, ~dayOfWeek=?, ()) =>
    new({
      dayOfMonth: dayOfMonth,
      dayOfWeek: dayOfWeek,
      minuteOfHour: minuteOfHour,
      hourOfDay: hourOfDay,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewaySoftwareNow = {
  type t
  @ocaml.doc(
    "<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to update.</p>"
  )
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
         updated.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateGatewaySoftwareNowCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGatewayInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that you want to use
         to monitor and log events in the gateway.</p>

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html\">What is Amazon CloudWatch
            Logs?</a>
         </p>")
    @as("CloudWatchLogGroupARN")
    cloudWatchLogGroupARN: option<cloudWatchLogGroupARN>,
    @ocaml.doc("<p>A value that indicates the time zone of the gateway.</p>") @as("GatewayTimezone")
    gatewayTimezone: option<gatewayTimezone>,
    @as("GatewayName") gatewayName: option<gatewayName>,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
         updated.</p>")
  type response = {
    @ocaml.doc("<p>The name you configured for your gateway.</p>") @as("GatewayName")
    gatewayName: option<string_>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateGatewayInformationCommand"
  let make = (~gatewayARN, ~cloudWatchLogGroupARN=?, ~gatewayTimezone=?, ~gatewayName=?, ()) =>
    new({
      cloudWatchLogGroupARN: cloudWatchLogGroupARN,
      gatewayTimezone: gatewayTimezone,
      gatewayName: gatewayName,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystemAssociation = {
  type t
  type request = {
    @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>")
    @as("AuditDestinationARN")
    auditDestinationARN: option<auditDestinationARN>,
    @ocaml.doc("<p>The password of the user credential.</p>") @as("Password")
    password: option<domainUserPassword>,
    @ocaml.doc("<p>The user name of the user credential that has permission to access the root share D$ of
         the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin
         user group.</p>")
    @as("UserName")
    userName: option<domainUserName>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the file system association that you want to update.</p>"
    )
    @as("FileSystemAssociationARN")
    fileSystemAssociationARN: fileSystemAssociationARN,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the updated file system association.</p>")
    @as("FileSystemAssociationARN")
    fileSystemAssociationARN: option<fileSystemAssociationARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateFileSystemAssociationCommand"
  let make = (
    ~fileSystemAssociationARN,
    ~cacheAttributes=?,
    ~auditDestinationARN=?,
    ~password=?,
    ~userName=?,
    (),
  ) =>
    new({
      cacheAttributes: cacheAttributes,
      auditDestinationARN: auditDestinationARN,
      password: password,
      userName: userName,
      fileSystemAssociationARN: fileSystemAssociationARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateChapCredentials = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>UpdateChapCredentialsInput$InitiatorName</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a>
               </p>

            </li>
            <li>
               <p>
                  <a>UpdateChapCredentialsInput$TargetARN</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>The secret key that the target must provide to participate in mutual CHAP with the
         initiator (e.g. Windows client).</p>

         <p>Byte constraints: Minimum bytes of 12. Maximum bytes of 16.</p>

         <note>
            <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
         </note>")
    @as("SecretToAuthenticateTarget")
    secretToAuthenticateTarget: option<chapSecret>,
    @ocaml.doc("<p>The iSCSI initiator that connects to the target.</p>") @as("InitiatorName")
    initiatorName: iqnName,
    @ocaml.doc("<p>The secret key that the initiator (for example, the Windows client) must provide to
         participate in mutual CHAP with the target.</p>

         <note>
            <p>The secret key must be between 12 and 16 bytes when encoded in UTF-8.</p>
         </note>")
    @as("SecretToAuthenticateInitiator")
    secretToAuthenticateInitiator: chapSecret,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return the TargetARN for specified
         VolumeARN.</p>")
    @as("TargetARN")
    targetARN: targetARN,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The iSCSI initiator that connects to the target. This is the same initiator name
         specified in the request.</p>")
    @as("InitiatorName")
    initiatorName: option<iqnName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target. This is the same target specified in the
         request.</p>")
    @as("TargetARN")
    targetARN: option<targetARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateChapCredentialsCommand"
  let make = (
    ~initiatorName,
    ~secretToAuthenticateInitiator,
    ~targetARN,
    ~secretToAuthenticateTarget=?,
    (),
  ) =>
    new({
      secretToAuthenticateTarget: secretToAuthenticateTarget,
      initiatorName: initiatorName,
      secretToAuthenticateInitiator: secretToAuthenticateInitiator,
      targetARN: targetARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBandwidthRateLimit = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a>
               </p>
            </li>
            <li>
               <p>
                  <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>The average download bandwidth rate limit in bits per second.</p>")
    @as("AverageDownloadRateLimitInBitsPerSec")
    averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
    @ocaml.doc("<p>The average upload bandwidth rate limit in bits per second.</p>")
    @as("AverageUploadRateLimitInBitsPerSec")
    averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose throttle
         information was updated.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateBandwidthRateLimitCommand"
  let make = (
    ~gatewayARN,
    ~averageDownloadRateLimitInBitsPerSec=?,
    ~averageUploadRateLimitInBitsPerSec=?,
    (),
  ) =>
    new({
      averageDownloadRateLimitInBitsPerSec: averageDownloadRateLimitInBitsPerSec,
      averageUploadRateLimitInBitsPerSec: averageUploadRateLimitInBitsPerSec,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAutomaticTapeCreationPolicy = {
  type t
  type request = {
    @as("GatewayARN") gatewayARN: gatewayARN,
    @ocaml.doc("<p>An automatic tape creation policy consists of a list of automatic tape creation rules.
         The rules determine when and how to automatically create new tapes.</p>")
    @as("AutomaticTapeCreationRules")
    automaticTapeCreationRules: automaticTapeCreationRules,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateAutomaticTapeCreationPolicyCommand"
  let make = (~gatewayARN, ~automaticTapeCreationRules, ()) =>
    new({gatewayARN: gatewayARN, automaticTapeCreationRules: automaticTapeCreationRules})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartGateway = {
  type t
  @ocaml.doc(
    "<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to start.</p>"
  )
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
         restarted.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "StartGatewayCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAvailabilityMonitorTest = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "StartAvailabilityMonitorTestCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ShutdownGateway = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway to shut
         down.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was shut
         down.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ShutdownGatewayCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetSMBGuestPassword = {
  type t
  @ocaml.doc("<p>SetSMBGuestPasswordInput</p>")
  type request = {
    @ocaml.doc("<p>The password that you want to set for your SMB server.</p>") @as("Password")
    password: smbguestPassword,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file gateway the SMB file share is associated
         with.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "SetSMBGuestPasswordCommand"
  let make = (~password, ~gatewayARN, ()) => new({password: password, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetLocalConsolePassword = {
  type t
  @ocaml.doc("<p>SetLocalConsolePasswordInput</p>")
  type request = {
    @ocaml.doc("<p>The password you want to set for your VM local console.</p>")
    @as("LocalConsolePassword")
    localConsolePassword: localConsolePassword,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "SetLocalConsolePasswordCommand"
  let make = (~localConsolePassword, ~gatewayARN, ()) =>
    new({localConsolePassword: localConsolePassword, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetrieveTapeRecoveryPoint = {
  type t
  @ocaml.doc("<p>RetrieveTapeRecoveryPointInput</p>")
  type request = {
    @as("GatewayARN") gatewayARN: gatewayARN,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape for which you want to retrieve the
         recovery point.</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
  }
  @ocaml.doc("<p>RetrieveTapeRecoveryPointOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape for which the recovery point was
         retrieved.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "RetrieveTapeRecoveryPointCommand"
  let make = (~gatewayARN, ~tapeARN, ()) => new({gatewayARN: gatewayARN, tapeARN: tapeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetrieveTapeArchive = {
  type t
  @ocaml.doc("<p>RetrieveTapeArchiveInput</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway you want to retrieve the virtual tape to.
         Use the <a>ListGateways</a> operation to return a list of gateways for your
         account and AWS Region.</p>

         <p>You retrieve archived virtual tapes to only one gateway and the gateway must be a tape
         gateway.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape you want to retrieve from the virtual
         tape shelf (VTS).</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
  }
  @ocaml.doc("<p>RetrieveTapeArchiveOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the retrieved virtual tape.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "RetrieveTapeArchiveCommand"
  let make = (~gatewayARN, ~tapeARN, ()) => new({gatewayARN: gatewayARN, tapeARN: tapeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetCache = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "ResetCacheCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  @ocaml.doc("<p>RemoveTagsFromResourceInput</p>")
  type request = {
    @ocaml.doc("<p>The keys of the tags you want to remove from the specified resource. A tag is composed
         of a key-value pair.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource you want to remove the tags from.</p>"
    )
    @as("ResourceARN")
    resourceARN: resourceARN,
  }
  @ocaml.doc("<p>RemoveTagsFromResourceOutput</p>")
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource that the tags were removed from.</p>"
    )
    @as("ResourceARN")
    resourceARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RefreshCache = {
  type t
  @ocaml.doc("<p>RefreshCacheInput</p>")
  type request = {
    @ocaml.doc("<p>A value that specifies whether to recursively refresh folders in the cache. The refresh
         includes folders that were in the cache the last time the gateway listed the folder's
         contents. If this value set to <code>true</code>, each folder that is listed in
            <code>FolderList</code> is recursively updated. Otherwise, subfolders listed in
            <code>FolderList</code> are not refreshed. Only objects that are in folders listed
         directly under <code>FolderList</code> are found and used for the update. The default is
            <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("Recursive")
    recursive: option<boolean_>,
    @ocaml.doc("<p>A comma-separated list of the paths of folders to refresh in the cache. The default is
            [<code>\"/\"</code>]. The default refreshes objects and folders at the root of the Amazon
         S3 bucket. If <code>Recursive</code> is set to <code>true</code>, the entire S3 bucket that
         the file share has access to is refreshed.</p>")
    @as("FolderList")
    folderList: option<folderList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file share you want to refresh.</p>")
    @as("FileShareARN")
    fileShareARN: fileShareARN,
  }
  @ocaml.doc("<p>RefreshCacheOutput</p>")
  type response = {
    @as("NotificationId") notificationId: option<notificationId>,
    @as("FileShareARN") fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "RefreshCacheCommand"
  let make = (~fileShareARN, ~recursive=?, ~folderList=?, ()) =>
    new({recursive: recursive, folderList: folderList, fileShareARN: fileShareARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module NotifyWhenUploaded = {
  type t
  type request = {@as("FileShareARN") fileShareARN: fileShareARN}
  type response = {
    @as("NotificationId") notificationId: option<notificationId>,
    @as("FileShareARN") fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "NotifyWhenUploadedCommand"
  let make = (~fileShareARN, ()) => new({fileShareARN: fileShareARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVolumes = {
  type t
  @ocaml.doc("<p>A JSON object that contains one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListVolumesInput$Limit</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListVolumesInput$Marker</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>Specifies that the list of volumes returned be limited to the specified number of
         items.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>A string that indicates the position at which to begin the returned list of volumes.
         Obtain the marker from the response of a previous List iSCSI Volumes request.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListVolumesOutput$Marker</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListVolumesOutput$VolumeInfos</a>
               </p>
            </li>
         </ul>")
  type response = {
    @ocaml.doc("<p>An array of <a>VolumeInfo</a> objects, where each object describes an iSCSI
         volume. If no volumes are defined for the gateway, then <code>VolumeInfos</code> is an
         empty array \"[]\".</p>")
    @as("VolumeInfos")
    volumeInfos: option<volumeInfos>,
    @ocaml.doc("<p>Use the marker in your next request to continue pagination of iSCSI volumes. If there
         are no more volumes to list, this field does not appear in the response body.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "ListVolumesCommand"
  let make = (~limit=?, ~marker=?, ~gatewayARN=?, ()) =>
    new({limit: limit, marker: marker, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVolumeRecoveryPoints = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>An array of <a>VolumeRecoveryPointInfo</a> objects.</p>")
    @as("VolumeRecoveryPointInfos")
    volumeRecoveryPointInfos: option<volumeRecoveryPointInfos>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListVolumeRecoveryPointsCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVolumeInitiators = {
  type t
  @ocaml.doc("<p>ListVolumeInitiatorsInput</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes for the gateway.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  @ocaml.doc("<p>ListVolumeInitiatorsOutput</p>")
  type response = {
    @ocaml.doc("<p>The host names and port numbers of all iSCSI initiators that are connected to the
         gateway.</p>")
    @as("Initiators")
    initiators: option<initiators>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListVolumeInitiatorsCommand"
  let make = (~volumeARN, ()) => new({volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTapes = {
  type t
  @ocaml.doc("<p>A JSON object that contains one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListTapesInput$Limit</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListTapesInput$Marker</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListTapesInput$TapeARNs</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>An optional number limit for the tapes in the list returned by this call.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>A string that indicates the position at which to begin the returned list of
         tapes.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("TapeARNs") tapeARNs: option<tapeARNs>,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListTapesOutput$Marker</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListTapesOutput$VolumeInfos</a>
               </p>
            </li>
         </ul>")
  type response = {
    @ocaml.doc("<p>A string that indicates the position at which to begin returning the next list of tapes.
         Use the marker in your next request to continue pagination of tapes. If there are no more
         tapes to list, this element does not appear in the response body.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("TapeInfos") tapeInfos: option<tapeInfos>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "ListTapesCommand"
  let make = (~limit=?, ~marker=?, ~tapeARNs=?, ()) =>
    new({limit: limit, marker: marker, tapeARNs: tapeARNs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTapePools = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional number limit for the tape pools in the list returned by this call.</p>"
    )
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>A string that indicates the position at which to begin the returned list of tape
         pools.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of each of the custom tape pools you want to list. If you
         don't specify a custom tape pool ARN, the response lists all custom tape pools. </p>")
    @as("PoolARNs")
    poolARNs: option<poolARNs>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates the position at which to begin the returned list of tape pools.
         Use the marker in your next request to continue pagination of tape pools. If there are no
         more tape pools to list, this element does not appear in the response body. </p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of <code>PoolInfo</code> objects, where each object describes a single custom
         tape pool. If there are no custom tape pools, the <code>PoolInfos</code> is an empty array.
      </p>")
    @as("PoolInfos")
    poolInfos: option<poolInfos>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "ListTapePoolsCommand"
  let make = (~limit=?, ~marker=?, ~poolARNs=?, ()) =>
    new({limit: limit, marker: marker, poolARNs: poolARNs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p>ListTagsForResourceInput</p>")
  type request = {
    @ocaml.doc("<p>Specifies that the list of tags returned be limited to the specified number of
         items.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin returning the list of
         tags.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>"
    )
    @as("ResourceARN")
    resourceARN: resourceARN,
  }
  @ocaml.doc("<p>ListTagsForResourceOutput</p>")
  type response = {
    @ocaml.doc("<p>An array that contains the tags for the specified resource.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to stop returning the list of
         tags.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>"
    )
    @as("ResourceARN")
    resourceARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~limit=?, ~marker=?, ()) =>
    new({limit: limit, marker: marker, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGateways = {
  type t
  @ocaml.doc("<p>A JSON object containing zero or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListGatewaysInput$Limit</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ListGatewaysInput$Marker</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>Specifies that the list of gateways returned be limited to the specified number of
         items.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin the returned list of
         gateways.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  type response = {
    @ocaml.doc("<p>Use the marker in your next request to fetch the next set of gateways in the list. If
         there are no more gateways to list, this field does not appear in the response.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of <a>GatewayInfo</a> objects.</p>") @as("Gateways")
    gateways: option<gateways>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "ListGatewaysCommand"
  let make = (~limit=?, ~marker=?, ()) => new({limit: limit, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFileSystemAssociations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Opaque pagination token returned from a previous <code>ListFileSystemAssociations</code> operation. If present, <code>Marker</code> specifies where to continue the list from after a previous call to <code>ListFileSystemAssociations</code>. Optional.</p>"
    )
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc(
      "<p>The maximum number of file system associations to return in the response. If present, <code>Limit</code> must be an integer with a value greater than zero. Optional.</p>"
    )
    @as("Limit")
    limit: option<positiveIntObject>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of information about the Amazon FSx gateway's file system associations.</p>"
    )
    @as("FileSystemAssociationSummaryList")
    fileSystemAssociationSummaryList: option<fileSystemAssociationSummaryList>,
    @ocaml.doc("<p>If a value is present, there are more file system associations to return. 
         In a subsequent request, use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set of file system associations.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc(
      "<p>If the request includes <code>Marker</code>, the response returns that value in this field.</p>"
    )
    @as("Marker")
    marker: option<marker>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListFileSystemAssociationsCommand"
  let make = (~marker=?, ~limit=?, ~gatewayARN=?, ()) =>
    new({marker: marker, limit: limit, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFileShares = {
  type t
  @ocaml.doc("<p>ListFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>Opaque pagination token returned from a previous ListFileShares operation. If present,
            <code>Marker</code> specifies where to continue the list from after a previous call to
         ListFileShares. Optional.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>The maximum number of file shares to return in the response. The value must be an
         integer with a value greater than zero. Optional.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway whose file shares you want to list. If
         this field is not present, all file shares under your account are listed.</p>")
    @as("GatewayARN")
    gatewayARN: option<gatewayARN>,
  }
  @ocaml.doc("<p>ListFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>An array of information about the file gateway's file shares.</p>")
    @as("FileShareInfoList")
    fileShareInfoList: option<fileShareInfoList>,
    @ocaml.doc("<p>If a value is present, there are more file shares to return. In a subsequent request,
         use <code>NextMarker</code> as the value for <code>Marker</code> to retrieve the next set
         of file shares.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>If the request includes <code>Marker</code>, the response returns that value in this
         field.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListFileSharesCommand"
  let make = (~marker=?, ~limit=?, ~gatewayARN=?, ()) =>
    new({marker: marker, limit: limit, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module JoinDomain = {
  type t
  @ocaml.doc("<p>JoinDomainInput</p>")
  type request = {
    @ocaml.doc("<p>Sets the password of the user who has permission to add the gateway to the Active
         Directory domain.</p>")
    @as("Password")
    password: domainUserPassword,
    @ocaml.doc("<p>Sets the user name of user who has permission to add the gateway to the Active Directory
         domain. The domain user account should be enabled to join computers to the domain. For
         example, you can use the domain administrator account or an account with delegated
         permissions to join computers to the domain.</p>")
    @as("UserName")
    userName: domainUserName,
    @ocaml.doc("<p>Specifies the time in seconds, in which the <code>JoinDomain</code> operation must
         complete. The default is 20 seconds.</p>")
    @as("TimeoutInSeconds")
    timeoutInSeconds: option<timeoutInSeconds>,
    @ocaml.doc("<p>List of IPv4 addresses, NetBIOS names, or host names of your domain server. If you need
         to specify the port number include it after the colon (“:”). For example,
            <code>mydc.mydomain.com:389</code>.</p>")
    @as("DomainControllers")
    domainControllers: option<hosts>,
    @ocaml.doc("<p>The organizational unit (OU) is a container in an Active Directory that can hold users,
         groups, computers, and other OUs and this parameter specifies the OU that the gateway will
         join within the AD domain.</p>")
    @as("OrganizationalUnit")
    organizationalUnit: option<organizationalUnit>,
    @ocaml.doc("<p>The name of the domain that you want the gateway to join.</p>") @as("DomainName")
    domainName: domainName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code>
         operation to return a list of gateways for your account and AWS Region.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>JoinDomainOutput</p>")
  type response = {
    @ocaml.doc("<p>Indicates the status of the gateway as a member of the Active Directory domain.</p>

         <ul>
            <li>
               <p>
                  <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation
               failed due to an authentication error.</p>
            </li>
            <li>
               <p>
                  <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>
            </li>
            <li>
               <p>
                  <code>JOINED</code>: Indicates that the gateway has successfully joined a
               domain.</p>
            </li>
            <li>
               <p>
                  <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in
               progress.</p>
            </li>
            <li>
               <p>
                  <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation
               failed due to a network or connectivity error.</p>
            </li>
            <li>
               <p>
                  <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed
               because the operation didn't complete within the allotted time.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation
               failed due to another type of error.</p>
            </li>
         </ul>")
    @as("ActiveDirectoryStatus")
    activeDirectoryStatus: option<activeDirectoryStatus>,
    @ocaml.doc(
      "<p>The unique Amazon Resource Name (ARN) of the gateway that joined the domain.</p>"
    )
    @as("GatewayARN")
    gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "JoinDomainCommand"
  let make = (
    ~password,
    ~userName,
    ~domainName,
    ~gatewayARN,
    ~timeoutInSeconds=?,
    ~domainControllers=?,
    ~organizationalUnit=?,
    (),
  ) =>
    new({
      password: password,
      userName: userName,
      timeoutInSeconds: timeoutInSeconds,
      domainControllers: domainControllers,
      organizationalUnit: organizationalUnit,
      domainName: domainName,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFileSystem = {
  type t
  type request = {
    @ocaml.doc("<p>If this value is set to true, the operation disassociates an Amazon FSx file system
         immediately. It ends all data uploads to the file system, and the file system association
         enters the <code>FORCE_DELETING</code> status. If this value is set to false, the Amazon
         FSx file system does not disassociate until all data is uploaded.</p>")
    @as("ForceDelete")
    forceDelete: option<boolean2>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the file system association to be deleted.</p>"
    )
    @as("FileSystemAssociationARN")
    fileSystemAssociationARN: fileSystemAssociationARN,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted file system association.</p>")
    @as("FileSystemAssociationARN")
    fileSystemAssociationARN: option<fileSystemAssociationARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DisassociateFileSystemCommand"
  let make = (~fileSystemAssociationARN, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, fileSystemAssociationARN: fileSystemAssociationARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableGateway = {
  type t
  @ocaml.doc("<p>DisableGatewayInput</p>") type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>DisableGatewayOutput</p>")
  type response = {
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) of the disabled gateway.</p>")
    @as("GatewayARN")
    gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DisableGatewayCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachVolume = {
  type t
  @ocaml.doc("<p>AttachVolumeInput</p>")
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to forcibly remove the iSCSI connection of the target volume
         and detach the volume. The default is <code>false</code>. If this value is set to
            <code>false</code>, you must manually disconnect the iSCSI connection from the target
         volume.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ForceDetach")
    forceDetach: option<boolean_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume to detach from the gateway.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  @ocaml.doc("<p>AttachVolumeOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume that was detached.</p>")
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DetachVolumeCommand"
  let make = (~volumeARN, ~forceDetach=?, ()) =>
    new({forceDetach: forceDetach, volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeWorkingStorage = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The total working storage in bytes allocated for the gateway. If no working storage is
         configured for the gateway, this field returns 0.</p>")
    @as("WorkingStorageAllocatedInBytes")
    workingStorageAllocatedInBytes: option<long>,
    @ocaml.doc("<p>The total working storage in bytes in use by the gateway. If no working storage is
         configured for the gateway, this field returns 0.</p>")
    @as("WorkingStorageUsedInBytes")
    workingStorageUsedInBytes: option<long>,
    @ocaml.doc("<p>An array of the gateway's local disk IDs that are configured as working storage.
         Each local disk ID is specified as a string (minimum length of 1 and maximum length of
         300). If no local disks are configured as working storage, then the DiskIds array is
         empty.</p>")
    @as("DiskIds")
    diskIds: option<diskIds>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeWorkingStorageCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUploadBuffer = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>The total number of bytes allocated in the gateway's as upload buffer.</p>")
    @as("UploadBufferAllocatedInBytes")
    uploadBufferAllocatedInBytes: option<long>,
    @ocaml.doc("<p>The total number of bytes being used in the gateway's upload buffer.</p>")
    @as("UploadBufferUsedInBytes")
    uploadBufferUsedInBytes: option<long>,
    @ocaml.doc("<p>An array of the gateway's local disk IDs that are configured as working storage.
         Each local disk ID is specified as a string (minimum length of 1 and maximum length of
         300). If no local disks are configured as working storage, then the DiskIds array is
         empty.</p>")
    @as("DiskIds")
    diskIds: option<diskIds>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeUploadBufferCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTapes = {
  type t
  @ocaml.doc("<p>DescribeTapesInput</p>")
  type request = {
    @ocaml.doc("<p>Specifies that the number of virtual tapes described be limited to the specified
         number.</p>

         <note>
            <p>Amazon Web Services may impose its own limit, if this field is not set.</p>
         </note>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>A marker value, obtained in a previous call to <code>DescribeTapes</code>. This marker
         indicates which page of results to retrieve.</p>

         <p>If not specified, the first page of results is retrieved.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
         tapes you want to describe. If this parameter is not specified, Tape gateway returns a
         description of all virtual tapes associated with the specified gateway.</p>")
    @as("TapeARNs")
    tapeARNs: option<tapeARNs>,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>DescribeTapesOutput</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that can be used as part of a subsequent <code>DescribeTapes</code>
         call to retrieve the next page of results.</p>

         <p>If a response does not contain a marker, then there are no more results to be
         retrieved.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of virtual tape descriptions.</p>") @as("Tapes") tapes: option<tapes>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DescribeTapesCommand"
  let make = (~gatewayARN, ~limit=?, ~marker=?, ~tapeARNs=?, ()) =>
    new({limit: limit, marker: marker, tapeARNs: tapeARNs, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTapeRecoveryPoints = {
  type t
  @ocaml.doc("<p>DescribeTapeRecoveryPointsInput</p>")
  type request = {
    @ocaml.doc("<p>Specifies that the number of virtual tape recovery points that are described be limited
         to the specified number.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin describing the virtual
         tape recovery points.</p>")
    @as("Marker")
    marker: option<marker>,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>DescribeTapeRecoveryPointsOutput</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which the virtual tape recovery points
         that were listed for description ended.</p>

         <p>Use this marker in your next request to list the next set of virtual tape recovery
         points in the list. If there are no more recovery points to describe, this field does not
         appear in the response.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc(
      "<p>An array of TapeRecoveryPointInfos that are available for the specified gateway.</p>"
    )
    @as("TapeRecoveryPointInfos")
    tapeRecoveryPointInfos: option<tapeRecoveryPointInfos>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeTapeRecoveryPointsCommand"
  let make = (~gatewayARN, ~limit=?, ~marker=?, ()) =>
    new({limit: limit, marker: marker, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTapeArchives = {
  type t
  @ocaml.doc("<p>DescribeTapeArchivesInput</p>")
  type request = {
    @ocaml.doc("<p>Specifies that the number of virtual tapes described be limited to the specified
         number.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin describing virtual
         tapes.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual
         tapes you want to describe.</p>")
    @as("TapeARNs")
    tapeARNs: option<tapeARNs>,
  }
  @ocaml.doc("<p>DescribeTapeArchivesOutput</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which the virtual tapes that were
         fetched for description ended. Use this marker in your next request to fetch the next set
         of virtual tapes in the virtual tape shelf (VTS). If there are no more virtual tapes to
         describe, this field does not appear in the response.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of virtual tape objects in the virtual tape shelf (VTS). The description
         includes of the Amazon Resource Name (ARN) of the virtual tapes. The information returned
         includes the Amazon Resource Names (ARNs) of the tapes, size of the tapes, status of the
         tapes, progress of the description, and tape barcode.</p>")
    @as("TapeArchives")
    tapeArchives: option<tapeArchives>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeTapeArchivesCommand"
  let make = (~limit=?, ~marker=?, ~tapeARNs=?, ()) =>
    new({limit: limit, marker: marker, tapeARNs: tapeARNs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotSchedule = {
  type t
  @ocaml.doc("<p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a>
         of the volume.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  type response = {
    @ocaml.doc("<p>A list of up to 50 tags assigned to the snapshot schedule, sorted alphabetically by key
         name. Each tag is a key-value pair. For a gateway with more than 10 tags assigned, you can
         view all tags using the <code>ListTagsForResource</code> API operation.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A value that indicates the time zone of the gateway.</p>") @as("Timezone")
    timezone: option<gatewayTimezone>,
    @ocaml.doc("<p>The snapshot description.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The number of hours between snapshots.</p>") @as("RecurrenceInHours")
    recurrenceInHours: option<recurrenceInHours>,
    @ocaml.doc("<p>The hour of the day at which the snapshot schedule begins represented as
            <i>hh</i>, where <i>hh</i> is the hour (0 to 23). The hour
         of the day is in the time zone of the gateway.</p>")
    @as("StartAt")
    startAt: option<hourOfDay>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the volume that was specified in the request.</p>"
    )
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeSnapshotScheduleCommand"
  let make = (~volumeARN, ()) => new({volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSMBSettings = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>The shares on this gateway appear when listing shares.</p>")
    @as("FileSharesVisible")
    fileSharesVisible: option<boolean_>,
    @ocaml.doc("<p>The type of security strategy that was specified for file gateway.</p>

         <ul>
            <li>
               <p>
                  <code>ClientSpecified</code>: If you use this option, requests are established
               based on what is negotiated by the client. This option is recommended when you want
               to maximize compatibility across different clients in your environment.</p>
            </li>
            <li>
               <p>
                  <code>MandatorySigning</code>: If you use this option, file gateway only allows
               connections from SMBv2 or SMBv3 clients that have signing enabled. This option works
               with SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.</p>
            </li>
            <li>
               <p>
                  <code>MandatoryEncryption</code>: If you use this option, file gateway only allows
               connections from SMBv3 clients that have encryption enabled. This option is highly
               recommended for environments that handle sensitive data. This option works with SMB
               clients on Microsoft Windows 8, Windows Server 2012 or newer.</p>
            </li>
         </ul>")
    @as("SMBSecurityStrategy")
    smbsecurityStrategy: option<smbsecurityStrategy>,
    @ocaml.doc("<p>This value is <code>true</code> if a password for the guest user <code>smbguest</code>
         is set, otherwise <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("SMBGuestPasswordSet")
    smbguestPasswordSet: option<boolean_>,
    @ocaml.doc("<p>Indicates the status of a gateway that is a member of the Active Directory
         domain.</p>

         <ul>
            <li>
               <p>
                  <code>ACCESS_DENIED</code>: Indicates that the <code>JoinDomain</code> operation
               failed due to an authentication error.</p>
            </li>
            <li>
               <p>
                  <code>DETACHED</code>: Indicates that gateway is not joined to a domain.</p>
            </li>
            <li>
               <p>
                  <code>JOINED</code>: Indicates that the gateway has successfully joined a
               domain.</p>
            </li>
            <li>
               <p>
                  <code>JOINING</code>: Indicates that a <code>JoinDomain</code> operation is in
               progress.</p>
            </li>
            <li>
               <p>
                  <code>NETWORK_ERROR</code>: Indicates that <code>JoinDomain</code> operation
               failed due to a network or connectivity error.</p>
            </li>
            <li>
               <p>
                  <code>TIMEOUT</code>: Indicates that the <code>JoinDomain</code> operation failed
               because the operation didn't complete within the allotted time.</p>
            </li>
            <li>
               <p>
                  <code>UNKNOWN_ERROR</code>: Indicates that the <code>JoinDomain</code> operation
               failed due to another type of error.</p>
            </li>
         </ul>")
    @as("ActiveDirectoryStatus")
    activeDirectoryStatus: option<activeDirectoryStatus>,
    @ocaml.doc("<p>The name of the domain that the gateway is joined to.</p>") @as("DomainName")
    domainName: option<domainName>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeSMBSettingsCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMaintenanceStartTime = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>DescribeMaintenanceStartTimeOutput$DayOfMonth</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceStartTimeOutput$DayOfWeek</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceStartTimeOutput$HourOfDay</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceStartTimeOutput$MinuteOfHour</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DescribeMaintenanceStartTimeOutput$Timezone</a>
               </p>
            </li>
         </ul>")
  type response = {
    @ocaml.doc("<p>A value that indicates the time zone that is set for the gateway. The start time and day
         of week specified should be in the time zone of the gateway.</p>")
    @as("Timezone")
    timezone: option<gatewayTimezone>,
    @ocaml.doc("<p>The day of the month component of the maintenance start time represented as an ordinal
         number from 1 to 28, where 1 represents the first day of the month and 28 represents the
         last day of the month.</p>")
    @as("DayOfMonth")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>An ordinal number between 0 and 6 that represents the day of the week, where 0
         represents Sunday and 6 represents Saturday. The day of week is in the time zone of the
         gateway.</p>")
    @as("DayOfWeek")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The minute component of the maintenance start time represented as
            <i>mm</i>, where <i>mm</i> is the minute (0 to 59). The
         minute of the hour is in the time zone of the gateway.</p>")
    @as("MinuteOfHour")
    minuteOfHour: option<minuteOfHour>,
    @ocaml.doc("<p>The hour component of the maintenance start time represented as <i>hh</i>,
         where <i>hh</i> is the hour (0 to 23). The hour of the day is in the time
         zone of the gateway.</p>")
    @as("HourOfDay")
    hourOfDay: option<hourOfDay>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeMaintenanceStartTimeCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGatewayInformation = {
  type t
  @ocaml.doc("<p>A JSON object containing the ID of the gateway.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>Date after which this gateway will not receive software updates for new features and bug
         fixes.</p>")
    @as("DeprecationDate")
    deprecationDate: option<deprecationDate>,
    @ocaml.doc(
      "<p>Date after which this gateway will not receive software updates for new features.</p>"
    )
    @as("SoftwareUpdatesEndDate")
    softwareUpdatesEndDate: option<softwareUpdatesEndDate>,
    @ocaml.doc("<p>The type of endpoint for your gateway.</p>

         <p>Valid Values: <code>STANDARD</code> | <code>FIPS</code>
         </p>")
    @as("EndpointType")
    endpointType: option<endpointType>,
    @ocaml.doc("<p>The type of hypervisor environment used by the host.</p>") @as("HostEnvironment")
    hostEnvironment: option<hostEnvironment>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to
         monitor events in the gateway.</p>")
    @as("CloudWatchLogGroupARN")
    cloudWatchLogGroupARN: option<cloudWatchLogGroupARN>,
    @ocaml.doc("<p>The configuration settings for the virtual private cloud (VPC) endpoint for your
         gateway.</p>")
    @as("VPCEndpoint")
    vpcendpoint: option<string_>,
    @ocaml.doc("<p>A list of up to 50 tags assigned to the gateway, sorted alphabetically by key name. Each
         tag is a key-value pair. For a gateway with more than 10 tags assigned, you can view all
         tags using the <code>ListTagsForResource</code> API operation.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The AWS Region where the Amazon EC2 instance is located.</p>")
    @as("Ec2InstanceRegion")
    ec2InstanceRegion: option<ec2InstanceRegion>,
    @ocaml.doc("<p>The ID of the Amazon EC2 instance that was used to launch the gateway.</p>")
    @as("Ec2InstanceId")
    ec2InstanceId: option<ec2InstanceId>,
    @ocaml.doc("<p>The date on which the last software update was applied to the gateway. If the gateway
         has never been updated, this field does not return a value in the response.</p>")
    @as("LastSoftwareUpdate")
    lastSoftwareUpdate: option<lastSoftwareUpdate>,
    @ocaml.doc("<p>The date on which an update to the gateway is available. This date is in the time zone
         of the gateway. If the gateway is not available for an update this field is not returned in
         the response.</p>")
    @as("NextUpdateAvailabilityDate")
    nextUpdateAvailabilityDate: option<nextUpdateAvailabilityDate>,
    @ocaml.doc("<p>The type of the gateway.</p>") @as("GatewayType")
    gatewayType: option<gatewayType>,
    @ocaml.doc("<p>A <a>NetworkInterface</a> array that contains descriptions of the gateway
         network interfaces.</p>")
    @as("GatewayNetworkInterfaces")
    gatewayNetworkInterfaces: option<gatewayNetworkInterfaces>,
    @ocaml.doc("<p>A value that indicates the operating state of the gateway.</p>")
    @as("GatewayState")
    gatewayState: option<gatewayState>,
    @ocaml.doc("<p>A value that indicates the time zone configured for the gateway.</p>")
    @as("GatewayTimezone")
    gatewayTimezone: option<gatewayTimezone>,
    @ocaml.doc("<p>The name you configured for your gateway.</p>") @as("GatewayName")
    gatewayName: option<string_>,
    @ocaml.doc("<p>The unique identifier assigned to your gateway during activation. This ID becomes part
         of the gateway Amazon Resource Name (ARN), which you use as input for other
         operations.</p>")
    @as("GatewayId")
    gatewayId: option<gatewayId>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeGatewayInformationCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeChapCredentials = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume
         target.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
         specified VolumeARN.</p>")
    @as("TargetARN")
    targetARN: targetARN,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>An array of <a>ChapInfo</a> objects that represent CHAP credentials. Each
         object in the array contains CHAP credential information for one target-initiator pair. If
         no CHAP credentials are set, an empty array is returned. CHAP credential information is
         provided in a JSON object with the following fields:</p>

         <ul>
            <li>
               <p>
                  <b>InitiatorName</b>: The iSCSI initiator that connects to
               the target.</p>

            </li>
            <li>
               <p>
                  <b>SecretToAuthenticateInitiator</b>: The secret key that
               the initiator (for example, the Windows client) must provide to participate in mutual
               CHAP with the target.</p>

            </li>
            <li>
               <p>
                  <b>SecretToAuthenticateTarget</b>: The secret key that the
               target must provide to participate in mutual CHAP with the initiator (e.g. Windows
               client).</p>

            </li>
            <li>
               <p>
                  <b>TargetARN</b>: The Amazon Resource Name (ARN) of the
               storage volume.</p>

            </li>
         </ul>")
    @as("ChapCredentials")
    chapCredentials: option<chapCredentials>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeChapCredentialsCommand"
  let make = (~targetARN, ()) => new({targetARN: targetARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCache = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>Percent of application read operations from the file shares that are not served from
         cache. The sample is taken at the end of the reporting period.</p>")
    @as("CacheMissPercentage")
    cacheMissPercentage: option<double>,
    @ocaml.doc("<p>Percent of application read operations from the file shares that are served from cache.
         The sample is taken at the end of the reporting period.</p>")
    @as("CacheHitPercentage")
    cacheHitPercentage: option<double>,
    @ocaml.doc("<p>The file share's contribution to the overall percentage of the gateway's cache
         that has not been persisted to AWS. The sample is taken at the end of the reporting
         period.</p>")
    @as("CacheDirtyPercentage")
    cacheDirtyPercentage: option<double>,
    @ocaml.doc("<p>Percent use of the gateway's cache storage. This metric applies only to the
         gateway-cached volume setup. The sample is taken at the end of the reporting period.</p>")
    @as("CacheUsedPercentage")
    cacheUsedPercentage: option<double>,
    @ocaml.doc("<p>The amount of cache in bytes allocated to a gateway.</p>")
    @as("CacheAllocatedInBytes")
    cacheAllocatedInBytes: option<long>,
    @ocaml.doc("<p>An array of strings that identify disks that are to be configured as working storage.
         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
         from the <a>ListLocalDisks</a> API.</p>")
    @as("DiskIds")
    diskIds: option<diskIds>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DescribeCacheCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBandwidthRateLimit = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The average download bandwidth rate limit in bits per second. This field does not appear
         in the response if the download rate limit is not set.</p>")
    @as("AverageDownloadRateLimitInBitsPerSec")
    averageDownloadRateLimitInBitsPerSec: option<bandwidthDownloadRateLimit>,
    @ocaml.doc("<p>The average upload bandwidth rate limit in bits per second. This field does not appear
         in the response if the upload rate limit is not set.</p>")
    @as("AverageUploadRateLimitInBitsPerSec")
    averageUploadRateLimitInBitsPerSec: option<bandwidthUploadRateLimit>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeBandwidthRateLimitCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAvailabilityMonitorTest = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>The time the high availability monitoring test was started. If a test hasn't been
         performed, the value of this field is null.</p>")
    @as("StartTime")
    startTime: option<time>,
    @ocaml.doc("<p>The status of the high availability monitoring test. If a test hasn't been
         performed, the value of this field is null.</p>")
    @as("Status")
    status: option<availabilityMonitorTestStatus>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeAvailabilityMonitorTestCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteVolume = {
  type t
  @ocaml.doc("<p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to
         delete.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the storage volume that was
         deleted.</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage volume that was deleted. It is the same
         ARN you provided in the request.</p>")
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DeleteVolumeCommand"
  let make = (~volumeARN, ()) => new({volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTapePool = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom tape pool to delete.</p>")
    @as("PoolARN")
    poolARN: poolARN,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom tape pool being deleted.</p>")
    @as("PoolARN")
    poolARN: option<poolARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteTapePoolCommand"
  let make = (~poolARN, ()) => new({poolARN: poolARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTapeArchive = {
  type t
  @ocaml.doc("<p>DeleteTapeArchiveInput</p>")
  type request = {
    @ocaml.doc("<p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
         tape retention lock. Only archived tapes with tape retention lock set to
            <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
            <code>compliance</code> can't be deleted.</p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<boolean2>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape to delete from the virtual tape shelf
         (VTS).</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
  }
  @ocaml.doc("<p>DeleteTapeArchiveOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape that was deleted from the virtual
         tape shelf (VTS).</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteTapeArchiveCommand"
  let make = (~tapeARN, ~bypassGovernanceRetention=?, ()) =>
    new({bypassGovernanceRetention: bypassGovernanceRetention, tapeARN: tapeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTape = {
  type t
  @ocaml.doc("<p>DeleteTapeInput</p>")
  type request = {
    @ocaml.doc("<p>Set to <code>TRUE</code> to delete an archived tape that belongs to a custom pool with
         tape retention lock. Only archived tapes with tape retention lock set to
            <code>governance</code> can be deleted. Archived tapes with tape retention lock set to
            <code>compliance</code> can't be deleted.</p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<boolean2>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape to delete.</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) of the gateway that the virtual tape to delete is
         associated with. Use the <a>ListGateways</a> operation to return a list of
         gateways for your account and AWS Region.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>DeleteTapeOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted virtual tape.</p>") @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DeleteTapeCommand"
  let make = (~tapeARN, ~gatewayARN, ~bypassGovernanceRetention=?, ()) =>
    new({
      bypassGovernanceRetention: bypassGovernanceRetention,
      tapeARN: tapeARN,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSnapshotSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>The volume which snapshot schedule to delete.</p>") @as("VolumeARN")
    volumeARN: volumeARN,
  }
  type response = {
    @ocaml.doc("<p>The volume which snapshot schedule was deleted.</p>") @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteSnapshotScheduleCommand"
  let make = (~volumeARN, ()) => new({volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGateway = {
  type t
  @ocaml.doc("<p>A JSON object containing the ID of the gateway to delete.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  @ocaml.doc("<p>A JSON object containing the ID of the deleted gateway.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "DeleteGatewayCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFileShare = {
  type t
  @ocaml.doc("<p>DeleteFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>If this value is set to <code>true</code>, the operation deletes a file share
         immediately and aborts all data uploads to AWS. Otherwise, the file share is not deleted
         until all data is uploaded to AWS. This process aborts the data upload process, and the
         file share enters the <code>FORCE_DELETING</code> status.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ForceDelete")
    forceDelete: option<boolean2>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file share to be deleted.</p>")
    @as("FileShareARN")
    fileShareARN: fileShareARN,
  }
  @ocaml.doc("<p>DeleteFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted file share.</p>")
    @as("FileShareARN")
    fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteFileShareCommand"
  let make = (~fileShareARN, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, fileShareARN: fileShareARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteChapCredentials = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>DeleteChapCredentialsInput$InitiatorName</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DeleteChapCredentialsInput$TargetARN</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>The iSCSI initiator that connects to the target.</p>") @as("InitiatorName")
    initiatorName: iqnName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
         specified VolumeARN.</p>")
    @as("TargetARN")
    targetARN: targetARN,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The iSCSI initiator that connects to the target.</p>") @as("InitiatorName")
    initiatorName: option<iqnName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target.</p>") @as("TargetARN")
    targetARN: option<targetARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteChapCredentialsCommand"
  let make = (~initiatorName, ~targetARN, ()) =>
    new({initiatorName: initiatorName, targetARN: targetARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBandwidthRateLimit = {
  type t
  @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>DeleteBandwidthRateLimitInput$BandwidthType</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>One of the BandwidthType values that indicates the gateway bandwidth rate limit to
         delete.</p>

         <p>Valid Values: <code>UPLOAD</code> | <code>DOWNLOAD</code> | <code>ALL</code>
         </p>")
    @as("BandwidthType")
    bandwidthType: bandwidthType,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway whose bandwidth
         rate information was deleted.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteBandwidthRateLimitCommand"
  let make = (~bandwidthType, ~gatewayARN, ()) =>
    new({bandwidthType: bandwidthType, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAutomaticTapeCreationPolicy = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DeleteAutomaticTapeCreationPolicyCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTapes = {
  type t
  @ocaml.doc("<p>CreateTapesInput</p>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a virtual tape. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
         write-once-read-many (WORM) tape.</p>")
    @as("Worm")
    worm: option<boolean2>,
    @ocaml.doc("<p>The ID of the pool that you want to add your tape to for archiving. The tape in this
         pool is archived in the S3 storage class that is associated with the pool. When you use
         your backup application to eject the tape, the tape is archived directly into the storage
         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
    @as("PoolId")
    poolId: option<poolId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>A prefix that you append to the barcode of the virtual tape you are creating. This
         prefix makes the barcode unique.</p>

         <note>
            <p>The prefix must be 1-4 characters in length and must be one of the uppercase letters
            from A to Z.</p>
         </note>")
    @as("TapeBarcodePrefix")
    tapeBarcodePrefix: tapeBarcodePrefix,
    @ocaml.doc("<p>The number of virtual tapes that you want to create.</p>")
    @as("NumTapesToCreate")
    numTapesToCreate: numTapesToCreate,
    @ocaml.doc("<p>A unique identifier that you use to retry a request. If you retry a request, use the
         same <code>ClientToken</code> you specified in the initial request.</p>

         <note>
            <p>Using the same <code>ClientToken</code> prevents creating the tape multiple
            times.</p>
         </note>")
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>The size, in bytes, of the virtual tapes that you want to create.</p>

         <note>
            <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
         </note>")
    @as("TapeSizeInBytes")
    tapeSizeInBytes: tapeSize,
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
         virtual tapes with. Use the <a>ListGateways</a> operation to return a list of
         gateways for your account and AWS Region.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>CreateTapeOutput</p>")
  type response = {
    @ocaml.doc("<p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that
         were created.</p>")
    @as("TapeARNs")
    tapeARNs: option<tapeARNs>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "CreateTapesCommand"
  let make = (
    ~tapeBarcodePrefix,
    ~numTapesToCreate,
    ~clientToken,
    ~tapeSizeInBytes,
    ~gatewayARN,
    ~tags=?,
    ~worm=?,
    ~poolId=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    (),
  ) =>
    new({
      tags: tags,
      worm: worm,
      poolId: poolId,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      tapeBarcodePrefix: tapeBarcodePrefix,
      numTapesToCreate: numTapesToCreate,
      clientToken: clientToken,
      tapeSizeInBytes: tapeSizeInBytes,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTapeWithBarcode = {
  type t
  @ocaml.doc("<p>CreateTapeWithBarcodeInput</p>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a virtual tape that has a barcode. Each
         tag is a key-value pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Set to <code>TRUE</code> if the tape you are creating is to be configured as a
         write-once-read-many (WORM) tape.</p>")
    @as("Worm")
    worm: option<boolean2>,
    @ocaml.doc("<p>The ID of the pool that you want to add your tape to for archiving. The tape in this
         pool is archived in the S3 storage class that is associated with the pool. When you use
         your backup application to eject the tape, the tape is archived directly into the storage
         class (S3 Glacier or S3 Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
    @as("PoolId")
    poolId: option<poolId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>The barcode that you want to assign to the tape.</p>

         <note>
            <p>Barcodes cannot be reused. This includes barcodes used for tapes that have been
            deleted.</p>
         </note>")
    @as("TapeBarcode")
    tapeBarcode: tapeBarcode,
    @ocaml.doc("<p>The size, in bytes, of the virtual tape that you want to create.</p>

         <note>
            <p>The size must be aligned by gigabyte (1024*1024*1024 bytes).</p>
         </note>")
    @as("TapeSizeInBytes")
    tapeSizeInBytes: tapeSize,
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) that represents the gateway to associate the
         virtual tape with. Use the <a>ListGateways</a> operation to return a list of
         gateways for your account and AWS Region.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>CreateTapeOutput</p>")
  type response = {
    @ocaml.doc("<p>A unique Amazon Resource Name (ARN) that represents the virtual tape that was
         created.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateTapeWithBarcodeCommand"
  let make = (
    ~tapeBarcode,
    ~tapeSizeInBytes,
    ~gatewayARN,
    ~tags=?,
    ~worm=?,
    ~poolId=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    (),
  ) =>
    new({
      tags: tags,
      worm: worm,
      poolId: poolId,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      tapeBarcode: tapeBarcode,
      tapeSizeInBytes: tapeSizeInBytes,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTapePool = {
  type t
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to tape pool. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Tape retention lock time is set in days. Tape retention lock can be enabled for up to
         100 years (36,500 days).</p>")
    @as("RetentionLockTimeInDays")
    retentionLockTimeInDays: option<retentionLockTimeInDays>,
    @ocaml.doc("<p>Tape retention lock can be configured in two modes. When configured in governance mode,
         AWS accounts with specific IAM permissions are authorized to remove the tape retention lock
         from archived virtual tapes. When configured in compliance mode, the tape retention lock
         cannot be removed by any user, including the root AWS account.</p>")
    @as("RetentionLockType")
    retentionLockType: option<retentionLockType>,
    @ocaml.doc("<p>The storage class that is associated with the new custom pool. When you use your backup
         application to eject the tape, the tape is archived directly into the storage class (S3
         Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>")
    @as("StorageClass")
    storageClass: tapeStorageClass,
    @ocaml.doc("<p>The name of the new custom tape pool.</p>") @as("PoolName") poolName: poolName,
  }
  type response = {
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) that represents the custom tape pool. Use the
            <a>ListTapePools</a> operation to return a list of tape pools for your
         account and AWS Region.</p>")
    @as("PoolARN")
    poolARN: option<poolARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateTapePoolCommand"
  let make = (
    ~storageClass,
    ~poolName,
    ~tags=?,
    ~retentionLockTimeInDays=?,
    ~retentionLockType=?,
    (),
  ) =>
    new({
      tags: tags,
      retentionLockTimeInDays: retentionLockTimeInDays,
      retentionLockType: retentionLockType,
      storageClass: storageClass,
      poolName: poolName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStorediSCSIVolume = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>CreateStorediSCSIVolumeInput$DiskId</a>
               </p>
            </li>
            <li>
               <p>
                  <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a>
               </p>
            </li>
            <li>
               <p>
                  <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a>
               </p>
            </li>
            <li>
               <p>
                  <a>CreateStorediSCSIVolumeInput$SnapshotId</a>
               </p>
            </li>
            <li>
               <p>
                  <a>CreateStorediSCSIVolumeInput$TargetName</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a stored volume. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
         addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
         the network interfaces available on a gateway.</p>

         <p>Valid Values: A valid IP address.</p>")
    @as("NetworkInterfaceId")
    networkInterfaceId: networkInterfaceId,
    @ocaml.doc("<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
         suffix for the target ARN. For example, specifying <code>TargetName</code> as
            <i>myvolume</i> results in the target ARN of
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
         The target name must be unique across all volumes on a gateway.</p>

         <p>If you don't specify a value, Storage Gateway uses the value that was previously
         used for this volume as the new target name.</p>")
    @as("TargetName")
    targetName: targetName,
    @ocaml.doc("<p>Set to <code>true</code> if you want to preserve the data on the local disk. Otherwise,
         set to <code>false</code> to create an empty volume.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("PreserveExistingData")
    preserveExistingData: boolean2,
    @ocaml.doc("<p>The snapshot ID (e.g., \"snap-1122aabb\") of the snapshot to restore as the new stored
         volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
         otherwise, do not include this field. To list snapshots for your account use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html\">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
            Reference</i>.</p>")
    @as("SnapshotId")
    snapshotId: option<snapshotId>,
    @ocaml.doc("<p>The unique identifier for the gateway local disk that is configured as a stored volume.
         Use <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html\">ListLocalDisks</a> to
         list disk IDs for a gateway.</p>")
    @as("DiskId")
    diskId: diskId,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that
         initiators can use to connect to the target.</p>")
    @as("TargetARN")
    targetARN: option<targetARN>,
    @ocaml.doc("<p>The size of the volume in bytes.</p>") @as("VolumeSizeInBytes")
    volumeSizeInBytes: option<long>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configured volume.</p>") @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateStorediSCSIVolumeCommand"
  let make = (
    ~networkInterfaceId,
    ~targetName,
    ~preserveExistingData,
    ~diskId,
    ~gatewayARN,
    ~tags=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    ~snapshotId=?,
    (),
  ) =>
    new({
      tags: tags,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      networkInterfaceId: networkInterfaceId,
      targetName: targetName,
      preserveExistingData: preserveExistingData,
      snapshotId: snapshotId,
      diskId: diskId,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshotFromVolumeRecoveryPoint = {
  type t
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
         Block Store snapshots panel in the <b>Description</b> field, and
         in the AWS Storage Gateway snapshot <b>Details</b> pane,
            <b>Description</b> field.</p>")
    @as("SnapshotDescription")
    snapshotDescription: snapshotDescription,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
         specified VolumeARN.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  type response = {
    @ocaml.doc("<p>The time the volume was created from the recovery point.</p>")
    @as("VolumeRecoveryPointTime")
    volumeRecoveryPointTime: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the iSCSI volume target. Use the <a>DescribeStorediSCSIVolumes</a> operation to return to retrieve the TargetARN for
         specified VolumeARN.</p>")
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
    @ocaml.doc("<p>The ID of the snapshot.</p>") @as("SnapshotId") snapshotId: option<snapshotId>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateSnapshotFromVolumeRecoveryPointCommand"
  let make = (~snapshotDescription, ~volumeARN, ~tags=?, ()) =>
    new({tags: tags, snapshotDescription: snapshotDescription, volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshot = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>CreateSnapshotInput$SnapshotDescription</a>
               </p>
            </li>
            <li>
               <p>
                  <a>CreateSnapshotInput$VolumeARN</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to a snapshot. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Textual description of the snapshot that appears in the Amazon EC2 console, Elastic
         Block Store snapshots panel in the <b>Description</b> field, and
         in the AWS Storage Gateway snapshot <b>Details</b> pane,
            <b>Description</b> field.</p>")
    @as("SnapshotDescription")
    snapshotDescription: snapshotDescription,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume. Use the <a>ListVolumes</a>
         operation to return a list of gateway volumes.</p>")
    @as("VolumeARN")
    volumeARN: volumeARN,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc("<p>The snapshot ID that is used to refer to the snapshot in future operations such as
         describing snapshots (Amazon Elastic Compute Cloud API <code>DescribeSnapshots</code>) or
         creating a volume from a snapshot (<a>CreateStorediSCSIVolume</a>).</p>")
    @as("SnapshotId")
    snapshotId: option<snapshotId>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the volume of which the snapshot was taken.</p>"
    )
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateSnapshotCommand"
  let make = (~snapshotDescription, ~volumeARN, ~tags=?, ()) =>
    new({tags: tags, snapshotDescription: snapshotDescription, volumeARN: volumeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSMBFileShare = {
  type t
  @ocaml.doc("<p>CreateSMBFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
    @as("NotificationPolicy")
    notificationPolicy: option<notificationPolicy>,
    @ocaml.doc("<p>Specifies refresh cache information for the file share.</p>")
    @as("CacheAttributes")
    cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
    @as("FileShareName")
    fileShareName: option<fileShareName>,
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
         key-value pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The case of an object name in an Amazon S3 bucket. For <code>ClientSpecified</code>, the
         client determines the case sensitivity. For <code>CaseSensitive</code>, the gateway
         determines the case sensitivity. The default value is <code>ClientSpecified</code>.</p>")
    @as("CaseSensitivity")
    caseSensitivity: option<caseSensitivity>,
    @ocaml.doc("<p>The authentication method that users use to access the file share. The default is
            <code>ActiveDirectory</code>.</p>

         <p>Valid Values: <code>ActiveDirectory</code> | <code>GuestAccess</code>
         </p>")
    @as("Authentication")
    authentication: option<authentication>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for audit logs.</p>")
    @as("AuditDestinationARN")
    auditDestinationARN: option<auditDestinationARN>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that are not allowed to access the
         file share. A group must be prefixed with the @ character. Acceptable formats include:
            <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
    @as("InvalidUserList")
    invalidUserList: option<userList>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that are allowed to access the file
            <a href=\"\"></a> share. A group must be prefixed with the @ character. Acceptable formats
         include: <code>DOMAIN\\User1</code>, <code>user1</code>, <code>@group1</code>, and
            <code>@DOMAIN\\group1</code>. Can only be set if Authentication is set to
            <code>ActiveDirectory</code>.</p>")
    @as("ValidUserList")
    validUserList: option<userList>,
    @ocaml.doc("<p>A list of users or groups in the Active Directory that will be granted administrator
         privileges on the file share. These users can do all file operations as the super-user.
         Acceptable formats include: <code>DOMAIN\\User1</code>, <code>user1</code>,
            <code>@group1</code>, and <code>@DOMAIN\\group1</code>.</p>

         <important>
            <p>Use this option very carefully, because any user in this list can do anything they
            like on the file share, regardless of file permissions.</p>
         </important>")
    @as("AdminUserList")
    adminUserList: option<userList>,
    @ocaml.doc("<p>The files and folders on this share will only be visible to users with read
         access.</p>")
    @as("AccessBasedEnumeration")
    accessBasedEnumeration: option<boolean_>,
    @ocaml.doc("<p>Set this value to <code>true</code> to enable access control list (ACL) on the SMB file
         share. Set it to <code>false</code> to map file and directory permissions to the POSIX
         permissions.</p>

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html\">Using Microsoft Windows ACLs to
            control access to an SMB file share</a> in the <i>AWS Storage Gateway User
            Guide</i>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("SMBACLEnabled")
    smbaclenabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("RequesterPays")
    requesterPays: option<boolean_>,
    @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("GuessMIMETypeEnabled")
    guessMIMETypeEnabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set the write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ReadOnly")
    readOnly: option<boolean_>,
    @ocaml.doc("<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
         that a file gateway puts objects into. The default value is <code>private</code>.</p>")
    @as("ObjectACL")
    objectACL: option<objectACL>,
    @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
    @as("DefaultStorageClass")
    defaultStorageClass: option<storageClass>,
    @ocaml.doc("<p>The ARN of the backend storage used for storing file data. A prefix name can be added to
         the S3 bucket name. It must end with a \"/\".</p>")
    @as("LocationARN")
    locationARN: locationARN,
    @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes
         when it accesses the underlying storage.</p>")
    @as("Role")
    role: role,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>The ARN of the file gateway on which you want to create a file share.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
    @ocaml.doc("<p>A unique string value that you supply that is used by file gateway to ensure idempotent
         file share creation.</p>")
    @as("ClientToken")
    clientToken: clientToken,
  }
  @ocaml.doc("<p>CreateSMBFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the newly created file share.</p>")
    @as("FileShareARN")
    fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateSMBFileShareCommand"
  let make = (
    ~locationARN,
    ~role,
    ~gatewayARN,
    ~clientToken,
    ~notificationPolicy=?,
    ~cacheAttributes=?,
    ~fileShareName=?,
    ~tags=?,
    ~caseSensitivity=?,
    ~authentication=?,
    ~auditDestinationARN=?,
    ~invalidUserList=?,
    ~validUserList=?,
    ~adminUserList=?,
    ~accessBasedEnumeration=?,
    ~smbaclenabled=?,
    ~requesterPays=?,
    ~guessMIMETypeEnabled=?,
    ~readOnly=?,
    ~objectACL=?,
    ~defaultStorageClass=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    (),
  ) =>
    new({
      notificationPolicy: notificationPolicy,
      cacheAttributes: cacheAttributes,
      fileShareName: fileShareName,
      tags: tags,
      caseSensitivity: caseSensitivity,
      authentication: authentication,
      auditDestinationARN: auditDestinationARN,
      invalidUserList: invalidUserList,
      validUserList: validUserList,
      adminUserList: adminUserList,
      accessBasedEnumeration: accessBasedEnumeration,
      smbaclenabled: smbaclenabled,
      requesterPays: requesterPays,
      guessMIMETypeEnabled: guessMIMETypeEnabled,
      readOnly: readOnly,
      objectACL: objectACL,
      defaultStorageClass: defaultStorageClass,
      locationARN: locationARN,
      role: role,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      gatewayARN: gatewayARN,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNFSFileShare = {
  type t
  @ocaml.doc("<p>CreateNFSFileShareInput</p>")
  type request = {
    @ocaml.doc("<p>The notification policy of the file share. <code>SettlingTimeInSeconds</code> controls
         the number of seconds to wait after the last point in time a client wrote to a file before
         generating an <code>ObjectUploaded</code> notification. Because clients can make many small
         writes to files, it's best to set this parameter for as long as possible to avoid
         generating multiple notifications for the same file in a small time period.</p>

         <note>
            <p>
               <code>SettlingTimeInSeconds</code> has no effect on the timing of the object
            uploading to Amazon S3, only the timing of the notification.</p>
         </note>

         <p>The following example sets <code>NotificationPolicy</code> on with
            <code>SettlingTimeInSeconds</code> set to 60.</p>

         <p>
            <code>{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}</code>
         </p>

         <p>The following example sets <code>NotificationPolicy</code> off.</p>

         <p>
            <code>{}</code>
         </p>")
    @as("NotificationPolicy")
    notificationPolicy: option<notificationPolicy>,
    @ocaml.doc("<p>Specifies refresh cache information for the file share.</p>")
    @as("CacheAttributes")
    cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The name of the file share. Optional.</p>

         <note>
            <p>
               <code>FileShareName</code> must be set if an S3 prefix name is set in
               <code>LocationARN</code>.</p>
         </note>")
    @as("FileShareName")
    fileShareName: option<fileShareName>,
    @ocaml.doc("<p>A list of up to 50 tags that can be assigned to the NFS file share. Each tag is a
         key-value pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A value that sets who pays the cost of the request and the cost associated with data
         download from the S3 bucket. If this value is set to <code>true</code>, the requester pays
         the costs; otherwise, the S3 bucket owner pays. However, the S3 bucket owner always pays
         the cost of storing data.</p>

         <note>
            <p>
               <code>RequesterPays</code> is a configuration for the S3 bucket that backs the file
            share, so make sure that the configuration on the file share is the same as the S3
            bucket configuration.</p>
         </note>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("RequesterPays")
    requesterPays: option<boolean_>,
    @ocaml.doc("<p>A value that enables guessing of the MIME type for uploaded objects based on file
         extensions. Set this value to <code>true</code> to enable MIME type guessing, otherwise set
         to <code>false</code>. The default value is <code>true</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("GuessMIMETypeEnabled")
    guessMIMETypeEnabled: option<boolean_>,
    @ocaml.doc("<p>A value that sets the write status of a file share. Set this value to <code>true</code>
         to set the write status to read-only, otherwise set to <code>false</code>.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("ReadOnly")
    readOnly: option<boolean_>,
    @ocaml.doc("<p>A value that maps a user to anonymous user.</p>

         <p>Valid values are the following:</p>

         <ul>
            <li>
               <p>
                  <code>RootSquash</code>: Only root is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>NoSquash</code>: No one is mapped to anonymous user.</p>
            </li>
            <li>
               <p>
                  <code>AllSquash</code>: Everyone is mapped to anonymous user.</p>
            </li>
         </ul>")
    @as("Squash")
    squash: option<squash>,
    @ocaml.doc("<p>The list of clients that are allowed to access the file gateway. The list must contain
         either valid IP addresses or valid CIDR blocks.</p>")
    @as("ClientList")
    clientList: option<fileShareClientList>,
    @ocaml.doc("<p>A value that sets the access control list (ACL) permission for objects in the S3 bucket
         that a file gateway puts objects into. The default value is <code>private</code>.</p>")
    @as("ObjectACL")
    objectACL: option<objectACL>,
    @ocaml.doc("<p>The default storage class for objects put into an Amazon S3 bucket by the file gateway.
         The default value is <code>S3_INTELLIGENT_TIERING</code>. Optional.</p>

         <p>Valid Values: <code>S3_STANDARD</code> | <code>S3_INTELLIGENT_TIERING</code> |
            <code>S3_STANDARD_IA</code> | <code>S3_ONEZONE_IA</code>
         </p>")
    @as("DefaultStorageClass")
    defaultStorageClass: option<storageClass>,
    @ocaml.doc("<p>The ARN of the backend storage used for storing file data. A prefix name can be added to
         the S3 bucket name. It must end with a \"/\".</p>")
    @as("LocationARN")
    locationARN: locationARN,
    @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes
         when it accesses the underlying storage.</p>")
    @as("Role")
    role: role,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the file gateway on which you want to create a file
         share.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
    @ocaml.doc("<p>File share default values. Optional.</p>") @as("NFSFileShareDefaults")
    nfsfileShareDefaults: option<nfsfileShareDefaults>,
    @ocaml.doc("<p>A unique string value that you supply that is used by file gateway to ensure idempotent
         file share creation.</p>")
    @as("ClientToken")
    clientToken: clientToken,
  }
  @ocaml.doc("<p>CreateNFSFileShareOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the newly created file share.</p>")
    @as("FileShareARN")
    fileShareARN: option<fileShareARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateNFSFileShareCommand"
  let make = (
    ~locationARN,
    ~role,
    ~gatewayARN,
    ~clientToken,
    ~notificationPolicy=?,
    ~cacheAttributes=?,
    ~fileShareName=?,
    ~tags=?,
    ~requesterPays=?,
    ~guessMIMETypeEnabled=?,
    ~readOnly=?,
    ~squash=?,
    ~clientList=?,
    ~objectACL=?,
    ~defaultStorageClass=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    ~nfsfileShareDefaults=?,
    (),
  ) =>
    new({
      notificationPolicy: notificationPolicy,
      cacheAttributes: cacheAttributes,
      fileShareName: fileShareName,
      tags: tags,
      requesterPays: requesterPays,
      guessMIMETypeEnabled: guessMIMETypeEnabled,
      readOnly: readOnly,
      squash: squash,
      clientList: clientList,
      objectACL: objectACL,
      defaultStorageClass: defaultStorageClass,
      locationARN: locationARN,
      role: role,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      gatewayARN: gatewayARN,
      nfsfileShareDefaults: nfsfileShareDefaults,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCachediSCSIVolume = {
  type t
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that you can assign to a cached volume. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers that you can
            represent in UTF-8 format, and the following special characters: + - = . _ : / @. The
            maximum length of a tag's key is 128 characters, and the maximum length for a
            tag's value is 256 characters.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a symmetric customer master key (CMK) used for Amazon
         S3 server-side encryption. Storage Gateway does not support asymmetric CMKs. This value can
         only be set when <code>KMSEncrypted</code> is <code>true</code>. Optional.</p>")
    @as("KMSKey")
    kmskey: option<kmskey>,
    @ocaml.doc("<p>Set to <code>true</code> to use Amazon S3 server-side encryption with your own AWS KMS
         key, or <code>false</code> to use a key managed by Amazon S3. Optional.</p>

         <p>Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("KMSEncrypted")
    kmsencrypted: option<boolean_>,
    @ocaml.doc("<p>A unique identifier that you use to retry a request. If you retry a request, use the
         same <code>ClientToken</code> you specified in the initial request.</p>")
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
         addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
         the network interfaces available on a gateway.</p>

         <p>Valid Values: A valid IP address.</p>")
    @as("NetworkInterfaceId")
    networkInterfaceId: networkInterfaceId,
    @ocaml.doc("<p>The ARN for an existing volume. Specifying this ARN makes the new volume into an exact
         copy of the specified existing volume's latest recovery point. The
            <code>VolumeSizeInBytes</code> value for this new volume must be equal to or larger than
         the size of the existing volume, in bytes.</p>")
    @as("SourceVolumeARN")
    sourceVolumeARN: option<volumeARN>,
    @ocaml.doc("<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
         suffix for the target ARN. For example, specifying <code>TargetName</code> as
            <i>myvolume</i> results in the target ARN of
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
         The target name must be unique across all volumes on a gateway.</p>

         <p>If you don't specify a value, Storage Gateway uses the value that was previously
         used for this volume as the new target name.</p>")
    @as("TargetName")
    targetName: targetName,
    @ocaml.doc("<p>The snapshot ID (e.g. \"snap-1122aabb\") of the snapshot to restore as the new cached
         volume. Specify this field if you want to create the iSCSI storage volume from a snapshot;
         otherwise, do not include this field. To list snapshots for your account use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html\">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API
            Reference</i>.</p>")
    @as("SnapshotId")
    snapshotId: option<snapshotId>,
    @ocaml.doc("<p>The size of the volume in bytes.</p>") @as("VolumeSizeInBytes")
    volumeSizeInBytes: long,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name that
         initiators can use to connect to the target.</p>")
    @as("TargetARN")
    targetARN: option<targetARN>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the configured volume.</p>") @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CreateCachediSCSIVolumeCommand"
  let make = (
    ~clientToken,
    ~networkInterfaceId,
    ~targetName,
    ~volumeSizeInBytes,
    ~gatewayARN,
    ~tags=?,
    ~kmskey=?,
    ~kmsencrypted=?,
    ~sourceVolumeARN=?,
    ~snapshotId=?,
    (),
  ) =>
    new({
      tags: tags,
      kmskey: kmskey,
      kmsencrypted: kmsencrypted,
      clientToken: clientToken,
      networkInterfaceId: networkInterfaceId,
      sourceVolumeARN: sourceVolumeARN,
      targetName: targetName,
      snapshotId: snapshotId,
      volumeSizeInBytes: volumeSizeInBytes,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelRetrieval = {
  type t
  @ocaml.doc("<p>CancelRetrievalInput</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel retrieval
         for.</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>CancelRetrievalOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape for which retrieval was
         canceled.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CancelRetrievalCommand"
  let make = (~tapeARN, ~gatewayARN, ()) => new({tapeARN: tapeARN, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelArchival = {
  type t
  @ocaml.doc("<p>CancelArchivalInput</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape you want to cancel archiving
         for.</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>CancelArchivalOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual tape for which archiving was
         canceled.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "CancelArchivalCommand"
  let make = (~tapeARN, ~gatewayARN, ()) => new({tapeARN: tapeARN, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachVolume = {
  type t
  @ocaml.doc("<p>AttachVolumeInput</p>")
  type request = {
    @ocaml.doc("<p>The unique device ID or other distinguishing data that identifies the local disk used to
         create the volume. This value is only required when you are attaching a stored
         volume.</p>")
    @as("DiskId")
    diskId: option<diskId>,
    @ocaml.doc("<p>The network interface of the gateway on which to expose the iSCSI target. Only IPv4
         addresses are accepted. Use <a>DescribeGatewayInformation</a> to get a list of
         the network interfaces available on a gateway.</p>

         <p>Valid Values: A valid IP address.</p>")
    @as("NetworkInterfaceId")
    networkInterfaceId: networkInterfaceId,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the volume to attach to the specified gateway.</p>"
    )
    @as("VolumeARN")
    volumeARN: volumeARN,
    @ocaml.doc("<p>The name of the iSCSI target used by an initiator to connect to a volume and used as a
         suffix for the target ARN. For example, specifying <code>TargetName</code> as
            <i>myvolume</i> results in the target ARN of
            <code>arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume</code>.
         The target name must be unique across all volumes on a gateway.</p>

         <p>If you don't specify a value, Storage Gateway uses the value that was previously
         used for this volume as the new target name.</p>")
    @as("TargetName")
    targetName: option<targetName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway that you want to attach the volume
         to.</p>")
    @as("GatewayARN")
    gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>AttachVolumeOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the volume target, which includes the iSCSI name for
         the initiator that was used to connect to the target.</p>")
    @as("TargetARN")
    targetARN: option<targetARN>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the volume that was attached to the gateway.</p>"
    )
    @as("VolumeARN")
    volumeARN: option<volumeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "AttachVolumeCommand"
  let make = (~networkInterfaceId, ~volumeARN, ~gatewayARN, ~diskId=?, ~targetName=?, ()) =>
    new({
      diskId: diskId,
      networkInterfaceId: networkInterfaceId,
      volumeARN: volumeARN,
      targetName: targetName,
      gatewayARN: gatewayARN,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateFileSystem = {
  type t
  type request = {
    @as("CacheAttributes") cacheAttributes: option<cacheAttributes>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the storage used for the audit logs.</p>")
    @as("AuditDestinationARN")
    auditDestinationARN: option<auditDestinationARN>,
    @ocaml.doc(
      "<p>A list of up to 50 tags that can be assigned to the file system association. Each tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the
         Amazon FSx file gateway.</p>")
    @as("LocationARN")
    locationARN: fileSystemLocationARN,
    @as("GatewayARN") gatewayARN: gatewayARN,
    @ocaml.doc("<p>A unique string value that you supply that is used by the file gateway to ensure
         idempotent file system association creation.</p>")
    @as("ClientToken")
    clientToken: clientToken,
    @ocaml.doc("<p>The password of the user credential.</p>") @as("Password")
    password: domainUserPassword,
    @ocaml.doc("<p>The user name of the user credential that has permission to access the root share D$ of
         the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin
         user group.</p>")
    @as("UserName")
    userName: domainUserName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the newly created file system association.</p>")
    @as("FileSystemAssociationARN")
    fileSystemAssociationARN: option<fileSystemAssociationARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "AssociateFileSystemCommand"
  let make = (
    ~locationARN,
    ~gatewayARN,
    ~clientToken,
    ~password,
    ~userName,
    ~cacheAttributes=?,
    ~auditDestinationARN=?,
    ~tags=?,
    (),
  ) =>
    new({
      cacheAttributes: cacheAttributes,
      auditDestinationARN: auditDestinationARN,
      tags: tags,
      locationARN: locationARN,
      gatewayARN: gatewayARN,
      clientToken: clientToken,
      password: password,
      userName: userName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssignTapePool = {
  type t
  type request = {
    @ocaml.doc("<p>Set permissions to bypass governance retention. If the lock type of the archived tape is
            <code>Governance</code>, the tape's archived age is not older than
            <code>RetentionLockInDays</code>, and the user does not already have
            <code>BypassGovernanceRetention</code>, setting this to TRUE enables the user to bypass
         the retention lock. This parameter is set to true by default for calls from the
         console.</p>

         <p>Valid values: <code>TRUE</code> | <code>FALSE</code>
         </p>")
    @as("BypassGovernanceRetention")
    bypassGovernanceRetention: option<boolean2>,
    @ocaml.doc("<p>The ID of the pool that you want to add your tape to for archiving. The tape in this
         pool is archived in the S3 storage class that is associated with the pool. When you use
         your backup application to eject the tape, the tape is archived directly into the storage
         class (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.</p>

         <p>Valid Values: <code>GLACIER</code> | <code>DEEP_ARCHIVE</code>
         </p>")
    @as("PoolId")
    poolId: poolId,
    @ocaml.doc("<p>The unique Amazon Resource Name (ARN) of the virtual tape that you want to add to the
         tape pool.</p>")
    @as("TapeARN")
    tapeARN: tapeARN,
  }
  type response = {
    @ocaml.doc("<p>The unique Amazon Resource Names (ARN) of the virtual tape that was added to the tape
         pool.</p>")
    @as("TapeARN")
    tapeARN: option<tapeARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "AssignTapePoolCommand"
  let make = (~poolId, ~tapeARN, ~bypassGovernanceRetention=?, ()) =>
    new({bypassGovernanceRetention: bypassGovernanceRetention, poolId: poolId, tapeARN: tapeARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddWorkingStorage = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>AddWorkingStorageInput$DiskIds</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>An array of strings that identify disks that are to be configured as working storage.
         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
         from the <a>ListLocalDisks</a> API.</p>")
    @as("DiskIds")
    diskIds: diskIds,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway for which working
         storage was configured.</p>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "AddWorkingStorageCommand"
  let make = (~diskIds, ~gatewayARN, ()) => new({diskIds: diskIds, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddUploadBuffer = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings that identify disks that are to be configured as working storage.
         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
         from the <a>ListLocalDisks</a> API.</p>")
    @as("DiskIds")
    diskIds: diskIds,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "AddUploadBufferCommand"
  let make = (~diskIds, ~gatewayARN, ()) => new({diskIds: diskIds, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  @ocaml.doc("<p>AddTagsToResourceInput</p>")
  type request = {
    @ocaml.doc("<p>The key-value pair that represents the tag you want to add to the resource. The value
         can be an empty string.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers representable in
            UTF-8 format, and the following special characters: + - = . _ : / @. The maximum length
            of a tag's key is 128 characters, and the maximum length for a tag's value is
            256.</p>
         </note>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>")
    @as("ResourceARN")
    resourceARN: resourceARN,
  }
  @ocaml.doc("<p>AddTagsToResourceOutput</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>")
    @as("ResourceARN")
    resourceARN: option<resourceARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddCache = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings that identify disks that are to be configured as working storage.
         Each string has a minimum length of 1 and maximum length of 300. You can get the disk IDs
         from the <a>ListLocalDisks</a> API.</p>")
    @as("DiskIds")
    diskIds: diskIds,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new external new: request => t = "AddCacheCommand"
  let make = (~diskIds, ~gatewayARN, ()) => new({diskIds: diskIds, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ActivateGateway = {
  type t
  @ocaml.doc("<p>A JSON object containing one or more of the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ActivateGatewayInput$ActivationKey</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$GatewayName</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$GatewayRegion</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$GatewayTimezone</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$GatewayType</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$MediumChangerType</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ActivateGatewayInput$TapeDriveType</a>
               </p>
            </li>
         </ul>")
  type request = {
    @ocaml.doc("<p>A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value
         pair.</p>

         <note>
            <p>Valid characters for key and value are letters, spaces, and numbers that can be
            represented in UTF-8 format, and the following special characters: + - = . _ : / @. The
            maximum length of a tag's key is 128 characters, and the maximum length for a
            tag's value is 256 characters.</p>
         </note>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The value that indicates the type of medium changer to use for tape gateway. This field
         is optional.</p>

         <p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
            <code>IBM-03584L32-0402</code>
         </p>")
    @as("MediumChangerType")
    mediumChangerType: option<mediumChangerType>,
    @ocaml.doc("<p>The value that indicates the type of tape drive to use for tape gateway. This field is
         optional.</p>

         <p>Valid Values: <code>IBM-ULT3580-TD5</code>
         </p>")
    @as("TapeDriveType")
    tapeDriveType: option<tapeDriveType>,
    @ocaml.doc("<p>A value that defines the type of gateway to activate. The type specified is critical to
         all later functions of the gateway and cannot be changed after activation. The default
         value is <code>CACHED</code>.</p>

         <p>Valid Values: <code>STORED</code> | <code>CACHED</code> | <code>VTL</code> |
            <code>FILE_S3</code>
         </p>")
    @as("GatewayType")
    gatewayType: option<gatewayType>,
    @ocaml.doc("<p>A value that indicates the AWS Region where you want to store your data. The gateway AWS
         Region specified must be the same AWS Region as the AWS Region in your <code>Host</code>
         header in the request. For more information about available AWS Regions and endpoints for
         AWS Storage Gateway, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/sg.html\">AWS
            Storage Gateway endpoints and quotas</a> in the <i>AWS General
            Reference</i>.</p>

         <p>Valid Values: See <a href=\"https://docs.aws.amazon.com/general/latest/gr/sg.html\">AWS
            Storage Gateway endpoints and quotas</a> in the <i>AWS General
            Reference</i>.
         
      </p>")
    @as("GatewayRegion")
    gatewayRegion: regionId,
    @ocaml.doc("<p>A value that indicates the time zone you want to set for the gateway. The time zone is
         of the format \"GMT-hr:mm\" or \"GMT+hr:mm\". For example, GMT-4:00 indicates the time is 4
         hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is
         used, for example, for scheduling snapshots and your gateway's maintenance
         schedule.</p>")
    @as("GatewayTimezone")
    gatewayTimezone: gatewayTimezone,
    @ocaml.doc("<p>The name you configured for your gateway.</p>") @as("GatewayName")
    gatewayName: gatewayName,
    @ocaml.doc("<p>Your gateway activation key. You can obtain the activation key by sending an HTTP GET
         request with redirects enabled to the gateway IP address (port 80). The redirect URL
         returned in the response provides you the activation key for your gateway in the query
         string parameter <code>activationKey</code>. It may also include other activation-related
         parameters, however, these are merely defaults -- the arguments you pass to the
            <code>ActivateGateway</code> API call determine the actual configuration of your
         gateway.</p>

      

         <p>For more information, see <a href=\"https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html\">Getting activation
            key</a> in the <i>AWS Storage Gateway User Guide</i>.</p>")
    @as("ActivationKey")
    activationKey: activationKey,
  }
  @ocaml.doc("<p>AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It
         is a string made of information such as your account, gateway name, and AWS Region. This
         ARN is used to reference the gateway in other API operations as well as resource-based
         authorization.</p>

         <note>
            <p>For gateways activated prior to September 02, 2015, the gateway ARN contains the
            gateway name rather than the gateway ID. Changing the name of the gateway has no effect
            on the gateway ARN.</p>
         </note>")
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ActivateGatewayCommand"
  let make = (
    ~gatewayRegion,
    ~gatewayTimezone,
    ~gatewayName,
    ~activationKey,
    ~tags=?,
    ~mediumChangerType=?,
    ~tapeDriveType=?,
    ~gatewayType=?,
    (),
  ) =>
    new({
      tags: tags,
      mediumChangerType: mediumChangerType,
      tapeDriveType: tapeDriveType,
      gatewayType: gatewayType,
      gatewayRegion: gatewayRegion,
      gatewayTimezone: gatewayTimezone,
      gatewayName: gatewayName,
      activationKey: activationKey,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBandwidthRateLimitSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>
         An array containing bandwidth rate limit schedule intervals for a gateway. 
         When no bandwidth rate limit intervals have been scheduled, the array is empty.
      </p>")
    @as("BandwidthRateLimitIntervals")
    bandwidthRateLimitIntervals: bandwidthRateLimitIntervals,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  type response = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "UpdateBandwidthRateLimitScheduleCommand"
  let make = (~bandwidthRateLimitIntervals, ~gatewayARN, ()) =>
    new({bandwidthRateLimitIntervals: bandwidthRateLimitIntervals, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLocalDisks = {
  type t
  @ocaml.doc("<p>A JSON object containing the Amazon Resource Name (ARN) of the gateway.</p>")
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p>A JSON object containing the following fields:</p>

         <ul>
            <li>
               <p>
                  <a>ListLocalDisksOutput$Disks</a>
               </p>
            </li>
         </ul>")
    @as("Disks")
    disks: option<disks>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListLocalDisksCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeVTLDevices = {
  type t
  @ocaml.doc("<p>DescribeVTLDevicesInput</p>")
  type request = {
    @ocaml.doc("<p>Specifies that the number of VTL devices described be limited to the specified
         number.</p>")
    @as("Limit")
    limit: option<positiveIntObject>,
    @ocaml.doc("<p>An opaque string that indicates the position at which to begin describing the VTL
         devices.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of strings, where each string represents the Amazon Resource Name (ARN) of a
         VTL device.</p>

         <note>
            <p>All of the specified VTL devices must be from the same gateway. If no VTL devices are
            specified, the result will contain all devices on the specified gateway.</p>
         </note>")
    @as("VTLDeviceARNs")
    vtldeviceARNs: option<vtldeviceARNs>,
    @as("GatewayARN") gatewayARN: gatewayARN,
  }
  @ocaml.doc("<p>DescribeVTLDevicesOutput</p>")
  type response = {
    @ocaml.doc("<p>An opaque string that indicates the position at which the VTL devices that were fetched
         for description ended. Use the marker in your next request to fetch the next set of VTL
         devices in the list. If there are no more VTL devices to describe, this field does not
         appear in the response.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>An array of VTL device objects composed of the Amazon Resource Name (ARN) of the VTL
         devices.</p>")
    @as("VTLDevices")
    vtldevices: option<vtldevices>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeVTLDevicesCommand"
  let make = (~gatewayARN, ~limit=?, ~marker=?, ~vtldeviceARNs=?, ()) =>
    new({limit: limit, marker: marker, vtldeviceARNs: vtldeviceARNs, gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStorediSCSIVolumes = {
  type t
  @ocaml.doc(
    "<p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>"
  )
  type request = {
    @ocaml.doc("<p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
         stored volume. All of the specified stored volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>")
    @as("VolumeARNs")
    volumeARNs: volumeARNs,
  }
  type response = {
    @ocaml.doc("<p>Describes a single unit of output from <a>DescribeStorediSCSIVolumes</a>. The
         following fields are returned:</p>

         <ul>
            <li>
               <p>
                  <code>ChapEnabled</code>: Indicates whether mutual CHAP is enabled for the iSCSI
               target.</p>
            </li>
            <li>
               <p>
                  <code>LunNumber</code>: The logical disk number.</p>
            </li>
            <li>
               <p>
                  <code>NetworkInterfaceId</code>: The network interface ID of the stored volume that
               initiator use to map the stored volume as an iSCSI target.</p>
            </li>
            <li>
               <p>
                  <code>NetworkInterfacePort</code>: The port used to communicate with iSCSI
               targets.</p>
            </li>
            <li>
               <p>
                  <code>PreservedExistingData</code>: Indicates when the stored volume was created,
               existing data on the underlying local disk was preserved.</p>
            </li>
            <li>
               <p>
                  <code>SourceSnapshotId</code>: If the stored volume was created from a snapshot, this
               field contains the snapshot ID used, e.g. <code>snap-1122aabb</code>. Otherwise, this
               field is not included.</p>
            </li>
            <li>
               <p>
                  <code>StorediSCSIVolumes</code>: An array of StorediSCSIVolume objects where each
               object contains metadata about one stored volume.</p>
            </li>
            <li>
               <p>
                  <code>TargetARN</code>: The Amazon Resource Name (ARN) of the volume target.</p>
            </li>
            <li>
               <p>
                  <code>VolumeARN</code>: The Amazon Resource Name (ARN) of the stored volume.</p>
            </li>
            <li>
               <p>
                  <code>VolumeDiskId</code>: The disk ID of the local disk that was specified in the
                  <a>CreateStorediSCSIVolume</a> operation.</p>
            </li>
            <li>
               <p>
                  <code>VolumeId</code>: The unique identifier of the storage volume, e.g.
                  <code>vol-1122AABB</code>.</p>
            </li>
            <li>
               <p>
                  <code>VolumeiSCSIAttributes</code>: An <a>VolumeiSCSIAttributes</a> object
               that represents a collection of iSCSI attributes for one stored volume.</p>
            </li>
            <li>
               <p>
                  <code>VolumeProgress</code>: Represents the percentage complete if the volume is
               restoring or bootstrapping that represents the percent of data transferred. This
               field does not appear in the response if the stored volume is not restoring or
               bootstrapping.</p>
            </li>
            <li>
               <p>
                  <code>VolumeSizeInBytes</code>: The size of the volume in bytes.</p>
            </li>
            <li>
               <p>
                  <code>VolumeStatus</code>: One of the <code>VolumeStatus</code> values that indicates
               the state of the volume.</p>
            </li>
            <li>
               <p>
                  <code>VolumeType</code>: One of the enumeration values describing the type of the
               volume. Currently, only <code>STORED</code> volumes are supported.</p>
            </li>
         </ul>")
    @as("StorediSCSIVolumes")
    storediSCSIVolumes: option<storediSCSIVolumes>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeStorediSCSIVolumesCommand"
  let make = (~volumeARNs, ()) => new({volumeARNs: volumeARNs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCachediSCSIVolumes = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings where each string represents the Amazon Resource Name (ARN) of a
         cached volume. All of the specified cached volumes must be from the same gateway. Use <a>ListVolumes</a> to get volume ARNs for a gateway.</p>")
    @as("VolumeARNs")
    volumeARNs: volumeARNs,
  }
  @ocaml.doc("<p>A JSON object containing the following fields:</p>")
  type response = {
    @ocaml.doc(
      "<p>An array of objects where each object contains metadata about one cached volume.</p>"
    )
    @as("CachediSCSIVolumes")
    cachediSCSIVolumes: option<cachediSCSIVolumes>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeCachediSCSIVolumesCommand"
  let make = (~volumeARNs, ()) => new({volumeARNs: volumeARNs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBandwidthRateLimitSchedule = {
  type t
  type request = {@as("GatewayARN") gatewayARN: gatewayARN}
  type response = {
    @ocaml.doc("<p> 
         An array that contains the bandwidth rate limit intervals for a tape or volume gateway.
      </p>")
    @as("BandwidthRateLimitIntervals")
    bandwidthRateLimitIntervals: option<bandwidthRateLimitIntervals>,
    @as("GatewayARN") gatewayARN: option<gatewayARN>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeBandwidthRateLimitScheduleCommand"
  let make = (~gatewayARN, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAutomaticTapeCreationPolicies = {
  type t
  type request = {@as("GatewayARN") gatewayARN: option<gatewayARN>}
  type response = {
    @ocaml.doc("<p>Gets a listing of information about the gateway's automatic tape creation policies,
         including the automatic tape creation rules and the gateway that is using the
         policies.</p>")
    @as("AutomaticTapeCreationPolicyInfos")
    automaticTapeCreationPolicyInfos: option<automaticTapeCreationPolicyInfos>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "ListAutomaticTapeCreationPoliciesCommand"
  let make = (~gatewayARN=?, ()) => new({gatewayARN: gatewayARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSMBFileShares = {
  type t
  @ocaml.doc("<p>DescribeSMBFileSharesInput</p>")
  type request = {
    @ocaml.doc("<p>An array containing the Amazon Resource Name (ARN) of each file share to be
         described.</p>")
    @as("FileShareARNList")
    fileShareARNList: fileShareARNList,
  }
  @ocaml.doc("<p>DescribeSMBFileSharesOutput</p>")
  type response = {
    @ocaml.doc("<p>An array containing a description for each requested file share.</p>")
    @as("SMBFileShareInfoList")
    smbfileShareInfoList: option<smbfileShareInfoList>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeSMBFileSharesCommand"
  let make = (~fileShareARNList, ()) => new({fileShareARNList: fileShareARNList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNFSFileShares = {
  type t
  @ocaml.doc("<p>DescribeNFSFileSharesInput</p>")
  type request = {
    @ocaml.doc("<p>An array containing the Amazon Resource Name (ARN) of each file share to be
         described.</p>")
    @as("FileShareARNList")
    fileShareARNList: fileShareARNList,
  }
  @ocaml.doc("<p>DescribeNFSFileSharesOutput</p>")
  type response = {
    @ocaml.doc("<p>An array containing a description for each requested file share.</p>")
    @as("NFSFileShareInfoList")
    nfsfileShareInfoList: option<nfsfileShareInfoList>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeNFSFileSharesCommand"
  let make = (~fileShareARNList, ()) => new({fileShareARNList: fileShareARNList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystemAssociations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array containing the Amazon Resource Name (ARN) of each file system association to be described.</p>"
    )
    @as("FileSystemAssociationARNList")
    fileSystemAssociationARNList: fileSystemAssociationARNList,
  }
  type response = {
    @ocaml.doc("<p>An array containing the <code>FileSystemAssociationInfo</code> data type of each file system association to be described. 
         </p>")
    @as("FileSystemAssociationInfoList")
    fileSystemAssociationInfoList: option<fileSystemAssociationInfoList>,
  }
  @module("@aws-sdk/client-storagegateway") @new
  external new: request => t = "DescribeFileSystemAssociationsCommand"
  let make = (~fileSystemAssociationARNList, ()) =>
    new({fileSystemAssociationARNList: fileSystemAssociationARNList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
