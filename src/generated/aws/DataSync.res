type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsString = string
type long = float;
type vpcEndpointId = string
type verifyMode = [@as("NONE") #NONE | @as("ONLY_FILES_TRANSFERRED") #ONLY_FILES_TRANSFERRED | @as("POINT_IN_TIME_CONSISTENT") #POINT_IN_TIME_CONSISTENT]
type uid = [@as("BOTH") #BOTH | @as("NAME") #NAME | @as("INT_VALUE") #INT_VALUE | @as("NONE") #NONE]
type transferMode = [@as("ALL") #ALL | @as("CHANGED") #CHANGED]
type time = Js.Date.t;
type taskStatus = [@as("UNAVAILABLE") #UNAVAILABLE | @as("RUNNING") #RUNNING | @as("QUEUED") #QUEUED | @as("CREATING") #CREATING | @as("AVAILABLE") #AVAILABLE]
type taskQueueing = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type taskFilterName = [@as("CreationTime") #CreationTime | @as("LocationId") #LocationId]
type taskExecutionStatus = [@as("ERROR") #ERROR | @as("SUCCESS") #SUCCESS | @as("VERIFYING") #VERIFYING | @as("TRANSFERRING") #TRANSFERRING | @as("PREPARING") #PREPARING | @as("LAUNCHING") #LAUNCHING | @as("QUEUED") #QUEUED]
type taskExecutionArn = string
type taskArn = string
type taggableResourceArn = string
type tagValue = string
type tagKey = string
type smbVersion = [@as("SMB3") #SMB3 | @as("SMB2") #SMB2 | @as("AUTOMATIC") #AUTOMATIC]
type smbUser = string
type smbSubdirectory = string
type smbSecurityDescriptorCopyFlags = [@as("OWNER_DACL_SACL") #OWNER_DACL_SACL | @as("OWNER_DACL") #OWNER_DACL | @as("NONE") #NONE]
type smbPassword = string
type smbDomain = string
type serverHostname = string
type scheduleExpressionCron = string
type s3Subdirectory = string
type s3StorageClass = [@as("OUTPOSTS") #OUTPOSTS | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE | @as("GLACIER") #GLACIER | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING | @as("ONEZONE_IA") #ONEZONE_IA | @as("STANDARD_IA") #STANDARD_IA | @as("STANDARD") #STANDARD]
type s3BucketArn = string
type preserveDevices = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type preserveDeletedFiles = [@as("REMOVE") #REMOVE | @as("PRESERVE") #PRESERVE]
type posixPermissions = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type phaseStatus = [@as("ERROR") #ERROR | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type overwriteMode = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type operator = [@as("BeginsWith") #BeginsWith | @as("NotContains") #NotContains | @as("Contains") #Contains | @as("GreaterThan") #GreaterThan | @as("GreaterThanOrEqual") #GreaterThanOrEqual | @as("LessThan") #LessThan | @as("LessThanOrEqual") #LessThanOrEqual | @as("In") #In | @as("NotEquals") #NotEquals | @as("Equals") #Equals]
type objectStorageServerProtocol = [@as("HTTP") #HTTP | @as("HTTPS") #HTTPS]
type objectStorageServerPort = int;
type objectStorageSecretKey = string
type objectStorageBucketName = string
type objectStorageAccessKey = string
type nfsVersion = [@as("NFS4_1") #NFS4_1 | @as("NFS4_0") #NFS4_0 | @as("NFS3") #NFS3 | @as("AUTOMATIC") #AUTOMATIC]
type nfsSubdirectory = string
type nextToken = string
type networkInterfaceArn = string
type mtime = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type maxResults = int;
type logLevel = [@as("TRANSFER") #TRANSFER | @as("BASIC") #BASIC | @as("OFF") #OFF]
type logGroupArn = string
type locationUri = string
type locationFilterName = [@as("CreationTime") #CreationTime | @as("LocationType") #LocationType | @as("LocationUri") #LocationUri]
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
type duration = float;
type bytesPerSecond = float;
type atime = [@as("BEST_EFFORT") #BEST_EFFORT | @as("NONE") #NONE]
type agentStatus = [@as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]
type agentArn = string
type activationKey = string
type taskSchedule = {
@as("ScheduleExpression") scheduleExpression: option<scheduleExpressionCron>
}
type taskListEntry = {
@as("Name") name: tagValue,
@as("Status") status: taskStatus,
@as("TaskArn") taskArn: taskArn
}
type taskExecutionResultDetail = {
@as("ErrorDetail") errorDetail: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("VerifyStatus") verifyStatus: phaseStatus,
@as("VerifyDuration") verifyDuration: duration,
@as("TransferStatus") transferStatus: phaseStatus,
@as("TransferDuration") transferDuration: duration,
@as("TotalDuration") totalDuration: duration,
@as("PrepareStatus") prepareStatus: phaseStatus,
@as("PrepareDuration") prepareDuration: duration
}
type taskExecutionListEntry = {
@as("Status") status: taskExecutionStatus,
@as("TaskExecutionArn") taskExecutionArn: taskExecutionArn
}
type tagListEntry = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type tagKeyList = array<tagKey>
type sourceNetworkInterfaceArns = array<networkInterfaceArn>
type smbMountOptions = {
@as("Version") version: smbVersion
}
type s3Config = {
@as("BucketAccessRoleArn") bucketAccessRoleArn: option<iamRoleArn>
}
type pLSubnetArnList = array<ec2SubnetArn>
type pLSecurityGroupArnList = array<ec2SecurityGroupArn>
type options = {
@as("SecurityDescriptorCopyFlags") securityDescriptorCopyFlags: smbSecurityDescriptorCopyFlags,
@as("TransferMode") transferMode: transferMode,
@as("LogLevel") logLevel: logLevel,
@as("TaskQueueing") taskQueueing: taskQueueing,
@as("BytesPerSecond") bytesPerSecond: bytesPerSecond,
@as("PosixPermissions") posixPermissions: posixPermissions,
@as("PreserveDevices") preserveDevices: preserveDevices,
@as("PreserveDeletedFiles") preserveDeletedFiles: preserveDeletedFiles,
@as("Gid") gid: gid,
@as("Uid") uid: uid,
@as("Mtime") mtime: mtime,
@as("Atime") atime: atime,
@as("OverwriteMode") overwriteMode: overwriteMode,
@as("VerifyMode") verifyMode: verifyMode
}
type nfsMountOptions = {
@as("Version") version: nfsVersion
}
type locationListEntry = {
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
type filterValues = array<filterAttributeValue>
type filterRule = {
@as("Value") value: filterValue,
@as("FilterType") filterType: filterType
}
type ec2SecurityGroupArnList = array<ec2SecurityGroupArn>
type destinationNetworkInterfaceArns = array<networkInterfaceArn>
type agentListEntry = {
@as("Status") status: agentStatus,
@as("Name") name: tagValue,
@as("AgentArn") agentArn: agentArn
}
type agentArnList = array<agentArn>
type taskList = array<taskListEntry>
type taskFilter = {
@as("Operator") operator: option<operator>,
@as("Values") values: option<filterValues>,
@as("Name") name: option<taskFilterName>
}
type taskExecutionList = array<taskExecutionListEntry>
type privateLinkConfig = {
@as("SecurityGroupArns") securityGroupArns: pLSecurityGroupArnList,
@as("SubnetArns") subnetArns: pLSubnetArnList,
@as("PrivateLinkEndpoint") privateLinkEndpoint: endpoint,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId
}
type outputTagList = array<tagListEntry>
type onPremConfig = {
@as("AgentArns") agentArns: option<agentArnList>
}
type locationList = array<locationListEntry>
type locationFilter = {
@as("Operator") operator: option<operator>,
@as("Values") values: option<filterValues>,
@as("Name") name: option<locationFilterName>
}
type inputTagList = array<tagListEntry>
type filterList = array<filterRule>
type ec2Config = {
@as("SecurityGroupArns") securityGroupArns: option<ec2SecurityGroupArnList>,
@as("SubnetArn") subnetArn: option<ec2SubnetArn>
}
type agentList = array<agentListEntry>
type taskFilters = array<taskFilter>
type locationFilters = array<locationFilter>
type clientType;
@module("@aws-sdk/client-datasync") @new external createClient: unit => clientType = "DataSyncClient";
module UpdateAgent = {
  type t;
  type request = {
@as("Name") name: tagValue,
@as("AgentArn") agentArn: option<agentArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateAgentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTask = {
  type t;
  type request = {
@as("TaskArn") taskArn: option<taskArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DeleteTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLocation = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DeleteLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAgent = {
  type t;
  type request = {
@as("AgentArn") agentArn: option<agentArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DeleteAgentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelTaskExecution = {
  type t;
  type request = {
@as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CancelTaskExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTaskExecution = {
  type t;
  type request = {
@as("Options") options: option<options>,
@as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateTaskExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLocationSmb = {
  type t;
  type request = {
@as("MountOptions") mountOptions: smbMountOptions,
@as("AgentArns") agentArns: agentArnList,
@as("Password") password: smbPassword,
@as("Domain") domain: smbDomain,
@as("User") user: smbUser,
@as("Subdirectory") subdirectory: smbSubdirectory,
@as("LocationArn") locationArn: option<locationArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateLocationSmbCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLocationObjectStorage = {
  type t;
  type request = {
@as("AgentArns") agentArns: agentArnList,
@as("SecretKey") secretKey: objectStorageSecretKey,
@as("AccessKey") accessKey: objectStorageAccessKey,
@as("Subdirectory") subdirectory: s3Subdirectory,
@as("ServerProtocol") serverProtocol: objectStorageServerProtocol,
@as("ServerPort") serverPort: objectStorageServerPort,
@as("LocationArn") locationArn: option<locationArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateLocationObjectStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("Keys") keys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<taggableResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationSmb = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("MountOptions") mountOptions: smbMountOptions,
@as("Domain") domain: smbDomain,
@as("User") user: smbUser,
@as("AgentArns") agentArns: agentArnList,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationSmbCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationS3 = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("AgentArns") agentArns: agentArnList,
@as("S3Config") s3Config: s3Config,
@as("S3StorageClass") s3StorageClass: s3StorageClass,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationObjectStorage = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("AgentArns") agentArns: agentArnList,
@as("ServerProtocol") serverProtocol: objectStorageServerProtocol,
@as("ServerPort") serverPort: objectStorageServerPort,
@as("AccessKey") accessKey: objectStorageAccessKey,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationObjectStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationFsxWindows = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("Domain") domain: smbDomain,
@as("User") user: smbUser,
@as("CreationTime") creationTime: time,
@as("SecurityGroupArns") securityGroupArns: ec2SecurityGroupArnList,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationFsxWindowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTask = {
  type t;
  type request = {
@as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: logGroupArn,
@as("Name") name: tagValue,
@as("Schedule") schedule: taskSchedule,
@as("Excludes") excludes: filterList,
@as("Options") options: options,
@as("TaskArn") taskArn: option<taskArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLocationNfs = {
  type t;
  type request = {
@as("MountOptions") mountOptions: nfsMountOptions,
@as("OnPremConfig") onPremConfig: onPremConfig,
@as("Subdirectory") subdirectory: nfsSubdirectory,
@as("LocationArn") locationArn: option<locationArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "UpdateLocationNfsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<inputTagList>,
@as("ResourceArn") resourceArn: option<taggableResourceArn>
}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTaskExecution = {
  type t;
  type request = {
@as("Includes") includes: filterList,
@as("OverrideOptions") overrideOptions: options,
@as("TaskArn") taskArn: option<taskArn>
}
  type response = {
@as("TaskExecutionArn") taskExecutionArn: taskExecutionArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "StartTaskExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTaskExecutions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("TaskArn") taskArn: taskArn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TaskExecutions") taskExecutions: taskExecutionList
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "ListTaskExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ResourceArn") resourceArn: option<taggableResourceArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: outputTagList
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAgents = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Agents") agents: agentList
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "ListAgentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTaskExecution = {
  type t;
  type request = {
@as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>
}
  type response = {
@as("Result") result: taskExecutionResultDetail,
@as("BytesTransferred") bytesTransferred: long,
@as("BytesWritten") bytesWritten: long,
@as("FilesTransferred") filesTransferred: long,
@as("EstimatedBytesToTransfer") estimatedBytesToTransfer: long,
@as("EstimatedFilesToTransfer") estimatedFilesToTransfer: long,
@as("StartTime") startTime: time,
@as("Includes") includes: filterList,
@as("Excludes") excludes: filterList,
@as("Options") options: options,
@as("Status") status: taskExecutionStatus,
@as("TaskExecutionArn") taskExecutionArn: taskExecutionArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeTaskExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTask = {
  type t;
  type request = {
@as("TaskArn") taskArn: option<taskArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("ErrorDetail") errorDetail: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Schedule") schedule: taskSchedule,
@as("Excludes") excludes: filterList,
@as("Options") options: options,
@as("DestinationNetworkInterfaceArns") destinationNetworkInterfaceArns: destinationNetworkInterfaceArns,
@as("SourceNetworkInterfaceArns") sourceNetworkInterfaceArns: sourceNetworkInterfaceArns,
@as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: logGroupArn,
@as("DestinationLocationArn") destinationLocationArn: locationArn,
@as("SourceLocationArn") sourceLocationArn: locationArn,
@as("CurrentTaskExecutionArn") currentTaskExecutionArn: taskExecutionArn,
@as("Name") name: tagValue,
@as("Status") status: taskStatus,
@as("TaskArn") taskArn: taskArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationNfs = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("MountOptions") mountOptions: nfsMountOptions,
@as("OnPremConfig") onPremConfig: onPremConfig,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationNfsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocationEfs = {
  type t;
  type request = {
@as("LocationArn") locationArn: option<locationArn>
}
  type response = {
@as("CreationTime") creationTime: time,
@as("Ec2Config") ec2Config: ec2Config,
@as("LocationUri") locationUri: locationUri,
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeLocationEfsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAgent = {
  type t;
  type request = {
@as("AgentArn") agentArn: option<agentArn>
}
  type response = {
@as("PrivateLinkConfig") privateLinkConfig: privateLinkConfig,
@as("EndpointType") endpointType: endpointType,
@as("CreationTime") creationTime: time,
@as("LastConnectionTime") lastConnectionTime: time,
@as("Status") status: agentStatus,
@as("Name") name: tagValue,
@as("AgentArn") agentArn: agentArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "DescribeAgentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTask = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("Schedule") schedule: taskSchedule,
@as("Excludes") excludes: filterList,
@as("Options") options: options,
@as("Name") name: tagValue,
@as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: logGroupArn,
@as("DestinationLocationArn") destinationLocationArn: option<locationArn>,
@as("SourceLocationArn") sourceLocationArn: option<locationArn>
}
  type response = {
@as("TaskArn") taskArn: taskArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationSmb = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("MountOptions") mountOptions: smbMountOptions,
@as("AgentArns") agentArns: option<agentArnList>,
@as("Password") password: option<smbPassword>,
@as("Domain") domain: smbDomain,
@as("User") user: option<smbUser>,
@as("ServerHostname") serverHostname: option<serverHostname>,
@as("Subdirectory") subdirectory: option<smbSubdirectory>
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationSmbCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationS3 = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("AgentArns") agentArns: agentArnList,
@as("S3Config") s3Config: option<s3Config>,
@as("S3StorageClass") s3StorageClass: s3StorageClass,
@as("S3BucketArn") s3BucketArn: option<s3BucketArn>,
@as("Subdirectory") subdirectory: s3Subdirectory
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationObjectStorage = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("AgentArns") agentArns: option<agentArnList>,
@as("SecretKey") secretKey: objectStorageSecretKey,
@as("AccessKey") accessKey: objectStorageAccessKey,
@as("BucketName") bucketName: option<objectStorageBucketName>,
@as("Subdirectory") subdirectory: s3Subdirectory,
@as("ServerProtocol") serverProtocol: objectStorageServerProtocol,
@as("ServerPort") serverPort: objectStorageServerPort,
@as("ServerHostname") serverHostname: option<serverHostname>
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationObjectStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationNfs = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("MountOptions") mountOptions: nfsMountOptions,
@as("OnPremConfig") onPremConfig: option<onPremConfig>,
@as("ServerHostname") serverHostname: option<serverHostname>,
@as("Subdirectory") subdirectory: option<nfsSubdirectory>
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationNfsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationFsxWindows = {
  type t;
  type request = {
@as("Password") password: option<smbPassword>,
@as("Domain") domain: smbDomain,
@as("User") user: option<smbUser>,
@as("Tags") tags: inputTagList,
@as("SecurityGroupArns") securityGroupArns: option<ec2SecurityGroupArnList>,
@as("FsxFilesystemArn") fsxFilesystemArn: option<fsxFilesystemArn>,
@as("Subdirectory") subdirectory: fsxWindowsSubdirectory
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationFsxWindowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLocationEfs = {
  type t;
  type request = {
@as("Tags") tags: inputTagList,
@as("Ec2Config") ec2Config: option<ec2Config>,
@as("EfsFilesystemArn") efsFilesystemArn: option<efsFilesystemArn>,
@as("Subdirectory") subdirectory: efsSubdirectory
}
  type response = {
@as("LocationArn") locationArn: locationArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateLocationEfsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAgent = {
  type t;
  type request = {
@as("SecurityGroupArns") securityGroupArns: pLSecurityGroupArnList,
@as("SubnetArns") subnetArns: pLSubnetArnList,
@as("VpcEndpointId") vpcEndpointId: vpcEndpointId,
@as("Tags") tags: inputTagList,
@as("AgentName") agentName: tagValue,
@as("ActivationKey") activationKey: option<activationKey>
}
  type response = {
@as("AgentArn") agentArn: agentArn
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "CreateAgentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTasks = {
  type t;
  type request = {
@as("Filters") filters: taskFilters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tasks") tasks: taskList
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "ListTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLocations = {
  type t;
  type request = {
@as("Filters") filters: locationFilters,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Locations") locations: locationList
}
  @module("@aws-sdk/client-datasync") @new external new_: (request) => t = "ListLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
