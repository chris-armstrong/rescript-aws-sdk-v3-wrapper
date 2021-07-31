type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tagValue = string
type tagKey = string
type amazonawsString = string
type retryAction = [@as("EXIT") #EXIT | @as("RETRY") #RETRY]
type resourceType = [@as("MEMORY") #MEMORY | @as("VCPU") #VCPU | @as("GPU") #GPU]
type platformCapability = [@as("FARGATE") #FARGATE | @as("EC2") #EC2]
type amazonawsLong = float;
type logDriver = [@as("splunk") #splunk | @as("awslogs") #awslogs | @as("fluentd") #fluentd | @as("gelf") #gelf | @as("journald") #journald | @as("syslog") #syslog | @as("json-file") #json_file]
type jobStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING | @as("STARTING") #STARTING | @as("RUNNABLE") #RUNNABLE | @as("PENDING") #PENDING | @as("SUBMITTED") #SUBMITTED]
type jobDefinitionType = [@as("multinode") #multinode | @as("container") #container]
type jQStatus = [@as("INVALID") #INVALID | @as("VALID") #VALID | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type jQState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type amazonawsInteger = int;
type imageType = string
type imageIdOverride = string
type eFSTransitEncryption = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eFSAuthorizationConfigIAM = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type deviceCgroupPermission = [@as("MKNOD") #MKNOD | @as("WRITE") #WRITE | @as("READ") #READ]
type cRType = [@as("FARGATE_SPOT") #FARGATE_SPOT | @as("FARGATE") #FARGATE | @as("SPOT") #SPOT | @as("EC2") #EC2]
type cRAllocationStrategy = [@as("SPOT_CAPACITY_OPTIMIZED") #SPOT_CAPACITY_OPTIMIZED | @as("BEST_FIT_PROGRESSIVE") #BEST_FIT_PROGRESSIVE | @as("BEST_FIT") #BEST_FIT]
type cEType = [@as("UNMANAGED") #UNMANAGED | @as("MANAGED") #MANAGED]
type cEStatus = [@as("INVALID") #INVALID | @as("VALID") #VALID | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type cEState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type amazonawsBoolean = bool;
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type arrayJobDependency = [@as("SEQUENTIAL") #SEQUENTIAL | @as("N_TO_N") #N_TO_N]
type ulimit = {
@as("softLimit") softLimit: option<amazonawsInteger>,
@as("name") name: option<amazonawsString>,
@as("hardLimit") hardLimit: option<amazonawsInteger>
}
type tagsMap = Js.Dict.t< amazonawsString>
type tagrisTagsMap = Js.Dict.t< tagValue>
type tagKeysList = array<tagKey>
type stringList = array<amazonawsString>
type secret = {
@as("valueFrom") valueFrom: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
type resourceRequirement = {
@as("type") type_: option<resourceType>,
@as("value") value: option<amazonawsString>
}
type platformCapabilityList = array<platformCapability>
type parametersMap = Js.Dict.t< amazonawsString>
type nodePropertiesSummary = {
@as("nodeIndex") nodeIndex: amazonawsInteger,
@as("numNodes") numNodes: amazonawsInteger,
@as("isMainNode") isMainNode: amazonawsBoolean
}
type nodeDetails = {
@as("isMainNode") isMainNode: amazonawsBoolean,
@as("nodeIndex") nodeIndex: amazonawsInteger
}
type networkInterface = {
@as("privateIpv4Address") privateIpv4Address: amazonawsString,
@as("ipv6Address") ipv6Address: amazonawsString,
@as("attachmentId") attachmentId: amazonawsString
}
type networkConfiguration = {
@as("assignPublicIp") assignPublicIp: assignPublicIp
}
type mountPoint = {
@as("sourceVolume") sourceVolume: amazonawsString,
@as("readOnly") readOnly: amazonawsBoolean,
@as("containerPath") containerPath: amazonawsString
}
type logConfigurationOptionsMap = Js.Dict.t< amazonawsString>
type launchTemplateSpecification = {
@as("version") version: amazonawsString,
@as("launchTemplateName") launchTemplateName: amazonawsString,
@as("launchTemplateId") launchTemplateId: amazonawsString
}
type keyValuePair = {
@as("value") value: amazonawsString,
@as("name") name: amazonawsString
}
type jobTimeout = {
@as("attemptDurationSeconds") attemptDurationSeconds: amazonawsInteger
}
type jobDependency = {
@as("type") type_: arrayJobDependency,
@as("jobId") jobId: amazonawsString
}
type host = {
@as("sourcePath") sourcePath: amazonawsString
}
type fargatePlatformConfiguration = {
@as("platformVersion") platformVersion: amazonawsString
}
type evaluateOnExit = {
@as("action") action: option<retryAction>,
@as("onExitCode") onExitCode: amazonawsString,
@as("onReason") onReason: amazonawsString,
@as("onStatusReason") onStatusReason: amazonawsString
}
type ec2Configuration = {
@as("imageIdOverride") imageIdOverride: imageIdOverride,
@as("imageType") imageType: option<imageType>
}
type eFSAuthorizationConfig = {
@as("iam") iam: eFSAuthorizationConfigIAM,
@as("accessPointId") accessPointId: amazonawsString
}
type deviceCgroupPermissions = array<deviceCgroupPermission>
type containerSummary = {
@as("reason") reason: amazonawsString,
@as("exitCode") exitCode: amazonawsInteger
}
type computeEnvironmentOrder = {
@as("computeEnvironment") computeEnvironment: option<amazonawsString>,
@as("order") order: option<amazonawsInteger>
}
type arrayPropertiesSummary = {
@as("index") index: amazonawsInteger,
@as("size") size: amazonawsInteger
}
type arrayProperties = {
@as("size") size: amazonawsInteger
}
type arrayJobStatusSummary = Js.Dict.t< amazonawsInteger>
type ulimits = array<ulimit>
type tmpfs = {
@as("mountOptions") mountOptions: stringList,
@as("size") size: option<amazonawsInteger>,
@as("containerPath") containerPath: option<amazonawsString>
}
type secretList = array<secret>
type resourceRequirements = array<resourceRequirement>
type networkInterfaceList = array<networkInterface>
type mountPoints = array<mountPoint>
type jobSummary = {
@as("nodeProperties") nodeProperties: nodePropertiesSummary,
@as("arrayProperties") arrayProperties: arrayPropertiesSummary,
@as("container") container: containerSummary,
@as("stoppedAt") stoppedAt: amazonawsLong,
@as("startedAt") startedAt: amazonawsLong,
@as("statusReason") statusReason: amazonawsString,
@as("status") status: jobStatus,
@as("createdAt") createdAt: amazonawsLong,
@as("jobName") jobName: option<amazonawsString>,
@as("jobId") jobId: option<amazonawsString>,
@as("jobArn") jobArn: amazonawsString
}
type jobDependencyList = array<jobDependency>
type evaluateOnExitList = array<evaluateOnExit>
type environmentVariables = array<keyValuePair>
type ec2ConfigurationList = array<ec2Configuration>
type eFSVolumeConfiguration = {
@as("authorizationConfig") authorizationConfig: eFSAuthorizationConfig,
@as("transitEncryptionPort") transitEncryptionPort: amazonawsInteger,
@as("transitEncryption") transitEncryption: eFSTransitEncryption,
@as("rootDirectory") rootDirectory: amazonawsString,
@as("fileSystemId") fileSystemId: option<amazonawsString>
}
type device = {
@as("permissions") permissions: deviceCgroupPermissions,
@as("containerPath") containerPath: amazonawsString,
@as("hostPath") hostPath: option<amazonawsString>
}
type computeResourceUpdate = {
@as("securityGroupIds") securityGroupIds: stringList,
@as("subnets") subnets: stringList,
@as("desiredvCpus") desiredvCpus: amazonawsInteger,
@as("maxvCpus") maxvCpus: amazonawsInteger,
@as("minvCpus") minvCpus: amazonawsInteger
}
type computeEnvironmentOrders = array<computeEnvironmentOrder>
type arrayPropertiesDetail = {
@as("index") index: amazonawsInteger,
@as("size") size: amazonawsInteger,
@as("statusSummary") statusSummary: arrayJobStatusSummary
}
type volume = {
@as("efsVolumeConfiguration") efsVolumeConfiguration: eFSVolumeConfiguration,
@as("name") name: amazonawsString,
@as("host") host: host
}
type tmpfsList = array<tmpfs>
type retryStrategy = {
@as("evaluateOnExit") evaluateOnExit: evaluateOnExitList,
@as("attempts") attempts: amazonawsInteger
}
type logConfiguration = {
@as("secretOptions") secretOptions: secretList,
@as("options") options: logConfigurationOptionsMap,
@as("logDriver") logDriver: option<logDriver>
}
type jobSummaryList = array<jobSummary>
type jobQueueDetail = {
@as("tags") tags: tagrisTagsMap,
@as("computeEnvironmentOrder") computeEnvironmentOrder: option<computeEnvironmentOrders>,
@as("priority") priority: option<amazonawsInteger>,
@as("statusReason") statusReason: amazonawsString,
@as("status") status: jQStatus,
@as("state") state: option<jQState>,
@as("jobQueueArn") jobQueueArn: option<amazonawsString>,
@as("jobQueueName") jobQueueName: option<amazonawsString>
}
type devicesList = array<device>
type containerOverrides = {
@as("resourceRequirements") resourceRequirements: resourceRequirements,
@as("environment") environment: environmentVariables,
@as("instanceType") instanceType: amazonawsString,
@as("command") command: stringList,
@as("memory") memory: amazonawsInteger,
@as("vcpus") vcpus: amazonawsInteger
}
type computeResource = {
@as("ec2Configuration") ec2Configuration: ec2ConfigurationList,
@as("launchTemplate") launchTemplate: launchTemplateSpecification,
@as("spotIamFleetRole") spotIamFleetRole: amazonawsString,
@as("bidPercentage") bidPercentage: amazonawsInteger,
@as("placementGroup") placementGroup: amazonawsString,
@as("tags") tags: tagsMap,
@as("instanceRole") instanceRole: amazonawsString,
@as("ec2KeyPair") ec2KeyPair: amazonawsString,
@as("securityGroupIds") securityGroupIds: stringList,
@as("subnets") subnets: option<stringList>,
@as("imageId") imageId: amazonawsString,
@as("instanceTypes") instanceTypes: stringList,
@as("desiredvCpus") desiredvCpus: amazonawsInteger,
@as("maxvCpus") maxvCpus: option<amazonawsInteger>,
@as("minvCpus") minvCpus: amazonawsInteger,
@as("allocationStrategy") allocationStrategy: cRAllocationStrategy,
@as("type") type_: option<cRType>
}
type attemptContainerDetail = {
@as("networkInterfaces") networkInterfaces: networkInterfaceList,
@as("logStreamName") logStreamName: amazonawsString,
@as("reason") reason: amazonawsString,
@as("exitCode") exitCode: amazonawsInteger,
@as("taskArn") taskArn: amazonawsString,
@as("containerInstanceArn") containerInstanceArn: amazonawsString
}
type volumes = array<volume>
type nodePropertyOverride = {
@as("containerOverrides") containerOverrides: containerOverrides,
@as("targetNodes") targetNodes: option<amazonawsString>
}
type linuxParameters = {
@as("swappiness") swappiness: amazonawsInteger,
@as("maxSwap") maxSwap: amazonawsInteger,
@as("tmpfs") tmpfs: tmpfsList,
@as("sharedMemorySize") sharedMemorySize: amazonawsInteger,
@as("initProcessEnabled") initProcessEnabled: amazonawsBoolean,
@as("devices") devices: devicesList
}
type jobQueueDetailList = array<jobQueueDetail>
type computeEnvironmentDetail = {
@as("serviceRole") serviceRole: amazonawsString,
@as("computeResources") computeResources: computeResource,
@as("statusReason") statusReason: amazonawsString,
@as("status") status: cEStatus,
@as("state") state: cEState,
@as("type") type_: cEType,
@as("tags") tags: tagrisTagsMap,
@as("ecsClusterArn") ecsClusterArn: option<amazonawsString>,
@as("computeEnvironmentArn") computeEnvironmentArn: option<amazonawsString>,
@as("computeEnvironmentName") computeEnvironmentName: option<amazonawsString>
}
type attemptDetail = {
@as("statusReason") statusReason: amazonawsString,
@as("stoppedAt") stoppedAt: amazonawsLong,
@as("startedAt") startedAt: amazonawsLong,
@as("container") container: attemptContainerDetail
}
type nodePropertyOverrides = array<nodePropertyOverride>
type containerProperties = {
@as("fargatePlatformConfiguration") fargatePlatformConfiguration: fargatePlatformConfiguration,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("secrets") secrets: secretList,
@as("logConfiguration") logConfiguration: logConfiguration,
@as("linuxParameters") linuxParameters: linuxParameters,
@as("resourceRequirements") resourceRequirements: resourceRequirements,
@as("instanceType") instanceType: amazonawsString,
@as("user") user: amazonawsString,
@as("ulimits") ulimits: ulimits,
@as("privileged") privileged: amazonawsBoolean,
@as("readonlyRootFilesystem") readonlyRootFilesystem: amazonawsBoolean,
@as("mountPoints") mountPoints: mountPoints,
@as("environment") environment: environmentVariables,
@as("volumes") volumes: volumes,
@as("executionRoleArn") executionRoleArn: amazonawsString,
@as("jobRoleArn") jobRoleArn: amazonawsString,
@as("command") command: stringList,
@as("memory") memory: amazonawsInteger,
@as("vcpus") vcpus: amazonawsInteger,
@as("image") image: amazonawsString
}
type containerDetail = {
@as("fargatePlatformConfiguration") fargatePlatformConfiguration: fargatePlatformConfiguration,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("secrets") secrets: secretList,
@as("logConfiguration") logConfiguration: logConfiguration,
@as("linuxParameters") linuxParameters: linuxParameters,
@as("resourceRequirements") resourceRequirements: resourceRequirements,
@as("networkInterfaces") networkInterfaces: networkInterfaceList,
@as("instanceType") instanceType: amazonawsString,
@as("logStreamName") logStreamName: amazonawsString,
@as("taskArn") taskArn: amazonawsString,
@as("containerInstanceArn") containerInstanceArn: amazonawsString,
@as("reason") reason: amazonawsString,
@as("exitCode") exitCode: amazonawsInteger,
@as("user") user: amazonawsString,
@as("privileged") privileged: amazonawsBoolean,
@as("ulimits") ulimits: ulimits,
@as("readonlyRootFilesystem") readonlyRootFilesystem: amazonawsBoolean,
@as("mountPoints") mountPoints: mountPoints,
@as("environment") environment: environmentVariables,
@as("volumes") volumes: volumes,
@as("executionRoleArn") executionRoleArn: amazonawsString,
@as("jobRoleArn") jobRoleArn: amazonawsString,
@as("command") command: stringList,
@as("memory") memory: amazonawsInteger,
@as("vcpus") vcpus: amazonawsInteger,
@as("image") image: amazonawsString
}
type computeEnvironmentDetailList = array<computeEnvironmentDetail>
type attemptDetails = array<attemptDetail>
type nodeRangeProperty = {
@as("container") container: containerProperties,
@as("targetNodes") targetNodes: option<amazonawsString>
}
type nodeOverrides = {
@as("nodePropertyOverrides") nodePropertyOverrides: nodePropertyOverrides,
@as("numNodes") numNodes: amazonawsInteger
}
type nodeRangeProperties = array<nodeRangeProperty>
type nodeProperties = {
@as("nodeRangeProperties") nodeRangeProperties: option<nodeRangeProperties>,
@as("mainNode") mainNode: option<amazonawsInteger>,
@as("numNodes") numNodes: option<amazonawsInteger>
}
type jobDetail = {
@as("platformCapabilities") platformCapabilities: platformCapabilityList,
@as("propagateTags") propagateTags: amazonawsBoolean,
@as("tags") tags: tagrisTagsMap,
@as("timeout") timeout: jobTimeout,
@as("arrayProperties") arrayProperties: arrayPropertiesDetail,
@as("nodeProperties") nodeProperties: nodeProperties,
@as("nodeDetails") nodeDetails: nodeDetails,
@as("container") container: containerDetail,
@as("parameters") parameters: parametersMap,
@as("jobDefinition") jobDefinition: option<amazonawsString>,
@as("dependsOn") dependsOn: jobDependencyList,
@as("stoppedAt") stoppedAt: amazonawsLong,
@as("startedAt") startedAt: option<amazonawsLong>,
@as("retryStrategy") retryStrategy: retryStrategy,
@as("createdAt") createdAt: amazonawsLong,
@as("statusReason") statusReason: amazonawsString,
@as("attempts") attempts: attemptDetails,
@as("status") status: option<jobStatus>,
@as("jobQueue") jobQueue: option<amazonawsString>,
@as("jobId") jobId: option<amazonawsString>,
@as("jobName") jobName: option<amazonawsString>,
@as("jobArn") jobArn: amazonawsString
}
type jobDefinition = {
@as("platformCapabilities") platformCapabilities: platformCapabilityList,
@as("propagateTags") propagateTags: amazonawsBoolean,
@as("tags") tags: tagrisTagsMap,
@as("nodeProperties") nodeProperties: nodeProperties,
@as("timeout") timeout: jobTimeout,
@as("containerProperties") containerProperties: containerProperties,
@as("retryStrategy") retryStrategy: retryStrategy,
@as("parameters") parameters: parametersMap,
@as("type") type_: option<amazonawsString>,
@as("status") status: amazonawsString,
@as("revision") revision: option<amazonawsInteger>,
@as("jobDefinitionArn") jobDefinitionArn: option<amazonawsString>,
@as("jobDefinitionName") jobDefinitionName: option<amazonawsString>
}
type jobDetailList = array<jobDetail>
type jobDefinitionList = array<jobDefinition>
type clientType;
@module("@aws-sdk/client-batch") @new external createClient: unit => clientType = "BatchClient";
module TerminateJob = {
  type t;
  type request = {
@as("reason") reason: option<amazonawsString>,
@as("jobId") jobId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "TerminateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterJobDefinition = {
  type t;
  type request = {
@as("jobDefinition") jobDefinition: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DeregisterJobDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJobQueue = {
  type t;
  type request = {
@as("jobQueue") jobQueue: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DeleteJobQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteComputeEnvironment = {
  type t;
  type request = {
@as("computeEnvironment") computeEnvironment: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DeleteComputeEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("reason") reason: option<amazonawsString>,
@as("jobId") jobId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "CancelJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeysList>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagrisTagsMap>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("tags") tags: tagrisTagsMap
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJobQueue = {
  type t;
  type request = {
@as("computeEnvironmentOrder") computeEnvironmentOrder: computeEnvironmentOrders,
@as("priority") priority: amazonawsInteger,
@as("state") state: jQState,
@as("jobQueue") jobQueue: option<amazonawsString>
}
  type response = {
@as("jobQueueArn") jobQueueArn: amazonawsString,
@as("jobQueueName") jobQueueName: amazonawsString
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "UpdateJobQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateComputeEnvironment = {
  type t;
  type request = {
@as("serviceRole") serviceRole: amazonawsString,
@as("computeResources") computeResources: computeResourceUpdate,
@as("state") state: cEState,
@as("computeEnvironment") computeEnvironment: option<amazonawsString>
}
  type response = {
@as("computeEnvironmentArn") computeEnvironmentArn: amazonawsString,
@as("computeEnvironmentName") computeEnvironmentName: amazonawsString
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "UpdateComputeEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJobQueue = {
  type t;
  type request = {
@as("tags") tags: tagrisTagsMap,
@as("computeEnvironmentOrder") computeEnvironmentOrder: option<computeEnvironmentOrders>,
@as("priority") priority: option<amazonawsInteger>,
@as("state") state: jQState,
@as("jobQueueName") jobQueueName: option<amazonawsString>
}
  type response = {
@as("jobQueueArn") jobQueueArn: option<amazonawsString>,
@as("jobQueueName") jobQueueName: option<amazonawsString>
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "CreateJobQueueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: amazonawsInteger,
@as("jobStatus") jobStatus: jobStatus,
@as("multiNodeJobId") multiNodeJobId: amazonawsString,
@as("arrayJobId") arrayJobId: amazonawsString,
@as("jobQueue") jobQueue: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("jobSummaryList") jobSummaryList: option<jobSummaryList>
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComputeEnvironment = {
  type t;
  type request = {
@as("tags") tags: tagrisTagsMap,
@as("serviceRole") serviceRole: amazonawsString,
@as("computeResources") computeResources: computeResource,
@as("state") state: cEState,
@as("type") type_: option<cEType>,
@as("computeEnvironmentName") computeEnvironmentName: option<amazonawsString>
}
  type response = {
@as("computeEnvironmentArn") computeEnvironmentArn: amazonawsString,
@as("computeEnvironmentName") computeEnvironmentName: amazonawsString
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "CreateComputeEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobQueues = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: amazonawsInteger,
@as("jobQueues") jobQueues: stringList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("jobQueues") jobQueues: jobQueueDetailList
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobQueuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComputeEnvironments = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: amazonawsInteger,
@as("computeEnvironments") computeEnvironments: stringList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("computeEnvironments") computeEnvironments: computeEnvironmentDetailList
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DescribeComputeEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubmitJob = {
  type t;
  type request = {
@as("tags") tags: tagrisTagsMap,
@as("timeout") timeout: jobTimeout,
@as("propagateTags") propagateTags: amazonawsBoolean,
@as("retryStrategy") retryStrategy: retryStrategy,
@as("nodeOverrides") nodeOverrides: nodeOverrides,
@as("containerOverrides") containerOverrides: containerOverrides,
@as("parameters") parameters: parametersMap,
@as("jobDefinition") jobDefinition: option<amazonawsString>,
@as("dependsOn") dependsOn: jobDependencyList,
@as("arrayProperties") arrayProperties: arrayProperties,
@as("jobQueue") jobQueue: option<amazonawsString>,
@as("jobName") jobName: option<amazonawsString>
}
  type response = {
@as("jobId") jobId: option<amazonawsString>,
@as("jobName") jobName: option<amazonawsString>,
@as("jobArn") jobArn: amazonawsString
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "SubmitJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterJobDefinition = {
  type t;
  type request = {
@as("platformCapabilities") platformCapabilities: platformCapabilityList,
@as("tags") tags: tagrisTagsMap,
@as("timeout") timeout: jobTimeout,
@as("propagateTags") propagateTags: amazonawsBoolean,
@as("retryStrategy") retryStrategy: retryStrategy,
@as("nodeProperties") nodeProperties: nodeProperties,
@as("containerProperties") containerProperties: containerProperties,
@as("parameters") parameters: parametersMap,
@as("type") type_: option<jobDefinitionType>,
@as("jobDefinitionName") jobDefinitionName: option<amazonawsString>
}
  type response = {
@as("revision") revision: option<amazonawsInteger>,
@as("jobDefinitionArn") jobDefinitionArn: option<amazonawsString>,
@as("jobDefinitionName") jobDefinitionName: option<amazonawsString>
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "RegisterJobDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobs = {
  type t;
  type request = {
@as("jobs") jobs: option<stringList>
}
  type response = {
@as("jobs") jobs: jobDetailList
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobDefinitions = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("status") status: amazonawsString,
@as("jobDefinitionName") jobDefinitionName: amazonawsString,
@as("maxResults") maxResults: amazonawsInteger,
@as("jobDefinitions") jobDefinitions: stringList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("jobDefinitions") jobDefinitions: jobDefinitionList
}
  @module("@aws-sdk/client-batch") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
