type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticfilesystem") @new
external createClient: unit => awsServiceClient = "EFSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type uid = float
type transitionToPrimaryStorageClassRules = [@as("AFTER_1_ACCESS") #AFTER_1_ACCESS]
type transitionToIARules = [
  | @as("AFTER_90_DAYS") #AFTER_90_DAYS
  | @as("AFTER_60_DAYS") #AFTER_60_DAYS
  | @as("AFTER_30_DAYS") #AFTER_30_DAYS
  | @as("AFTER_14_DAYS") #AFTER_14_DAYS
  | @as("AFTER_7_DAYS") #AFTER_7_DAYS
]
@ocaml.doc("Token used for pagination.") type token = string
type timestamp_ = Js.Date.t
type throughputMode = [@as("provisioned") #Provisioned | @as("bursting") #Bursting]
type tagValue = string
type tagKey = string
type subnetId = string
type status = [
  | @as("DISABLING") #DISABLING
  | @as("DISABLED") #DISABLED
  | @as("ENABLING") #ENABLING
  | @as("ENABLED") #ENABLED
]
type securityGroup = string
@ocaml.doc("A preference indicating a choice to use 63bit/32bit IDs for all applicable resources.")
type resourceIdType = [@as("SHORT_ID") #SHORT_ID | @as("LONG_ID") #LONG_ID]
type resourceId = string
@ocaml.doc("An EFS resource, for example a file system or a mount target.")
type resource = [@as("MOUNT_TARGET") #MOUNT_TARGET | @as("FILE_SYSTEM") #FILE_SYSTEM]
type replicationStatus = [
  | @as("ERROR") #ERROR
  | @as("DELETING") #DELETING
  | @as("ENABLING") #ENABLING
  | @as("ENABLED") #ENABLED
]
type regionName = string
type provisionedThroughputInMibps = float
type policy = string
type permissions = string
type performanceMode = [@as("maxIO") #MaxIO | @as("generalPurpose") #GeneralPurpose]
type path = string
type ownerUid = float
type ownerGid = float
type networkInterfaceId = string
type name = string
type mountTargetId = string
type mountTargetCount = int
@ocaml.doc("Max results used for pagination.") type maxResults = int
type maxItems = int
type marker = string
type lifeCycleState = [
  | @as("error") #Error
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("updating") #Updating
  | @as("available") #Available
  | @as("creating") #Creating
]
type kmsKeyId = string
type ipAddress = string
type gid = float
type fileSystemSizeValue = float
type fileSystemNullableSizeValue = float
type fileSystemId = string
type fileSystemArn = string
@ocaml.doc("<p>The error message contains a generic description of the error 
        condition in English. It is intended for a human audience. Simple programs display the message directly 
        to the end user if they encounter an error condition they don't know how or don't care to handle. 
        Sophisticated programs with more exhaustive error handling and proper internationalization are 
        more likely to ignore the error message.</p>")
type errorMessage = string
@ocaml.doc("<p>The error code is a string that uniquely identifies an error condition. 
        It is meant to be read and understood by programs that detect and handle errors by type. </p>")
type errorCode = string
type encrypted = bool
type creationToken = string
type clientToken = string
type bypassPolicyLockoutSafetyCheck = bool
type backup = bool
type awsAccountId = string
type availabilityZoneName = string
type availabilityZoneId = string
type accessPointId = string
type accessPointArn = string
type tagKeys = array<tagKey>
@ocaml.doc("<p>A tag is a key-value pair. Allowed characters are letters, white space, and numbers that
      can be represented in UTF-8, and the following characters:<code> + - = . _ : /</code>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag key.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The tag key (String). The key can't start with <code>aws:</code>.</p>") @as("Key")
  key: tagKey,
}
type securityGroups = array<securityGroup>
type secondaryGids = array<gid>
@ocaml.doc("EFS resources to which a preference applies to.") type resources = array<resource>
@ocaml.doc("<p>Provides a description of a mount target.</p>")
type mountTargetDescription = {
  @ocaml.doc("<p>The virtual private cloud (VPC) ID that the mount target is configured in.</p>")
  @as("VpcId")
  vpcId: option<vpcId>,
  @ocaml.doc("<p>The name of the Availability Zone in which the mount target is located. Availability Zones are 
      independently mapped to names for each Amazon Web Services account. For example, the Availability Zone 
      <code>us-east-1a</code> for your Amazon Web Services account might not be the same location as <code>us-east-1a</code> for another Amazon Web Services account.</p>")
  @as("AvailabilityZoneName")
  availabilityZoneName: option<availabilityZoneName>,
  @ocaml.doc("<p>The unique and consistent identifier of the Availability Zone that the mount target resides in. 
      For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it has the same location in every Amazon Web Services account.</p>")
  @as("AvailabilityZoneId")
  availabilityZoneId: option<availabilityZoneId>,
  @ocaml.doc("<p>The ID of the network interface that Amazon EFS created when it created the mount
      target.</p>")
  @as("NetworkInterfaceId")
  networkInterfaceId: option<networkInterfaceId>,
  @ocaml.doc("<p>Address at which the file system can be mounted by using the mount target.</p>")
  @as("IpAddress")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>Lifecycle state of the mount target.</p>") @as("LifeCycleState")
  lifeCycleState: lifeCycleState,
  @ocaml.doc("<p>The ID of the mount target's subnet.</p>") @as("SubnetId") subnetId: subnetId,
  @ocaml.doc("<p>The ID of the file system for which the mount target is intended.</p>")
  @as("FileSystemId")
  fileSystemId: fileSystemId,
  @ocaml.doc("<p>System-assigned mount target ID.</p>") @as("MountTargetId")
  mountTargetId: mountTargetId,
  @ocaml.doc("<p>Amazon Web Services account ID that owns the resource.</p>") @as("OwnerId")
  ownerId: option<awsAccountId>,
}
@ocaml.doc("<p>Describes a policy used by EFS lifecycle management and EFS intelligent tiering that specifies when to transition 
      files into and out of the file system's Infrequent Access (IA) storage class. For more information, see 
      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html\">EFS Intelligent‐Tiering and EFS Lifecycle Management</a>.</p>
         <note>
            <p>When using the <code>put-lifecycle-configuration</code> CLI command or the <code>PutLifecycleConfiguration</code> API action, 
      Amazon EFS requires that each <code>LifecyclePolicy</code> 
      object have only a single transition. This means that in a request body, <code>LifecyclePolicies</code> needs to be structured as
      an array of <code>LifecyclePolicy</code> objects, one object for each transition, <code>TransitionToIA</code>, 
      <code>TransitionToPrimaryStorageClass</code>. For more information, see the request examples in <a>PutLifecycleConfiguration</a>.</p>
         </note>")
type lifecyclePolicy = {
  @ocaml.doc("<p>Describes when to transition a file from IA storage to primary storage. Metadata
      operations such as listing the contents of a directory don't count as file access
      events.</p>")
  @as("TransitionToPrimaryStorageClass")
  transitionToPrimaryStorageClass: option<transitionToPrimaryStorageClassRules>,
  @ocaml.doc("<p>
      Describes the period of time that a file is not accessed, after which it transitions to IA storage. Metadata
      operations such as listing the contents of a directory don't count as file access
      events.</p>")
  @as("TransitionToIA")
  transitionToIA: option<transitionToIARules>,
}
@ocaml.doc("<p>The latest known metered size (in bytes) of data stored in the file system, in its
        <code>Value</code> field, and the time at which that size was determined in its
        <code>Timestamp</code> field. The value doesn't represent the size of a consistent
      snapshot of the file system, but it is eventually consistent when there are no writes to the
      file system. That is, the value represents the actual size only if the file system is not
      modified for a period longer than a couple of hours. Otherwise, the value is not necessarily
      the exact size the file system was at any instant in time.</p>")
type fileSystemSize = {
  @ocaml.doc("<p>The latest known metered size (in bytes) of data stored in the Standard storage
      class.</p>")
  @as("ValueInStandard")
  valueInStandard: option<fileSystemNullableSizeValue>,
  @ocaml.doc("<p>The latest known metered size (in bytes) of data stored in the Infrequent Access
      storage class.</p>")
  @as("ValueInIA")
  valueInIA: option<fileSystemNullableSizeValue>,
  @ocaml.doc("<p>The time at which the size of data, returned in the <code>Value</code> field, was
      determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>")
  @as("Timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The latest known metered size (in bytes) of data stored in the file system.</p>")
  @as("Value")
  value: fileSystemSizeValue,
}
@ocaml.doc(
  "<p>Describes the destination file system to create in the replication configuration.</p>"
)
type destinationToCreate = {
  @ocaml.doc("<p>Specifies the KMS key you want to use to encrypt the destination file system. If you do not 
      specify a KMS key, EFS uses your default KMS key for Amazon EFS, 
      <code>/aws/elasticfilesystem</code>. This ID can be in one of the following
      formats:</p>
         <ul>
            <li>
               <p>Key ID - A unique identifier of the key, for example
          <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
            </li>
            <li>
               <p>ARN - An Amazon Resource Name (ARN) for the key, for example
          <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
            </li>
            <li>
               <p>Key alias - A previously created display name for a key, for example
          <code>alias/projectKey1</code>.</p>
            </li>
            <li>
               <p>Key alias ARN - An ARN for a key alias, for example
          <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
            </li>
         </ul>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>To create a file system that uses One Zone storage, specify the name of the 
      Availability Zone in which to create the destination file system.</p>")
  @as("AvailabilityZoneName")
  availabilityZoneName: option<availabilityZoneName>,
  @ocaml.doc("<p>To create a file system that uses regional storage, specify the Amazon Web Services Region
      in which to create the destination file system.</p>")
  @as("Region")
  region: option<regionName>,
}
@ocaml.doc("<p>Describes the destination file system in the replication configuration.</p>")
type destination = {
  @ocaml.doc("<p>The time when the most recent sync successfully completed on the destination file system. 
      Any changes to data on the source file system that occurred prior to this time were successfully 
      replicated to the destination file system. Any changes that occurred after this time might not be 
      fully replicated.</p>")
  @as("LastReplicatedTimestamp")
  lastReplicatedTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>The Amazon Web Services Region in which the destination file system is located.</p>"
  )
  @as("Region")
  region: regionName,
  @ocaml.doc("<p>The ID of the destination Amazon EFS file system.</p>") @as("FileSystemId")
  fileSystemId: fileSystemId,
  @ocaml.doc("<p>Describes the status of the destination Amazon EFS file system.</p>") @as("Status")
  status: replicationStatus,
}
@ocaml.doc("<p>Required if the <code>RootDirectory</code> > <code>Path</code> specified does not exist. 
      Specifies the POSIX IDs and permissions to apply to the access point's <code>RootDirectory</code> > <code>Path</code>. 
      If the access point root directory does not exist, EFS creates it with these settings when a client connects to the access point. 
      When specifying <code>CreationInfo</code>, you must include values for all properties. 
   </p>
         <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory. 
      If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount 
      using the access point will fail.</p>
         <important>
            <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> does not exist, 
      attempts to mount the file system using the access point will fail.</p>
         </important>")
type creationInfo = {
  @ocaml.doc(
    "<p>Specifies the POSIX permissions to apply to the <code>RootDirectory</code>, in the format of an octal number representing the file's mode bits.</p>"
  )
  @as("Permissions")
  permissions: permissions,
  @ocaml.doc(
    "<p>Specifies the POSIX group ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>"
  )
  @as("OwnerGid")
  ownerGid: ownerGid,
  @ocaml.doc(
    "<p>Specifies the POSIX user ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>"
  )
  @as("OwnerUid")
  ownerUid: ownerUid,
}
@ocaml.doc("<p>The backup policy for the file system used to create automatic daily backups. If status has a value of 
      <code>ENABLED</code>, the file system is being automatically backed up. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups\">Automatic backups</a>.</p>")
type backupPolicy = {
  @ocaml.doc("<p>Describes the status of the file system's backup policy.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>ENABLED</code>
                  </b> - EFS is automatically backing up the file system.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>ENABLING</code>
                  </b> - EFS is turning on automatic backups for the file system.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>DISABLED</code>
                  </b> - automatic back ups are turned off for the file system.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>DISABLING</code>
                  </b> - EFS is turning off automatic backups for the file system.</p>
            </li>
         </ul>")
  @as("Status")
  status: status,
}
type tags = array<tag>
@ocaml.doc("<p>Specifies the directory on the Amazon EFS file system that the access point provides access to. 
      The access point exposes the specified file system path as
      the root directory of your file system to applications using the access point. 
      NFS clients using the access point can only access data in the access point's <code>RootDirectory</code> and it's subdirectories.</p>")
type rootDirectory = {
  @ocaml.doc("<p>(Optional) Specifies the POSIX IDs and permissions to apply to the access point's <code>RootDirectory</code>. 
      If the <code>RootDirectory</code> > <code>Path</code> specified does not exist, 
      EFS creates the root directory using the <code>CreationInfo</code> settings when a client connects to an access point.
      When specifying the <code>CreationInfo</code>, you must provide values for all properties. 
    </p>
         <important>
            <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> > <code>Path</code> does not exist, 
      attempts to mount the file system using the access point will fail.</p>
         </important>")
  @as("CreationInfo")
  creationInfo: option<creationInfo>,
  @ocaml.doc("<p>Specifies the path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system.
       A path can have up to four subdirectories.  
    If the specified path does not exist, you are required to provide the <code>CreationInfo</code>.</p>")
  @as("Path")
  path: option<path>,
}
@ocaml.doc(
  "<p>Describes the resource type and its ID preference for the user's Amazon Web Services account, in the current Amazon Web Services Region.</p>"
)
type resourceIdPreference = {
  @ocaml.doc(
    "<p>Identifies the Amazon EFS resources to which the ID preference setting applies, <code>FILE_SYSTEM</code> and <code>MOUNT_TARGET</code>.</p>"
  )
  @as("Resources")
  resources: option<resources>,
  @ocaml.doc(
    "<p>Identifies the EFS resource ID preference, either <code>LONG_ID</code> (17 characters) or <code>SHORT_ID</code> (8 characters).</p>"
  )
  @as("ResourceIdType")
  resourceIdType: option<resourceIdType>,
}
@ocaml.doc("<p>The full POSIX identity, including the user ID, group ID, and any secondary group IDs, on the access point that is used for all file system operations performed by
      NFS clients using the access point.</p>")
type posixUser = {
  @ocaml.doc(
    "<p>Secondary POSIX group IDs used for all file system operations using this access point.</p>"
  )
  @as("SecondaryGids")
  secondaryGids: option<secondaryGids>,
  @ocaml.doc(
    "<p>The POSIX group ID used for all file system operations using this access point.</p>"
  )
  @as("Gid")
  gid: gid,
  @ocaml.doc(
    "<p>The POSIX user ID used for all file system operations using this access point.</p>"
  )
  @as("Uid")
  uid: uid,
}
type mountTargetDescriptions = array<mountTargetDescription>
type lifecyclePolicies = array<lifecyclePolicy>
type destinationsToCreate = array<destinationToCreate>
type destinations = array<destination>
type replicationConfigurationDescription = {
  @ocaml.doc("<p>Array of destination objects. Only one destination object is supported.</p>")
  @as("Destinations")
  destinations: destinations,
  @ocaml.doc("<p>Describes when the replication configuration was created.</p>") @as("CreationTime")
  creationTime: timestamp_,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the original source Amazon EFS  file system in the replication configuration.</p>"
  )
  @as("OriginalSourceFileSystemArn")
  originalSourceFileSystemArn: fileSystemArn,
  @ocaml.doc("<p>The ARN of the current source file system in the replication configuration.</p>")
  @as("SourceFileSystemArn")
  sourceFileSystemArn: fileSystemArn,
  @ocaml.doc(
    "<p>The Amazon Web Services Region in which the source Amazon EFS  file system is located.</p>"
  )
  @as("SourceFileSystemRegion")
  sourceFileSystemRegion: regionName,
  @ocaml.doc("<p>The ID of the source Amazon EFS file system that is being replicated.</p>")
  @as("SourceFileSystemId")
  sourceFileSystemId: fileSystemId,
}
@ocaml.doc("<p>A description of the file system.</p>")
type fileSystemDescription = {
  @ocaml.doc("<p>The tags associated with the file system, presented as an array of <code>Tag</code>
      objects.</p>")
  @as("Tags")
  tags: tags,
  @ocaml.doc("<p>The unique and consistent identifier of the Availability Zone in which the file system's
      One Zone storage classes exist. For example, <code>use1-az1</code> is an Availability Zone ID
      for the us-east-1 Amazon Web Services Region, and it has the same location in every Amazon Web Services account.</p>")
  @as("AvailabilityZoneId")
  availabilityZoneId: option<availabilityZoneId>,
  @ocaml.doc("<p>Describes the Amazon Web Services Availability Zone in which the file system is located, and is valid only
      for file systems using One Zone storage classes. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html\">Using EFS storage classes</a> 
      in the <i>Amazon EFS User Guide</i>.</p>")
  @as("AvailabilityZoneName")
  availabilityZoneName: option<availabilityZoneName>,
  @ocaml.doc("<p>The amount of provisioned throughput, measured in MiB/s, for the file system. Valid for
      file systems using <code>ThroughputMode</code> set to <code>provisioned</code>.</p>")
  @as("ProvisionedThroughputInMibps")
  provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
  @ocaml.doc("<p>Displays the file system's throughput mode. For more information, see 
      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#throughput-modes\">Throughput modes</a> 
      in the <i>Amazon EFS User Guide</i>.
    </p>")
  @as("ThroughputMode")
  throughputMode: option<throughputMode>,
  @ocaml.doc("<p>The ID of an KMS key used to protect the encrypted file system.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>A Boolean value that, if true, indicates that the file system is encrypted.</p>")
  @as("Encrypted")
  encrypted: option<encrypted>,
  @ocaml.doc("<p>The performance mode of the file system.</p>") @as("PerformanceMode")
  performanceMode: performanceMode,
  @ocaml.doc("<p>The latest known metered size (in bytes) of data stored in the file system, in its
        <code>Value</code> field, and the time at which that size was determined in its
        <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of
      seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent
      the size of a consistent snapshot of the file system, but it is eventually consistent when
      there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual
      size only if the file system is not modified for a period longer than a couple of hours.
      Otherwise, the value is not the exact size that the file system was at any point in time.
    </p>")
  @as("SizeInBytes")
  sizeInBytes: fileSystemSize,
  @ocaml.doc(
    "<p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>"
  )
  @as("NumberOfMountTargets")
  numberOfMountTargets: mountTargetCount,
  @ocaml.doc("<p>You can add tags to a file system, including a <code>Name</code> tag. For more
      information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns
      the value in this field. </p>")
  @as("Name")
  name: option<tagValue>,
  @ocaml.doc("<p>The lifecycle phase of the file system.</p>") @as("LifeCycleState")
  lifeCycleState: lifeCycleState,
  @ocaml.doc("<p>The time that the file system was created, in seconds (since
      1970-01-01T00:00:00Z).</p>")
  @as("CreationTime")
  creationTime: timestamp_,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the EFS file system, in the format 
      <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i>
            </code>. 
      Example with sample data: <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code>
         </p>")
  @as("FileSystemArn")
  fileSystemArn: option<fileSystemArn>,
  @ocaml.doc("<p>The ID of the file system, assigned by Amazon EFS.</p>") @as("FileSystemId")
  fileSystemId: fileSystemId,
  @ocaml.doc("<p>The opaque string specified in the request.</p>") @as("CreationToken")
  creationToken: creationToken,
  @ocaml.doc("<p>The Amazon Web Services account that created the file system. If the file system was created by an IAM
      user, the parent account to which the user belongs is the owner.</p>")
  @as("OwnerId")
  ownerId: awsAccountId,
}
@ocaml.doc("<p>Provides a description of an EFS file system access point.</p>")
type accessPointDescription = {
  @ocaml.doc("<p>Identifies the lifecycle phase of the access point.</p>") @as("LifeCycleState")
  lifeCycleState: option<lifeCycleState>,
  @ocaml.doc(
    "<p>Identified the Amazon Web Services account that owns the access point resource.</p>"
  )
  @as("OwnerId")
  ownerId: option<awsAccountId>,
  @ocaml.doc(
    "<p>The directory on the Amazon EFS file system that the access point exposes as the root directory to NFS clients using the access point.</p>"
  )
  @as("RootDirectory")
  rootDirectory: option<rootDirectory>,
  @ocaml.doc("<p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by
      NFS clients using the access point.</p>")
  @as("PosixUser")
  posixUser: option<posixUser>,
  @ocaml.doc("<p>The ID of the EFS file system that the access point applies to.</p>")
  @as("FileSystemId")
  fileSystemId: option<fileSystemId>,
  @ocaml.doc("<p>The  unique Amazon Resource Name (ARN) associated with the access point.</p>")
  @as("AccessPointArn")
  accessPointArn: option<accessPointArn>,
  @ocaml.doc("<p>The ID of the access point, assigned by Amazon EFS.</p>") @as("AccessPointId")
  accessPointId: option<accessPointId>,
  @ocaml.doc(
    "<p>The tags associated with the access point, presented as an array of Tag objects.</p>"
  )
  @as("Tags")
  tags: option<tags>,
  @ocaml.doc("<p>The name of the access point. This is the value of the <code>Name</code> tag.</p>")
  @as("Name")
  name: option<name>,
  @ocaml.doc("<p>The opaque string specified in the request to ensure idempotent creation.</p>")
  @as("ClientToken")
  clientToken: option<clientToken>,
}
type replicationConfigurationDescriptions = array<replicationConfigurationDescription>
type fileSystemDescriptions = array<fileSystemDescription>
type accessPointDescriptions = array<accessPointDescription>
@ocaml.doc("<fullname>Amazon Elastic File System</fullname>
         <p>Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for use
      with Amazon EC2 Linux and Mac instances in the Amazon Web Services Cloud. With Amazon EFS, storage capacity is elastic,
      growing and shrinking automatically as you add and remove files, so your applications have the
      storage they need, when they need it. For more information, see the <a href=\"https://docs.aws.amazon.com/efs/latest/ug/api-reference.html\">Amazon Elastic File System API Reference</a> and the <a href=\"https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html\">Amazon Elastic File System User Guide</a>.</p>")
module PutFileSystemPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) A flag to indicate whether to bypass the <code>FileSystemPolicy</code> lockout safety check. The policy lockout safety check 
      determines whether the policy in the request will prevent the principal making the request will be locked out from making future <code>PutFileSystemPolicy</code> requests on the file system.
      Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent 
      the principal that is making the request from making a subsequent <code>PutFileSystemPolicy</code> request on the file system. 
      The default value is False.
    </p>")
    @as("BypassPolicyLockoutSafetyCheck")
    bypassPolicyLockoutSafetyCheck: option<bypassPolicyLockoutSafetyCheck>,
    @ocaml.doc("<p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted policy definition. 
     EFS file system policies have a 20,000 character limit.
      To find out more about the elements that make up a file system policy, see 
      <a href=\"https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies\">EFS Resource-based Policies</a>.
    </p>")
    @as("Policy")
    policy: policy,
    @ocaml.doc(
      "<p>The ID of the EFS file system that you want to create or update the <code>FileSystemPolicy</code> for.</p>"
    )
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc("<p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file system.</p>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc(
      "<p>Specifies the EFS file system to which the <code>FileSystemPolicy</code> applies.</p>"
    )
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutFileSystemPolicyCommand"
  let make = (~policy, ~fileSystemId, ~bypassPolicyLockoutSafetyCheck=?, ()) =>
    new({
      bypassPolicyLockoutSafetyCheck: bypassPolicyLockoutSafetyCheck,
      policy: policy,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystemPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code> for.</p>"
    )
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc("<p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file system.</p>")
    @as("Policy")
    policy: option<policy>,
    @ocaml.doc(
      "<p>Specifies the EFS file system to which the <code>FileSystemPolicy</code> applies.</p>"
    )
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeFileSystemPolicyCommand"
  let make = (~fileSystemId, ()) => new({fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the source file system in the replication configuration.</p>")
    @as("SourceFileSystemId")
    sourceFileSystemId: fileSystemId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteReplicationConfigurationCommand"
  let make = (~sourceFileSystemId, ()) => new({sourceFileSystemId: sourceFileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMountTarget = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ID of the mount target to delete (String).</p>") @as("MountTargetId")
    mountTargetId: mountTargetId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteMountTargetCommand"
  let make = (~mountTargetId, ()) => new({mountTargetId: mountTargetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFileSystemPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the EFS file system for which to delete the <code>FileSystemPolicy</code>.</p>"
    )
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteFileSystemPolicyCommand"
  let make = (~fileSystemId, ()) => new({fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFileSystem = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ID of the file system you want to delete.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteFileSystemCommand"
  let make = (~fileSystemId, ()) => new({fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the access point that you want to delete.</p>") @as("AccessPointId")
    accessPointId: accessPointId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteAccessPointCommand"
  let make = (~accessPointId, ()) => new({accessPointId: accessPointId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the key-value tag pairs that you want to remove from the specified EFS
      resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>Specifies the EFS resource that you want to remove tags from.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceId, ()) => new({tagKeys: tagKeys, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBackupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>")
    @as("BackupPolicy")
    backupPolicy: backupPolicy,
    @ocaml.doc("<p>Specifies which EFS file system to update the backup policy for.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the file system's backup policy, indicating whether automatic backups are turned on or off..</p>"
    )
    @as("BackupPolicy")
    backupPolicy: option<backupPolicy>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutBackupPolicyCommand"
  let make = (~backupPolicy, ~fileSystemId, ()) =>
    new({backupPolicy: backupPolicy, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyMountTargetSecurityGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of up to five VPC security group IDs.</p>") @as("SecurityGroups")
    securityGroups: option<securityGroups>,
    @ocaml.doc("<p>The ID of the mount target whose security groups you want to modify.</p>")
    @as("MountTargetId")
    mountTargetId: mountTargetId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "ModifyMountTargetSecurityGroupsCommand"
  let make = (~mountTargetId, ~securityGroups=?, ()) =>
    new({securityGroups: securityGroups, mountTargetId: mountTargetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeMountTargetSecurityGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ID of the mount target whose security groups you want to retrieve.</p>")
    @as("MountTargetId")
    mountTargetId: mountTargetId,
  }
  type response = {
    @ocaml.doc("<p>An array of security groups.</p>") @as("SecurityGroups")
    securityGroups: securityGroups,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeMountTargetSecurityGroupsCommand"
  let make = (~mountTargetId, ()) => new({mountTargetId: mountTargetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackupPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies which EFS file system to retrieve the <code>BackupPolicy</code> for.</p>"
    )
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the file system's backup policy, indicating whether automatic backups are turned on or off..</p>"
    )
    @as("BackupPolicy")
    backupPolicy: option<backupPolicy>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeBackupPolicyCommand"
  let make = (~fileSystemId, ()) => new({fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag keys to delete.</p>") @as("TagKeys") tagKeys: tagKeys,
    @ocaml.doc("<p>The ID of the file system whose tags you want to delete (String).</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~fileSystemId, ()) => new({tagKeys: tagKeys, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateMountTarget = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Up to five VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be
      for the same VPC as subnet specified.</p>")
    @as("SecurityGroups")
    securityGroups: option<securityGroups>,
    @ocaml.doc("<p>Valid IPv4 address within the address range of the specified subnet.</p>")
    @as("IpAddress")
    ipAddress: option<ipAddress>,
    @ocaml.doc("<p>The ID of the subnet to add the mount target in. For file systems that use One Zone storage classes, use the subnet 
    that is associated with the file system's Availability Zone.</p>")
    @as("SubnetId")
    subnetId: subnetId,
    @ocaml.doc("<p>The ID of the file system for which to create the mount target.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = mountTargetDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateMountTargetCommand"
  let make = (~subnetId, ~fileSystemId, ~securityGroups=?, ~ipAddress=?, ()) =>
    new({
      securityGroups: securityGroups,
      ipAddress: ipAddress,
      subnetId: subnetId,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystem = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) Sets the amount of provisioned throughput, in MiB/s, for the file
      system. Valid values are 1-1024. If you are changing the throughput mode to provisioned, you must also 
      provide the amount of provisioned throughput. Required if <code>ThroughputMode</code> is changed 
      to <code>provisioned</code> on update.</p>")
    @as("ProvisionedThroughputInMibps")
    provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
    @ocaml.doc("<p>(Optional) Updates the file system's throughput mode. If you're not
      updating your throughput mode, you don't need to provide this value in your
      request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>, 
      you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>")
    @as("ThroughputMode")
    throughputMode: option<throughputMode>,
    @ocaml.doc("<p>The ID of the file system that you want to update.</p>") @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = fileSystemDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "UpdateFileSystemCommand"
  let make = (~fileSystemId, ~provisionedThroughputInMibps=?, ~throughputMode=?, ()) =>
    new({
      provisionedThroughputInMibps: provisionedThroughputInMibps,
      throughputMode: throughputMode,
      fileSystemId: fileSystemId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
      pair.</p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The ID specifying the EFS resource that you want to create a tag for.</p>")
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceId, ()) => new({tags: tags, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>An array of <code>LifecyclePolicy</code> objects that define the file system's
        <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object
      informs EFS lifecycle management and intelligent tiering of the following:</p>
         <ul>
            <li>
               <p>When to move files in the file system from primary storage to the IA storage class.</p>
            </li>
            <li>
               <p>When to move files that are in IA storage to primary storage.</p>
            </li>
         </ul>
         <note>
            <p>When using the <code>put-lifecycle-configuration</code> CLI command or the <code>PutLifecycleConfiguration</code> API action, 
      Amazon EFS requires that each <code>LifecyclePolicy</code> 
      object have only a single transition. This means that in a request body, <code>LifecyclePolicies</code> needs to be structured as
      an array of <code>LifecyclePolicy</code> objects, one object for each transition, <code>TransitionToIA</code>, <code>TransitionToPrimaryStorageClass</code>. 
      See the example requests in the following section for more information.</p>
         </note>")
    @as("LifecyclePolicies")
    lifecyclePolicies: lifecyclePolicies,
    @ocaml.doc("<p>The ID of the file system for which you are creating the
        <code>LifecycleConfiguration</code> object (String).</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc("<p>An array of lifecycle management policies. EFS supports a maximum of one
      policy per file system.</p>")
    @as("LifecyclePolicies")
    lifecyclePolicies: option<lifecyclePolicies>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutLifecycleConfigurationCommand"
  let make = (~lifecyclePolicies, ~fileSystemId, ()) =>
    new({lifecyclePolicies: lifecyclePolicies, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccountPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the EFS resource ID preference to set for the user's Amazon Web Services account, 
      in the current Amazon Web Services Region, either <code>LONG_ID</code> (17 characters), or 
      <code>SHORT_ID</code> (8 characters).</p>
         <note>
            <p>Starting in October, 2021, you will receive an error when setting the account 
      preference to <code>SHORT_ID</code>. Contact Amazon Web Services support if you receive an 
      error and need to use short IDs for file system and mount target resources.</p>
         </note>")
    @as("ResourceIdType")
    resourceIdType: resourceIdType,
  }
  type response = {@as("ResourceIdPreference") resourceIdPreference: option<resourceIdPreference>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutAccountPreferencesCommand"
  let make = (~resourceIdType, ()) => new({resourceIdType: resourceIdType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags for EFS file systems and access points using this API endpoint.</p>"
    )
    @as("ResourceId")
    resourceId: resourceId,
  }
  type response = {
    @ocaml.doc("<p>
            <code>NextToken</code> is present if the response payload is paginated. You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array of the tags for the specified EFS resource.</p>") @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ID of the file system whose tag set you want to retrieve.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
    @ocaml.doc("<p>(Optional) An opaque pagination token returned from a previous
        <code>DescribeTags</code> operation (String). If present, it specifies to continue the list
      from where the previous call left off.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>(Optional) The maximum number of file system tags to return in the response. Currently,
      this number is automatically set to
      100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>If a value is present, there are more tags to return. In a subsequent request, you can
      provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter
      in your next request to retrieve the next set of tags.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Returns tags associated with the file system as an array of <code>Tag</code> objects.
    </p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>If the request included a <code>Marker</code>, the response returns that value in this
      field.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeTagsCommand"
  let make = (~fileSystemId, ~marker=?, ~maxItems=?, ()) =>
    new({fileSystemId: fileSystemId, marker: marker, maxItems: maxItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMountTargets = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a
      <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>")
    @as("AccessPointId")
    accessPointId: option<accessPointId>,
    @ocaml.doc("<p>(Optional) ID of the mount target that you want to have described (String). It must be
      included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>")
    @as("MountTargetId")
    mountTargetId: option<mountTargetId>,
    @ocaml.doc("<p>(Optional) ID of the file system whose mount targets you want to list (String). It must
      be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>")
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
    @ocaml.doc("<p>(Optional) Opaque pagination token returned from a previous
        <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue
      the list from where the previous returning call left off.</p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>(Optional) Maximum number of mount targets to return in the response. Currently, this
      number is automatically set to
      10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>If a value is present, there are more mount targets to return. In a subsequent request,
      you can provide <code>Marker</code> in your request with this value to retrieve the next set
      of mount targets.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>Returns the file system's mount targets as an array of
        <code>MountTargetDescription</code> objects.</p>")
    @as("MountTargets")
    mountTargets: option<mountTargetDescriptions>,
    @ocaml.doc("<p>If the request included the <code>Marker</code>, the response returns that value in
      this field.</p>")
    @as("Marker")
    marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeMountTargetsCommand"
  let make = (~accessPointId=?, ~mountTargetId=?, ~fileSystemId=?, ~marker=?, ~maxItems=?, ()) =>
    new({
      accessPointId: accessPointId,
      mountTargetId: mountTargetId,
      fileSystemId: fileSystemId,
      marker: marker,
      maxItems: maxItems,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLifecycleConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to
      retrieve (String).</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {
    @ocaml.doc("<p>An array of lifecycle management policies. EFS supports a maximum of one
      policy per file system.</p>")
    @as("LifecyclePolicies")
    lifecyclePolicies: option<lifecyclePolicies>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeLifecycleConfigurationCommand"
  let make = (~fileSystemId, ()) => new({fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountPreferences = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) When retrieving account preferences,
      you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  
      The default value is 100. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of 
      Amazon Web Services account preferences if the response payload was paginated.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>Present if there are more records than returned in the response. 
      You can use the <code>NextToken</code> in the subsequent request to fetch the additional descriptions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>Describes the resource ID preference setting for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region.</p>"
    )
    @as("ResourceIdPreference")
    resourceIdPreference: option<resourceIdPreference>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeAccountPreferencesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
      pair. </p>")
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The ID of the file system whose tags you want to modify (String). This operation modifies
      the tags only, not the file system.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
  }
  type response = {.}
  @module("@aws-sdk/client-elasticfilesystem") @new external new: request => t = "CreateTagsCommand"
  let make = (~tags, ~fileSystemId, ()) => new({tags: tags, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateReplicationConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of destination configuration objects. Only one destination configuration object is supported.</p>"
    )
    @as("Destinations")
    destinations: destinationsToCreate,
    @ocaml.doc("<p>Specifies the Amazon EFS file system that you want to replicate. This file system cannot already be 
    a source or destination file system in another replication configuration.</p>")
    @as("SourceFileSystemId")
    sourceFileSystemId: fileSystemId,
  }
  type response = replicationConfigurationDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateReplicationConfigurationCommand"
  let make = (~destinations, ~sourceFileSystemId, ()) =>
    new({destinations: destinations, sourceFileSystemId: sourceFileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFileSystem = {
  type t
  type request = {
    @ocaml.doc("<p>Use to create one or more tags associated with the file system. Each
        tag is a user-defined key-value pair. Name your file system on creation by including a
        <code>\"Key\":\"Name\",\"Value\":\"{value}\"</code> key-value pair. Each key must be unique. For more 
        information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>
        in the <i>Amazon Web Services General Reference Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Specifies whether automatic backups are enabled on the file system that you are creating.
      Set the value to <code>true</code> to enable automatic backups. If you are creating a file
      system that uses One Zone storage classes, automatic backups are enabled by default. For more
      information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups\">Automatic backups</a> in the
        <i>Amazon EFS User Guide</i>.</p>
         <p>Default is <code>false</code>. However, if you specify an <code>AvailabilityZoneName</code>, 
      the default is <code>true</code>.</p>
         <note>
            <p>Backup is not available in all Amazon Web Services Regions where Amazon EFS is available.</p>
         </note>")
    @as("Backup")
    backup: option<backup>,
    @ocaml.doc("<p>Used to create a file system that uses One Zone storage classes. It specifies the Amazon Web Services
      Availability Zone in which to create the file system. Use the format <code>us-east-1a</code>
      to specify the Availability Zone. For
      more information about One Zone storage classes, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html\">Using EFS storage classes</a> in the <i>Amazon EFS User Guide</i>.</p>
         <note>
            <p>One Zone storage classes are not available in all Availability Zones in Amazon Web Services Regions where
        Amazon EFS is available.</p>
         </note>")
    @as("AvailabilityZoneName")
    availabilityZoneName: option<availabilityZoneName>,
    @ocaml.doc("<p>The throughput, measured in MiB/s, that you want to provision for a file system that
      you're creating. Valid values are 1-1024. Required if <code>ThroughputMode</code> is set
      to <code>provisioned</code>. The upper limit for throughput is 1024 MiB/s. To increase this
      limit, contact Amazon Web Services Support. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits\">Amazon EFS quotas that you can increase</a>
      in the <i>Amazon EFS User Guide</i>.</p>")
    @as("ProvisionedThroughputInMibps")
    provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
    @ocaml.doc("<p>Specifies the throughput mode for the file system, either <code>bursting</code> or
        <code>provisioned</code>. If you set <code>ThroughputMode</code> to
      <code>provisioned</code>, you must also set a value for
        <code>ProvisionedThroughputInMibps</code>. After you create the file system, you can
      decrease your file system's throughput in Provisioned Throughput mode or change between
      the throughput modes, as long as it’s been more than 24 hours since the last decrease or
      throughput mode change. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput\">Specifying throughput with
        provisioned mode</a> in the <i>Amazon EFS User Guide</i>. </p>
         <p>Default is <code>bursting</code>.</p>")
    @as("ThroughputMode")
    throughputMode: option<throughputMode>,
    @ocaml.doc("<p>The ID of the KMS key that you want to use to protect the encrypted file system. This
      parameter is only required if you want to use a non-default KMS key. If this parameter is not
      specified, the default KMS key for Amazon EFS is used. You can specify a KMS key 
      ID using the following formats:</p>
         <ul>
            <li>
               <p>Key ID - A unique identifier of the key, for example
            <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
            </li>
            <li>
               <p>ARN - An Amazon Resource Name (ARN) for the key, for example
            <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
            </li>
            <li>
               <p>Key alias - A previously created display name for a key, for example
            <code>alias/projectKey1</code>.</p>
            </li>
            <li>
               <p>Key alias ARN - An ARN for a key alias, for example
            <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
            </li>
         </ul>
         <p>If you use <code>KmsKeyId</code>, you must set the <a>CreateFileSystemRequest$Encrypted</a> 
      parameter to true.</p>
         <important>
            <p>EFS accepts only symmetric KMS keys. You cannot use asymmetric 
      KMS keys with Amazon EFS file systems.</p>
         </important>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>A Boolean value that, if true, creates an encrypted file system. When creating an
      encrypted file system, you have the option of specifying an existing Key Management Service key (KMS key).
      If you don't specify a KMS key, then the default KMS key for
      Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system.
    </p>")
    @as("Encrypted")
    encrypted: option<encrypted>,
    @ocaml.doc("<p>The performance mode of the file system. We recommend <code>generalPurpose</code>
      performance mode for most file systems. File systems using the <code>maxIO</code> performance
      mode can scale to higher levels of aggregate throughput and operations per second with a
      tradeoff of slightly higher latencies for most file operations. The performance mode
      can't be changed after the file system has been created.</p>
         <note>
            <p>The <code>maxIO</code> mode is not supported on file systems using One Zone storage classes.</p>
         </note>")
    @as("PerformanceMode")
    performanceMode: option<performanceMode>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent
      creation.</p>")
    @as("CreationToken")
    creationToken: creationToken,
  }
  type response = fileSystemDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateFileSystemCommand"
  let make = (
    ~creationToken,
    ~tags=?,
    ~backup=?,
    ~availabilityZoneName=?,
    ~provisionedThroughputInMibps=?,
    ~throughputMode=?,
    ~kmsKeyId=?,
    ~encrypted=?,
    ~performanceMode=?,
    (),
  ) =>
    new({
      tags: tags,
      backup: backup,
      availabilityZoneName: availabilityZoneName,
      provisionedThroughputInMibps: provisionedThroughputInMibps,
      throughputMode: throughputMode,
      kmsKeyId: kmsKeyId,
      encrypted: encrypted,
      performanceMode: performanceMode,
      creationToken: creationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPoint = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the directory on the Amazon EFS file system that the access point exposes as
      the root directory of your file system to NFS clients using the access point. 
      The clients using the access point can only access the root directory and below. 
      If the <code>RootDirectory</code> > <code>Path</code> specified does not exist, 
      EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an access point. 
      When specifying a <code>RootDirectory</code>, you need to provide the <code>Path</code>, and the <code>CreationInfo</code>.</p>
         <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory. 
      If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount 
      using the access point will fail.</p>")
    @as("RootDirectory")
    rootDirectory: option<rootDirectory>,
    @ocaml.doc("<p>The operating system user and
      group applied to all file system requests made using the access point.</p>")
    @as("PosixUser")
    posixUser: option<posixUser>,
    @ocaml.doc("<p>The ID of the EFS file system that the access point provides access to.</p>")
    @as("FileSystemId")
    fileSystemId: fileSystemId,
    @ocaml.doc("<p>Creates tags associated with the access point. Each tag is a key-value pair, each key must be unique. For more 
      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging Amazon Web Services resources</a>
      in the <i>Amazon Web Services General Reference Guide</i>.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent
      creation.</p>")
    @as("ClientToken")
    clientToken: clientToken,
  }
  type response = accessPointDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateAccessPointCommand"
  let make = (~fileSystemId, ~clientToken, ~rootDirectory=?, ~posixUser=?, ~tags=?, ()) =>
    new({
      rootDirectory: rootDirectory,
      posixUser: posixUser,
      fileSystemId: fileSystemId,
      tags: tags,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReplicationConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) You can optionally specify the <code>MaxItems</code> parameter 
      to limit the number of objects returned in a response. The default value is 100. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
            <code>NextToken</code> is present if the response is paginated. You can use 
      <code>NextMarker</code> in a subsequent request to fetch the next page of output.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>You can retrieve replication configurations for a specific file system by providing a file system ID.</p>"
    )
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
  }
  type response = {
    @ocaml.doc("<p>You can use the <code>NextToken</code> from the previous response in a subsequent 
      request to fetch the additional descriptions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The collection of replication configurations returned.</p>") @as("Replications")
    replications: option<replicationConfigurationDescriptions>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeReplicationConfigurationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~fileSystemId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, fileSystemId: fileSystemId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystems = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>(Optional) ID of the file system whose description you want to retrieve
      (String).</p>")
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
    @ocaml.doc("<p>(Optional) Restricts the list to the file system with this creation token (String). You
      specify a creation token when you create an Amazon EFS file system.</p>")
    @as("CreationToken")
    creationToken: option<creationToken>,
    @ocaml.doc("<p>(Optional) Opaque pagination token returned from a previous
        <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the
      list from where the returning call had left off. </p>")
    @as("Marker")
    marker: option<marker>,
    @ocaml.doc("<p>(Optional) Specifies the maximum number of file systems to return in the response
      (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
      </p>")
    @as("MaxItems")
    maxItems: option<maxItems>,
  }
  type response = {
    @ocaml.doc("<p>Present if there are more file systems than returned in the response (String). You can
      use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>")
    @as("NextMarker")
    nextMarker: option<marker>,
    @ocaml.doc("<p>An array of file system descriptions.</p>") @as("FileSystems")
    fileSystems: option<fileSystemDescriptions>,
    @ocaml.doc("<p>Present if provided by caller in the request (String).</p>") @as("Marker")
    marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeFileSystemsCommand"
  let make = (~fileSystemId=?, ~creationToken=?, ~marker=?, ~maxItems=?, ()) =>
    new({
      fileSystemId: fileSystemId,
      creationToken: creationToken,
      marker: marker,
      maxItems: maxItems,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccessPoints = {
  type t
  type request = {
    @ocaml.doc(
      "<p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>"
    )
    @as("FileSystemId")
    fileSystemId: option<fileSystemId>,
    @ocaml.doc(
      "<p>(Optional) Specifies an EFS access point to describe in the response; mutually exclusive with <code>FileSystemId</code>.</p>"
    )
    @as("AccessPointId")
    accessPointId: option<accessPointId>,
    @ocaml.doc("<p>
            <code>NextToken</code> is present if the response is paginated. You can use 
      <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>(Optional) When retrieving all access points for a file system,
      you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.  
      The default value is 100. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>Present if there are more access points than returned in the response. 
      You can use the NextMarker in the subsequent request to fetch the additional descriptions.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array of access point descriptions.</p>") @as("AccessPoints")
    accessPoints: option<accessPointDescriptions>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeAccessPointsCommand"
  let make = (~fileSystemId=?, ~accessPointId=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      fileSystemId: fileSystemId,
      accessPointId: accessPointId,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
