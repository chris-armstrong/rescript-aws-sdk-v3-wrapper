type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type ulimitName = [@as("stack") #stack | @as("sigpending") #sigpending | @as("rttime") #rttime | @as("rtprio") #rtprio | @as("rss") #rss | @as("nproc") #nproc | @as("nofile") #nofile | @as("nice") #nice | @as("msgqueue") #msgqueue | @as("memlock") #memlock | @as("locks") #locks | @as("fsize") #fsize | @as("data") #data | @as("cpu") #cpu | @as("core") #core]
type transportProtocol = [@as("udp") #udp | @as("tcp") #tcp]
type amazonawsTimestamp = Js.Date.t;
type taskStopCode = [@as("UserInitiated") #UserInitiated | @as("EssentialContainerExited") #EssentialContainerExited | @as("TaskFailedToStart") #TaskFailedToStart]
type taskSetField = [@as("TAGS") #TAGS]
type taskField = [@as("TAGS") #TAGS]
type taskDefinitionStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type taskDefinitionPlacementConstraintType = [@as("memberOf") #memberOf]
type taskDefinitionField = [@as("TAGS") #TAGS]
type taskDefinitionFamilyStatus = [@as("ALL") #ALL | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type targetType = [@as("container-instance") #container_instance]
type tagValue = string
type tagKey = string
type amazonawsString = string
type stabilityStatus = [@as("STABILIZING") #STABILIZING | @as("STEADY_STATE") #STEADY_STATE]
type sortOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type settingName = [@as("containerInsights") #containerInsights | @as("awsvpcTrunking") #awsvpcTrunking | @as("containerInstanceLongArnFormat") #containerInstanceLongArnFormat | @as("taskLongArnFormat") #taskLongArnFormat | @as("serviceLongArnFormat") #serviceLongArnFormat]
type serviceField = [@as("TAGS") #TAGS]
type sensitiveString = string
type scope = [@as("shared") #shared | @as("task") #task]
type schedulingStrategy = [@as("DAEMON") #DAEMON | @as("REPLICA") #REPLICA]
type scaleUnit = [@as("PERCENT") #PERCENT]
type resourceType = [@as("InferenceAccelerator") #InferenceAccelerator | @as("GPU") #GPU]
type proxyConfigurationType = [@as("APPMESH") #APPMESH]
type propagateTags = [@as("SERVICE") #SERVICE | @as("TASK_DEFINITION") #TASK_DEFINITION]
type platformDeviceType = [@as("GPU") #GPU]
type placementStrategyType = [@as("binpack") #binpack | @as("spread") #spread | @as("random") #random]
type placementConstraintType = [@as("memberOf") #memberOf | @as("distinctInstance") #distinctInstance]
type pidMode = [@as("task") #task | @as("host") #host]
type networkMode = [@as("none") #none | @as("awsvpc") #awsvpc | @as("host") #host | @as("bridge") #bridge]
type managedTerminationProtection = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type managedScalingTargetCapacity = int;
type managedScalingStepSize = int;
type managedScalingStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type managedScalingInstanceWarmupPeriod = int;
type managedAgentName = [@as("ExecuteCommandAgent") #ExecuteCommandAgent]
type amazonawsLong = float;
type logDriver = [@as("awsfirelens") #awsfirelens | @as("splunk") #splunk | @as("awslogs") #awslogs | @as("fluentd") #fluentd | @as("gelf") #gelf | @as("journald") #journald | @as("syslog") #syslog | @as("json-file") #json_file]
type launchType = [@as("EXTERNAL") #EXTERNAL | @as("FARGATE") #FARGATE | @as("EC2") #EC2]
type ipcMode = [@as("none") #none | @as("task") #task | @as("host") #host]
type amazonawsInteger = int;
type healthStatus = [@as("UNKNOWN") #UNKNOWN | @as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type firelensConfigurationType = [@as("fluentbit") #fluentbit | @as("fluentd") #fluentd]
type executeCommandLogging = [@as("OVERRIDE") #OVERRIDE | @as("DEFAULT") #DEFAULT | @as("NONE") #NONE]
type environmentFileType = [@as("s3") #s3]
type eFSTransitEncryption = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type eFSAuthorizationConfigIAM = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type amazonawsDouble = float;
type deviceCgroupPermission = [@as("mknod") #mknod | @as("write") #write | @as("read") #read]
type desiredStatus = [@as("STOPPED") #STOPPED | @as("PENDING") #PENDING | @as("RUNNING") #RUNNING]
type deploymentRolloutState = [@as("IN_PROGRESS") #IN_PROGRESS | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED]
type deploymentControllerType = [@as("EXTERNAL") #EXTERNAL | @as("CODE_DEPLOY") #CODE_DEPLOY | @as("ECS") #ECS]
type containerInstanceStatus = [@as("REGISTRATION_FAILED") #REGISTRATION_FAILED | @as("DEREGISTERING") #DEREGISTERING | @as("REGISTERING") #REGISTERING | @as("DRAINING") #DRAINING | @as("ACTIVE") #ACTIVE]
type containerInstanceField = [@as("TAGS") #TAGS]
type containerCondition = [@as("HEALTHY") #HEALTHY | @as("SUCCESS") #SUCCESS | @as("COMPLETE") #COMPLETE | @as("START") #START]
type connectivity = [@as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type compatibility = [@as("EXTERNAL") #EXTERNAL | @as("FARGATE") #FARGATE | @as("EC2") #EC2]
type clusterSettingName = [@as("containerInsights") #containerInsights]
type clusterField = [@as("TAGS") #TAGS | @as("STATISTICS") #STATISTICS | @as("SETTINGS") #SETTINGS | @as("CONFIGURATIONS") #CONFIGURATIONS | @as("ATTACHMENTS") #ATTACHMENTS]
type capacityProviderUpdateStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_COMPLETE") #DELETE_COMPLETE | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS]
type capacityProviderStrategyItemWeight = int;
type capacityProviderStrategyItemBase = int;
type capacityProviderStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type capacityProviderField = [@as("TAGS") #TAGS]
type boxedInteger = int;
type boxedBoolean = bool;
type amazonawsBoolean = bool;
type assignPublicIp = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type agentUpdateStatus = [@as("FAILED") #FAILED | @as("UPDATED") #UPDATED | @as("UPDATING") #UPDATING | @as("STAGED") #STAGED | @as("STAGING") #STAGING | @as("PENDING") #PENDING]
type volumeFrom = {
@as("readOnly") readOnly: boxedBoolean,
@as("sourceContainer") sourceContainer: amazonawsString
}
type versionInfo = {
@as("dockerVersion") dockerVersion: amazonawsString,
@as("agentHash") agentHash: amazonawsString,
@as("agentVersion") agentVersion: amazonawsString
}
type ulimit = {
@as("hardLimit") hardLimit: option<amazonawsInteger>,
@as("softLimit") softLimit: option<amazonawsInteger>,
@as("name") name: option<ulimitName>
}
type taskSetFieldList = array<taskSetField>
type taskFieldList = array<taskField>
type taskDefinitionPlacementConstraint = {
@as("expression") expression: amazonawsString,
@as("type") type_: taskDefinitionPlacementConstraintType
}
type taskDefinitionFieldList = array<taskDefinitionField>
type tagKeys = array<tagKey>
type tag = {
@as("value") value: tagValue,
@as("key") key: tagKey
}
type systemControl = {
@as("value") value: amazonawsString,
@as("namespace") namespace: amazonawsString
}
type stringMap = Js.Dict.t< amazonawsString>
type stringList = array<amazonawsString>
type setting = {
@as("principalArn") principalArn: amazonawsString,
@as("value") value: amazonawsString,
@as("name") name: settingName
}
type session = {
@as("tokenValue") tokenValue: sensitiveString,
@as("streamUrl") streamUrl: amazonawsString,
@as("sessionId") sessionId: amazonawsString
}
type serviceRegistry = {
@as("containerPort") containerPort: boxedInteger,
@as("containerName") containerName: amazonawsString,
@as("port") port: boxedInteger,
@as("registryArn") registryArn: amazonawsString
}
type serviceFieldList = array<serviceField>
type serviceEvent = {
@as("message") message: amazonawsString,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("id") id: amazonawsString
}
type secret = {
@as("valueFrom") valueFrom: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
type scale = {
@as("unit") unit: scaleUnit,
@as("value") value: amazonawsDouble
}
type resourceRequirement = {
@as("type") type_: option<resourceType>,
@as("value") value: option<amazonawsString>
}
type repositoryCredentials = {
@as("credentialsParameter") credentialsParameter: option<amazonawsString>
}
type portMapping = {
@as("protocol") protocol: transportProtocol,
@as("hostPort") hostPort: boxedInteger,
@as("containerPort") containerPort: boxedInteger
}
type platformDevice = {
@as("type") type_: option<platformDeviceType>,
@as("id") id: option<amazonawsString>
}
type placementStrategy = {
@as("field") field: amazonawsString,
@as("type") type_: placementStrategyType
}
type placementConstraint = {
@as("expression") expression: amazonawsString,
@as("type") type_: placementConstraintType
}
type networkInterface = {
@as("ipv6Address") ipv6Address: amazonawsString,
@as("privateIpv4Address") privateIpv4Address: amazonawsString,
@as("attachmentId") attachmentId: amazonawsString
}
type networkBinding = {
@as("protocol") protocol: transportProtocol,
@as("hostPort") hostPort: boxedInteger,
@as("containerPort") containerPort: boxedInteger,
@as("bindIP") bindIP: amazonawsString
}
type mountPoint = {
@as("readOnly") readOnly: boxedBoolean,
@as("containerPath") containerPath: amazonawsString,
@as("sourceVolume") sourceVolume: amazonawsString
}
type managedScaling = {
@as("instanceWarmupPeriod") instanceWarmupPeriod: managedScalingInstanceWarmupPeriod,
@as("maximumScalingStepSize") maximumScalingStepSize: managedScalingStepSize,
@as("minimumScalingStepSize") minimumScalingStepSize: managedScalingStepSize,
@as("targetCapacity") targetCapacity: managedScalingTargetCapacity,
@as("status") status: managedScalingStatus
}
type managedAgentStateChange = {
@as("reason") reason: amazonawsString,
@as("status") status: option<amazonawsString>,
@as("managedAgentName") managedAgentName: option<managedAgentName>,
@as("containerName") containerName: option<amazonawsString>
}
type managedAgent = {
@as("lastStatus") lastStatus: amazonawsString,
@as("reason") reason: amazonawsString,
@as("name") name: managedAgentName,
@as("lastStartedAt") lastStartedAt: amazonawsTimestamp
}
type logConfigurationOptionsMap = Js.Dict.t< amazonawsString>
type loadBalancer = {
@as("containerPort") containerPort: boxedInteger,
@as("containerName") containerName: amazonawsString,
@as("loadBalancerName") loadBalancerName: amazonawsString,
@as("targetGroupArn") targetGroupArn: amazonawsString
}
type keyValuePair = {
@as("value") value: amazonawsString,
@as("name") name: amazonawsString
}
type inferenceAcceleratorOverride = {
@as("deviceType") deviceType: amazonawsString,
@as("deviceName") deviceName: amazonawsString
}
type inferenceAccelerator = {
@as("deviceType") deviceType: option<amazonawsString>,
@as("deviceName") deviceName: option<amazonawsString>
}
type hostVolumeProperties = {
@as("sourcePath") sourcePath: amazonawsString
}
type hostEntry = {
@as("ipAddress") ipAddress: option<amazonawsString>,
@as("hostname") hostname: option<amazonawsString>
}
type gpuIds = array<amazonawsString>
type firelensConfigurationOptionsMap = Js.Dict.t< amazonawsString>
type failure = {
@as("detail") detail: amazonawsString,
@as("reason") reason: amazonawsString,
@as("arn") arn: amazonawsString
}
type fSxWindowsFileServerAuthorizationConfig = {
@as("domain") domain: option<amazonawsString>,
@as("credentialsParameter") credentialsParameter: option<amazonawsString>
}
type executeCommandLogConfiguration = {
@as("s3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("s3EncryptionEnabled") s3EncryptionEnabled: amazonawsBoolean,
@as("s3BucketName") s3BucketName: amazonawsString,
@as("cloudWatchEncryptionEnabled") cloudWatchEncryptionEnabled: amazonawsBoolean,
@as("cloudWatchLogGroupName") cloudWatchLogGroupName: amazonawsString
}
type ephemeralStorage = {
@as("sizeInGiB") sizeInGiB: option<amazonawsInteger>
}
type environmentFile = {
@as("type") type_: option<environmentFileType>,
@as("value") value: option<amazonawsString>
}
type eFSAuthorizationConfig = {
@as("iam") iam: eFSAuthorizationConfigIAM,
@as("accessPointId") accessPointId: amazonawsString
}
type dockerLabelsMap = Js.Dict.t< amazonawsString>
type deviceCgroupPermissions = array<deviceCgroupPermission>
type deploymentController = {
@as("type") type_: option<deploymentControllerType>
}
type deploymentCircuitBreaker = {
@as("rollback") rollback: option<amazonawsBoolean>,
@as("enable") enable: option<amazonawsBoolean>
}
type containerInstanceFieldList = array<containerInstanceField>
type containerDependency = {
@as("condition") condition: option<containerCondition>,
@as("containerName") containerName: option<amazonawsString>
}
type compatibilityList = array<compatibility>
type clusterSetting = {
@as("value") value: amazonawsString,
@as("name") name: clusterSettingName
}
type clusterFieldList = array<clusterField>
type capacityProviderStrategyItem = {
@as("base") base: capacityProviderStrategyItemBase,
@as("weight") weight: capacityProviderStrategyItemWeight,
@as("capacityProvider") capacityProvider: option<amazonawsString>
}
type capacityProviderFieldList = array<capacityProviderField>
type attribute = {
@as("targetId") targetId: amazonawsString,
@as("targetType") targetType: targetType,
@as("value") value: amazonawsString,
@as("name") name: option<amazonawsString>
}
type attachmentStateChange = {
@as("status") status: option<amazonawsString>,
@as("attachmentArn") attachmentArn: option<amazonawsString>
}
type volumeFromList = array<volumeFrom>
type ulimitList = array<ulimit>
type tmpfs = {
@as("mountOptions") mountOptions: stringList,
@as("size") size: option<amazonawsInteger>,
@as("containerPath") containerPath: option<amazonawsString>
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
@as("stringSetValue") stringSetValue: stringList,
@as("integerValue") integerValue: amazonawsInteger,
@as("longValue") longValue: amazonawsLong,
@as("doubleValue") doubleValue: amazonawsDouble,
@as("type") type_: amazonawsString,
@as("name") name: amazonawsString
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
@as("drop") drop: stringList,
@as("add") add: stringList
}
type inferenceAccelerators = array<inferenceAccelerator>
type inferenceAcceleratorOverrides = array<inferenceAcceleratorOverride>
type hostEntryList = array<hostEntry>
type healthCheck = {
@as("startPeriod") startPeriod: boxedInteger,
@as("retries") retries: boxedInteger,
@as("timeout") timeout: boxedInteger,
@as("interval") interval: boxedInteger,
@as("command") command: option<stringList>
}
type firelensConfiguration = {
@as("options") options: firelensConfigurationOptionsMap,
@as("type") type_: option<firelensConfigurationType>
}
type failures = array<failure>
type fSxWindowsFileServerVolumeConfiguration = {
@as("authorizationConfig") authorizationConfig: option<fSxWindowsFileServerAuthorizationConfig>,
@as("rootDirectory") rootDirectory: option<amazonawsString>,
@as("fileSystemId") fileSystemId: option<amazonawsString>
}
type executeCommandConfiguration = {
@as("logConfiguration") logConfiguration: executeCommandLogConfiguration,
@as("logging") logging: executeCommandLogging,
@as("kmsKeyId") kmsKeyId: amazonawsString
}
type environmentVariables = array<keyValuePair>
type environmentFiles = array<environmentFile>
type eFSVolumeConfiguration = {
@as("authorizationConfig") authorizationConfig: eFSAuthorizationConfig,
@as("transitEncryptionPort") transitEncryptionPort: boxedInteger,
@as("transitEncryption") transitEncryption: eFSTransitEncryption,
@as("rootDirectory") rootDirectory: amazonawsString,
@as("fileSystemId") fileSystemId: option<amazonawsString>
}
type dockerVolumeConfiguration = {
@as("labels") labels: stringMap,
@as("driverOpts") driverOpts: stringMap,
@as("driver") driver: amazonawsString,
@as("autoprovision") autoprovision: boxedBoolean,
@as("scope") scope: scope
}
type device = {
@as("permissions") permissions: deviceCgroupPermissions,
@as("containerPath") containerPath: amazonawsString,
@as("hostPath") hostPath: option<amazonawsString>
}
type deploymentConfiguration = {
@as("minimumHealthyPercent") minimumHealthyPercent: boxedInteger,
@as("maximumPercent") maximumPercent: boxedInteger,
@as("deploymentCircuitBreaker") deploymentCircuitBreaker: deploymentCircuitBreaker
}
type containerDependencies = array<containerDependency>
type clusterSettings = array<clusterSetting>
type capacityProviderStrategy = array<capacityProviderStrategyItem>
type awsVpcConfiguration = {
@as("assignPublicIp") assignPublicIp: assignPublicIp,
@as("securityGroups") securityGroups: stringList,
@as("subnets") subnets: option<stringList>
}
type autoScalingGroupProviderUpdate = {
@as("managedTerminationProtection") managedTerminationProtection: managedTerminationProtection,
@as("managedScaling") managedScaling: managedScaling
}
type autoScalingGroupProvider = {
@as("managedTerminationProtection") managedTerminationProtection: managedTerminationProtection,
@as("managedScaling") managedScaling: managedScaling,
@as("autoScalingGroupArn") autoScalingGroupArn: option<amazonawsString>
}
type attributes = array<attribute>
type attachmentStateChanges = array<attachmentStateChange>
type attachmentDetails = array<keyValuePair>
type volume = {
@as("fsxWindowsFileServerVolumeConfiguration") fsxWindowsFileServerVolumeConfiguration: fSxWindowsFileServerVolumeConfiguration,
@as("efsVolumeConfiguration") efsVolumeConfiguration: eFSVolumeConfiguration,
@as("dockerVolumeConfiguration") dockerVolumeConfiguration: dockerVolumeConfiguration,
@as("host") host: hostVolumeProperties,
@as("name") name: amazonawsString
}
type tmpfsList = array<tmpfs>
type resources = array<resource>
type proxyConfiguration = {
@as("properties") properties: proxyConfigurationProperties,
@as("containerName") containerName: option<amazonawsString>,
@as("type") type_: proxyConfigurationType
}
type networkConfiguration = {
@as("awsvpcConfiguration") awsvpcConfiguration: awsVpcConfiguration
}
type logConfiguration = {
@as("secretOptions") secretOptions: secretList,
@as("options") options: logConfigurationOptionsMap,
@as("logDriver") logDriver: option<logDriver>
}
type devicesList = array<device>
type containerStateChange = {
@as("status") status: amazonawsString,
@as("reason") reason: amazonawsString,
@as("networkBindings") networkBindings: networkBindings,
@as("exitCode") exitCode: boxedInteger,
@as("runtimeId") runtimeId: amazonawsString,
@as("imageDigest") imageDigest: amazonawsString,
@as("containerName") containerName: amazonawsString
}
type containerOverride = {
@as("resourceRequirements") resourceRequirements: resourceRequirements,
@as("memoryReservation") memoryReservation: boxedInteger,
@as("memory") memory: boxedInteger,
@as("cpu") cpu: boxedInteger,
@as("environmentFiles") environmentFiles: environmentFiles,
@as("environment") environment: environmentVariables,
@as("command") command: stringList,
@as("name") name: amazonawsString
}
type container = {
@as("gpuIds") gpuIds: gpuIds,
@as("memoryReservation") memoryReservation: amazonawsString,
@as("memory") memory: amazonawsString,
@as("cpu") cpu: amazonawsString,
@as("managedAgents") managedAgents: managedAgents,
@as("healthStatus") healthStatus: healthStatus,
@as("networkInterfaces") networkInterfaces: networkInterfaces,
@as("networkBindings") networkBindings: networkBindings,
@as("reason") reason: amazonawsString,
@as("exitCode") exitCode: boxedInteger,
@as("lastStatus") lastStatus: amazonawsString,
@as("runtimeId") runtimeId: amazonawsString,
@as("imageDigest") imageDigest: amazonawsString,
@as("image") image: amazonawsString,
@as("name") name: amazonawsString,
@as("taskArn") taskArn: amazonawsString,
@as("containerArn") containerArn: amazonawsString
}
type clusterConfiguration = {
@as("executeCommandConfiguration") executeCommandConfiguration: executeCommandConfiguration
}
type capacityProvider = {
@as("tags") tags: tags,
@as("updateStatusReason") updateStatusReason: amazonawsString,
@as("updateStatus") updateStatus: capacityProviderUpdateStatus,
@as("autoScalingGroupProvider") autoScalingGroupProvider: autoScalingGroupProvider,
@as("status") status: capacityProviderStatus,
@as("name") name: amazonawsString,
@as("capacityProviderArn") capacityProviderArn: amazonawsString
}
type attachment = {
@as("details") details: attachmentDetails,
@as("status") status: amazonawsString,
@as("type") type_: amazonawsString,
@as("id") id: amazonawsString
}
type volumeList = array<volume>
type taskSet = {
@as("tags") tags: tags,
@as("stabilityStatusAt") stabilityStatusAt: amazonawsTimestamp,
@as("stabilityStatus") stabilityStatus: stabilityStatus,
@as("scale") scale: scale,
@as("serviceRegistries") serviceRegistries: serviceRegistries,
@as("loadBalancers") loadBalancers: loadBalancers,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("platformVersion") platformVersion: amazonawsString,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("launchType") launchType: launchType,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("runningCount") runningCount: amazonawsInteger,
@as("pendingCount") pendingCount: amazonawsInteger,
@as("computedDesiredCount") computedDesiredCount: amazonawsInteger,
@as("taskDefinition") taskDefinition: amazonawsString,
@as("status") status: amazonawsString,
@as("externalId") externalId: amazonawsString,
@as("startedBy") startedBy: amazonawsString,
@as("clusterArn") clusterArn: amazonawsString,
@as("serviceArn") serviceArn: amazonawsString,
@as("taskSetArn") taskSetArn: amazonawsString,
@as("id") id: amazonawsString
}
type linuxParameters = {
@as("swappiness") swappiness: boxedInteger,
@as("maxSwap") maxSwap: boxedInteger,
@as("tmpfs") tmpfs: tmpfsList,
@as("sharedMemorySize") sharedMemorySize: boxedInteger,
@as("initProcessEnabled") initProcessEnabled: boxedBoolean,
@as("devices") devices: devicesList,
@as("capabilities") capabilities: kernelCapabilities
}
type deployment = {
@as("rolloutStateReason") rolloutStateReason: amazonawsString,
@as("rolloutState") rolloutState: deploymentRolloutState,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("platformVersion") platformVersion: amazonawsString,
@as("launchType") launchType: launchType,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("failedTasks") failedTasks: amazonawsInteger,
@as("runningCount") runningCount: amazonawsInteger,
@as("pendingCount") pendingCount: amazonawsInteger,
@as("desiredCount") desiredCount: amazonawsInteger,
@as("taskDefinition") taskDefinition: amazonawsString,
@as("status") status: amazonawsString,
@as("id") id: amazonawsString
}
type containers = array<container>
type containerStateChanges = array<containerStateChange>
type containerOverrides = array<containerOverride>
type capacityProviders = array<capacityProvider>
type attachments = array<attachment>
type taskSets = array<taskSet>
type taskOverride = {
@as("ephemeralStorage") ephemeralStorage: ephemeralStorage,
@as("taskRoleArn") taskRoleArn: amazonawsString,
@as("memory") memory: amazonawsString,
@as("executionRoleArn") executionRoleArn: amazonawsString,
@as("inferenceAcceleratorOverrides") inferenceAcceleratorOverrides: inferenceAcceleratorOverrides,
@as("cpu") cpu: amazonawsString,
@as("containerOverrides") containerOverrides: containerOverrides
}
type deployments = array<deployment>
type containerInstance = {
@as("tags") tags: tags,
@as("attachments") attachments: attachments,
@as("registeredAt") registeredAt: amazonawsTimestamp,
@as("attributes") attributes: attributes,
@as("agentUpdateStatus") agentUpdateStatus: agentUpdateStatus,
@as("pendingTasksCount") pendingTasksCount: amazonawsInteger,
@as("runningTasksCount") runningTasksCount: amazonawsInteger,
@as("agentConnected") agentConnected: amazonawsBoolean,
@as("statusReason") statusReason: amazonawsString,
@as("status") status: amazonawsString,
@as("registeredResources") registeredResources: resources,
@as("remainingResources") remainingResources: resources,
@as("versionInfo") versionInfo: versionInfo,
@as("version") version: amazonawsLong,
@as("capacityProviderName") capacityProviderName: amazonawsString,
@as("ec2InstanceId") ec2InstanceId: amazonawsString,
@as("containerInstanceArn") containerInstanceArn: amazonawsString
}
type containerDefinition = {
@as("firelensConfiguration") firelensConfiguration: firelensConfiguration,
@as("resourceRequirements") resourceRequirements: resourceRequirements,
@as("systemControls") systemControls: systemControls,
@as("healthCheck") healthCheck: healthCheck,
@as("logConfiguration") logConfiguration: logConfiguration,
@as("ulimits") ulimits: ulimitList,
@as("dockerLabels") dockerLabels: dockerLabelsMap,
@as("pseudoTerminal") pseudoTerminal: boxedBoolean,
@as("interactive") interactive: boxedBoolean,
@as("dockerSecurityOptions") dockerSecurityOptions: stringList,
@as("extraHosts") extraHosts: hostEntryList,
@as("dnsSearchDomains") dnsSearchDomains: stringList,
@as("dnsServers") dnsServers: stringList,
@as("readonlyRootFilesystem") readonlyRootFilesystem: boxedBoolean,
@as("privileged") privileged: boxedBoolean,
@as("disableNetworking") disableNetworking: boxedBoolean,
@as("workingDirectory") workingDirectory: amazonawsString,
@as("user") user: amazonawsString,
@as("hostname") hostname: amazonawsString,
@as("stopTimeout") stopTimeout: boxedInteger,
@as("startTimeout") startTimeout: boxedInteger,
@as("dependsOn") dependsOn: containerDependencies,
@as("secrets") secrets: secretList,
@as("linuxParameters") linuxParameters: linuxParameters,
@as("volumesFrom") volumesFrom: volumeFromList,
@as("mountPoints") mountPoints: mountPointList,
@as("environmentFiles") environmentFiles: environmentFiles,
@as("environment") environment: environmentVariables,
@as("command") command: stringList,
@as("entryPoint") entryPoint: stringList,
@as("essential") essential: boxedBoolean,
@as("portMappings") portMappings: portMappingList,
@as("links") links: stringList,
@as("memoryReservation") memoryReservation: boxedInteger,
@as("memory") memory: boxedInteger,
@as("cpu") cpu: amazonawsInteger,
@as("repositoryCredentials") repositoryCredentials: repositoryCredentials,
@as("image") image: amazonawsString,
@as("name") name: amazonawsString
}
type cluster = {
@as("attachmentsStatus") attachmentsStatus: amazonawsString,
@as("attachments") attachments: attachments,
@as("defaultCapacityProviderStrategy") defaultCapacityProviderStrategy: capacityProviderStrategy,
@as("capacityProviders") capacityProviders: stringList,
@as("settings") settings: clusterSettings,
@as("tags") tags: tags,
@as("statistics") statistics: statistics,
@as("activeServicesCount") activeServicesCount: amazonawsInteger,
@as("pendingTasksCount") pendingTasksCount: amazonawsInteger,
@as("runningTasksCount") runningTasksCount: amazonawsInteger,
@as("registeredContainerInstancesCount") registeredContainerInstancesCount: amazonawsInteger,
@as("status") status: amazonawsString,
@as("configuration") configuration: clusterConfiguration,
@as("clusterName") clusterName: amazonawsString,
@as("clusterArn") clusterArn: amazonawsString
}
type task = {
@as("ephemeralStorage") ephemeralStorage: ephemeralStorage,
@as("version") version: amazonawsLong,
@as("taskDefinitionArn") taskDefinitionArn: amazonawsString,
@as("taskArn") taskArn: amazonawsString,
@as("tags") tags: tags,
@as("stoppingAt") stoppingAt: amazonawsTimestamp,
@as("stoppedReason") stoppedReason: amazonawsString,
@as("stoppedAt") stoppedAt: amazonawsTimestamp,
@as("stopCode") stopCode: taskStopCode,
@as("startedBy") startedBy: amazonawsString,
@as("startedAt") startedAt: amazonawsTimestamp,
@as("pullStoppedAt") pullStoppedAt: amazonawsTimestamp,
@as("pullStartedAt") pullStartedAt: amazonawsTimestamp,
@as("platformVersion") platformVersion: amazonawsString,
@as("overrides") overrides: taskOverride,
@as("memory") memory: amazonawsString,
@as("launchType") launchType: launchType,
@as("lastStatus") lastStatus: amazonawsString,
@as("inferenceAccelerators") inferenceAccelerators: inferenceAccelerators,
@as("healthStatus") healthStatus: healthStatus,
@as("group") group: amazonawsString,
@as("executionStoppedAt") executionStoppedAt: amazonawsTimestamp,
@as("enableExecuteCommand") enableExecuteCommand: amazonawsBoolean,
@as("desiredStatus") desiredStatus: amazonawsString,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("cpu") cpu: amazonawsString,
@as("containers") containers: containers,
@as("containerInstanceArn") containerInstanceArn: amazonawsString,
@as("connectivityAt") connectivityAt: amazonawsTimestamp,
@as("connectivity") connectivity: connectivity,
@as("clusterArn") clusterArn: amazonawsString,
@as("capacityProviderName") capacityProviderName: amazonawsString,
@as("availabilityZone") availabilityZone: amazonawsString,
@as("attributes") attributes: attributes,
@as("attachments") attachments: attachments
}
type service = {
@as("enableExecuteCommand") enableExecuteCommand: amazonawsBoolean,
@as("propagateTags") propagateTags: propagateTags,
@as("enableECSManagedTags") enableECSManagedTags: amazonawsBoolean,
@as("createdBy") createdBy: amazonawsString,
@as("tags") tags: tags,
@as("deploymentController") deploymentController: deploymentController,
@as("schedulingStrategy") schedulingStrategy: schedulingStrategy,
@as("healthCheckGracePeriodSeconds") healthCheckGracePeriodSeconds: boxedInteger,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("placementStrategy") placementStrategy: placementStrategies,
@as("placementConstraints") placementConstraints: placementConstraints,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("events") events: serviceEvents,
@as("roleArn") roleArn: amazonawsString,
@as("deployments") deployments: deployments,
@as("taskSets") taskSets: taskSets,
@as("deploymentConfiguration") deploymentConfiguration: deploymentConfiguration,
@as("taskDefinition") taskDefinition: amazonawsString,
@as("platformVersion") platformVersion: amazonawsString,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("launchType") launchType: launchType,
@as("pendingCount") pendingCount: amazonawsInteger,
@as("runningCount") runningCount: amazonawsInteger,
@as("desiredCount") desiredCount: amazonawsInteger,
@as("status") status: amazonawsString,
@as("serviceRegistries") serviceRegistries: serviceRegistries,
@as("loadBalancers") loadBalancers: loadBalancers,
@as("clusterArn") clusterArn: amazonawsString,
@as("serviceName") serviceName: amazonawsString,
@as("serviceArn") serviceArn: amazonawsString
}
type containerInstances = array<containerInstance>
type containerDefinitions = array<containerDefinition>
type clusters = array<cluster>
type tasks = array<task>
type taskDefinition = {
@as("ephemeralStorage") ephemeralStorage: ephemeralStorage,
@as("registeredBy") registeredBy: amazonawsString,
@as("deregisteredAt") deregisteredAt: amazonawsTimestamp,
@as("registeredAt") registeredAt: amazonawsTimestamp,
@as("proxyConfiguration") proxyConfiguration: proxyConfiguration,
@as("ipcMode") ipcMode: ipcMode,
@as("pidMode") pidMode: pidMode,
@as("inferenceAccelerators") inferenceAccelerators: inferenceAccelerators,
@as("memory") memory: amazonawsString,
@as("cpu") cpu: amazonawsString,
@as("requiresCompatibilities") requiresCompatibilities: compatibilityList,
@as("compatibilities") compatibilities: compatibilityList,
@as("placementConstraints") placementConstraints: taskDefinitionPlacementConstraints,
@as("requiresAttributes") requiresAttributes: requiresAttributes,
@as("status") status: taskDefinitionStatus,
@as("volumes") volumes: volumeList,
@as("revision") revision: amazonawsInteger,
@as("networkMode") networkMode: networkMode,
@as("executionRoleArn") executionRoleArn: amazonawsString,
@as("taskRoleArn") taskRoleArn: amazonawsString,
@as("family") family: amazonawsString,
@as("containerDefinitions") containerDefinitions: containerDefinitions,
@as("taskDefinitionArn") taskDefinitionArn: amazonawsString
}
type services = array<service>
type clientType;
@module("@aws-sdk/client-ecs") @new external createClient: unit => clientType = "ECSClient";
module DiscoverPollEndpoint = {
  type t;
  type request = {
@as("cluster") cluster: amazonawsString,
@as("containerInstance") containerInstance: amazonawsString
}
  type response = {
@as("telemetryEndpoint") telemetryEndpoint: amazonawsString,
@as("endpoint") endpoint: amazonawsString
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DiscoverPollEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeys>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountSettingDefault = {
  type t;
  type request = {
@as("value") value: option<amazonawsString>,
@as("name") name: option<settingName>
}
  type response = {
@as("setting") setting: setting
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAccountSettingDefaultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAccountSetting = {
  type t;
  type request = {
@as("principalArn") principalArn: amazonawsString,
@as("value") value: option<amazonawsString>,
@as("name") name: option<settingName>
}
  type response = {
@as("setting") setting: setting
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAccountSettingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTasks = {
  type t;
  type request = {
@as("launchType") launchType: launchType,
@as("desiredStatus") desiredStatus: desiredStatus,
@as("serviceName") serviceName: amazonawsString,
@as("startedBy") startedBy: amazonawsString,
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("family") family: amazonawsString,
@as("containerInstance") containerInstance: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("taskArns") taskArns: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTaskDefinitions = {
  type t;
  type request = {
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("sort") sort: sortOrder,
@as("status") status: taskDefinitionStatus,
@as("familyPrefix") familyPrefix: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("taskDefinitionArns") taskDefinitionArns: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTaskDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTaskDefinitionFamilies = {
  type t;
  type request = {
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("status") status: taskDefinitionFamilyStatus,
@as("familyPrefix") familyPrefix: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("families") families: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTaskDefinitionFamiliesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("schedulingStrategy") schedulingStrategy: schedulingStrategy,
@as("launchType") launchType: launchType,
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("serviceArns") serviceArns: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContainerInstances = {
  type t;
  type request = {
@as("status") status: containerInstanceStatus,
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("filter") filter: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("containerInstanceArns") containerInstanceArns: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListContainerInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListClusters = {
  type t;
  type request = {
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("clusterArns") clusterArns: stringList
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExecuteCommand = {
  type t;
  type request = {
@as("task") task: option<amazonawsString>,
@as("interactive") interactive: option<amazonawsBoolean>,
@as("command") command: option<amazonawsString>,
@as("container") container: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("taskArn") taskArn: amazonawsString,
@as("session") session: session,
@as("interactive") interactive: amazonawsBoolean,
@as("containerName") containerName: amazonawsString,
@as("containerArn") containerArn: amazonawsString,
@as("clusterArn") clusterArn: amazonawsString
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ExecuteCommandCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountSetting = {
  type t;
  type request = {
@as("principalArn") principalArn: amazonawsString,
@as("name") name: option<settingName>
}
  type response = {
@as("setting") setting: setting
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteAccountSettingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tags>,
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubmitContainerStateChange = {
  type t;
  type request = {
@as("networkBindings") networkBindings: networkBindings,
@as("reason") reason: amazonawsString,
@as("exitCode") exitCode: boxedInteger,
@as("status") status: amazonawsString,
@as("runtimeId") runtimeId: amazonawsString,
@as("containerName") containerName: amazonawsString,
@as("task") task: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("acknowledgment") acknowledgment: amazonawsString
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitContainerStateChangeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubmitAttachmentStateChanges = {
  type t;
  type request = {
@as("attachments") attachments: option<attachmentStateChanges>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("acknowledgment") acknowledgment: amazonawsString
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitAttachmentStateChangesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAttributes = {
  type t;
  type request = {
@as("attributes") attributes: option<attributes>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("attributes") attributes: attributes
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("tags") tags: tags
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttributes = {
  type t;
  type request = {
@as("maxResults") maxResults: boxedInteger,
@as("nextToken") nextToken: amazonawsString,
@as("attributeValue") attributeValue: amazonawsString,
@as("attributeName") attributeName: amazonawsString,
@as("targetType") targetType: option<targetType>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("attributes") attributes: attributes
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccountSettings = {
  type t;
  type request = {
@as("maxResults") maxResults: amazonawsInteger,
@as("nextToken") nextToken: amazonawsString,
@as("effectiveSettings") effectiveSettings: amazonawsBoolean,
@as("principalArn") principalArn: amazonawsString,
@as("value") value: amazonawsString,
@as("name") name: settingName
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("settings") settings: settings
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "ListAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAttributes = {
  type t;
  type request = {
@as("attributes") attributes: option<attributes>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("attributes") attributes: attributes
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCapacityProvider = {
  type t;
  type request = {
@as("autoScalingGroupProvider") autoScalingGroupProvider: option<autoScalingGroupProviderUpdate>,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("capacityProvider") capacityProvider: capacityProvider
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateCapacityProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCapacityProvider = {
  type t;
  type request = {
@as("capacityProvider") capacityProvider: option<amazonawsString>
}
  type response = {
@as("capacityProvider") capacityProvider: capacityProvider
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteCapacityProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCapacityProvider = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("autoScalingGroupProvider") autoScalingGroupProvider: option<autoScalingGroupProvider>,
@as("name") name: option<amazonawsString>
}
  type response = {
@as("capacityProvider") capacityProvider: capacityProvider
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateCapacityProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTaskSet = {
  type t;
  type request = {
@as("scale") scale: option<scale>,
@as("taskSet") taskSet: option<amazonawsString>,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("taskSet") taskSet: taskSet
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateTaskSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServicePrimaryTaskSet = {
  type t;
  type request = {
@as("primaryTaskSet") primaryTaskSet: option<amazonawsString>,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("taskSet") taskSet: taskSet
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateServicePrimaryTaskSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubmitTaskStateChange = {
  type t;
  type request = {
@as("executionStoppedAt") executionStoppedAt: amazonawsTimestamp,
@as("pullStoppedAt") pullStoppedAt: amazonawsTimestamp,
@as("pullStartedAt") pullStartedAt: amazonawsTimestamp,
@as("managedAgents") managedAgents: managedAgentStateChanges,
@as("attachments") attachments: attachmentStateChanges,
@as("containers") containers: containerStateChanges,
@as("reason") reason: amazonawsString,
@as("status") status: amazonawsString,
@as("task") task: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("acknowledgment") acknowledgment: amazonawsString
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "SubmitTaskStateChangeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCapacityProviders = {
  type t;
  type request = {
@as("nextToken") nextToken: amazonawsString,
@as("maxResults") maxResults: boxedInteger,
@as("include") include: capacityProviderFieldList,
@as("capacityProviders") capacityProviders: stringList
}
  type response = {
@as("nextToken") nextToken: amazonawsString,
@as("failures") failures: failures,
@as("capacityProviders") capacityProviders: capacityProviders
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeCapacityProvidersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTaskSet = {
  type t;
  type request = {
@as("force") force: boxedBoolean,
@as("taskSet") taskSet: option<amazonawsString>,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("taskSet") taskSet: taskSet
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteTaskSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTaskSet = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("clientToken") clientToken: amazonawsString,
@as("scale") scale: scale,
@as("platformVersion") platformVersion: amazonawsString,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("launchType") launchType: launchType,
@as("serviceRegistries") serviceRegistries: serviceRegistries,
@as("loadBalancers") loadBalancers: loadBalancers,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("taskDefinition") taskDefinition: option<amazonawsString>,
@as("externalId") externalId: amazonawsString,
@as("cluster") cluster: option<amazonawsString>,
@as("service") service: option<amazonawsString>
}
  type response = {
@as("taskSet") taskSet: taskSet
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateTaskSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerAgent = {
  type t;
  type request = {
@as("containerInstance") containerInstance: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("containerInstance") containerInstance: containerInstance
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateContainerAgentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateClusterSettings = {
  type t;
  type request = {
@as("settings") settings: option<clusterSettings>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateClusterSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCluster = {
  type t;
  type request = {
@as("configuration") configuration: clusterConfiguration,
@as("settings") settings: clusterSettings,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterContainerInstance = {
  type t;
  type request = {
@as("tags") tags: tags,
@as("platformDevices") platformDevices: platformDevices,
@as("attributes") attributes: attributes,
@as("containerInstanceArn") containerInstanceArn: amazonawsString,
@as("versionInfo") versionInfo: versionInfo,
@as("totalResources") totalResources: resources,
@as("instanceIdentityDocumentSignature") instanceIdentityDocumentSignature: amazonawsString,
@as("instanceIdentityDocument") instanceIdentityDocument: amazonawsString,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("containerInstance") containerInstance: containerInstance
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RegisterContainerInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutClusterCapacityProviders = {
  type t;
  type request = {
@as("defaultCapacityProviderStrategy") defaultCapacityProviderStrategy: option<capacityProviderStrategy>,
@as("capacityProviders") capacityProviders: option<stringList>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "PutClusterCapacityProvidersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTaskSets = {
  type t;
  type request = {
@as("include") include: taskSetFieldList,
@as("taskSets") taskSets: stringList,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("failures") failures: failures,
@as("taskSets") taskSets: taskSets
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTaskSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterContainerInstance = {
  type t;
  type request = {
@as("force") force: boxedBoolean,
@as("containerInstance") containerInstance: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("containerInstance") containerInstance: containerInstance
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeregisterContainerInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("cluster") cluster: option<amazonawsString>
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("defaultCapacityProviderStrategy") defaultCapacityProviderStrategy: capacityProviderStrategy,
@as("capacityProviders") capacityProviders: stringList,
@as("configuration") configuration: clusterConfiguration,
@as("settings") settings: clusterSettings,
@as("tags") tags: tags,
@as("clusterName") clusterName: amazonawsString
}
  type response = {
@as("cluster") cluster: cluster
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateService = {
  type t;
  type request = {
@as("enableExecuteCommand") enableExecuteCommand: boxedBoolean,
@as("healthCheckGracePeriodSeconds") healthCheckGracePeriodSeconds: boxedInteger,
@as("forceNewDeployment") forceNewDeployment: amazonawsBoolean,
@as("platformVersion") platformVersion: amazonawsString,
@as("placementStrategy") placementStrategy: placementStrategies,
@as("placementConstraints") placementConstraints: placementConstraints,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("deploymentConfiguration") deploymentConfiguration: deploymentConfiguration,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("taskDefinition") taskDefinition: amazonawsString,
@as("desiredCount") desiredCount: boxedInteger,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("service") service: service
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerInstancesState = {
  type t;
  type request = {
@as("status") status: option<containerInstanceStatus>,
@as("containerInstances") containerInstances: option<stringList>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("failures") failures: failures,
@as("containerInstances") containerInstances: containerInstances
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "UpdateContainerInstancesStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopTask = {
  type t;
  type request = {
@as("reason") reason: amazonawsString,
@as("task") task: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("task") task: task
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "StopTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeContainerInstances = {
  type t;
  type request = {
@as("include") include: containerInstanceFieldList,
@as("containerInstances") containerInstances: option<stringList>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("failures") failures: failures,
@as("containerInstances") containerInstances: containerInstances
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeContainerInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("include") include: clusterFieldList,
@as("clusters") clusters: stringList
}
  type response = {
@as("failures") failures: failures,
@as("clusters") clusters: clusters
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteService = {
  type t;
  type request = {
@as("force") force: boxedBoolean,
@as("service") service: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("service") service: service
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeleteServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateService = {
  type t;
  type request = {
@as("enableExecuteCommand") enableExecuteCommand: amazonawsBoolean,
@as("propagateTags") propagateTags: propagateTags,
@as("enableECSManagedTags") enableECSManagedTags: amazonawsBoolean,
@as("tags") tags: tags,
@as("deploymentController") deploymentController: deploymentController,
@as("schedulingStrategy") schedulingStrategy: schedulingStrategy,
@as("healthCheckGracePeriodSeconds") healthCheckGracePeriodSeconds: boxedInteger,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("placementStrategy") placementStrategy: placementStrategies,
@as("placementConstraints") placementConstraints: placementConstraints,
@as("deploymentConfiguration") deploymentConfiguration: deploymentConfiguration,
@as("role") role: amazonawsString,
@as("platformVersion") platformVersion: amazonawsString,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy,
@as("launchType") launchType: launchType,
@as("clientToken") clientToken: amazonawsString,
@as("desiredCount") desiredCount: boxedInteger,
@as("serviceRegistries") serviceRegistries: serviceRegistries,
@as("loadBalancers") loadBalancers: loadBalancers,
@as("taskDefinition") taskDefinition: amazonawsString,
@as("serviceName") serviceName: option<amazonawsString>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("service") service: service
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "CreateServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartTask = {
  type t;
  type request = {
@as("taskDefinition") taskDefinition: option<amazonawsString>,
@as("tags") tags: tags,
@as("startedBy") startedBy: amazonawsString,
@as("referenceId") referenceId: amazonawsString,
@as("propagateTags") propagateTags: propagateTags,
@as("overrides") overrides: taskOverride,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("group") group: amazonawsString,
@as("enableExecuteCommand") enableExecuteCommand: amazonawsBoolean,
@as("enableECSManagedTags") enableECSManagedTags: amazonawsBoolean,
@as("containerInstances") containerInstances: option<stringList>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("failures") failures: failures,
@as("tasks") tasks: tasks
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "StartTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RunTask = {
  type t;
  type request = {
@as("taskDefinition") taskDefinition: option<amazonawsString>,
@as("tags") tags: tags,
@as("startedBy") startedBy: amazonawsString,
@as("referenceId") referenceId: amazonawsString,
@as("propagateTags") propagateTags: propagateTags,
@as("platformVersion") platformVersion: amazonawsString,
@as("placementStrategy") placementStrategy: placementStrategies,
@as("placementConstraints") placementConstraints: placementConstraints,
@as("overrides") overrides: taskOverride,
@as("networkConfiguration") networkConfiguration: networkConfiguration,
@as("launchType") launchType: launchType,
@as("group") group: amazonawsString,
@as("enableExecuteCommand") enableExecuteCommand: amazonawsBoolean,
@as("enableECSManagedTags") enableECSManagedTags: amazonawsBoolean,
@as("count") count: boxedInteger,
@as("cluster") cluster: amazonawsString,
@as("capacityProviderStrategy") capacityProviderStrategy: capacityProviderStrategy
}
  type response = {
@as("failures") failures: failures,
@as("tasks") tasks: tasks
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RunTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterTaskDefinition = {
  type t;
  type request = {
@as("ephemeralStorage") ephemeralStorage: ephemeralStorage,
@as("inferenceAccelerators") inferenceAccelerators: inferenceAccelerators,
@as("proxyConfiguration") proxyConfiguration: proxyConfiguration,
@as("ipcMode") ipcMode: ipcMode,
@as("pidMode") pidMode: pidMode,
@as("tags") tags: tags,
@as("memory") memory: amazonawsString,
@as("cpu") cpu: amazonawsString,
@as("requiresCompatibilities") requiresCompatibilities: compatibilityList,
@as("placementConstraints") placementConstraints: taskDefinitionPlacementConstraints,
@as("volumes") volumes: volumeList,
@as("containerDefinitions") containerDefinitions: option<containerDefinitions>,
@as("networkMode") networkMode: networkMode,
@as("executionRoleArn") executionRoleArn: amazonawsString,
@as("taskRoleArn") taskRoleArn: amazonawsString,
@as("family") family: option<amazonawsString>
}
  type response = {
@as("tags") tags: tags,
@as("taskDefinition") taskDefinition: taskDefinition
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "RegisterTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTasks = {
  type t;
  type request = {
@as("include") include: taskFieldList,
@as("tasks") tasks: option<stringList>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("failures") failures: failures,
@as("tasks") tasks: tasks
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTaskDefinition = {
  type t;
  type request = {
@as("include") include: taskDefinitionFieldList,
@as("taskDefinition") taskDefinition: option<amazonawsString>
}
  type response = {
@as("tags") tags: tags,
@as("taskDefinition") taskDefinition: taskDefinition
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServices = {
  type t;
  type request = {
@as("include") include: serviceFieldList,
@as("services") services: option<stringList>,
@as("cluster") cluster: amazonawsString
}
  type response = {
@as("failures") failures: failures,
@as("services") services: services
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DescribeServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterTaskDefinition = {
  type t;
  type request = {
@as("taskDefinition") taskDefinition: option<amazonawsString>
}
  type response = {
@as("taskDefinition") taskDefinition: taskDefinition
}
  @module("@aws-sdk/client-ecs") @new external new_: (request) => t = "DeregisterTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
