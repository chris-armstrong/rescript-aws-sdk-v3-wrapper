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
type transitionToIARules = [
  | @as("AFTER_90_DAYS") #AFTER_90_DAYS
  | @as("AFTER_60_DAYS") #AFTER_60_DAYS
  | @as("AFTER_30_DAYS") #AFTER_30_DAYS
  | @as("AFTER_14_DAYS") #AFTER_14_DAYS
  | @as("AFTER_7_DAYS") #AFTER_7_DAYS
]
type token = string
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
type resourceIdType = [@as("SHORT_ID") #SHORT_ID | @as("LONG_ID") #LONG_ID]
type resourceId = string
type resource = [@as("MOUNT_TARGET") #MOUNT_TARGET | @as("FILE_SYSTEM") #FILE_SYSTEM]
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
type maxResults = int
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
type errorMessage = string
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
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type securityGroups = array<securityGroup>
type secondaryGids = array<gid>
type resources = array<resource>
type mountTargetDescription = {
  @as("VpcId") vpcId: option<vpcId>,
  @as("AvailabilityZoneName") availabilityZoneName: option<availabilityZoneName>,
  @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
  @as("NetworkInterfaceId") networkInterfaceId: option<networkInterfaceId>,
  @as("IpAddress") ipAddress: option<ipAddress>,
  @as("LifeCycleState") lifeCycleState: lifeCycleState,
  @as("SubnetId") subnetId: subnetId,
  @as("FileSystemId") fileSystemId: fileSystemId,
  @as("MountTargetId") mountTargetId: mountTargetId,
  @as("OwnerId") ownerId: option<awsAccountId>,
}
type lifecyclePolicy = {@as("TransitionToIA") transitionToIA: option<transitionToIARules>}
type fileSystemSize = {
  @as("ValueInStandard") valueInStandard: option<fileSystemNullableSizeValue>,
  @as("ValueInIA") valueInIA: option<fileSystemNullableSizeValue>,
  @as("Timestamp") timestamp_: option<timestamp_>,
  @as("Value") value: fileSystemSizeValue,
}
type creationInfo = {
  @as("Permissions") permissions: permissions,
  @as("OwnerGid") ownerGid: ownerGid,
  @as("OwnerUid") ownerUid: ownerUid,
}
type backupPolicy = {@as("Status") status: status}
type tags = array<tag>
type rootDirectory = {
  @as("CreationInfo") creationInfo: option<creationInfo>,
  @as("Path") path: option<path>,
}
type resourceIdPreference = {
  @as("Resources") resources: option<resources>,
  @as("ResourceIdType") resourceIdType: option<resourceIdType>,
}
type posixUser = {
  @as("SecondaryGids") secondaryGids: option<secondaryGids>,
  @as("Gid") gid: gid,
  @as("Uid") uid: uid,
}
type mountTargetDescriptions = array<mountTargetDescription>
type lifecyclePolicies = array<lifecyclePolicy>
type fileSystemDescription = {
  @as("Tags") tags: tags,
  @as("AvailabilityZoneId") availabilityZoneId: option<availabilityZoneId>,
  @as("AvailabilityZoneName") availabilityZoneName: option<availabilityZoneName>,
  @as("ProvisionedThroughputInMibps")
  provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
  @as("ThroughputMode") throughputMode: option<throughputMode>,
  @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
  @as("Encrypted") encrypted: option<encrypted>,
  @as("PerformanceMode") performanceMode: performanceMode,
  @as("SizeInBytes") sizeInBytes: fileSystemSize,
  @as("NumberOfMountTargets") numberOfMountTargets: mountTargetCount,
  @as("Name") name: option<tagValue>,
  @as("LifeCycleState") lifeCycleState: lifeCycleState,
  @as("CreationTime") creationTime: timestamp_,
  @as("FileSystemArn") fileSystemArn: option<fileSystemArn>,
  @as("FileSystemId") fileSystemId: fileSystemId,
  @as("CreationToken") creationToken: creationToken,
  @as("OwnerId") ownerId: awsAccountId,
}
type accessPointDescription = {
  @as("LifeCycleState") lifeCycleState: option<lifeCycleState>,
  @as("OwnerId") ownerId: option<awsAccountId>,
  @as("RootDirectory") rootDirectory: option<rootDirectory>,
  @as("PosixUser") posixUser: option<posixUser>,
  @as("FileSystemId") fileSystemId: option<fileSystemId>,
  @as("AccessPointArn") accessPointArn: option<accessPointArn>,
  @as("AccessPointId") accessPointId: option<accessPointId>,
  @as("Tags") tags: option<tags>,
  @as("Name") name: option<name>,
  @as("ClientToken") clientToken: option<clientToken>,
}
type fileSystemDescriptions = array<fileSystemDescription>
type accessPointDescriptions = array<accessPointDescription>

module PutFileSystemPolicy = {
  type t
  type request = {
    @as("BypassPolicyLockoutSafetyCheck")
    bypassPolicyLockoutSafetyCheck: option<bypassPolicyLockoutSafetyCheck>,
    @as("Policy") policy: policy,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {
    @as("Policy") policy: option<policy>,
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutFileSystemPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystemPolicy = {
  type t
  type request = {@as("FileSystemId") fileSystemId: fileSystemId}
  type response = {
    @as("Policy") policy: option<policy>,
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeFileSystemPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMountTarget = {
  type t
  type request = {@as("MountTargetId") mountTargetId: mountTargetId}

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteMountTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFileSystemPolicy = {
  type t
  type request = {@as("FileSystemId") fileSystemId: fileSystemId}

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteFileSystemPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFileSystem = {
  type t
  type request = {@as("FileSystemId") fileSystemId: fileSystemId}

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPoint = {
  type t
  type request = {@as("AccessPointId") accessPointId: accessPointId}

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DeleteAccessPointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("ResourceId") resourceId: resourceId,
  }

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutBackupPolicy = {
  type t
  type request = {
    @as("BackupPolicy") backupPolicy: backupPolicy,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {@as("BackupPolicy") backupPolicy: option<backupPolicy>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutBackupPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyMountTargetSecurityGroups = {
  type t
  type request = {
    @as("SecurityGroups") securityGroups: option<securityGroups>,
    @as("MountTargetId") mountTargetId: mountTargetId,
  }

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "ModifyMountTargetSecurityGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeMountTargetSecurityGroups = {
  type t
  type request = {@as("MountTargetId") mountTargetId: mountTargetId}
  type response = {@as("SecurityGroups") securityGroups: securityGroups}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeMountTargetSecurityGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackupPolicy = {
  type t
  type request = {@as("FileSystemId") fileSystemId: fileSystemId}
  type response = {@as("BackupPolicy") backupPolicy: option<backupPolicy>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeBackupPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeys,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }

  @module("@aws-sdk/client-elasticfilesystem") @new external new: request => t = "DeleteTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateMountTarget = {
  type t
  type request = {
    @as("SecurityGroups") securityGroups: option<securityGroups>,
    @as("IpAddress") ipAddress: option<ipAddress>,
    @as("SubnetId") subnetId: subnetId,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = mountTargetDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateMountTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFileSystem = {
  type t
  type request = {
    @as("ProvisionedThroughputInMibps")
    provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
    @as("ThroughputMode") throughputMode: option<throughputMode>,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = fileSystemDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "UpdateFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceId") resourceId: resourceId,
  }

  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecycleConfiguration = {
  type t
  type request = {
    @as("LifecyclePolicies") lifecyclePolicies: lifecyclePolicies,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }
  type response = {@as("LifecyclePolicies") lifecyclePolicies: option<lifecyclePolicies>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAccountPreferences = {
  type t
  type request = {@as("ResourceIdType") resourceIdType: resourceIdType}
  type response = {@as("ResourceIdPreference") resourceIdPreference: option<resourceIdPreference>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "PutAccountPreferencesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ResourceId") resourceId: resourceId,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Tags") tags: option<tags>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  type request = {
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("Marker") marker: option<marker>,
    @as("MaxItems") maxItems: option<maxItems>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<marker>,
    @as("Tags") tags: tags,
    @as("Marker") marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMountTargets = {
  type t
  type request = {
    @as("AccessPointId") accessPointId: option<accessPointId>,
    @as("MountTargetId") mountTargetId: option<mountTargetId>,
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
    @as("Marker") marker: option<marker>,
    @as("MaxItems") maxItems: option<maxItems>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<marker>,
    @as("MountTargets") mountTargets: option<mountTargetDescriptions>,
    @as("Marker") marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeMountTargetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLifecycleConfiguration = {
  type t
  type request = {@as("FileSystemId") fileSystemId: fileSystemId}
  type response = {@as("LifecyclePolicies") lifecyclePolicies: option<lifecyclePolicies>}
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeLifecycleConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountPreferences = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<token>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ResourceIdPreference") resourceIdPreference: option<resourceIdPreference>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeAccountPreferencesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("FileSystemId") fileSystemId: fileSystemId,
  }

  @module("@aws-sdk/client-elasticfilesystem") @new external new: request => t = "CreateTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateFileSystem = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("Backup") backup: option<backup>,
    @as("AvailabilityZoneName") availabilityZoneName: option<availabilityZoneName>,
    @as("ProvisionedThroughputInMibps")
    provisionedThroughputInMibps: option<provisionedThroughputInMibps>,
    @as("ThroughputMode") throughputMode: option<throughputMode>,
    @as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
    @as("Encrypted") encrypted: option<encrypted>,
    @as("PerformanceMode") performanceMode: option<performanceMode>,
    @as("CreationToken") creationToken: creationToken,
  }
  type response = fileSystemDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateFileSystemCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPoint = {
  type t
  type request = {
    @as("RootDirectory") rootDirectory: option<rootDirectory>,
    @as("PosixUser") posixUser: option<posixUser>,
    @as("FileSystemId") fileSystemId: fileSystemId,
    @as("Tags") tags: option<tags>,
    @as("ClientToken") clientToken: clientToken,
  }
  type response = accessPointDescription
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "CreateAccessPointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFileSystems = {
  type t
  type request = {
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
    @as("CreationToken") creationToken: option<creationToken>,
    @as("Marker") marker: option<marker>,
    @as("MaxItems") maxItems: option<maxItems>,
  }
  type response = {
    @as("NextMarker") nextMarker: option<marker>,
    @as("FileSystems") fileSystems: option<fileSystemDescriptions>,
    @as("Marker") marker: option<marker>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeFileSystemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccessPoints = {
  type t
  type request = {
    @as("FileSystemId") fileSystemId: option<fileSystemId>,
    @as("AccessPointId") accessPointId: option<accessPointId>,
    @as("NextToken") nextToken: option<token>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("AccessPoints") accessPoints: option<accessPointDescriptions>,
  }
  @module("@aws-sdk/client-elasticfilesystem") @new
  external new: request => t = "DescribeAccessPointsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
