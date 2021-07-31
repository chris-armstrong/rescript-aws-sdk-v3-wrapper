type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-datasync") @new
external createClient: unit => awsServiceClient = "DataSyncClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type long = float
type vpcEndpointId = string
type verifyMode = [
  | @as("NONE") #NONE
  | @as("ONLY_FILES_TRANSFERRED") #ONLY_FILES_TRANSFERRED
  | @as("POINT_IN_TIME_CONSISTENT") #POINT_IN_TIME_CONSISTENT
]
type uid = [@as("BOTH") #BOTH | @as("NAME") #NAME | @as("INT_VALUE") #INT_VALUE | @as("NONE") #NONE]
type transferMode = [@as("ALL") #ALL | @as("CHANGED") #CHANGED]
type time = Js.Date.t
type taskStatus = [
  | @as("UNAVAILABLE") #UNAVAILABLE
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
  | @as("CREATING") #CREATING
  | @as("AVAILABLE") #AVAILABLE
]
type taskQueueing = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type taskFilterName = [@as("CreationTime") #CreationTime | @as("LocationId") #LocationId]
type taskExecutionStatus = [
  | @as("ERROR") #ERROR
  | @as("SUCCESS") #SUCCESS
  | @as("VERIFYING") #VERIFYING
  | @as("TRANSFERRING") #TRANSFERRING
  | @as("PREPARING") #PREPARING
  | @as("LAUNCHING") #LAUNCHING
  | @as("QUEUED") #QUEUED
]
type taskExecutionArn = string
type taskArn = string
type taggableResourceArn = string
type tagValue = string
type tagKey = string
type smbVersion = [@as("SMB3") #SMB3 | @as("SMB2") #SMB2 | @as("AUTOMATIC") #AUTOMATIC]
type smbUser = string
type smbSubdirectory = string
type smbSecurityDescriptorCopyFlags = [
  | @as("OWNER_DACL_SACL") #OWNER_DACL_SACL
  | @as("OWNER_DACL") #OWNER_DACL
  | @as("NONE") #NONE
]
type smbPassword = string
type smbDomain = string
type serverHostname = string
type scheduleExpressionCron = string
type s3Subdirectory = string
type s3StorageClass = [
  | @as("OUTPOSTS") #OUTPOSTS
  | @as("DEEP_ARCHIVE") #DEEP_ARCHIVE
  | @as("GLACIER") #GLACIER
  | @as("INTELLIGENT_TIERING") #INTELLIGENT_TIERING
  | @as("ONEZONE_IA") #ONEZONE_IA
  | @as("STANDARD_IA") #STANDARD_IA
  | @as("STANDARD") #STANDARD
]
type s3BucketArn = string
type preserveDevices = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type preserveDeletedFiles = [@as("REMOVE") #REMOVE | @as("PRESERVE") #PRESERVE]
type posixPermissions = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type phaseStatus = [@as("ERROR") #ERROR | @as("SUCCESS") #SUCCESS | @as("PENDING") #PENDING]
type overwriteMode = [@as("NEVER") #NEVER | @as("ALWAYS") #ALWAYS]
type operator = [
  | @as("BeginsWith") #BeginsWith
  | @as("NotContains") #NotContains
  | @as("Contains") #Contains
  | @as("GreaterThan") #GreaterThan
  | @as("GreaterThanOrEqual") #GreaterThanOrEqual
  | @as("LessThan") #LessThan
  | @as("LessThanOrEqual") #LessThanOrEqual
  | @as("In") #In
  | @as("NotEquals") #NotEquals
  | @as("Equals") #Equals
]
type objectStorageServerProtocol = [@as("HTTP") #HTTP | @as("HTTPS") #HTTPS]
type objectStorageServerPort = int
type objectStorageSecretKey = string
type objectStorageBucketName = string
type objectStorageAccessKey = string
type nfsVersion = [
  | @as("NFS4_1") #NFS4_1
  | @as("NFS4_0") #NFS4_0
  | @as("NFS3") #NFS3
  | @as("AUTOMATIC") #AUTOMATIC
]
type nfsSubdirectory = string
type nextToken = string
type networkInterfaceArn = string
type mtime = [@as("PRESERVE") #PRESERVE | @as("NONE") #NONE]
type maxResults = int
type logLevel = [@as("TRANSFER") #TRANSFER | @as("BASIC") #BASIC | @as("OFF") #OFF]
type logGroupArn = string
type locationUri = string
type locationFilterName = [
  | @as("CreationTime") #CreationTime
  | @as("LocationType") #LocationType
  | @as("LocationUri") #LocationUri
]
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
type duration = float
type bytesPerSecond = float
type atime = [@as("BEST_EFFORT") #BEST_EFFORT | @as("NONE") #NONE]
type agentStatus = [@as("OFFLINE") #OFFLINE | @as("ONLINE") #ONLINE]
type agentArn = string
type activationKey = string
type taskSchedule = {@as("ScheduleExpression") scheduleExpression: scheduleExpressionCron}
type taskListEntry = {
  @as("Name") name: option<tagValue>,
  @as("Status") status: option<taskStatus>,
  @as("TaskArn") taskArn: option<taskArn>,
}
type taskExecutionResultDetail = {
  @as("ErrorDetail") errorDetail: option<string_>,
  @as("ErrorCode") errorCode: option<string_>,
  @as("VerifyStatus") verifyStatus: option<phaseStatus>,
  @as("VerifyDuration") verifyDuration: option<duration>,
  @as("TransferStatus") transferStatus: option<phaseStatus>,
  @as("TransferDuration") transferDuration: option<duration>,
  @as("TotalDuration") totalDuration: option<duration>,
  @as("PrepareStatus") prepareStatus: option<phaseStatus>,
  @as("PrepareDuration") prepareDuration: option<duration>,
}
type taskExecutionListEntry = {
  @as("Status") status: option<taskExecutionStatus>,
  @as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>,
}
type tagListEntry = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type tagKeyList = array<tagKey>
type sourceNetworkInterfaceArns = array<networkInterfaceArn>
type smbMountOptions = {@as("Version") version: option<smbVersion>}
type s3Config = {@as("BucketAccessRoleArn") bucketAccessRoleArn: iamRoleArn}
type plsubnetArnList = array<ec2SubnetArn>
type plsecurityGroupArnList = array<ec2SecurityGroupArn>
type options = {
  @as("SecurityDescriptorCopyFlags")
  securityDescriptorCopyFlags: option<smbSecurityDescriptorCopyFlags>,
  @as("TransferMode") transferMode: option<transferMode>,
  @as("LogLevel") logLevel: option<logLevel>,
  @as("TaskQueueing") taskQueueing: option<taskQueueing>,
  @as("BytesPerSecond") bytesPerSecond: option<bytesPerSecond>,
  @as("PosixPermissions") posixPermissions: option<posixPermissions>,
  @as("PreserveDevices") preserveDevices: option<preserveDevices>,
  @as("PreserveDeletedFiles") preserveDeletedFiles: option<preserveDeletedFiles>,
  @as("Gid") gid: option<gid>,
  @as("Uid") uid: option<uid>,
  @as("Mtime") mtime: option<mtime>,
  @as("Atime") atime: option<atime>,
  @as("OverwriteMode") overwriteMode: option<overwriteMode>,
  @as("VerifyMode") verifyMode: option<verifyMode>,
}
type nfsMountOptions = {@as("Version") version: option<nfsVersion>}
type locationListEntry = {
  @as("LocationUri") locationUri: option<locationUri>,
  @as("LocationArn") locationArn: option<locationArn>,
}
type filterValues = array<filterAttributeValue>
type filterRule = {
  @as("Value") value: option<filterValue>,
  @as("FilterType") filterType: option<filterType>,
}
type ec2SecurityGroupArnList = array<ec2SecurityGroupArn>
type destinationNetworkInterfaceArns = array<networkInterfaceArn>
type agentListEntry = {
  @as("Status") status: option<agentStatus>,
  @as("Name") name: option<tagValue>,
  @as("AgentArn") agentArn: option<agentArn>,
}
type agentArnList = array<agentArn>
type taskList = array<taskListEntry>
type taskFilter = {
  @as("Operator") operator: operator,
  @as("Values") values: filterValues,
  @as("Name") name: taskFilterName,
}
type taskExecutionList = array<taskExecutionListEntry>
type privateLinkConfig = {
  @as("SecurityGroupArns") securityGroupArns: option<plsecurityGroupArnList>,
  @as("SubnetArns") subnetArns: option<plsubnetArnList>,
  @as("PrivateLinkEndpoint") privateLinkEndpoint: option<endpoint>,
  @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
}
type outputTagList = array<tagListEntry>
type onPremConfig = {@as("AgentArns") agentArns: agentArnList}
type locationList = array<locationListEntry>
type locationFilter = {
  @as("Operator") operator: operator,
  @as("Values") values: filterValues,
  @as("Name") name: locationFilterName,
}
type inputTagList = array<tagListEntry>
type filterList = array<filterRule>
type ec2Config = {
  @as("SecurityGroupArns") securityGroupArns: ec2SecurityGroupArnList,
  @as("SubnetArn") subnetArn: ec2SubnetArn,
}
type agentList = array<agentListEntry>
type taskFilters = array<taskFilter>
type locationFilters = array<locationFilter>

module UpdateAgent = {
  type t
  type request = {
    @as("Name") name: option<tagValue>,
    @as("AgentArn") agentArn: agentArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "UpdateAgentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTask = {
  type t
  type request = {@as("TaskArn") taskArn: taskArn}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DeleteTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLocation = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DeleteLocationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAgent = {
  type t
  type request = {@as("AgentArn") agentArn: agentArn}
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DeleteAgentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelTaskExecution = {
  type t
  type request = {@as("TaskExecutionArn") taskExecutionArn: taskExecutionArn}
  type response = unit
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "CancelTaskExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTaskExecution = {
  type t
  type request = {
    @as("Options") options: options,
    @as("TaskExecutionArn") taskExecutionArn: taskExecutionArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "UpdateTaskExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLocationSmb = {
  type t
  type request = {
    @as("MountOptions") mountOptions: option<smbMountOptions>,
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("Password") password: option<smbPassword>,
    @as("Domain") domain: option<smbDomain>,
    @as("User") user: option<smbUser>,
    @as("Subdirectory") subdirectory: option<smbSubdirectory>,
    @as("LocationArn") locationArn: locationArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "UpdateLocationSmbCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLocationObjectStorage = {
  type t
  type request = {
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("SecretKey") secretKey: option<objectStorageSecretKey>,
    @as("AccessKey") accessKey: option<objectStorageAccessKey>,
    @as("Subdirectory") subdirectory: option<s3Subdirectory>,
    @as("ServerProtocol") serverProtocol: option<objectStorageServerProtocol>,
    @as("ServerPort") serverPort: option<objectStorageServerPort>,
    @as("LocationArn") locationArn: locationArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "UpdateLocationObjectStorageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("Keys") keys: tagKeyList,
    @as("ResourceArn") resourceArn: taggableResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationSmb = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("MountOptions") mountOptions: option<smbMountOptions>,
    @as("Domain") domain: option<smbDomain>,
    @as("User") user: option<smbUser>,
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeLocationSmbCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationS3 = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("S3Config") s3Config: option<s3Config>,
    @as("S3StorageClass") s3StorageClass: option<s3StorageClass>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DescribeLocationS3Command"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationObjectStorage = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("ServerProtocol") serverProtocol: option<objectStorageServerProtocol>,
    @as("ServerPort") serverPort: option<objectStorageServerPort>,
    @as("AccessKey") accessKey: option<objectStorageAccessKey>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeLocationObjectStorageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationFsxWindows = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("Domain") domain: option<smbDomain>,
    @as("User") user: option<smbUser>,
    @as("CreationTime") creationTime: option<time>,
    @as("SecurityGroupArns") securityGroupArns: option<ec2SecurityGroupArnList>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeLocationFsxWindowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTask = {
  type t
  type request = {
    @as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: option<logGroupArn>,
    @as("Name") name: option<tagValue>,
    @as("Schedule") schedule: option<taskSchedule>,
    @as("Excludes") excludes: option<filterList>,
    @as("Options") options: option<options>,
    @as("TaskArn") taskArn: taskArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "UpdateTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLocationNfs = {
  type t
  type request = {
    @as("MountOptions") mountOptions: option<nfsMountOptions>,
    @as("OnPremConfig") onPremConfig: option<onPremConfig>,
    @as("Subdirectory") subdirectory: option<nfsSubdirectory>,
    @as("LocationArn") locationArn: locationArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "UpdateLocationNfsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: inputTagList,
    @as("ResourceArn") resourceArn: taggableResourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartTaskExecution = {
  type t
  type request = {
    @as("Includes") includes: option<filterList>,
    @as("OverrideOptions") overrideOptions: option<options>,
    @as("TaskArn") taskArn: taskArn,
  }
  type response = {@as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "StartTaskExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTaskExecutions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("TaskArn") taskArn: option<taskArn>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("TaskExecutions") taskExecutions: option<taskExecutionList>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "ListTaskExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("ResourceArn") resourceArn: taggableResourceArn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<outputTagList>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAgents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Agents") agents: option<agentList>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "ListAgentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTaskExecution = {
  type t
  type request = {@as("TaskExecutionArn") taskExecutionArn: taskExecutionArn}
  type response = {
    @as("Result") result: option<taskExecutionResultDetail>,
    @as("BytesTransferred") bytesTransferred: option<long>,
    @as("BytesWritten") bytesWritten: option<long>,
    @as("FilesTransferred") filesTransferred: option<long>,
    @as("EstimatedBytesToTransfer") estimatedBytesToTransfer: option<long>,
    @as("EstimatedFilesToTransfer") estimatedFilesToTransfer: option<long>,
    @as("StartTime") startTime: option<time>,
    @as("Includes") includes: option<filterList>,
    @as("Excludes") excludes: option<filterList>,
    @as("Options") options: option<options>,
    @as("Status") status: option<taskExecutionStatus>,
    @as("TaskExecutionArn") taskExecutionArn: option<taskExecutionArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeTaskExecutionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTask = {
  type t
  type request = {@as("TaskArn") taskArn: taskArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("ErrorDetail") errorDetail: option<string_>,
    @as("ErrorCode") errorCode: option<string_>,
    @as("Schedule") schedule: option<taskSchedule>,
    @as("Excludes") excludes: option<filterList>,
    @as("Options") options: option<options>,
    @as("DestinationNetworkInterfaceArns")
    destinationNetworkInterfaceArns: option<destinationNetworkInterfaceArns>,
    @as("SourceNetworkInterfaceArns")
    sourceNetworkInterfaceArns: option<sourceNetworkInterfaceArns>,
    @as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: option<logGroupArn>,
    @as("DestinationLocationArn") destinationLocationArn: option<locationArn>,
    @as("SourceLocationArn") sourceLocationArn: option<locationArn>,
    @as("CurrentTaskExecutionArn") currentTaskExecutionArn: option<taskExecutionArn>,
    @as("Name") name: option<tagValue>,
    @as("Status") status: option<taskStatus>,
    @as("TaskArn") taskArn: option<taskArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DescribeTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationNfs = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("MountOptions") mountOptions: option<nfsMountOptions>,
    @as("OnPremConfig") onPremConfig: option<onPremConfig>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeLocationNfsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLocationEfs = {
  type t
  type request = {@as("LocationArn") locationArn: locationArn}
  type response = {
    @as("CreationTime") creationTime: option<time>,
    @as("Ec2Config") ec2Config: option<ec2Config>,
    @as("LocationUri") locationUri: option<locationUri>,
    @as("LocationArn") locationArn: option<locationArn>,
  }
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "DescribeLocationEfsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAgent = {
  type t
  type request = {@as("AgentArn") agentArn: agentArn}
  type response = {
    @as("PrivateLinkConfig") privateLinkConfig: option<privateLinkConfig>,
    @as("EndpointType") endpointType: option<endpointType>,
    @as("CreationTime") creationTime: option<time>,
    @as("LastConnectionTime") lastConnectionTime: option<time>,
    @as("Status") status: option<agentStatus>,
    @as("Name") name: option<tagValue>,
    @as("AgentArn") agentArn: option<agentArn>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "DescribeAgentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTask = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("Schedule") schedule: option<taskSchedule>,
    @as("Excludes") excludes: option<filterList>,
    @as("Options") options: option<options>,
    @as("Name") name: option<tagValue>,
    @as("CloudWatchLogGroupArn") cloudWatchLogGroupArn: option<logGroupArn>,
    @as("DestinationLocationArn") destinationLocationArn: locationArn,
    @as("SourceLocationArn") sourceLocationArn: locationArn,
  }
  type response = {@as("TaskArn") taskArn: option<taskArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationSmb = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("MountOptions") mountOptions: option<smbMountOptions>,
    @as("AgentArns") agentArns: agentArnList,
    @as("Password") password: smbPassword,
    @as("Domain") domain: option<smbDomain>,
    @as("User") user: smbUser,
    @as("ServerHostname") serverHostname: serverHostname,
    @as("Subdirectory") subdirectory: smbSubdirectory,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateLocationSmbCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationS3 = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("AgentArns") agentArns: option<agentArnList>,
    @as("S3Config") s3Config: s3Config,
    @as("S3StorageClass") s3StorageClass: option<s3StorageClass>,
    @as("S3BucketArn") s3BucketArn: s3BucketArn,
    @as("Subdirectory") subdirectory: option<s3Subdirectory>,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateLocationS3Command"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationObjectStorage = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("AgentArns") agentArns: agentArnList,
    @as("SecretKey") secretKey: option<objectStorageSecretKey>,
    @as("AccessKey") accessKey: option<objectStorageAccessKey>,
    @as("BucketName") bucketName: objectStorageBucketName,
    @as("Subdirectory") subdirectory: option<s3Subdirectory>,
    @as("ServerProtocol") serverProtocol: option<objectStorageServerProtocol>,
    @as("ServerPort") serverPort: option<objectStorageServerPort>,
    @as("ServerHostname") serverHostname: serverHostname,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "CreateLocationObjectStorageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationNfs = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("MountOptions") mountOptions: option<nfsMountOptions>,
    @as("OnPremConfig") onPremConfig: onPremConfig,
    @as("ServerHostname") serverHostname: serverHostname,
    @as("Subdirectory") subdirectory: nfsSubdirectory,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateLocationNfsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationFsxWindows = {
  type t
  type request = {
    @as("Password") password: smbPassword,
    @as("Domain") domain: option<smbDomain>,
    @as("User") user: smbUser,
    @as("Tags") tags: option<inputTagList>,
    @as("SecurityGroupArns") securityGroupArns: ec2SecurityGroupArnList,
    @as("FsxFilesystemArn") fsxFilesystemArn: fsxFilesystemArn,
    @as("Subdirectory") subdirectory: option<fsxWindowsSubdirectory>,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new
  external new_: request => t = "CreateLocationFsxWindowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLocationEfs = {
  type t
  type request = {
    @as("Tags") tags: option<inputTagList>,
    @as("Ec2Config") ec2Config: ec2Config,
    @as("EfsFilesystemArn") efsFilesystemArn: efsFilesystemArn,
    @as("Subdirectory") subdirectory: option<efsSubdirectory>,
  }
  type response = {@as("LocationArn") locationArn: option<locationArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateLocationEfsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAgent = {
  type t
  type request = {
    @as("SecurityGroupArns") securityGroupArns: option<plsecurityGroupArnList>,
    @as("SubnetArns") subnetArns: option<plsubnetArnList>,
    @as("VpcEndpointId") vpcEndpointId: option<vpcEndpointId>,
    @as("Tags") tags: option<inputTagList>,
    @as("AgentName") agentName: option<tagValue>,
    @as("ActivationKey") activationKey: activationKey,
  }
  type response = {@as("AgentArn") agentArn: option<agentArn>}
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "CreateAgentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTasks = {
  type t
  type request = {
    @as("Filters") filters: option<taskFilters>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tasks") tasks: option<taskList>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "ListTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLocations = {
  type t
  type request = {
    @as("Filters") filters: option<locationFilters>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Locations") locations: option<locationList>,
  }
  @module("@aws-sdk/client-datasync") @new external new_: request => t = "ListLocationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
