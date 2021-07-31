type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elasticbeanstalk") @new
external createClient: unit => awsServiceClient = "ElasticBeanstalkClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type virtualizationType = string
type versionLabel = string
type validationSeverity = [@as("warning") #Warning | @as("error") #Error]
type validationMessageString = string
type userDefinedOption = bool
type updateDate = Js.Date.t
type token = string
type timestamp_ = Js.Date.t
type timeFilterStart = Js.Date.t
type timeFilterEnd = Js.Date.t
type terminateEnvironmentResources = bool
type terminateEnvForce = bool
type tagValue = string
type tagKey = string
type supportedTier = string
type supportedAddon = string
type string_ = string
type sourceType = [@as("Zip") #Zip | @as("Git") #Git]
type sourceRepository = [@as("S3") #S3 | @as("CodeCommit") #CodeCommit]
type sourceLocation = string
type solutionStackName = string
type searchFilterValue = string
type searchFilterOperator = string
type searchFilterAttribute = string
type sampleTimestamp = Js.Date.t
type s3Key = string
type s3Bucket = string
type resourceName = string
type resourceId = string
type resourceArn = string
type requestId = string
type requestCount = int
type regexPattern = string
type regexLabel = string
type refreshedAt = Js.Date.t
type platformVersion = string
type platformStatus = [
  | @as("Deleted") #Deleted
  | @as("Deleting") #Deleting
  | @as("Ready") #Ready
  | @as("Failed") #Failed
  | @as("Creating") #Creating
]
type platformOwner = string
type platformName = string
type platformMaxRecords = int
type platformLifecycleState = string
type platformFilterValue = string
type platformFilterType = string
type platformFilterOperator = string
type platformCategory = string
type platformBranchMaxRecords = int
type platformBranchLifecycleState = string
type platformArn = string
type optionRestrictionMinValue = int
type optionRestrictionMaxValue = int
type optionRestrictionMaxLength = int
type optionNamespace = string
type operationsRole = string
type operatingSystemVersion = string
type operatingSystemName = string
type nullableLong = float
type nullableInteger = int
type nullableDouble = float
type nonEmptyString = string
type nextToken = string
type message = string
type maxRecords = int
type managedActionHistoryMaxItems = int
type maintainer = string
type loadAverageValue = float
type launchedAt = Js.Date.t
type integer_ = int
type instancesHealthAttribute = [
  | @as("All") #All
  | @as("InstanceType") #InstanceType
  | @as("AvailabilityZone") #AvailabilityZone
  | @as("Deployment") #Deployment
  | @as("System") #System
  | @as("LaunchedAt") #LaunchedAt
  | @as("RefreshedAt") #RefreshedAt
  | @as("ApplicationMetrics") #ApplicationMetrics
  | @as("Causes") #Causes
  | @as("Color") #Color
  | @as("HealthStatus") #HealthStatus
]
type instanceId = string
type includeDeletedBackTo = Js.Date.t
type includeDeleted = bool
type imageId = string
type groupName = string
type forceTerminate = bool
type fileTypeExtension = string
type failureType = [
  | @as("PermissionsError") #PermissionsError
  | @as("InvalidEnvironmentState") #InvalidEnvironmentState
  | @as("InternalFailure") #InternalFailure
  | @as("RollbackSuccessful") #RollbackSuccessful
  | @as("RollbackFailed") #RollbackFailed
  | @as("CancellationFailed") #CancellationFailed
  | @as("UpdateCancelled") #UpdateCancelled
]
type exceptionMessage = string
type eventSeverity = [
  | @as("FATAL") #FATAL
  | @as("ERROR") #ERROR
  | @as("WARN") #WARN
  | @as("INFO") #INFO
  | @as("DEBUG") #DEBUG
  | @as("TRACE") #TRACE
]
type eventMessage = string
type eventDate = Js.Date.t
type environmentStatus = [
  | @as("Terminated") #Terminated
  | @as("Terminating") #Terminating
  | @as("Ready") #Ready
  | @as("LinkingTo") #LinkingTo
  | @as("LinkingFrom") #LinkingFrom
  | @as("Updating") #Updating
  | @as("Launching") #Launching
  | @as("Aborting") #Aborting
]
type environmentName = string
type environmentInfoType = [@as("bundle") #Bundle | @as("tail") #Tail]
type environmentId = string
type environmentHealthStatus = [
  | @as("Suspended") #Suspended
  | @as("Severe") #Severe
  | @as("Degraded") #Degraded
  | @as("Warning") #Warning
  | @as("Info") #Info
  | @as("Ok") #Ok
  | @as("Pending") #Pending
  | @as("Unknown") #Unknown
  | @as("NoData") #NoData
]
type environmentHealthAttribute = [
  | @as("RefreshedAt") #RefreshedAt
  | @as("HealthStatus") #HealthStatus
  | @as("All") #All
  | @as("InstancesHealth") #InstancesHealth
  | @as("ApplicationMetrics") #ApplicationMetrics
  | @as("Causes") #Causes
  | @as("Color") #Color
  | @as("Status") #Status
]
type environmentHealth = [
  | @as("Grey") #Grey
  | @as("Red") #Red
  | @as("Yellow") #Yellow
  | @as("Green") #Green
]
type environmentArn = string
type endpointURL = string
type ec2InstanceId = string
type description = string
type deploymentTimestamp = Js.Date.t
type deleteSourceBundle = bool
type dnscnamePrefix = string
type dnscname = string
type creationDate = Js.Date.t
type configurationTemplateName = string
type configurationOptionValueType = [@as("List") #List | @as("Scalar") #Scalar]
type configurationOptionValue = string
type configurationOptionSeverity = string
type configurationOptionPossibleValue = string
type configurationOptionName = string
type configurationOptionDefaultValue = string
type configurationDeploymentStatus = [
  | @as("failed") #Failed
  | @as("pending") #Pending
  | @as("deployed") #Deployed
]
type computeType = [
  | @as("BUILD_GENERAL1_LARGE") #BUILD_GENERAL1_LARGE
  | @as("BUILD_GENERAL1_MEDIUM") #BUILD_GENERAL1_MEDIUM
  | @as("BUILD_GENERAL1_SMALL") #BUILD_GENERAL1_SMALL
]
type cnameAvailability = bool
type cause = string
type branchOrder = int
type branchName = string
type boxedInt = int
type boxedBoolean = bool
type autoCreateApplication = bool
type applicationVersionStatus = [
  | @as("Building") #Building
  | @as("Processing") #Processing
  | @as("Failed") #Failed
  | @as("Unprocessed") #Unprocessed
  | @as("Processed") #Processed
]
type applicationVersionProccess = bool
type applicationVersionArn = string
type applicationName = string
type applicationArn = string
type actionType = [
  | @as("Unknown") #Unknown
  | @as("PlatformUpdate") #PlatformUpdate
  | @as("InstanceRefresh") #InstanceRefresh
]
type actionStatus = [
  | @as("Unknown") #Unknown
  | @as("Running") #Running
  | @as("Pending") #Pending
  | @as("Scheduled") #Scheduled
]
type actionHistoryStatus = [
  | @as("Unknown") #Unknown
  | @as("Failed") #Failed
  | @as("Completed") #Completed
]
type abortableOperationInProgress = bool
type arn = string
type versionLabelsList = array<versionLabel>
type versionLabels = array<versionLabel>
type validationMessage = {
  @as("OptionName") optionName: option<configurationOptionName>,
  @as("Namespace") namespace: option<optionNamespace>,
  @as("Severity") severity: option<validationSeverity>,
  @as("Message") message: option<validationMessageString>,
}
type trigger = {@as("Name") name: option<resourceId>}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type supportedTierList = array<supportedTier>
type supportedAddonList = array<supportedAddon>
type statusCodes = {
  @as("Status5xx") status5xx: option<nullableInteger>,
  @as("Status4xx") status4xx: option<nullableInteger>,
  @as("Status3xx") status3xx: option<nullableInteger>,
  @as("Status2xx") status2xx: option<nullableInteger>,
}
type sourceConfiguration = {
  @as("TemplateName") templateName: option<configurationTemplateName>,
  @as("ApplicationName") applicationName: option<applicationName>,
}
type sourceBuildInformation = {
  @as("SourceLocation") sourceLocation: sourceLocation,
  @as("SourceRepository") sourceRepository: sourceRepository,
  @as("SourceType") sourceType: sourceType,
}
type solutionStackFileTypeList = array<fileTypeExtension>
type searchFilterValues = array<searchFilterValue>
type s3Location = {
  @as("S3Key") s3Key: option<s3Key>,
  @as("S3Bucket") s3Bucket: option<s3Bucket>,
}
type resourceQuota = {@as("Maximum") maximum: option<boxedInt>}
type queue = {
  @as("URL") url: option<string_>,
  @as("Name") name: option<string_>,
}
type platformProgrammingLanguage = {
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
}
type platformFramework = {
  @as("Version") version: option<string_>,
  @as("Name") name: option<string_>,
}
type platformFilterValueList = array<platformFilterValue>
type optionSpecification = {
  @as("OptionName") optionName: option<configurationOptionName>,
  @as("Namespace") namespace: option<optionNamespace>,
  @as("ResourceName") resourceName: option<resourceName>,
}
type optionRestrictionRegex = {
  @as("Label") label: option<regexLabel>,
  @as("Pattern") pattern: option<regexPattern>,
}
type maxCountRule = {
  @as("DeleteSourceFromS3") deleteSourceFromS3: option<boxedBoolean>,
  @as("MaxCount") maxCount: option<boxedInt>,
  @as("Enabled") enabled: boxedBoolean,
}
type maxAgeRule = {
  @as("DeleteSourceFromS3") deleteSourceFromS3: option<boxedBoolean>,
  @as("MaxAgeInDays") maxAgeInDays: option<boxedInt>,
  @as("Enabled") enabled: boxedBoolean,
}
type managedActionHistoryItem = {
  @as("FinishedTime") finishedTime: option<timestamp_>,
  @as("ExecutedTime") executedTime: option<timestamp_>,
  @as("FailureDescription") failureDescription: option<string_>,
  @as("Status") status: option<actionHistoryStatus>,
  @as("FailureType") failureType: option<failureType>,
  @as("ActionDescription") actionDescription: option<string_>,
  @as("ActionType") actionType: option<actionType>,
  @as("ActionId") actionId: option<string_>,
}
type managedAction = {
  @as("WindowStartTime") windowStartTime: option<timestamp_>,
  @as("Status") status: option<actionStatus>,
  @as("ActionType") actionType: option<actionType>,
  @as("ActionDescription") actionDescription: option<string_>,
  @as("ActionId") actionId: option<string_>,
}
type loadBalancer = {@as("Name") name: option<resourceId>}
type loadAverage = array<loadAverageValue>
type listener = {
  @as("Port") port: option<integer_>,
  @as("Protocol") protocol: option<string_>,
}
type launchTemplate = {@as("Id") id: option<resourceId>}
type launchConfiguration = {@as("Name") name: option<resourceId>}
type latency = {
  @as("P10") p10: option<nullableDouble>,
  @as("P50") p50: option<nullableDouble>,
  @as("P75") p75: option<nullableDouble>,
  @as("P85") p85: option<nullableDouble>,
  @as("P90") p90: option<nullableDouble>,
  @as("P95") p95: option<nullableDouble>,
  @as("P99") p99: option<nullableDouble>,
  @as("P999") p999: option<nullableDouble>,
}
type instancesHealthAttributes = array<instancesHealthAttribute>
type instanceHealthSummary = {
  @as("Severe") severe: option<nullableInteger>,
  @as("Degraded") degraded: option<nullableInteger>,
  @as("Warning") warning: option<nullableInteger>,
  @as("Info") info: option<nullableInteger>,
  @as("Ok") ok: option<nullableInteger>,
  @as("Pending") pending: option<nullableInteger>,
  @as("Unknown") unknown: option<nullableInteger>,
  @as("NoData") noData: option<nullableInteger>,
}
type instance = {@as("Id") id: option<resourceId>}
type eventDescription = {
  @as("Severity") severity: option<eventSeverity>,
  @as("RequestId") requestId: option<requestId>,
  @as("PlatformArn") platformArn: option<platformArn>,
  @as("EnvironmentName") environmentName: option<environmentName>,
  @as("TemplateName") templateName: option<configurationTemplateName>,
  @as("VersionLabel") versionLabel: option<versionLabel>,
  @as("ApplicationName") applicationName: option<applicationName>,
  @as("Message") message: option<eventMessage>,
  @as("EventDate") eventDate: option<eventDate>,
}
type environmentTier = {
  @as("Version") version: option<string_>,
  @as("Type") type_: option<string_>,
  @as("Name") name: option<string_>,
}
type environmentNamesList = array<environmentName>
type environmentLink = {
  @as("EnvironmentName") environmentName: option<string_>,
  @as("LinkName") linkName: option<string_>,
}
type environmentInfoDescription = {
  @as("Message") message: option<message>,
  @as("SampleTimestamp") sampleTimestamp: option<sampleTimestamp>,
  @as("Ec2InstanceId") ec2InstanceId: option<ec2InstanceId>,
  @as("InfoType") infoType: option<environmentInfoType>,
}
type environmentIdList = array<environmentId>
type environmentHealthAttributes = array<environmentHealthAttribute>
type deployment = {
  @as("DeploymentTime") deploymentTime: option<deploymentTimestamp>,
  @as("Status") status: option<string_>,
  @as("DeploymentId") deploymentId: option<nullableLong>,
  @as("VersionLabel") versionLabel: option<string_>,
}
type customAmi = {
  @as("ImageId") imageId: option<imageId>,
  @as("VirtualizationType") virtualizationType: option<virtualizationType>,
}
type configurationTemplateNamesList = array<configurationTemplateName>
type configurationOptionSetting = {
  @as("Value") value: option<configurationOptionValue>,
  @as("OptionName") optionName: option<configurationOptionName>,
  @as("Namespace") namespace: option<optionNamespace>,
  @as("ResourceName") resourceName: option<resourceName>,
}
type configurationOptionPossibleValues = array<configurationOptionPossibleValue>
type causes = array<cause>
type cpuutilization = {
  @as("Privileged") privileged: option<nullableDouble>,
  @as("SoftIRQ") softIRQ: option<nullableDouble>,
  @as("IRQ") irq: option<nullableDouble>,
  @as("IOWait") iowait: option<nullableDouble>,
  @as("Idle") idle: option<nullableDouble>,
  @as("System") system: option<nullableDouble>,
  @as("Nice") nice: option<nullableDouble>,
  @as("User") user: option<nullableDouble>,
}
type builder = {@as("ARN") arn: option<arn>}
type buildConfiguration = {
  @as("TimeoutInMinutes") timeoutInMinutes: option<boxedInt>,
  @as("Image") image: nonEmptyString,
  @as("ComputeType") computeType: option<computeType>,
  @as("CodeBuildServiceRole") codeBuildServiceRole: nonEmptyString,
  @as("ArtifactName") artifactName: option<string_>,
}
type availableSolutionStackNamesList = array<solutionStackName>
type autoScalingGroup = {@as("Name") name: option<resourceId>}
type applicationNamesList = array<applicationName>
type validationMessagesList = array<validationMessage>
type triggerList = array<trigger>
type tags = array<tag>
type tagList_ = array<tag>
type systemStatus = {
  @as("LoadAverage") loadAverage: option<loadAverage>,
  @as("CPUUtilization") cpuutilization: option<cpuutilization>,
}
type solutionStackDescription = {
  @as("PermittedFileTypes") permittedFileTypes: option<solutionStackFileTypeList>,
  @as("SolutionStackName") solutionStackName: option<solutionStackName>,
}
type searchFilter = {
  @as("Values") values: option<searchFilterValues>,
  @as("Operator") operator: option<searchFilterOperator>,
  @as("Attribute") attribute: option<searchFilterAttribute>,
}
type resourceQuotas = {
  @as("CustomPlatformQuota") customPlatformQuota: option<resourceQuota>,
  @as("ConfigurationTemplateQuota") configurationTemplateQuota: option<resourceQuota>,
  @as("EnvironmentQuota") environmentQuota: option<resourceQuota>,
  @as("ApplicationVersionQuota") applicationVersionQuota: option<resourceQuota>,
  @as("ApplicationQuota") applicationQuota: option<resourceQuota>,
}
type queueList = array<queue>
type platformSummary = {
  @as("PlatformBranchLifecycleState")
  platformBranchLifecycleState: option<platformBranchLifecycleState>,
  @as("PlatformBranchName") platformBranchName: option<branchName>,
  @as("PlatformVersion") platformVersion: option<platformVersion>,
  @as("PlatformLifecycleState") platformLifecycleState: option<platformLifecycleState>,
  @as("SupportedAddonList") supportedAddonList: option<supportedAddonList>,
  @as("SupportedTierList") supportedTierList: option<supportedTierList>,
  @as("OperatingSystemVersion") operatingSystemVersion: option<operatingSystemVersion>,
  @as("OperatingSystemName") operatingSystemName: option<operatingSystemName>,
  @as("PlatformCategory") platformCategory: option<platformCategory>,
  @as("PlatformStatus") platformStatus: option<platformStatus>,
  @as("PlatformOwner") platformOwner: option<platformOwner>,
  @as("PlatformArn") platformArn: option<platformArn>,
}
type platformProgrammingLanguages = array<platformProgrammingLanguage>
type platformFrameworks = array<platformFramework>
type platformFilter = {
  @as("Values") values: option<platformFilterValueList>,
  @as("Operator") operator: option<platformFilterOperator>,
  @as("Type") type_: option<platformFilterType>,
}
type platformBranchSummary = {
  @as("SupportedTierList") supportedTierList: option<supportedTierList>,
  @as("BranchOrder") branchOrder: option<branchOrder>,
  @as("LifecycleState") lifecycleState: option<platformBranchLifecycleState>,
  @as("BranchName") branchName: option<branchName>,
  @as("PlatformName") platformName: option<platformName>,
}
type optionsSpecifierList = array<optionSpecification>
type managedActions = array<managedAction>
type managedActionHistoryItems = array<managedActionHistoryItem>
type loadBalancerListenersDescription = array<listener>
type loadBalancerList = array<loadBalancer>
type launchTemplateList = array<launchTemplate>
type launchConfigurationList = array<launchConfiguration>
type instanceList = array<instance>
type eventDescriptionList = array<eventDescription>
type environmentLinks = array<environmentLink>
type environmentInfoDescriptionList = array<environmentInfoDescription>
type customAmiList = array<customAmi>
type configurationOptionSettingsList = array<configurationOptionSetting>
type configurationOptionDescription = {
  @as("Regex") regex: option<optionRestrictionRegex>,
  @as("MaxLength") maxLength: option<optionRestrictionMaxLength>,
  @as("MaxValue") maxValue: option<optionRestrictionMaxValue>,
  @as("MinValue") minValue: option<optionRestrictionMinValue>,
  @as("ValueOptions") valueOptions: option<configurationOptionPossibleValues>,
  @as("ValueType") valueType: option<configurationOptionValueType>,
  @as("UserDefined") userDefined: option<userDefinedOption>,
  @as("ChangeSeverity") changeSeverity: option<configurationOptionSeverity>,
  @as("DefaultValue") defaultValue: option<configurationOptionDefaultValue>,
  @as("Name") name: option<configurationOptionName>,
  @as("Namespace") namespace: option<optionNamespace>,
}
type autoScalingGroupList = array<autoScalingGroup>
type applicationVersionLifecycleConfig = {
  @as("MaxAgeRule") maxAgeRule: option<maxAgeRule>,
  @as("MaxCountRule") maxCountRule: option<maxCountRule>,
}
type applicationVersionDescription = {
  @as("Status") status: option<applicationVersionStatus>,
  @as("DateUpdated") dateUpdated: option<updateDate>,
  @as("DateCreated") dateCreated: option<creationDate>,
  @as("SourceBundle") sourceBundle: option<s3Location>,
  @as("BuildArn") buildArn: option<string_>,
  @as("SourceBuildInformation") sourceBuildInformation: option<sourceBuildInformation>,
  @as("VersionLabel") versionLabel: option<versionLabel>,
  @as("Description") description: option<description>,
  @as("ApplicationName") applicationName: option<applicationName>,
  @as("ApplicationVersionArn") applicationVersionArn: option<applicationVersionArn>,
}
type applicationMetrics = {
  @as("Latency") latency: option<latency>,
  @as("StatusCodes") statusCodes: option<statusCodes>,
  @as("RequestCount") requestCount: option<requestCount>,
  @as("Duration") duration: option<nullableInteger>,
}
type singleInstanceHealth = {
  @as("InstanceType") instanceType: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Deployment") deployment: option<deployment>,
  @as("System") system: option<systemStatus>,
  @as("ApplicationMetrics") applicationMetrics: option<applicationMetrics>,
  @as("LaunchedAt") launchedAt: option<launchedAt>,
  @as("Causes") causes: option<causes>,
  @as("Color") color: option<string_>,
  @as("HealthStatus") healthStatus: option<string_>,
  @as("InstanceId") instanceId: option<instanceId>,
}
type searchFilters = array<searchFilter>
type platformSummaryList = array<platformSummary>
type platformFilters = array<platformFilter>
type platformDescription = {
  @as("PlatformBranchLifecycleState")
  platformBranchLifecycleState: option<platformBranchLifecycleState>,
  @as("PlatformBranchName") platformBranchName: option<branchName>,
  @as("PlatformLifecycleState") platformLifecycleState: option<platformLifecycleState>,
  @as("SupportedAddonList") supportedAddonList: option<supportedAddonList>,
  @as("SupportedTierList") supportedTierList: option<supportedTierList>,
  @as("CustomAmiList") customAmiList: option<customAmiList>,
  @as("Frameworks") frameworks: option<platformFrameworks>,
  @as("ProgrammingLanguages") programmingLanguages: option<platformProgrammingLanguages>,
  @as("OperatingSystemVersion") operatingSystemVersion: option<operatingSystemVersion>,
  @as("OperatingSystemName") operatingSystemName: option<operatingSystemName>,
  @as("Maintainer") maintainer: option<maintainer>,
  @as("Description") description: option<description>,
  @as("PlatformCategory") platformCategory: option<platformCategory>,
  @as("DateUpdated") dateUpdated: option<updateDate>,
  @as("DateCreated") dateCreated: option<creationDate>,
  @as("PlatformStatus") platformStatus: option<platformStatus>,
  @as("SolutionStackName") solutionStackName: option<solutionStackName>,
  @as("PlatformVersion") platformVersion: option<platformVersion>,
  @as("PlatformName") platformName: option<platformName>,
  @as("PlatformOwner") platformOwner: option<platformOwner>,
  @as("PlatformArn") platformArn: option<platformArn>,
}
type platformBranchSummaryList = array<platformBranchSummary>
type loadBalancerDescription = {
  @as("Listeners") listeners: option<loadBalancerListenersDescription>,
  @as("Domain") domain: option<string_>,
  @as("LoadBalancerName") loadBalancerName: option<string_>,
}
type environmentResourceDescription = {
  @as("Queues") queues: option<queueList>,
  @as("Triggers") triggers: option<triggerList>,
  @as("LoadBalancers") loadBalancers: option<loadBalancerList>,
  @as("LaunchTemplates") launchTemplates: option<launchTemplateList>,
  @as("LaunchConfigurations") launchConfigurations: option<launchConfigurationList>,
  @as("Instances") instances: option<instanceList>,
  @as("AutoScalingGroups") autoScalingGroups: option<autoScalingGroupList>,
  @as("EnvironmentName") environmentName: option<environmentName>,
}
type configurationSettingsDescription = {
  @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
  @as("DateUpdated") dateUpdated: option<updateDate>,
  @as("DateCreated") dateCreated: option<creationDate>,
  @as("DeploymentStatus") deploymentStatus: option<configurationDeploymentStatus>,
  @as("EnvironmentName") environmentName: option<environmentName>,
  @as("Description") description: option<description>,
  @as("TemplateName") templateName: option<configurationTemplateName>,
  @as("ApplicationName") applicationName: option<applicationName>,
  @as("PlatformArn") platformArn: option<platformArn>,
  @as("SolutionStackName") solutionStackName: option<solutionStackName>,
}
type configurationOptionDescriptionsList = array<configurationOptionDescription>
type availableSolutionStackDetailsList = array<solutionStackDescription>
type applicationVersionDescriptionList = array<applicationVersionDescription>
type applicationResourceLifecycleConfig = {
  @as("VersionLifecycleConfig") versionLifecycleConfig: option<applicationVersionLifecycleConfig>,
  @as("ServiceRole") serviceRole: option<string_>,
}
type instanceHealthList = array<singleInstanceHealth>
type environmentResourcesDescription = {
  @as("LoadBalancer") loadBalancer: option<loadBalancerDescription>,
}
type configurationSettingsDescriptionList = array<configurationSettingsDescription>
type applicationDescription = {
  @as("ResourceLifecycleConfig")
  resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
  @as("ConfigurationTemplates") configurationTemplates: option<configurationTemplateNamesList>,
  @as("Versions") versions: option<versionLabelsList>,
  @as("DateUpdated") dateUpdated: option<updateDate>,
  @as("DateCreated") dateCreated: option<creationDate>,
  @as("Description") description: option<description>,
  @as("ApplicationName") applicationName: option<applicationName>,
  @as("ApplicationArn") applicationArn: option<applicationArn>,
}
type environmentDescription = {
  @as("OperationsRole") operationsRole: option<operationsRole>,
  @as("EnvironmentArn") environmentArn: option<environmentArn>,
  @as("EnvironmentLinks") environmentLinks: option<environmentLinks>,
  @as("Tier") tier: option<environmentTier>,
  @as("Resources") resources: option<environmentResourcesDescription>,
  @as("HealthStatus") healthStatus: option<environmentHealthStatus>,
  @as("Health") health: option<environmentHealth>,
  @as("AbortableOperationInProgress")
  abortableOperationInProgress: option<abortableOperationInProgress>,
  @as("Status") status: option<environmentStatus>,
  @as("DateUpdated") dateUpdated: option<updateDate>,
  @as("DateCreated") dateCreated: option<creationDate>,
  @as("CNAME") cname: option<dnscname>,
  @as("EndpointURL") endpointURL: option<endpointURL>,
  @as("Description") description: option<description>,
  @as("TemplateName") templateName: option<configurationTemplateName>,
  @as("PlatformArn") platformArn: option<platformArn>,
  @as("SolutionStackName") solutionStackName: option<solutionStackName>,
  @as("VersionLabel") versionLabel: option<versionLabel>,
  @as("ApplicationName") applicationName: option<applicationName>,
  @as("EnvironmentId") environmentId: option<environmentId>,
  @as("EnvironmentName") environmentName: option<environmentName>,
}
type applicationDescriptionList = array<applicationDescription>
type environmentDescriptionsList = array<environmentDescription>

module SwapEnvironmentCNAMEs = {
  type t
  type request = {
    @as("DestinationEnvironmentName") destinationEnvironmentName: option<environmentName>,
    @as("DestinationEnvironmentId") destinationEnvironmentId: option<environmentId>,
    @as("SourceEnvironmentName") sourceEnvironmentName: option<environmentName>,
    @as("SourceEnvironmentId") sourceEnvironmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "SwapEnvironmentCNAMEsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestartAppServer = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "RestartAppServerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RequestEnvironmentInfo = {
  type t
  type request = {
    @as("InfoType") infoType: environmentInfoType,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "RequestEnvironmentInfoCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RebuildEnvironment = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "RebuildEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateEnvironmentOperationsRole = {
  type t
  type request = {@as("EnvironmentName") environmentName: environmentName}

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DisassociateEnvironmentOperationsRoleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEnvironmentConfiguration = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: environmentName,
    @as("ApplicationName") applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DeleteEnvironmentConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationTemplate = {
  type t
  type request = {
    @as("TemplateName") templateName: configurationTemplateName,
    @as("ApplicationName") applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DeleteConfigurationTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationVersion = {
  type t
  type request = {
    @as("DeleteSourceBundle") deleteSourceBundle: option<deleteSourceBundle>,
    @as("VersionLabel") versionLabel: versionLabel,
    @as("ApplicationName") applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DeleteApplicationVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  type request = {
    @as("TerminateEnvByForce") terminateEnvByForce: option<terminateEnvForce>,
    @as("ApplicationName") applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DeleteApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateStorageLocation = {
  type t

  type response = {@as("S3Bucket") s3Bucket: option<s3Bucket>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: unit => t = "CreateStorageLocationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckDNSAvailability = {
  type t
  type request = {@as("CNAMEPrefix") cnameprefix: dnscnamePrefix}
  type response = {
    @as("FullyQualifiedCNAME") fullyQualifiedCNAME: option<dnscname>,
    @as("Available") available: option<cnameAvailability>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CheckDNSAvailabilityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateEnvironmentOperationsRole = {
  type t
  type request = {
    @as("OperationsRole") operationsRole: operationsRole,
    @as("EnvironmentName") environmentName: environmentName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "AssociateEnvironmentOperationsRoleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ApplyEnvironmentManagedAction = {
  type t
  type request = {
    @as("ActionId") actionId: string_,
    @as("EnvironmentId") environmentId: option<string_>,
    @as("EnvironmentName") environmentName: option<string_>,
  }
  type response = {
    @as("Status") status: option<string_>,
    @as("ActionType") actionType: option<actionType>,
    @as("ActionDescription") actionDescription: option<string_>,
    @as("ActionId") actionId: option<string_>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ApplyEnvironmentManagedActionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AbortEnvironmentUpdate = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "AbortEnvironmentUpdateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ValidateConfigurationSettings = {
  type t
  type request = {
    @as("OptionSettings") optionSettings: configurationOptionSettingsList,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {@as("Messages") messages: option<validationMessagesList>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ValidateConfigurationSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTagsForResource = {
  type t
  type request = {
    @as("TagsToRemove") tagsToRemove: option<tagKeyList>,
    @as("TagsToAdd") tagsToAdd: option<tagList_>,
    @as("ResourceArn") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateConfigurationTemplate = {
  type t
  type request = {
    @as("OptionsToRemove") optionsToRemove: option<optionsSpecifierList>,
    @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
    @as("Description") description: option<description>,
    @as("TemplateName") templateName: configurationTemplateName,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = configurationSettingsDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateConfigurationTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplicationVersion = {
  type t
  type request = {
    @as("Description") description: option<description>,
    @as("VersionLabel") versionLabel: versionLabel,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {
    @as("ApplicationVersion") applicationVersion: option<applicationVersionDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateApplicationVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetrieveEnvironmentInfo = {
  type t
  type request = {
    @as("InfoType") infoType: environmentInfoType,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }
  type response = {@as("EnvironmentInfo") environmentInfo: option<environmentInfoDescriptionList>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "RetrieveEnvironmentInfoCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceArn}
  type response = {
    @as("ResourceTags") resourceTags: option<tagList_>,
    @as("ResourceArn") resourceArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("EndTime") endTime: option<timeFilterEnd>,
    @as("StartTime") startTime: option<timeFilterStart>,
    @as("Severity") severity: option<eventSeverity>,
    @as("RequestId") requestId: option<requestId>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("VersionLabel") versionLabel: option<versionLabel>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Events") events: option<eventDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentManagedActions = {
  type t
  type request = {
    @as("Status") status: option<actionStatus>,
    @as("EnvironmentId") environmentId: option<string_>,
    @as("EnvironmentName") environmentName: option<string_>,
  }
  type response = {@as("ManagedActions") managedActions: option<managedActions>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEnvironmentManagedActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentManagedActionHistory = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<managedActionHistoryMaxItems>,
    @as("NextToken") nextToken: option<string_>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ManagedActionHistoryItems") managedActionHistoryItems: option<managedActionHistoryItems>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEnvironmentManagedActionHistoryCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentHealth = {
  type t
  type request = {
    @as("AttributeNames") attributeNames: option<environmentHealthAttributes>,
    @as("EnvironmentId") environmentId: option<environmentId>,
    @as("EnvironmentName") environmentName: option<environmentName>,
  }
  type response = {
    @as("RefreshedAt") refreshedAt: option<refreshedAt>,
    @as("InstancesHealth") instancesHealth: option<instanceHealthSummary>,
    @as("ApplicationMetrics") applicationMetrics: option<applicationMetrics>,
    @as("Causes") causes: option<causes>,
    @as("Color") color: option<string_>,
    @as("Status") status: option<environmentHealth>,
    @as("HealthStatus") healthStatus: option<string_>,
    @as("EnvironmentName") environmentName: option<environmentName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEnvironmentHealthCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t

  type response = {@as("ResourceQuotas") resourceQuotas: option<resourceQuotas>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: unit => t = "DescribeAccountAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePlatformVersion = {
  type t
  type request = {@as("PlatformArn") platformArn: option<platformArn>}
  type response = {@as("PlatformSummary") platformSummary: option<platformSummary>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DeletePlatformVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlatformVersion = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("PlatformDefinitionBundle") platformDefinitionBundle: s3Location,
    @as("PlatformVersion") platformVersion: platformVersion,
    @as("PlatformName") platformName: platformName,
  }
  type response = {
    @as("Builder") builder: option<builder>,
    @as("PlatformSummary") platformSummary: option<platformSummary>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CreatePlatformVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationTemplate = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
    @as("Description") description: option<description>,
    @as("EnvironmentId") environmentId: option<environmentId>,
    @as("SourceConfiguration") sourceConfiguration: option<sourceConfiguration>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("SolutionStackName") solutionStackName: option<solutionStackName>,
    @as("TemplateName") templateName: configurationTemplateName,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = configurationSettingsDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CreateConfigurationTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplicationVersion = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("Process") process: option<applicationVersionProccess>,
    @as("AutoCreateApplication") autoCreateApplication: option<autoCreateApplication>,
    @as("BuildConfiguration") buildConfiguration: option<buildConfiguration>,
    @as("SourceBundle") sourceBundle: option<s3Location>,
    @as("SourceBuildInformation") sourceBuildInformation: option<sourceBuildInformation>,
    @as("Description") description: option<description>,
    @as("VersionLabel") versionLabel: versionLabel,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {
    @as("ApplicationVersion") applicationVersion: option<applicationVersionDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CreateApplicationVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplicationResourceLifecycle = {
  type t
  type request = {
    @as("ResourceLifecycleConfig") resourceLifecycleConfig: applicationResourceLifecycleConfig,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {
    @as("ResourceLifecycleConfig")
    resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateApplicationResourceLifecycleCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlatformVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxRecords") maxRecords: option<platformMaxRecords>,
    @as("Filters") filters: option<platformFilters>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("PlatformSummaryList") platformSummaryList: option<platformSummaryList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ListPlatformVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlatformBranches = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxRecords") maxRecords: option<platformBranchMaxRecords>,
    @as("Filters") filters: option<searchFilters>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("PlatformBranchSummaryList") platformBranchSummaryList: option<platformBranchSummaryList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ListPlatformBranchesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAvailableSolutionStacks = {
  type t

  type response = {
    @as("SolutionStackDetails") solutionStackDetails: option<availableSolutionStackDetailsList>,
    @as("SolutionStacks") solutionStacks: option<availableSolutionStackNamesList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: unit => t = "ListAvailableSolutionStacksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlatformVersion = {
  type t
  type request = {@as("PlatformArn") platformArn: option<platformArn>}
  type response = {@as("PlatformDescription") platformDescription: option<platformDescription>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribePlatformVersionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentResources = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }
  type response = {
    @as("EnvironmentResources") environmentResources: option<environmentResourceDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEnvironmentResourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationOptions = {
  type t
  type request = {
    @as("Options") options: option<optionsSpecifierList>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("SolutionStackName") solutionStackName: option<solutionStackName>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = {
    @as("Options") options: option<configurationOptionDescriptionsList>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("SolutionStackName") solutionStackName: option<solutionStackName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeConfigurationOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicationVersions = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("VersionLabels") versionLabels: option<versionLabelsList>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("ApplicationVersions") applicationVersions: option<applicationVersionDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeApplicationVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEnvironment = {
  type t
  type request = {
    @as("OptionsToRemove") optionsToRemove: option<optionsSpecifierList>,
    @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("SolutionStackName") solutionStackName: option<solutionStackName>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("VersionLabel") versionLabel: option<versionLabel>,
    @as("Tier") tier: option<environmentTier>,
    @as("Description") description: option<description>,
    @as("GroupName") groupName: option<groupName>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  type request = {
    @as("Description") description: option<description>,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {@as("Application") application: option<applicationDescription>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "UpdateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateEnvironment = {
  type t
  type request = {
    @as("ForceTerminate") forceTerminate: option<forceTerminate>,
    @as("TerminateResources") terminateResources: option<terminateEnvironmentResources>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("EnvironmentId") environmentId: option<environmentId>,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "TerminateEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancesHealth = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AttributeNames") attributeNames: option<instancesHealthAttributes>,
    @as("EnvironmentId") environmentId: option<environmentId>,
    @as("EnvironmentName") environmentName: option<environmentName>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("RefreshedAt") refreshedAt: option<refreshedAt>,
    @as("InstanceHealthList") instanceHealthList: option<instanceHealthList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeInstancesHealthCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationSettings = {
  type t
  type request = {
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {
    @as("ConfigurationSettings")
    configurationSettings: option<configurationSettingsDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeConfigurationSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEnvironment = {
  type t
  type request = {
    @as("OperationsRole") operationsRole: option<operationsRole>,
    @as("OptionsToRemove") optionsToRemove: option<optionsSpecifierList>,
    @as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
    @as("PlatformArn") platformArn: option<platformArn>,
    @as("SolutionStackName") solutionStackName: option<solutionStackName>,
    @as("TemplateName") templateName: option<configurationTemplateName>,
    @as("VersionLabel") versionLabel: option<versionLabel>,
    @as("Tags") tags: option<tags>,
    @as("Tier") tier: option<environmentTier>,
    @as("CNAMEPrefix") cnameprefix: option<dnscnamePrefix>,
    @as("Description") description: option<description>,
    @as("GroupName") groupName: option<groupName>,
    @as("EnvironmentName") environmentName: option<environmentName>,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CreateEnvironmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("ResourceLifecycleConfig")
    resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
    @as("Description") description: option<description>,
    @as("ApplicationName") applicationName: applicationName,
  }
  type response = {@as("Application") application: option<applicationDescription>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "CreateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplications = {
  type t
  type request = {@as("ApplicationNames") applicationNames: option<applicationNamesList>}
  type response = {@as("Applications") applications: option<applicationDescriptionList>}
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeApplicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironments = {
  type t
  type request = {
    @as("NextToken") nextToken: option<token>,
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("IncludedDeletedBackTo") includedDeletedBackTo: option<includeDeletedBackTo>,
    @as("IncludeDeleted") includeDeleted: option<includeDeleted>,
    @as("EnvironmentNames") environmentNames: option<environmentNamesList>,
    @as("EnvironmentIds") environmentIds: option<environmentIdList>,
    @as("VersionLabel") versionLabel: option<versionLabel>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Environments") environments: option<environmentDescriptionsList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "DescribeEnvironmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ComposeEnvironments = {
  type t
  type request = {
    @as("VersionLabels") versionLabels: option<versionLabels>,
    @as("GroupName") groupName: option<groupName>,
    @as("ApplicationName") applicationName: option<applicationName>,
  }
  type response = {
    @as("NextToken") nextToken: option<token>,
    @as("Environments") environments: option<environmentDescriptionsList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new_: request => t = "ComposeEnvironmentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
