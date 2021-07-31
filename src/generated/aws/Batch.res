type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-batch") @new
external createClient: unit => awsServiceClient = "BatchClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tagValue = string
type tagKey = string
type string_ = string
type retryAction = [@as("EXIT") #EXIT | @as("RETRY") #RETRY]
type resourceType = [@as("MEMORY") #MEMORY | @as("VCPU") #VCPU | @as("GPU") #GPU]
type platformCapability = [@as("FARGATE") #FARGATE | @as("EC2") #EC2]
type long = float
type logDriver = [
  | @as("splunk") #Splunk
  | @as("awslogs") #Awslogs
  | @as("fluentd") #Fluentd
  | @as("gelf") #Gelf
  | @as("journald") #Journald
  | @as("syslog") #Syslog
  | @as("json-file") #Json_File
]
type jobStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("RUNNABLE") #RUNNABLE
  | @as("PENDING") #PENDING
  | @as("SUBMITTED") #SUBMITTED
]
type jobDefinitionType = [@as("multinode") #Multinode | @as("container") #Container]
type jqstatus = [
  | @as("INVALID") #INVALID
  | @as("VALID") #VALID
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type jqstate = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type integer_ = int
type imageType = string
type imageIdOverride = string
type efstransitEncryption = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type efsauthorizationConfigIAM = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type deviceCgroupPermission = [@as("MKNOD") #MKNOD | @as("WRITE") #WRITE | @as("READ") #READ]
type crtype = [
  | @as("FARGATE_SPOT") #FARGATE_SPOT
  | @as("FARGATE") #FARGATE
  | @as("SPOT") #SPOT
  | @as("EC2") #EC2
]
type crallocationStrategy = [
  | @as("SPOT_CAPACITY_OPTIMIZED") #SPOT_CAPACITY_OPTIMIZED
  | @as("BEST_FIT_PROGRESSIVE") #BEST_FIT_PROGRESSIVE
  | @as("BEST_FIT") #BEST_FIT
]
type cetype = [@as("UNMANAGED") #UNMANAGED | @as("MANAGED") #MANAGED]
type cestatus = [
  | @as("INVALID") #INVALID
  | @as("VALID") #VALID
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type cestate = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type boolean_ = bool
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type arrayJobDependency = [@as("SEQUENTIAL") #SEQUENTIAL | @as("N_TO_N") #N_TO_N]
type ulimit = {
  softLimit: integer_,
  name: string_,
  hardLimit: integer_,
}
type tagsMap = Js.Dict.t<string_>
type tagrisTagsMap = Js.Dict.t<tagValue>
type tagKeysList = array<tagKey>
type stringList = array<string_>
type secret = {
  valueFrom: string_,
  name: string_,
}
type resourceRequirement = {
  @as("type") type_: resourceType,
  value: string_,
}
type platformCapabilityList = array<platformCapability>
type parametersMap = Js.Dict.t<string_>
type nodePropertiesSummary = {
  nodeIndex: option<integer_>,
  numNodes: option<integer_>,
  isMainNode: option<boolean_>,
}
type nodeDetails = {
  isMainNode: option<boolean_>,
  nodeIndex: option<integer_>,
}
type networkInterface = {
  privateIpv4Address: option<string_>,
  ipv6Address: option<string_>,
  attachmentId: option<string_>,
}
type networkConfiguration = {assignPublicIp: option<assignPublicIp>}
type mountPoint = {
  sourceVolume: option<string_>,
  readOnly: option<boolean_>,
  containerPath: option<string_>,
}
type logConfigurationOptionsMap = Js.Dict.t<string_>
type launchTemplateSpecification = {
  version: option<string_>,
  launchTemplateName: option<string_>,
  launchTemplateId: option<string_>,
}
type keyValuePair = {
  value: option<string_>,
  name: option<string_>,
}
type jobTimeout = {attemptDurationSeconds: option<integer_>}
type jobDependency = {
  @as("type") type_: option<arrayJobDependency>,
  jobId: option<string_>,
}
type host = {sourcePath: option<string_>}
type fargatePlatformConfiguration = {platformVersion: option<string_>}
type evaluateOnExit = {
  action: retryAction,
  onExitCode: option<string_>,
  onReason: option<string_>,
  onStatusReason: option<string_>,
}
type ec2Configuration = {
  imageIdOverride: option<imageIdOverride>,
  imageType: imageType,
}
type efsauthorizationConfig = {
  iam: option<efsauthorizationConfigIAM>,
  accessPointId: option<string_>,
}
type deviceCgroupPermissions = array<deviceCgroupPermission>
type containerSummary = {
  reason: option<string_>,
  exitCode: option<integer_>,
}
type computeEnvironmentOrder = {
  computeEnvironment: string_,
  order: integer_,
}
type arrayPropertiesSummary = {
  index: option<integer_>,
  size: option<integer_>,
}
type arrayProperties = {size: option<integer_>}
type arrayJobStatusSummary = Js.Dict.t<integer_>
type ulimits = array<ulimit>
type tmpfs = {
  mountOptions: option<stringList>,
  size: integer_,
  containerPath: string_,
}
type secretList = array<secret>
type resourceRequirements = array<resourceRequirement>
type networkInterfaceList = array<networkInterface>
type mountPoints = array<mountPoint>
type jobSummary = {
  nodeProperties: option<nodePropertiesSummary>,
  arrayProperties: option<arrayPropertiesSummary>,
  container: option<containerSummary>,
  stoppedAt: option<long>,
  startedAt: option<long>,
  statusReason: option<string_>,
  status: option<jobStatus>,
  createdAt: option<long>,
  jobName: string_,
  jobId: string_,
  jobArn: option<string_>,
}
type jobDependencyList = array<jobDependency>
type evaluateOnExitList = array<evaluateOnExit>
type environmentVariables = array<keyValuePair>
type ec2ConfigurationList = array<ec2Configuration>
type efsvolumeConfiguration = {
  authorizationConfig: option<efsauthorizationConfig>,
  transitEncryptionPort: option<integer_>,
  transitEncryption: option<efstransitEncryption>,
  rootDirectory: option<string_>,
  fileSystemId: string_,
}
type device = {
  permissions: option<deviceCgroupPermissions>,
  containerPath: option<string_>,
  hostPath: string_,
}
type computeResourceUpdate = {
  securityGroupIds: option<stringList>,
  subnets: option<stringList>,
  desiredvCpus: option<integer_>,
  maxvCpus: option<integer_>,
  minvCpus: option<integer_>,
}
type computeEnvironmentOrders = array<computeEnvironmentOrder>
type arrayPropertiesDetail = {
  index: option<integer_>,
  size: option<integer_>,
  statusSummary: option<arrayJobStatusSummary>,
}
type volume = {
  efsVolumeConfiguration: option<efsvolumeConfiguration>,
  name: option<string_>,
  host: option<host>,
}
type tmpfsList = array<tmpfs>
type retryStrategy = {
  evaluateOnExit: option<evaluateOnExitList>,
  attempts: option<integer_>,
}
type logConfiguration = {
  secretOptions: option<secretList>,
  options: option<logConfigurationOptionsMap>,
  logDriver: logDriver,
}
type jobSummaryList = array<jobSummary>
type jobQueueDetail = {
  tags: option<tagrisTagsMap>,
  computeEnvironmentOrder: computeEnvironmentOrders,
  priority: integer_,
  statusReason: option<string_>,
  status: option<jqstatus>,
  state: jqstate,
  jobQueueArn: string_,
  jobQueueName: string_,
}
type devicesList = array<device>
type containerOverrides = {
  resourceRequirements: option<resourceRequirements>,
  environment: option<environmentVariables>,
  instanceType: option<string_>,
  command: option<stringList>,
  memory: option<integer_>,
  vcpus: option<integer_>,
}
type computeResource = {
  ec2Configuration: option<ec2ConfigurationList>,
  launchTemplate: option<launchTemplateSpecification>,
  spotIamFleetRole: option<string_>,
  bidPercentage: option<integer_>,
  placementGroup: option<string_>,
  tags: option<tagsMap>,
  instanceRole: option<string_>,
  ec2KeyPair: option<string_>,
  securityGroupIds: option<stringList>,
  subnets: stringList,
  imageId: option<string_>,
  instanceTypes: option<stringList>,
  desiredvCpus: option<integer_>,
  maxvCpus: integer_,
  minvCpus: option<integer_>,
  allocationStrategy: option<crallocationStrategy>,
  @as("type") type_: crtype,
}
type attemptContainerDetail = {
  networkInterfaces: option<networkInterfaceList>,
  logStreamName: option<string_>,
  reason: option<string_>,
  exitCode: option<integer_>,
  taskArn: option<string_>,
  containerInstanceArn: option<string_>,
}
type volumes = array<volume>
type nodePropertyOverride = {
  containerOverrides: option<containerOverrides>,
  targetNodes: string_,
}
type linuxParameters = {
  swappiness: option<integer_>,
  maxSwap: option<integer_>,
  tmpfs: option<tmpfsList>,
  sharedMemorySize: option<integer_>,
  initProcessEnabled: option<boolean_>,
  devices: option<devicesList>,
}
type jobQueueDetailList = array<jobQueueDetail>
type computeEnvironmentDetail = {
  serviceRole: option<string_>,
  computeResources: option<computeResource>,
  statusReason: option<string_>,
  status: option<cestatus>,
  state: option<cestate>,
  @as("type") type_: option<cetype>,
  tags: option<tagrisTagsMap>,
  ecsClusterArn: string_,
  computeEnvironmentArn: string_,
  computeEnvironmentName: string_,
}
type attemptDetail = {
  statusReason: option<string_>,
  stoppedAt: option<long>,
  startedAt: option<long>,
  container: option<attemptContainerDetail>,
}
type nodePropertyOverrides = array<nodePropertyOverride>
type containerProperties = {
  fargatePlatformConfiguration: option<fargatePlatformConfiguration>,
  networkConfiguration: option<networkConfiguration>,
  secrets: option<secretList>,
  logConfiguration: option<logConfiguration>,
  linuxParameters: option<linuxParameters>,
  resourceRequirements: option<resourceRequirements>,
  instanceType: option<string_>,
  user: option<string_>,
  ulimits: option<ulimits>,
  privileged: option<boolean_>,
  readonlyRootFilesystem: option<boolean_>,
  mountPoints: option<mountPoints>,
  environment: option<environmentVariables>,
  volumes: option<volumes>,
  executionRoleArn: option<string_>,
  jobRoleArn: option<string_>,
  command: option<stringList>,
  memory: option<integer_>,
  vcpus: option<integer_>,
  image: option<string_>,
}
type containerDetail = {
  fargatePlatformConfiguration: option<fargatePlatformConfiguration>,
  networkConfiguration: option<networkConfiguration>,
  secrets: option<secretList>,
  logConfiguration: option<logConfiguration>,
  linuxParameters: option<linuxParameters>,
  resourceRequirements: option<resourceRequirements>,
  networkInterfaces: option<networkInterfaceList>,
  instanceType: option<string_>,
  logStreamName: option<string_>,
  taskArn: option<string_>,
  containerInstanceArn: option<string_>,
  reason: option<string_>,
  exitCode: option<integer_>,
  user: option<string_>,
  privileged: option<boolean_>,
  ulimits: option<ulimits>,
  readonlyRootFilesystem: option<boolean_>,
  mountPoints: option<mountPoints>,
  environment: option<environmentVariables>,
  volumes: option<volumes>,
  executionRoleArn: option<string_>,
  jobRoleArn: option<string_>,
  command: option<stringList>,
  memory: option<integer_>,
  vcpus: option<integer_>,
  image: option<string_>,
}
type computeEnvironmentDetailList = array<computeEnvironmentDetail>
type attemptDetails = array<attemptDetail>
type nodeRangeProperty = {
  container: option<containerProperties>,
  targetNodes: string_,
}
type nodeOverrides = {
  nodePropertyOverrides: option<nodePropertyOverrides>,
  numNodes: option<integer_>,
}
type nodeRangeProperties = array<nodeRangeProperty>
type nodeProperties = {
  nodeRangeProperties: nodeRangeProperties,
  mainNode: integer_,
  numNodes: integer_,
}
type jobDetail = {
  platformCapabilities: option<platformCapabilityList>,
  propagateTags: option<boolean_>,
  tags: option<tagrisTagsMap>,
  timeout: option<jobTimeout>,
  arrayProperties: option<arrayPropertiesDetail>,
  nodeProperties: option<nodeProperties>,
  nodeDetails: option<nodeDetails>,
  container: option<containerDetail>,
  parameters: option<parametersMap>,
  jobDefinition: string_,
  dependsOn: option<jobDependencyList>,
  stoppedAt: option<long>,
  startedAt: long,
  retryStrategy: option<retryStrategy>,
  createdAt: option<long>,
  statusReason: option<string_>,
  attempts: option<attemptDetails>,
  status: jobStatus,
  jobQueue: string_,
  jobId: string_,
  jobName: string_,
  jobArn: option<string_>,
}
type jobDefinition = {
  platformCapabilities: option<platformCapabilityList>,
  propagateTags: option<boolean_>,
  tags: option<tagrisTagsMap>,
  nodeProperties: option<nodeProperties>,
  timeout: option<jobTimeout>,
  containerProperties: option<containerProperties>,
  retryStrategy: option<retryStrategy>,
  parameters: option<parametersMap>,
  @as("type") type_: string_,
  status: option<string_>,
  revision: integer_,
  jobDefinitionArn: string_,
  jobDefinitionName: string_,
}
type jobDetailList = array<jobDetail>
type jobDefinitionList = array<jobDefinition>

module TerminateJob = {
  type t
  type request = {
    reason: string_,
    jobId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: request => t = "TerminateJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterJobDefinition = {
  type t
  type request = {jobDefinition: string_}
  type response = unit
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "DeregisterJobDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJobQueue = {
  type t
  type request = {jobQueue: string_}
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: request => t = "DeleteJobQueueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteComputeEnvironment = {
  type t
  type request = {computeEnvironment: string_}
  type response = unit
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "DeleteComputeEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJob = {
  type t
  type request = {
    reason: string_,
    jobId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: request => t = "CancelJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeysList,
    resourceArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagrisTagsMap,
    resourceArn: string_,
  }
  type response = unit
  @module("@aws-sdk/client-batch") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: string_}
  type response = {tags: option<tagrisTagsMap>}
  @module("@aws-sdk/client-batch") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJobQueue = {
  type t
  type request = {
    computeEnvironmentOrder: option<computeEnvironmentOrders>,
    priority: option<integer_>,
    state: option<jqstate>,
    jobQueue: string_,
  }
  type response = {
    jobQueueArn: option<string_>,
    jobQueueName: option<string_>,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "UpdateJobQueueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateComputeEnvironment = {
  type t
  type request = {
    serviceRole: option<string_>,
    computeResources: option<computeResourceUpdate>,
    state: option<cestate>,
    computeEnvironment: string_,
  }
  type response = {
    computeEnvironmentArn: option<string_>,
    computeEnvironmentName: option<string_>,
  }
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "UpdateComputeEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJobQueue = {
  type t
  type request = {
    tags: option<tagrisTagsMap>,
    computeEnvironmentOrder: computeEnvironmentOrders,
    priority: integer_,
    state: option<jqstate>,
    jobQueueName: string_,
  }
  type response = {
    jobQueueArn: string_,
    jobQueueName: string_,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "CreateJobQueueCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    nextToken: option<string_>,
    maxResults: option<integer_>,
    jobStatus: option<jobStatus>,
    multiNodeJobId: option<string_>,
    arrayJobId: option<string_>,
    jobQueue: option<string_>,
  }
  type response = {
    nextToken: option<string_>,
    jobSummaryList: jobSummaryList,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "ListJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComputeEnvironment = {
  type t
  type request = {
    tags: option<tagrisTagsMap>,
    serviceRole: option<string_>,
    computeResources: option<computeResource>,
    state: option<cestate>,
    @as("type") type_: cetype,
    computeEnvironmentName: string_,
  }
  type response = {
    computeEnvironmentArn: option<string_>,
    computeEnvironmentName: option<string_>,
  }
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "CreateComputeEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobQueues = {
  type t
  type request = {
    nextToken: option<string_>,
    maxResults: option<integer_>,
    jobQueues: option<stringList>,
  }
  type response = {
    nextToken: option<string_>,
    jobQueues: option<jobQueueDetailList>,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "DescribeJobQueuesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeComputeEnvironments = {
  type t
  type request = {
    nextToken: option<string_>,
    maxResults: option<integer_>,
    computeEnvironments: option<stringList>,
  }
  type response = {
    nextToken: option<string_>,
    computeEnvironments: option<computeEnvironmentDetailList>,
  }
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "DescribeComputeEnvironmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SubmitJob = {
  type t
  type request = {
    tags: option<tagrisTagsMap>,
    timeout: option<jobTimeout>,
    propagateTags: option<boolean_>,
    retryStrategy: option<retryStrategy>,
    nodeOverrides: option<nodeOverrides>,
    containerOverrides: option<containerOverrides>,
    parameters: option<parametersMap>,
    jobDefinition: string_,
    dependsOn: option<jobDependencyList>,
    arrayProperties: option<arrayProperties>,
    jobQueue: string_,
    jobName: string_,
  }
  type response = {
    jobId: string_,
    jobName: string_,
    jobArn: option<string_>,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "SubmitJobCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterJobDefinition = {
  type t
  type request = {
    platformCapabilities: option<platformCapabilityList>,
    tags: option<tagrisTagsMap>,
    timeout: option<jobTimeout>,
    propagateTags: option<boolean_>,
    retryStrategy: option<retryStrategy>,
    nodeProperties: option<nodeProperties>,
    containerProperties: option<containerProperties>,
    parameters: option<parametersMap>,
    @as("type") type_: jobDefinitionType,
    jobDefinitionName: string_,
  }
  type response = {
    revision: integer_,
    jobDefinitionArn: string_,
    jobDefinitionName: string_,
  }
  @module("@aws-sdk/client-batch") @new external new_: request => t = "RegisterJobDefinitionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobs = {
  type t
  type request = {jobs: stringList}
  type response = {jobs: option<jobDetailList>}
  @module("@aws-sdk/client-batch") @new external new_: request => t = "DescribeJobsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobDefinitions = {
  type t
  type request = {
    nextToken: option<string_>,
    status: option<string_>,
    jobDefinitionName: option<string_>,
    maxResults: option<integer_>,
    jobDefinitions: option<stringList>,
  }
  type response = {
    nextToken: option<string_>,
    jobDefinitions: option<jobDefinitionList>,
  }
  @module("@aws-sdk/client-batch") @new
  external new_: request => t = "DescribeJobDefinitionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
