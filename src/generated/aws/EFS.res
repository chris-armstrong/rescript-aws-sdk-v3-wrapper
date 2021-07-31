type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type uid = float;
type transitionToIARules = [@as("AFTER_90_DAYS") #AFTER_90_DAYS | @as("AFTER_60_DAYS") #AFTER_60_DAYS | @as("AFTER_30_DAYS") #AFTER_30_DAYS | @as("AFTER_14_DAYS") #AFTER_14_DAYS | @as("AFTER_7_DAYS") #AFTER_7_DAYS]
type token = string
type amazonawsTimestamp = Js.Date.t;
type throughputMode = [@as("provisioned") #provisioned | @as("bursting") #bursting]
type tagValue = string
type tagKey = string
type subnetId = string
type status = [@as("DISABLING") #DISABLING | @as("DISABLED") #DISABLED | @as("ENABLING") #ENABLING | @as("ENABLED") #ENABLED]
type securityGroup = string
type resourceIdType = [@as("SHORT_ID") #SHORT_ID | @as("LONG_ID") #LONG_ID]
type resourceId = string
type resource = [@as("MOUNT_TARGET") #MOUNT_TARGET | @as("FILE_SYSTEM") #FILE_SYSTEM]
type provisionedThroughputInMibps = float;
type policy = string
type permissions = string
type performanceMode = [@as("maxIO") #maxIO | @as("generalPurpose") #generalPurpose]
type path = string
type ownerUid = float;
type ownerGid = float;
type networkInterfaceId = string
type name = string
type mountTargetId = string
type mountTargetCount = int;
type maxResults = int;
type maxItems = int;
type marker = string
type lifeCycleState = [@as("error") #error | @as("deleted") #deleted | @as("deleting") #deleting | @as("updating") #updating | @as("available") #available | @as("creating") #creating]
type kmsKeyId = string
type ipAddress = string
type gid = float;
type fileSystemSizeValue = float;
type fileSystemNullableSizeValue = float;
type fileSystemId = string
type fileSystemArn = string
type errorMessage = string
type errorCode = string
type encrypted = bool;
type creationToken = string
type clientToken = string
type bypassPolicyLockoutSafetyCheck = bool;
type backup = bool;
type awsAccountId = string
type availabilityZoneName = string
type availabilityZoneId = string
type accessPointId = string
type accessPointArn = string
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type securityGroups = array<securityGroup>
type secondaryGids = array<gid>
type resources = array<resource>
type mountTargetDescription = {
@as("VpcId") vpcId: vpcId,
@as("AvailabilityZoneName") availabilityZoneName: availabilityZoneName,
@as("AvailabilityZoneId") availabilityZoneId: availabilityZoneId,
@as("NetworkInterfaceId") networkInterfaceId: networkInterfaceId,
@as("IpAddress") ipAddress: ipAddress,
@as("LifeCycleState") lifeCycleState: option<lifeCycleState>,
@as("SubnetId") subnetId: option<subnetId>,
@as("FileSystemId") fileSystemId: option<fileSystemId>,
@as("MountTargetId") mountTargetId: option<mountTargetId>,
@as("OwnerId") ownerId: awsAccountId
}
type lifecyclePolicy = {
@as("TransitionToIA") transitionToIA: transitionToIARules
}
type fileSystemSize = {
@as("ValueInStandard") valueInStandard: fileSystemNullableSizeValue,
@as("ValueInIA") valueInIA: fileSystemNullableSizeValue,
@as("Timestamp") timestamp: amazonawsTimestamp,
@as("Value") value: option<fileSystemSizeValue>
}
type creationInfo = {
@as("Permissions") permissions: option<permissions>,
@as("OwnerGid") ownerGid: option<ownerGid>,
@as("OwnerUid") ownerUid: option<ownerUid>
}
type backupPolicy = {
@as("Status") status: option<status>
}
type tags = array<tag>
type rootDirectory = {
@as("CreationInfo") creationInfo: creationInfo,
@as("Path") path: path
}
type resourceIdPreference = {
@as("Resources") resources: resources,
@as("ResourceIdType") resourceIdType: resourceIdType
}
type posixUser = {
@as("SecondaryGids") secondaryGids: secondaryGids,
@as("Gid") gid: option<gid>,
@as("Uid") uid: option<uid>
}
type mountTargetDescriptions = array<mountTargetDescription>
type lifecyclePolicies = array<lifecyclePolicy>
type fileSystemDescription = {
@as("Tags") tags: option<tags>,
@as("AvailabilityZoneId") availabilityZoneId: availabilityZoneId,
@as("AvailabilityZoneName") availabilityZoneName: availabilityZoneName,
@as("ProvisionedThroughputInMibps") provisionedThroughputInMibps: provisionedThroughputInMibps,
@as("ThroughputMode") throughputMode: throughputMode,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Encrypted") encrypted: encrypted,
@as("PerformanceMode") performanceMode: option<performanceMode>,
@as("SizeInBytes") sizeInBytes: option<fileSystemSize>,
@as("NumberOfMountTargets") numberOfMountTargets: option<mountTargetCount>,
@as("Name") name: tagValue,
@as("LifeCycleState") lifeCycleState: option<lifeCycleState>,
@as("CreationTime") creationTime: option<amazonawsTimestamp>,
@as("FileSystemArn") fileSystemArn: fileSystemArn,
@as("FileSystemId") fileSystemId: option<fileSystemId>,
@as("CreationToken") creationToken: option<creationToken>,
@as("OwnerId") ownerId: option<awsAccountId>
}
type accessPointDescription = {
@as("LifeCycleState") lifeCycleState: lifeCycleState,
@as("OwnerId") ownerId: awsAccountId,
@as("RootDirectory") rootDirectory: rootDirectory,
@as("PosixUser") posixUser: posixUser,
@as("FileSystemId") fileSystemId: fileSystemId,
@as("AccessPointArn") accessPointArn: accessPointArn,
@as("AccessPointId") accessPointId: accessPointId,
@as("Tags") tags: tags,
@as("Name") name: name,
@as("ClientToken") clientToken: clientToken
}
type fileSystemDescriptions = array<fileSystemDescription>
type accessPointDescriptions = array<accessPointDescription>
type clientType;
@module("@aws-sdk/client-elasticfilesystem") @new external createClient: unit => clientType = "EFSClient";
module PutFileSystemPolicy = {
  type t;
  type request = {
@as("BypassPolicyLockoutSafetyCheck") bypassPolicyLockoutSafetyCheck: bypassPolicyLockoutSafetyCheck,
@as("Policy") policy: option<policy>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("Policy") policy: policy,
@as("FileSystemId") fileSystemId: fileSystemId
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "PutFileSystemPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFileSystemPolicy = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("Policy") policy: policy,
@as("FileSystemId") fileSystemId: fileSystemId
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeFileSystemPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMountTarget = {
  type t;
  type request = {
@as("MountTargetId") mountTargetId: option<mountTargetId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DeleteMountTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFileSystemPolicy = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DeleteFileSystemPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFileSystem = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DeleteFileSystemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAccessPoint = {
  type t;
  type request = {
@as("AccessPointId") accessPointId: option<accessPointId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DeleteAccessPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceId") resourceId: option<resourceId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutBackupPolicy = {
  type t;
  type request = {
@as("BackupPolicy") backupPolicy: option<backupPolicy>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("BackupPolicy") backupPolicy: backupPolicy
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "PutBackupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyMountTargetSecurityGroups = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: securityGroups,
@as("MountTargetId") mountTargetId: option<mountTargetId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "ModifyMountTargetSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeMountTargetSecurityGroups = {
  type t;
  type request = {
@as("MountTargetId") mountTargetId: option<mountTargetId>
}
  type response = {
@as("SecurityGroups") securityGroups: option<securityGroups>
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeMountTargetSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBackupPolicy = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("BackupPolicy") backupPolicy: backupPolicy
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeBackupPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateMountTarget = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: securityGroups,
@as("IpAddress") ipAddress: ipAddress,
@as("SubnetId") subnetId: option<subnetId>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = mountTargetDescription;
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "CreateMountTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFileSystem = {
  type t;
  type request = {
@as("ProvisionedThroughputInMibps") provisionedThroughputInMibps: provisionedThroughputInMibps,
@as("ThroughputMode") throughputMode: throughputMode,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = fileSystemDescription;
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "UpdateFileSystemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceId") resourceId: option<resourceId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutLifecycleConfiguration = {
  type t;
  type request = {
@as("LifecyclePolicies") lifecyclePolicies: option<lifecyclePolicies>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("LifecyclePolicies") lifecyclePolicies: lifecyclePolicies
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "PutLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountPreferences = {
  type t;
  type request = {
@as("ResourceIdType") resourceIdType: option<resourceIdType>
}
  type response = {
@as("ResourceIdPreference") resourceIdPreference: resourceIdPreference
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "PutAccountPreferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = {
@as("NextToken") nextToken: token,
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>,
@as("Marker") marker: marker,
@as("MaxItems") maxItems: maxItems
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("Tags") tags: option<tags>,
@as("Marker") marker: marker
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMountTargets = {
  type t;
  type request = {
@as("AccessPointId") accessPointId: accessPointId,
@as("MountTargetId") mountTargetId: mountTargetId,
@as("FileSystemId") fileSystemId: fileSystemId,
@as("Marker") marker: marker,
@as("MaxItems") maxItems: maxItems
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("MountTargets") mountTargets: mountTargetDescriptions,
@as("Marker") marker: marker
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeMountTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLifecycleConfiguration = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  type response = {
@as("LifecyclePolicies") lifecyclePolicies: lifecyclePolicies
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeLifecycleConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountPreferences = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: token
}
  type response = {
@as("NextToken") nextToken: token,
@as("ResourceIdPreference") resourceIdPreference: resourceIdPreference
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountPreferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("FileSystemId") fileSystemId: option<fileSystemId>
}
  
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateFileSystem = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Backup") backup: backup,
@as("AvailabilityZoneName") availabilityZoneName: availabilityZoneName,
@as("ProvisionedThroughputInMibps") provisionedThroughputInMibps: provisionedThroughputInMibps,
@as("ThroughputMode") throughputMode: throughputMode,
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Encrypted") encrypted: encrypted,
@as("PerformanceMode") performanceMode: performanceMode,
@as("CreationToken") creationToken: option<creationToken>
}
  type response = fileSystemDescription;
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "CreateFileSystemCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPoint = {
  type t;
  type request = {
@as("RootDirectory") rootDirectory: rootDirectory,
@as("PosixUser") posixUser: posixUser,
@as("FileSystemId") fileSystemId: option<fileSystemId>,
@as("Tags") tags: tags,
@as("ClientToken") clientToken: option<clientToken>
}
  type response = accessPointDescription;
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "CreateAccessPointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFileSystems = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: fileSystemId,
@as("CreationToken") creationToken: creationToken,
@as("Marker") marker: marker,
@as("MaxItems") maxItems: maxItems
}
  type response = {
@as("NextMarker") nextMarker: marker,
@as("FileSystems") fileSystems: fileSystemDescriptions,
@as("Marker") marker: marker
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeFileSystemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccessPoints = {
  type t;
  type request = {
@as("FileSystemId") fileSystemId: fileSystemId,
@as("AccessPointId") accessPointId: accessPointId,
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: token,
@as("AccessPoints") accessPoints: accessPointDescriptions
}
  @module("@aws-sdk/client-elasticfilesystem") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccessPointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
