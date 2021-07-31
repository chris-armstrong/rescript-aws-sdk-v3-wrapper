type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type ulimitName = [@as("stack") #Stack | @as("sigpending") #Sigpending | @as("rttime") #Rttime | @as("rtprio") #Rtprio | @as("rss") #Rss | @as("nproc") #Nproc | @as("nofile") #Nofile | @as("nice") #Nice | @as("msgqueue") #Msgqueue | @as("memlock") #Memlock | @as("locks") #Locks | @as("fsize") #Fsize | @as("data") #Data | @as("cpu") #Cpu | @as("core") #Core]
type transportProtocol = [@as("udp") #Udp | @as("tcp") #Tcp]
type timestamp_ = Js.Date.t;
type taskStopCode = [@as("UserInitiated") #UserInitiated | @as("EssentialContainerExited") #EssentialContainerExited | @as("TaskFailedToStart") #TaskFailedToStart]
type taskSetField = [@as("TAGS") #TAGS]
type taskField = [@as("TAGS") #TAGS]
type taskDefinitionStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type taskDefinitionPlacementConstraintType = [@as("memberOf") #MemberOf]
type taskDefinitionField = [@as("TAGS") #TAGS]
type taskDefinitionFamilyStatus = [@as("ALL") #ALL | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type targetType = [@as("container-instance") #ContainerInstance]
type tagValue = string
type tagKey = string
type string_ = string
type stabilityStatus = [@as("STABILIZING") #STABILIZING | @as("STEADY_STATE") #STEADYSTATE]
type sortOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type settingName = [@as("containerInsights") #ContainerInsights | @as("awsvpcTrunking") #AwsvpcTrunking | @as("containerInstanceLongArnFormat") #ContainerInstanceLongArnFormat | @as("taskLongArnFormat") #TaskLongArnFormat | @as("serviceLongArnFormat") #ServiceLongArnFormat]
type serviceField = [@as("TAGS") #TAGS]
type sensitiveString = string
type scope = [@as("shared") #Shared | @as("task") #Task]
type schedulingStrategy = [@as("DAEMON") #DAEMON | @as("REPLICA") #REPLICA]
type scaleUnit = [@as("PERCENT") #PERCENT]
type resourceType = [@as("InferenceAccelerator") #InferenceAccelerator | @as("GPU") #GPU]
type proxyConfigurationType = [@as("APPMESH") #APPMESH]
type propagateTags = [@as("SERVICE") #SERVICE | @as("TASK_DEFINITION") #TASKDEFINITION]
type platformDeviceType = [@as("GPU") #GPU]
type placementStrategyType = [@as("binpack") #Binpack | @as("spread") #Spread | @as("random") #Random]
type placementConstraintType = [@as("memberOf") #MemberOf | @as("distinctInstance") #DistinctInstance]
type pidMode = [@as("task") #Task | @as("host") #Host]
type networkMode = [@as("none") #None | @as("awsvpc") #Awsvpc | @as("host") #Host | @as("bridge") #Bridge]
type managedTerminationProtection = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type managedScalingTargetCapacity = int
type managedScalingStepSize = int
type managedScalingStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type managedScalingInstanceWarmupPeriod = int
type managedAgentName = [@as("ExecuteCommandAgent") #ExecuteCommandAgent]
type long = float
type logDriver = [@as("awsfirelens") #Awsfirelens | @as("splunk") #Splunk | @as("awslogs") #Awslogs | @as("fluentd") #Fluentd | @as("gelf") #Gelf | @as("journald") #Journald | @as("syslog") #Syslog | @as("json-file") #JsonFile]
type launchType = [@as("EXTERNAL") #EXTERNAL | @as("FARGATE") #FARGATE | @as("EC2") #EC2]
type ipcMode = [@as("none") #None | @as("task") #Task | @as("host") #Host]
type integer_ = int
type healthStatus = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type firelensConfigurationType = [@as("fluentbit") #Fluentbit | @as("fluentd") #Fluentd]
type executeCommandLogging = [@as("OVERRIDE") #OVERRIDE | @as("DEFAULT") #DEFAULT | @as("NONE") #NONE]
type environmentFileType = [@as("s3") #S3]
type efstransitEncryption = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type efsauthorizationConfigIAM = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type double = float
type deviceCgroupPermission = [@as("mknod") #Mknod | @as("write") #Write | @as("read") #Read]
type desiredStatus = [@as("STOPPED") #STOPPED | @as("PENDING") #PENDING | @as("RUNNING") #RUNNING]
type deploymentRolloutState = [@as("IN_PROGRESS") #INPROGRESS | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED]
type deploymentControllerType = [@as("EXTERNAL") #EXTERNAL | @as("CODE_DEPLOY") #CODEDEPLOY | @as("ECS") #ECS]
type containerInstanceStatus = [@as("REGISTRATION_FAILED") #REGISTRATIONFAILED | @as("DEREGISTERING") #DEREGISTERING | @as("REGISTERING") #REGISTERING | @as("DRAINING") #DRAINING | @as("ACTIVE") #ACTIVE]
type containerInstanceField = [@as("TAGS") #TAGS]
type containerCondition = [@as("HEALTHY") #HEALTHY | @as("SUCCESS") #SUCCESS | @as("COMPLETE") #COMPLETE | @as("START") #START]
type connectivity = [@as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type compatibility = [@as("EXTERNAL") #EXTERNAL | @as("FARGATE") #FARGATE | @as("EC2") #EC2]
type clusterSettingName = [@as("containerInsights") #ContainerInsights]
type clusterField = [@as("TAGS") #TAGS | @as("STATISTICS") #STATISTICS | @as("SETTINGS") #SETTINGS | @as("CONFIGURATIONS") #CONFIGURATIONS | @as("ATTACHMENTS") #ATTACHMENTS]
type capacityProviderUpdateStatus = [@as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_COMPLETE") #UPDATECOMPLETE | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_COMPLETE") #DELETECOMPLETE | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS]
type capacityProviderStrategyItemWeight = int
type capacityProviderStrategyItemBase = int
type capacityProviderStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type capacityProviderField = [@as("TAGS") #TAGS]
type boxedInteger = int
type boxedBoolean = bool
type boolean_ = bool
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type agentUpdateStatus = [@as("FAILED") #FAILED | @as("UPDATED") #UPDATED | @as("UPDATING") #UPDATING | @as("STAGED") #STAGED | @as("STAGING") #STAGING | @as("PENDING") #PENDING]
type volumeFrom = {
readOnly: option<boxedBoolean>,
sourceContainer: option<string_>
}
type versionInfo = {
dockerVersion: option<string_>,
agentHash: option<string_>,
agentVersion: option<string_>
}
type ulimit = {
hardLimit: integer_,
softLimit: integer_,
name: ulimitName
}
type taskSetFieldList = array<taskSetField>
type taskFieldList = array<taskField>
type taskDefinitionPlacementConstraint = {
expression: option<string_>,
@as("type") type_: option<taskDefinitionPlacementConstraintType>
}
type taskDefinitionFieldList = array<taskDefinitionField>
type tagKeys = array<tagKey>
type tag = {
value: option<tagValue>,
key: option<tagKey>
}
type systemControl = {
value: option<string_>,
namespace: option<string_>
}
type stringMap = Js.Dict.t< string_>
type stringList = array<string_>
type setting = {
principalArn: option<string_>,
value: option<string_>,
name: option<settingName>
}
type session = {
tokenValue: option<sensitiveString>,
streamUrl: option<string_>,
sessionId: option<string_>
}
type serviceRegistry = {
containerPort: option<boxedInteger>,
containerName: option<string_>,
port: option<boxedInteger>,
registryArn: option<string_>
}
type serviceFieldList = array<serviceField>
type serviceEvent = {
message: option<string_>,
createdAt: option<timestamp_>,
id: option<string_>
}
type secret = {
valueFrom: string_,
name: string_
}
type scale = {
@as("unit") unit_: option<scaleUnit>,
value: option<double>
}
type resourceRequirement = {
@as("type") type_: resourceType,
value: string_
}
type repositoryCredentials = {
credentialsParameter: string_
}
type portMapping = {
protocol: option<transportProtocol>,
hostPort: option<boxedInteger>,
containerPort: option<boxedInteger>
}
type platformDevice = {
@as("type") type_: platformDeviceType,
id: string_
}
type placementStrategy = {
field: option<string_>,
@as("type") type_: option<placementStrategyType>
}
type placementConstraint = {
expression: option<string_>,
@as("type") type_: option<placementConstraintType>
}
type networkInterface = {
ipv6Address: option<string_>,
privateIpv4Address: option<string_>,
attachmentId: option<string_>
}
type networkBinding = {
protocol: option<transportProtocol>,
hostPort: option<boxedInteger>,
containerPort: option<boxedInteger>,
bindIP: option<string_>
}
type mountPoint = {
readOnly: option<boxedBoolean>,
containerPath: option<string_>,
sourceVolume: option<string_>
}
type managedScaling = {
instanceWarmupPeriod: option<managedScalingInstanceWarmupPeriod>,
maximumScalingStepSize: option<managedScalingStepSize>,
minimumScalingStepSize: option<managedScalingStepSize>,
targetCapacity: option<managedScalingTargetCapacity>,
status: option<managedScalingStatus>
}
type managedAgentStateChange = {
reason: option<string_>,
status: string_,
managedAgentName: managedAgentName,
containerName: string_
}
type managedAgent = {
lastStatus: option<string_>,
reason: option<string_>,
name: option<managedAgentName>,
lastStartedAt: option<timestamp_>
}
type logConfigurationOptionsMap = Js.Dict.t< string_>
type loadBalancer = {
containerPort: option<boxedInteger>,
containerName: option<string_>,
loadBalancerName: option<string_>,
targetGroupArn: option<string_>
}
type keyValuePair = {
value: option<string_>,
name: option<string_>
}
type inferenceAcceleratorOverride = {
deviceType: option<string_>,
deviceName: option<string_>
}
type inferenceAccelerator = {
deviceType: string_,
deviceName: string_
}
type hostVolumeProperties = {
sourcePath: option<string_>
}
type hostEntry = {
ipAddress: string_,
hostname: string_
}
type gpuIds = array<string_>
type firelensConfigurationOptionsMap = Js.Dict.t< string_>
type failure = {
detail: option<string_>,
reason: option<string_>,
arn: option<string_>
}
type fsxWindowsFileServerAuthorizationConfig = {
domain: string_,
credentialsParameter: string_
}
type executeCommandLogConfiguration = {
s3KeyPrefix: option<string_>,
s3EncryptionEnabled: option<boolean_>,
s3BucketName: option<string_>,
cloudWatchEncryptionEnabled: option<boolean_>,
cloudWatchLogGroupName: option<string_>
}
type ephemeralStorage = {
sizeInGiB: integer_
}
type environmentFile = {
@as("type") type_: environmentFileType,
value: string_
}
type efsauthorizationConfig = {
iam: option<efsauthorizationConfigIAM>,
accessPointId: option<string_>
}
type dockerLabelsMap = Js.Dict.t< string_>
type deviceCgroupPermissions = array<deviceCgroupPermission>
type deploymentController = {
@as("type") type_: deploymentControllerType
}
type deploymentCircuitBreaker = {
rollback: boolean_,
enable: boolean_
}
type containerInstanceFieldList = array<containerInstanceField>
type containerDependency = {
condition: containerCondition,
containerName: string_
}
type compatibilityList = array<compatibility>
type clusterSetting = {
value: option<string_>,
name: option<clusterSettingName>
}
type clusterFieldList = array<clusterField>
type capacityProviderStrategyItem = {
base: option<capacityProviderStrategyItemBase>,
weight: option<capacityProviderStrategyItemWeight>,
capacityProvider: string_
}
type capacityProviderFieldList = array<capacityProviderField>
type attribute = {
targetId: option<string_>,
targetType: option<targetType>,
value: option<string_>,
name: string_
}
type attachmentStateChange = {
status: string_,
attachmentArn: string_
}
type volumeFromList = array<volumeFrom>
type ulimitList = array<ulimit>
type tmpfs = {
mountOptions: option<stringList>,
size: integer_,
containerPath: string_
}
type taskDefinitionPlacementConstraints = array<taskDefinitionPlacementConstraint>
type tags = array<tag>
type systemControls = array<systemControl>
type statistics = array<keyValuePair>
type settings = array<setting>
type serviceRegistries = array<serviceRegistry>
type serviceEvents = array<serviceEvent>
type secretList = array<secret>
type resourceRequirements = array<resourceRequirement>
type resource = {
stringSetValue: option<stringList>,
integerValue: option<integer_>,
longValue: option<long>,
doubleValue: option<double>,
@as("type") type_: option<string_>,
name: option<string_>
}
type requiresAttributes = array<attribute>
type proxyConfigurationProperties = array<keyValuePair>
type portMappingList = array<portMapping>
type platformDevices = array<platformDevice>
type placementStrategies = array<placementStrategy>
type placementConstraints = array<placementConstraint>
type networkInterfaces = array<networkInterface>
type networkBindings = array<networkBinding>
type mountPointList = array<mountPoint>
type managedAgents = array<managedAgent>
type managedAgentStateChanges = array<managedAgentStateChange>
type loadBalancers = array<loadBalancer>
type kernelCapabilities = {
drop: option<stringList>,
add: option<stringList>
}
type inferenceAccelerators = array<inferenceAccelerator>
type inferenceAcceleratorOverrides = array<inferenceAcceleratorOverride>
type hostEntryList = array<hostEntry>
type healthCheck = {
startPeriod: option<boxedInteger>,
retries: option<boxedInteger>,
timeout: option<boxedInteger>,
interval: option<boxedInteger>,
command: stringList
}
type firelensConfiguration = {
options: option<firelensConfigurationOptionsMap>,
@as("type") type_: firelensConfigurationType
}
type failures = array<failure>
type fsxWindowsFileServerVolumeConfiguration = {
authorizationConfig: fsxWindowsFileServerAuthorizationConfig,
rootDirectory: string_,
fileSystemId: string_
}
type executeCommandConfiguration = {
logConfiguration: option<executeCommandLogConfiguration>,
logging: option<executeCommandLogging>,
kmsKeyId: option<string_>
}
type environmentVariables = array<keyValuePair>
type environmentFiles = array<environmentFile>
type efsvolumeConfiguration = {
authorizationConfig: option<efsauthorizationConfig>,
transitEncryptionPort: option<boxedInteger>,
transitEncryption: option<efstransitEncryption>,
rootDirectory: option<string_>,
fileSystemId: string_
}
type dockerVolumeConfiguration = {
labels: option<stringMap>,
driverOpts: option<stringMap>,
driver: option<string_>,
autoprovision: option<boxedBoolean>,
scope: option<scope>
}
type device = {
permissions: option<deviceCgroupPermissions>,
containerPath: option<string_>,
hostPath: string_
}
type deploymentConfiguration = {
minimumHealthyPercent: option<boxedInteger>,
maximumPercent: option<boxedInteger>,
deploymentCircuitBreaker: option<deploymentCircuitBreaker>
}
type containerDependencies = array<containerDependency>
type clusterSettings = array<clusterSetting>
type capacityProviderStrategy = array<capacityProviderStrategyItem>
type awsVpcConfiguration = {
assignPublicIp: option<assignPublicIp>,
securityGroups: option<stringList>,
subnets: stringList
}
type autoScalingGroupProviderUpdate = {
managedTerminationProtection: option<managedTerminationProtection>,
managedScaling: option<managedScaling>
}
type autoScalingGroupProvider = {
managedTerminationProtection: option<managedTerminationProtection>,
managedScaling: option<managedScaling>,
autoScalingGroupArn: string_
}
type attributes = array<attribute>
type attachmentStateChanges = array<attachmentStateChange>
type attachmentDetails = array<keyValuePair>
type volume = {
fsxWindowsFileServerVolumeConfiguration: option<fsxWindowsFileServerVolumeConfiguration>,
efsVolumeConfiguration: option<efsvolumeConfiguration>,
dockerVolumeConfiguration: option<dockerVolumeConfiguration>,
host: option<hostVolumeProperties>,
name: option<string_>
}
type tmpfsList = array<tmpfs>
type resources = array<resource>
type proxyConfiguration = {
properties: option<proxyConfigurationProperties>,
containerName: string_,
@as("type") type_: option<proxyConfigurationType>
}
type networkConfiguration = {
awsvpcConfiguration: option<awsVpcConfiguration>
}
type logConfiguration = {
secretOptions: option<secretList>,
options: option<logConfigurationOptionsMap>,
logDriver: logDriver
}
type devicesList = array<device>
type containerStateChange = {
status: option<string_>,
reason: option<string_>,
networkBindings: option<networkBindings>,
exitCode: option<boxedInteger>,
runtimeId: option<string_>,
imageDigest: option<string_>,
containerName: option<string_>
}
type containerOverride = {
resourceRequirements: option<resourceRequirements>,
memoryReservation: option<boxedInteger>,
memory: option<boxedInteger>,
cpu: option<boxedInteger>,
environmentFiles: option<environmentFiles>,
environment: option<environmentVariables>,
command: option<stringList>,
name: option<string_>
}
type container = {
gpuIds: option<gpuIds>,
memoryReservation: option<string_>,
memory: option<string_>,
cpu: option<string_>,
managedAgents: option<managedAgents>,
healthStatus: option<healthStatus>,
networkInterfaces: option<networkInterfaces>,
networkBindings: option<networkBindings>,
reason: option<string_>,
exitCode: option<boxedInteger>,
lastStatus: option<string_>,
runtimeId: option<string_>,
imageDigest: option<string_>,
image: option<string_>,
name: option<string_>,
taskArn: option<string_>,
containerArn: option<string_>
}
type clusterConfiguration = {
executeCommandConfiguration: option<executeCommandConfiguration>
}
type capacityProvider = {
tags: option<tags>,
updateStatusReason: option<string_>,
updateStatus: option<capacityProviderUpdateStatus>,
autoScalingGroupProvider: option<autoScalingGroupProvider>,
status: option<capacityProviderStatus>,
name: option<string_>,
capacityProviderArn: option<string_>
}
type attachment = {
details: option<attachmentDetails>,
status: option<string_>,
@as("type") type_: option<string_>,
id: option<string_>
}
type volumeList = array<volume>
type taskSet = {
tags: option<tags>,
stabilityStatusAt: option<timestamp_>,
stabilityStatus: option<stabilityStatus>,
scale: option<scale>,
serviceRegistries: option<serviceRegistries>,
loadBalancers: option<loadBalancers>,
networkConfiguration: option<networkConfiguration>,
platformVersion: option<string_>,
capacityProviderStrategy: option<capacityProviderStrategy>,
launchType: option<launchType>,
updatedAt: option<timestamp_>,
createdAt: option<timestamp_>,
runningCount: option<integer_>,
pendingCount: option<integer_>,
computedDesiredCount: option<integer_>,
taskDefinition: option<string_>,
status: option<string_>,
externalId: option<string_>,
startedBy: option<string_>,
clusterArn: option<string_>,
serviceArn: option<string_>,
taskSetArn: option<string_>,
id: option<string_>
}
type linuxParameters = {
swappiness: option<boxedInteger>,
maxSwap: option<boxedInteger>,
tmpfs: option<tmpfsList>,
sharedMemorySize: option<boxedInteger>,
initProcessEnabled: option<boxedBoolean>,
devices: option<devicesList>,
capabilities: option<kernelCapabilities>
}
type deployment = {
rolloutStateReason: option<string_>,
rolloutState: option<deploymentRolloutState>,
networkConfiguration: option<networkConfiguration>,
platformVersion: option<string_>,
launchType: option<launchType>,
capacityProviderStrategy: option<capacityProviderStrategy>,
updatedAt: option<timestamp_>,
createdAt: option<timestamp_>,
failedTasks: option<integer_>,
runningCount: option<integer_>,
pendingCount: option<integer_>,
desiredCount: option<integer_>,
taskDefinition: option<string_>,
status: option<string_>,
id: option<string_>
}
type containers = array<container>
type containerStateChanges = array<containerStateChange>
type containerOverrides = array<containerOverride>
type capacityProviders = array<capacityProvider>
type attachments = array<attachment>
type taskSets = array<taskSet>
type taskOverride = {
ephemeralStorage: option<ephemeralStorage>,
taskRoleArn: option<string_>,
memory: option<string_>,
executionRoleArn: option<string_>,
inferenceAcceleratorOverrides: option<inferenceAcceleratorOverrides>,
cpu: option<string_>,
containerOverrides: option<containerOverrides>
}
type deployments = array<deployment>
type containerInstance = {
tags: option<tags>,
attachments: option<attachments>,
registeredAt: option<timestamp_>,
attributes: option<attributes>,
agentUpdateStatus: option<agentUpdateStatus>,
pendingTasksCount: option<integer_>,
runningTasksCount: option<integer_>,
agentConnected: option<boolean_>,
statusReason: option<string_>,
status: option<string_>,
registeredResources: option<resources>,
remainingResources: option<resources>,
versionInfo: option<versionInfo>,
version: option<long>,
capacityProviderName: option<string_>,
ec2InstanceId: option<string_>,
containerInstanceArn: option<string_>
}
type containerDefinition = {
firelensConfiguration: option<firelensConfiguration>,
resourceRequirements: option<resourceRequirements>,
systemControls: option<systemControls>,
healthCheck: option<healthCheck>,
logConfiguration: option<logConfiguration>,
ulimits: option<ulimitList>,
dockerLabels: option<dockerLabelsMap>,
pseudoTerminal: option<boxedBoolean>,
interactive: option<boxedBoolean>,
dockerSecurityOptions: option<stringList>,
extraHosts: option<hostEntryList>,
dnsSearchDomains: option<stringList>,
dnsServers: option<stringList>,
readonlyRootFilesystem: option<boxedBoolean>,
privileged: option<boxedBoolean>,
disableNetworking: option<boxedBoolean>,
workingDirectory: option<string_>,
user: option<string_>,
hostname: option<string_>,
stopTimeout: option<boxedInteger>,
startTimeout: option<boxedInteger>,
dependsOn: option<containerDependencies>,
secrets: option<secretList>,
linuxParameters: option<linuxParameters>,
volumesFrom: option<volumeFromList>,
mountPoints: option<mountPointList>,
environmentFiles: option<environmentFiles>,
environment: option<environmentVariables>,
command: option<stringList>,
entryPoint: option<stringList>,
essential: option<boxedBoolean>,
portMappings: option<portMappingList>,
links: option<stringList>,
memoryReservation: option<boxedInteger>,
memory: option<boxedInteger>,
cpu: option<integer_>,
repositoryCredentials: option<repositoryCredentials>,
image: option<string_>,
name: option<string_>
}
type cluster = {
attachmentsStatus: option<string_>,
attachments: option<attachments>,
defaultCapacityProviderStrategy: option<capacityProviderStrategy>,
capacityProviders: option<stringList>,
settings: option<clusterSettings>,
tags: option<tags>,
statistics: option<statistics>,
activeServicesCount: option<integer_>,
pendingTasksCount: option<integer_>,
runningTasksCount: option<integer_>,
registeredContainerInstancesCount: option<integer_>,
status: option<string_>,
configuration: option<clusterConfiguration>,
clusterName: option<string_>,
clusterArn: option<string_>
}
type task = {
ephemeralStorage: option<ephemeralStorage>,
version: option<long>,
taskDefinitionArn: option<string_>,
taskArn: option<string_>,
tags: option<tags>,
stoppingAt: option<timestamp_>,
stoppedReason: option<string_>,
stoppedAt: option<timestamp_>,
stopCode: option<taskStopCode>,
startedBy: option<string_>,
startedAt: option<timestamp_>,
pullStoppedAt: option<timestamp_>,
pullStartedAt: option<timestamp_>,
platformVersion: option<string_>,
overrides: option<taskOverride>,
memory: option<string_>,
launchType: option<launchType>,
lastStatus: option<string_>,
inferenceAccelerators: option<inferenceAccelerators>,
healthStatus: option<healthStatus>,
group: option<string_>,
executionStoppedAt: option<timestamp_>,
enableExecuteCommand: option<boolean_>,
desiredStatus: option<string_>,
createdAt: option<timestamp_>,
cpu: option<string_>,
containers: option<containers>,
containerInstanceArn: option<string_>,
connectivityAt: option<timestamp_>,
connectivity: option<connectivity>,
clusterArn: option<string_>,
capacityProviderName: option<string_>,
availabilityZone: option<string_>,
attributes: option<attributes>,
attachments: option<attachments>
}
type service = {
enableExecuteCommand: option<boolean_>,
propagateTags: option<propagateTags>,
enableECSManagedTags: option<boolean_>,
createdBy: option<string_>,
tags: option<tags>,
deploymentController: option<deploymentController>,
schedulingStrategy: option<schedulingStrategy>,
healthCheckGracePeriodSeconds: option<boxedInteger>,
networkConfiguration: option<networkConfiguration>,
placementStrategy: option<placementStrategies>,
placementConstraints: option<placementConstraints>,
createdAt: option<timestamp_>,
events: option<serviceEvents>,
roleArn: option<string_>,
deployments: option<deployments>,
taskSets: option<taskSets>,
deploymentConfiguration: option<deploymentConfiguration>,
taskDefinition: option<string_>,
platformVersion: option<string_>,
capacityProviderStrategy: option<capacityProviderStrategy>,
launchType: option<launchType>,
pendingCount: option<integer_>,
runningCount: option<integer_>,
desiredCount: option<integer_>,
status: option<string_>,
serviceRegistries: option<serviceRegistries>,
loadBalancers: option<loadBalancers>,
clusterArn: option<string_>,
serviceName: option<string_>,
serviceArn: option<string_>
}
type containerInstances = array<containerInstance>
type containerDefinitions = array<containerDefinition>
type clusters = array<cluster>
type tasks = array<task>
type taskDefinition = {
ephemeralStorage: option<ephemeralStorage>,
registeredBy: option<string_>,
deregisteredAt: option<timestamp_>,
registeredAt: option<timestamp_>,
proxyConfiguration: option<proxyConfiguration>,
ipcMode: option<ipcMode>,
pidMode: option<pidMode>,
inferenceAccelerators: option<inferenceAccelerators>,
memory: option<string_>,
cpu: option<string_>,
requiresCompatibilities: option<compatibilityList>,
compatibilities: option<compatibilityList>,
placementConstraints: option<taskDefinitionPlacementConstraints>,
requiresAttributes: option<requiresAttributes>,
status: option<taskDefinitionStatus>,
volumes: option<volumeList>,
revision: option<integer_>,
networkMode: option<networkMode>,
executionRoleArn: option<string_>,
taskRoleArn: option<string_>,
family: option<string_>,
containerDefinitions: option<containerDefinitions>,
taskDefinitionArn: option<string_>
}
type services = array<service>
type awsServiceClient;
@module("@aws-sdk/client-ecs") @new external createClient: unit => awsServiceClient = "ECSClient";
module DiscoverPollEndpoint = {
  type t;
  type request = {
cluster: option<string_>,
containerInstance: option<string_>
}
  type response = {
telemetryEndpoint: option<string_>,
endpoint: option<string_>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DiscoverPollEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeys,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountSettingDefault = {
  type t;
  type request = {
value: string_,
name: settingName
}
  type response = {
setting: option<setting>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAccountSettingDefaultCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAccountSetting = {
  type t;
  type request = {
principalArn: option<string_>,
value: string_,
name: settingName
}
  type response = {
setting: option<setting>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAccountSettingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTasks = {
  type t;
  type request = {
launchType: option<launchType>,
desiredStatus: option<desiredStatus>,
serviceName: option<string_>,
startedBy: option<string_>,
maxResults: option<boxedInteger>,
nextToken: option<string_>,
family: option<string_>,
containerInstance: option<string_>,
cluster: option<string_>
}
  type response = {
nextToken: option<string_>,
taskArns: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTaskDefinitions = {
  type t;
  type request = {
maxResults: option<boxedInteger>,
nextToken: option<string_>,
sort: option<sortOrder>,
status: option<taskDefinitionStatus>,
familyPrefix: option<string_>
}
  type response = {
nextToken: option<string_>,
taskDefinitionArns: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTaskDefinitionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTaskDefinitionFamilies = {
  type t;
  type request = {
maxResults: option<boxedInteger>,
nextToken: option<string_>,
status: option<taskDefinitionFamilyStatus>,
familyPrefix: option<string_>
}
  type response = {
nextToken: option<string_>,
families: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTaskDefinitionFamiliesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
schedulingStrategy: option<schedulingStrategy>,
launchType: option<launchType>,
maxResults: option<boxedInteger>,
nextToken: option<string_>,
cluster: option<string_>
}
  type response = {
nextToken: option<string_>,
serviceArns: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListContainerInstances = {
  type t;
  type request = {
status: option<containerInstanceStatus>,
maxResults: option<boxedInteger>,
nextToken: option<string_>,
filter: option<string_>,
cluster: option<string_>
}
  type response = {
nextToken: option<string_>,
containerInstanceArns: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListContainerInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
maxResults: option<boxedInteger>,
nextToken: option<string_>
}
  type response = {
nextToken: option<string_>,
clusterArns: option<stringList>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExecuteCommand = {
  type t;
  type request = {
task: string_,
interactive: boolean_,
command: string_,
container: option<string_>,
cluster: option<string_>
}
  type response = {
taskArn: option<string_>,
session: option<session>,
interactive: option<boolean_>,
containerName: option<string_>,
containerArn: option<string_>,
clusterArn: option<string_>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ExecuteCommandCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountSetting = {
  type t;
  type request = {
principalArn: option<string_>,
name: settingName
}
  type response = {
setting: option<setting>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteAccountSettingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tags,
resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SubmitContainerStateChange = {
  type t;
  type request = {
networkBindings: option<networkBindings>,
reason: option<string_>,
exitCode: option<boxedInteger>,
status: option<string_>,
runtimeId: option<string_>,
containerName: option<string_>,
task: option<string_>,
cluster: option<string_>
}
  type response = {
acknowledgment: option<string_>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitContainerStateChangeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SubmitAttachmentStateChanges = {
  type t;
  type request = {
attachments: attachmentStateChanges,
cluster: option<string_>
}
  type response = {
acknowledgment: option<string_>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitAttachmentStateChangesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAttributes = {
  type t;
  type request = {
attributes: attributes,
cluster: option<string_>
}
  type response = {
attributes: option<attributes>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: string_
}
  type response = {
tags: option<tags>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttributes = {
  type t;
  type request = {
maxResults: option<boxedInteger>,
nextToken: option<string_>,
attributeValue: option<string_>,
attributeName: option<string_>,
targetType: targetType,
cluster: option<string_>
}
  type response = {
nextToken: option<string_>,
attributes: option<attributes>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccountSettings = {
  type t;
  type request = {
maxResults: option<integer_>,
nextToken: option<string_>,
effectiveSettings: option<boolean_>,
principalArn: option<string_>,
value: option<string_>,
name: option<settingName>
}
  type response = {
nextToken: option<string_>,
settings: option<settings>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListAccountSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAttributes = {
  type t;
  type request = {
attributes: attributes,
cluster: option<string_>
}
  type response = {
attributes: option<attributes>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCapacityProvider = {
  type t;
  type request = {
autoScalingGroupProvider: autoScalingGroupProviderUpdate,
name: string_
}
  type response = {
capacityProvider: option<capacityProvider>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateCapacityProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCapacityProvider = {
  type t;
  type request = {
capacityProvider: string_
}
  type response = {
capacityProvider: option<capacityProvider>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteCapacityProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCapacityProvider = {
  type t;
  type request = {
tags: option<tags>,
autoScalingGroupProvider: autoScalingGroupProvider,
name: string_
}
  type response = {
capacityProvider: option<capacityProvider>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateCapacityProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTaskSet = {
  type t;
  type request = {
scale: scale,
taskSet: string_,
service: string_,
cluster: string_
}
  type response = {
taskSet: option<taskSet>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateTaskSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServicePrimaryTaskSet = {
  type t;
  type request = {
primaryTaskSet: string_,
service: string_,
cluster: string_
}
  type response = {
taskSet: option<taskSet>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateServicePrimaryTaskSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SubmitTaskStateChange = {
  type t;
  type request = {
executionStoppedAt: option<timestamp_>,
pullStoppedAt: option<timestamp_>,
pullStartedAt: option<timestamp_>,
managedAgents: option<managedAgentStateChanges>,
attachments: option<attachmentStateChanges>,
containers: option<containerStateChanges>,
reason: option<string_>,
status: option<string_>,
task: option<string_>,
cluster: option<string_>
}
  type response = {
acknowledgment: option<string_>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitTaskStateChangeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCapacityProviders = {
  type t;
  type request = {
nextToken: option<string_>,
maxResults: option<boxedInteger>,
@as("include") include_: option<capacityProviderFieldList>,
capacityProviders: option<stringList>
}
  type response = {
nextToken: option<string_>,
failures: option<failures>,
capacityProviders: option<capacityProviders>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeCapacityProvidersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTaskSet = {
  type t;
  type request = {
force: option<boxedBoolean>,
taskSet: string_,
service: string_,
cluster: string_
}
  type response = {
taskSet: option<taskSet>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteTaskSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTaskSet = {
  type t;
  type request = {
tags: option<tags>,
clientToken: option<string_>,
scale: option<scale>,
platformVersion: option<string_>,
capacityProviderStrategy: option<capacityProviderStrategy>,
launchType: option<launchType>,
serviceRegistries: option<serviceRegistries>,
loadBalancers: option<loadBalancers>,
networkConfiguration: option<networkConfiguration>,
taskDefinition: string_,
externalId: option<string_>,
cluster: string_,
service: string_
}
  type response = {
taskSet: option<taskSet>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateTaskSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerAgent = {
  type t;
  type request = {
containerInstance: string_,
cluster: option<string_>
}
  type response = {
containerInstance: option<containerInstance>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateContainerAgentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterSettings = {
  type t;
  type request = {
settings: clusterSettings,
cluster: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateClusterSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCluster = {
  type t;
  type request = {
configuration: option<clusterConfiguration>,
settings: option<clusterSettings>,
cluster: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterContainerInstance = {
  type t;
  type request = {
tags: option<tags>,
platformDevices: option<platformDevices>,
attributes: option<attributes>,
containerInstanceArn: option<string_>,
versionInfo: option<versionInfo>,
totalResources: option<resources>,
instanceIdentityDocumentSignature: option<string_>,
instanceIdentityDocument: option<string_>,
cluster: option<string_>
}
  type response = {
containerInstance: option<containerInstance>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RegisterContainerInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutClusterCapacityProviders = {
  type t;
  type request = {
defaultCapacityProviderStrategy: capacityProviderStrategy,
capacityProviders: stringList,
cluster: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutClusterCapacityProvidersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTaskSets = {
  type t;
  type request = {
@as("include") include_: option<taskSetFieldList>,
taskSets: option<stringList>,
service: string_,
cluster: string_
}
  type response = {
failures: option<failures>,
taskSets: option<taskSets>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTaskSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterContainerInstance = {
  type t;
  type request = {
force: option<boxedBoolean>,
containerInstance: string_,
cluster: option<string_>
}
  type response = {
containerInstance: option<containerInstance>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeregisterContainerInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
cluster: string_
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
defaultCapacityProviderStrategy: option<capacityProviderStrategy>,
capacityProviders: option<stringList>,
configuration: option<clusterConfiguration>,
settings: option<clusterSettings>,
tags: option<tags>,
clusterName: option<string_>
}
  type response = {
cluster: option<cluster>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateService = {
  type t;
  type request = {
enableExecuteCommand: option<boxedBoolean>,
healthCheckGracePeriodSeconds: option<boxedInteger>,
forceNewDeployment: option<boolean_>,
platformVersion: option<string_>,
placementStrategy: option<placementStrategies>,
placementConstraints: option<placementConstraints>,
networkConfiguration: option<networkConfiguration>,
deploymentConfiguration: option<deploymentConfiguration>,
capacityProviderStrategy: option<capacityProviderStrategy>,
taskDefinition: option<string_>,
desiredCount: option<boxedInteger>,
service: string_,
cluster: option<string_>
}
  type response = {
service: option<service>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerInstancesState = {
  type t;
  type request = {
status: containerInstanceStatus,
containerInstances: stringList,
cluster: option<string_>
}
  type response = {
failures: option<failures>,
containerInstances: option<containerInstances>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateContainerInstancesStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopTask = {
  type t;
  type request = {
reason: option<string_>,
task: string_,
cluster: option<string_>
}
  type response = {
task: option<task>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "StopTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeContainerInstances = {
  type t;
  type request = {
@as("include") include_: option<containerInstanceFieldList>,
containerInstances: stringList,
cluster: option<string_>
}
  type response = {
failures: option<failures>,
containerInstances: option<containerInstances>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeContainerInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("include") include_: option<clusterFieldList>,
clusters: option<stringList>
}
  type response = {
failures: option<failures>,
clusters: option<clusters>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeClustersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteService = {
  type t;
  type request = {
force: option<boxedBoolean>,
service: string_,
cluster: option<string_>
}
  type response = {
service: option<service>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateService = {
  type t;
  type request = {
enableExecuteCommand: option<boolean_>,
propagateTags: option<propagateTags>,
enableECSManagedTags: option<boolean_>,
tags: option<tags>,
deploymentController: option<deploymentController>,
schedulingStrategy: option<schedulingStrategy>,
healthCheckGracePeriodSeconds: option<boxedInteger>,
networkConfiguration: option<networkConfiguration>,
placementStrategy: option<placementStrategies>,
placementConstraints: option<placementConstraints>,
deploymentConfiguration: option<deploymentConfiguration>,
role: option<string_>,
platformVersion: option<string_>,
capacityProviderStrategy: option<capacityProviderStrategy>,
launchType: option<launchType>,
clientToken: option<string_>,
desiredCount: option<boxedInteger>,
serviceRegistries: option<serviceRegistries>,
loadBalancers: option<loadBalancers>,
taskDefinition: option<string_>,
serviceName: string_,
cluster: option<string_>
}
  type response = {
service: option<service>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartTask = {
  type t;
  type request = {
taskDefinition: string_,
tags: option<tags>,
startedBy: option<string_>,
referenceId: option<string_>,
propagateTags: option<propagateTags>,
overrides: option<taskOverride>,
networkConfiguration: option<networkConfiguration>,
group: option<string_>,
enableExecuteCommand: option<boolean_>,
enableECSManagedTags: option<boolean_>,
containerInstances: stringList,
cluster: option<string_>
}
  type response = {
failures: option<failures>,
tasks: option<tasks>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "StartTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RunTask = {
  type t;
  type request = {
taskDefinition: string_,
tags: option<tags>,
startedBy: option<string_>,
referenceId: option<string_>,
propagateTags: option<propagateTags>,
platformVersion: option<string_>,
placementStrategy: option<placementStrategies>,
placementConstraints: option<placementConstraints>,
overrides: option<taskOverride>,
networkConfiguration: option<networkConfiguration>,
launchType: option<launchType>,
group: option<string_>,
enableExecuteCommand: option<boolean_>,
enableECSManagedTags: option<boolean_>,
count: option<boxedInteger>,
cluster: option<string_>,
capacityProviderStrategy: option<capacityProviderStrategy>
}
  type response = {
failures: option<failures>,
tasks: option<tasks>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RunTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterTaskDefinition = {
  type t;
  type request = {
ephemeralStorage: option<ephemeralStorage>,
inferenceAccelerators: option<inferenceAccelerators>,
proxyConfiguration: option<proxyConfiguration>,
ipcMode: option<ipcMode>,
pidMode: option<pidMode>,
tags: option<tags>,
memory: option<string_>,
cpu: option<string_>,
requiresCompatibilities: option<compatibilityList>,
placementConstraints: option<taskDefinitionPlacementConstraints>,
volumes: option<volumeList>,
containerDefinitions: containerDefinitions,
networkMode: option<networkMode>,
executionRoleArn: option<string_>,
taskRoleArn: option<string_>,
family: string_
}
  type response = {
tags: option<tags>,
taskDefinition: option<taskDefinition>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RegisterTaskDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTasks = {
  type t;
  type request = {
@as("include") include_: option<taskFieldList>,
tasks: stringList,
cluster: option<string_>
}
  type response = {
failures: option<failures>,
tasks: option<tasks>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTaskDefinition = {
  type t;
  type request = {
@as("include") include_: option<taskDefinitionFieldList>,
taskDefinition: string_
}
  type response = {
tags: option<tags>,
taskDefinition: option<taskDefinition>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTaskDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServices = {
  type t;
  type request = {
@as("include") include_: option<serviceFieldList>,
services: stringList,
cluster: option<string_>
}
  type response = {
failures: option<failures>,
services: option<services>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterTaskDefinition = {
  type t;
  type request = {
taskDefinition: string_
}
  type response = {
taskDefinition: option<taskDefinition>
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeregisterTaskDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
