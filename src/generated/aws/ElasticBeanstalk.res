type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type virtualizationType = string
type versionLabel = string
type validationSeverity = [@as("warning") #warning | @as("error") #error]
type validationMessageString = string
type userDefinedOption = bool;
type updateDate = Js.Date.t;
type token = string
type amazonawsTimestamp = Js.Date.t;
type timeFilterStart = Js.Date.t;
type timeFilterEnd = Js.Date.t;
type terminateEnvironmentResources = bool;
type terminateEnvForce = bool;
type tagValue = string
type tagKey = string
type supportedTier = string
type supportedAddon = string
type amazonawsString = string
type sourceType = [@as("Zip") #Zip | @as("Git") #Git]
type sourceRepository = [@as("S3") #S3 | @as("CodeCommit") #CodeCommit]
type sourceLocation = string
type solutionStackName = string
type searchFilterValue = string
type searchFilterOperator = string
type searchFilterAttribute = string
type sampleTimestamp = Js.Date.t;
type s3Key = string
type s3Bucket = string
type resourceName = string
type resourceId = string
type resourceArn = string
type requestId = string
type requestCount = int;
type regexPattern = string
type regexLabel = string
type refreshedAt = Js.Date.t;
type platformVersion = string
type platformStatus = [@as("Deleted") #Deleted | @as("Deleting") #Deleting | @as("Ready") #Ready | @as("Failed") #Failed | @as("Creating") #Creating]
type platformOwner = string
type platformName = string
type platformMaxRecords = int;
type platformLifecycleState = string
type platformFilterValue = string
type platformFilterType = string
type platformFilterOperator = string
type platformCategory = string
type platformBranchMaxRecords = int;
type platformBranchLifecycleState = string
type platformArn = string
type optionRestrictionMinValue = int;
type optionRestrictionMaxValue = int;
type optionRestrictionMaxLength = int;
type optionNamespace = string
type operationsRole = string
type operatingSystemVersion = string
type operatingSystemName = string
type nullableLong = float;
type nullableInteger = int;
type nullableDouble = float;
type nonEmptyString = string
type nextToken = string
type message = string
type maxRecords = int;
type managedActionHistoryMaxItems = int;
type maintainer = string
type loadAverageValue = float;
type launchedAt = Js.Date.t;
type amazonawsInteger = int;
type instancesHealthAttribute = [@as("All") #All | @as("InstanceType") #InstanceType | @as("AvailabilityZone") #AvailabilityZone | @as("Deployment") #Deployment | @as("System") #System | @as("LaunchedAt") #LaunchedAt | @as("RefreshedAt") #RefreshedAt | @as("ApplicationMetrics") #ApplicationMetrics | @as("Causes") #Causes | @as("Color") #Color | @as("HealthStatus") #HealthStatus]
type instanceId = string
type includeDeletedBackTo = Js.Date.t;
type includeDeleted = bool;
type imageId = string
type groupName = string
type forceTerminate = bool;
type fileTypeExtension = string
type failureType = [@as("PermissionsError") #PermissionsError | @as("InvalidEnvironmentState") #InvalidEnvironmentState | @as("InternalFailure") #InternalFailure | @as("RollbackSuccessful") #RollbackSuccessful | @as("RollbackFailed") #RollbackFailed | @as("CancellationFailed") #CancellationFailed | @as("UpdateCancelled") #UpdateCancelled]
type exceptionMessage = string
type eventSeverity = [@as("FATAL") #FATAL | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO | @as("DEBUG") #DEBUG | @as("TRACE") #TRACE]
type eventMessage = string
type eventDate = Js.Date.t;
type environmentStatus = [@as("Terminated") #Terminated | @as("Terminating") #Terminating | @as("Ready") #Ready | @as("LinkingTo") #LinkingTo | @as("LinkingFrom") #LinkingFrom | @as("Updating") #Updating | @as("Launching") #Launching | @as("Aborting") #Aborting]
type environmentName = string
type environmentInfoType = [@as("bundle") #bundle | @as("tail") #tail]
type environmentId = string
type environmentHealthStatus = [@as("Suspended") #Suspended | @as("Severe") #Severe | @as("Degraded") #Degraded | @as("Warning") #Warning | @as("Info") #Info | @as("Ok") #Ok | @as("Pending") #Pending | @as("Unknown") #Unknown | @as("NoData") #NoData]
type environmentHealthAttribute = [@as("RefreshedAt") #RefreshedAt | @as("HealthStatus") #HealthStatus | @as("All") #All | @as("InstancesHealth") #InstancesHealth | @as("ApplicationMetrics") #ApplicationMetrics | @as("Causes") #Causes | @as("Color") #Color | @as("Status") #Status]
type environmentHealth = [@as("Grey") #Grey | @as("Red") #Red | @as("Yellow") #Yellow | @as("Green") #Green]
type environmentArn = string
type endpointURL = string
type ec2InstanceId = string
type description = string
type deploymentTimestamp = Js.Date.t;
type deleteSourceBundle = bool;
type dNSCnamePrefix = string
type dNSCname = string
type creationDate = Js.Date.t;
type configurationTemplateName = string
type configurationOptionValueType = [@as("List") #List | @as("Scalar") #Scalar]
type configurationOptionValue = string
type configurationOptionSeverity = string
type configurationOptionPossibleValue = string
type configurationOptionName = string
type configurationOptionDefaultValue = string
type configurationDeploymentStatus = [@as("failed") #failed | @as("pending") #pending | @as("deployed") #deployed]
type computeType = [@as("BUILD_GENERAL1_LARGE") #BUILD_GENERAL1_LARGE | @as("BUILD_GENERAL1_MEDIUM") #BUILD_GENERAL1_MEDIUM | @as("BUILD_GENERAL1_SMALL") #BUILD_GENERAL1_SMALL]
type cnameAvailability = bool;
type cause = string
type branchOrder = int;
type branchName = string
type boxedInt = int;
type boxedBoolean = bool;
type autoCreateApplication = bool;
type applicationVersionStatus = [@as("Building") #Building | @as("Processing") #Processing | @as("Failed") #Failed | @as("Unprocessed") #Unprocessed | @as("Processed") #Processed]
type applicationVersionProccess = bool;
type applicationVersionArn = string
type applicationName = string
type applicationArn = string
type actionType = [@as("Unknown") #Unknown | @as("PlatformUpdate") #PlatformUpdate | @as("InstanceRefresh") #InstanceRefresh]
type actionStatus = [@as("Unknown") #Unknown | @as("Running") #Running | @as("Pending") #Pending | @as("Scheduled") #Scheduled]
type actionHistoryStatus = [@as("Unknown") #Unknown | @as("Failed") #Failed | @as("Completed") #Completed]
type abortableOperationInProgress = bool;
type aRN = string
type versionLabelsList = array<versionLabel>
type versionLabels = array<versionLabel>
type validationMessage = {
@as("OptionName") optionName: configurationOptionName,
@as("Namespace") namespace: optionNamespace,
@as("Severity") severity: validationSeverity,
@as("Message") message: validationMessageString
}
type trigger = {
@as("Name") name: resourceId
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type supportedTierList = array<supportedTier>
type supportedAddonList = array<supportedAddon>
type statusCodes = {
@as("Status5xx") status5xx: nullableInteger,
@as("Status4xx") status4xx: nullableInteger,
@as("Status3xx") status3xx: nullableInteger,
@as("Status2xx") status2xx: nullableInteger
}
type sourceConfiguration = {
@as("TemplateName") templateName: configurationTemplateName,
@as("ApplicationName") applicationName: applicationName
}
type sourceBuildInformation = {
@as("SourceLocation") sourceLocation: option<sourceLocation>,
@as("SourceRepository") sourceRepository: option<sourceRepository>,
@as("SourceType") sourceType: option<sourceType>
}
type solutionStackFileTypeList = array<fileTypeExtension>
type searchFilterValues = array<searchFilterValue>
type s3Location = {
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: s3Bucket
}
type resourceQuota = {
@as("Maximum") maximum: boxedInt
}
type queue = {
@as("URL") uRL: amazonawsString,
@as("Name") name: amazonawsString
}
type platformProgrammingLanguage = {
@as("Version") version: amazonawsString,
@as("Name") name: amazonawsString
}
type platformFramework = {
@as("Version") version: amazonawsString,
@as("Name") name: amazonawsString
}
type platformFilterValueList = array<platformFilterValue>
type optionSpecification = {
@as("OptionName") optionName: configurationOptionName,
@as("Namespace") namespace: optionNamespace,
@as("ResourceName") resourceName: resourceName
}
type optionRestrictionRegex = {
@as("Label") label: regexLabel,
@as("Pattern") pattern: regexPattern
}
type maxCountRule = {
@as("DeleteSourceFromS3") deleteSourceFromS3: boxedBoolean,
@as("MaxCount") maxCount: boxedInt,
@as("Enabled") enabled: option<boxedBoolean>
}
type maxAgeRule = {
@as("DeleteSourceFromS3") deleteSourceFromS3: boxedBoolean,
@as("MaxAgeInDays") maxAgeInDays: boxedInt,
@as("Enabled") enabled: option<boxedBoolean>
}
type managedActionHistoryItem = {
@as("FinishedTime") finishedTime: amazonawsTimestamp,
@as("ExecutedTime") executedTime: amazonawsTimestamp,
@as("FailureDescription") failureDescription: amazonawsString,
@as("Status") status: actionHistoryStatus,
@as("FailureType") failureType: failureType,
@as("ActionDescription") actionDescription: amazonawsString,
@as("ActionType") actionType: actionType,
@as("ActionId") actionId: amazonawsString
}
type managedAction = {
@as("WindowStartTime") windowStartTime: amazonawsTimestamp,
@as("Status") status: actionStatus,
@as("ActionType") actionType: actionType,
@as("ActionDescription") actionDescription: amazonawsString,
@as("ActionId") actionId: amazonawsString
}
type loadBalancer = {
@as("Name") name: resourceId
}
type loadAverage = array<loadAverageValue>
type listener = {
@as("Port") port: amazonawsInteger,
@as("Protocol") protocol: amazonawsString
}
type launchTemplate = {
@as("Id") id: resourceId
}
type launchConfiguration = {
@as("Name") name: resourceId
}
type latency = {
@as("P10") p10: nullableDouble,
@as("P50") p50: nullableDouble,
@as("P75") p75: nullableDouble,
@as("P85") p85: nullableDouble,
@as("P90") p90: nullableDouble,
@as("P95") p95: nullableDouble,
@as("P99") p99: nullableDouble,
@as("P999") p999: nullableDouble
}
type instancesHealthAttributes = array<instancesHealthAttribute>
type instanceHealthSummary = {
@as("Severe") severe: nullableInteger,
@as("Degraded") degraded: nullableInteger,
@as("Warning") warning: nullableInteger,
@as("Info") info: nullableInteger,
@as("Ok") ok: nullableInteger,
@as("Pending") pending: nullableInteger,
@as("Unknown") unknown: nullableInteger,
@as("NoData") noData: nullableInteger
}
type instance = {
@as("Id") id: resourceId
}
type eventDescription = {
@as("Severity") severity: eventSeverity,
@as("RequestId") requestId: requestId,
@as("PlatformArn") platformArn: platformArn,
@as("EnvironmentName") environmentName: environmentName,
@as("TemplateName") templateName: configurationTemplateName,
@as("VersionLabel") versionLabel: versionLabel,
@as("ApplicationName") applicationName: applicationName,
@as("Message") message: eventMessage,
@as("EventDate") eventDate: eventDate
}
type environmentTier = {
@as("Version") version: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Name") name: amazonawsString
}
type environmentNamesList = array<environmentName>
type environmentLink = {
@as("EnvironmentName") environmentName: amazonawsString,
@as("LinkName") linkName: amazonawsString
}
type environmentInfoDescription = {
@as("Message") message: message,
@as("SampleTimestamp") sampleTimestamp: sampleTimestamp,
@as("Ec2InstanceId") ec2InstanceId: ec2InstanceId,
@as("InfoType") infoType: environmentInfoType
}
type environmentIdList = array<environmentId>
type environmentHealthAttributes = array<environmentHealthAttribute>
type deployment = {
@as("DeploymentTime") deploymentTime: deploymentTimestamp,
@as("Status") status: amazonawsString,
@as("DeploymentId") deploymentId: nullableLong,
@as("VersionLabel") versionLabel: amazonawsString
}
type customAmi = {
@as("ImageId") imageId: imageId,
@as("VirtualizationType") virtualizationType: virtualizationType
}
type configurationTemplateNamesList = array<configurationTemplateName>
type configurationOptionSetting = {
@as("Value") value: configurationOptionValue,
@as("OptionName") optionName: configurationOptionName,
@as("Namespace") namespace: optionNamespace,
@as("ResourceName") resourceName: resourceName
}
type configurationOptionPossibleValues = array<configurationOptionPossibleValue>
type causes = array<cause>
type cPUUtilization = {
@as("Privileged") privileged: nullableDouble,
@as("SoftIRQ") softIRQ: nullableDouble,
@as("IRQ") iRQ: nullableDouble,
@as("IOWait") iOWait: nullableDouble,
@as("Idle") idle: nullableDouble,
@as("System") system: nullableDouble,
@as("Nice") nice: nullableDouble,
@as("User") user: nullableDouble
}
type builder = {
@as("ARN") aRN: aRN
}
type buildConfiguration = {
@as("TimeoutInMinutes") timeoutInMinutes: boxedInt,
@as("Image") image: option<nonEmptyString>,
@as("ComputeType") computeType: computeType,
@as("CodeBuildServiceRole") codeBuildServiceRole: option<nonEmptyString>,
@as("ArtifactName") artifactName: amazonawsString
}
type availableSolutionStackNamesList = array<solutionStackName>
type autoScalingGroup = {
@as("Name") name: resourceId
}
type applicationNamesList = array<applicationName>
type validationMessagesList = array<validationMessage>
type triggerList = array<trigger>
type tags = array<tag>
type tagList = array<tag>
type systemStatus = {
@as("LoadAverage") loadAverage: loadAverage,
@as("CPUUtilization") cPUUtilization: cPUUtilization
}
type solutionStackDescription = {
@as("PermittedFileTypes") permittedFileTypes: solutionStackFileTypeList,
@as("SolutionStackName") solutionStackName: solutionStackName
}
type searchFilter = {
@as("Values") values: searchFilterValues,
@as("Operator") operator: searchFilterOperator,
@as("Attribute") attribute: searchFilterAttribute
}
type resourceQuotas = {
@as("CustomPlatformQuota") customPlatformQuota: resourceQuota,
@as("ConfigurationTemplateQuota") configurationTemplateQuota: resourceQuota,
@as("EnvironmentQuota") environmentQuota: resourceQuota,
@as("ApplicationVersionQuota") applicationVersionQuota: resourceQuota,
@as("ApplicationQuota") applicationQuota: resourceQuota
}
type queueList = array<queue>
type platformSummary = {
@as("PlatformBranchLifecycleState") platformBranchLifecycleState: platformBranchLifecycleState,
@as("PlatformBranchName") platformBranchName: branchName,
@as("PlatformVersion") platformVersion: platformVersion,
@as("PlatformLifecycleState") platformLifecycleState: platformLifecycleState,
@as("SupportedAddonList") supportedAddonList: supportedAddonList,
@as("SupportedTierList") supportedTierList: supportedTierList,
@as("OperatingSystemVersion") operatingSystemVersion: operatingSystemVersion,
@as("OperatingSystemName") operatingSystemName: operatingSystemName,
@as("PlatformCategory") platformCategory: platformCategory,
@as("PlatformStatus") platformStatus: platformStatus,
@as("PlatformOwner") platformOwner: platformOwner,
@as("PlatformArn") platformArn: platformArn
}
type platformProgrammingLanguages = array<platformProgrammingLanguage>
type platformFrameworks = array<platformFramework>
type platformFilter = {
@as("Values") values: platformFilterValueList,
@as("Operator") operator: platformFilterOperator,
@as("Type") type_: platformFilterType
}
type platformBranchSummary = {
@as("SupportedTierList") supportedTierList: supportedTierList,
@as("BranchOrder") branchOrder: branchOrder,
@as("LifecycleState") lifecycleState: platformBranchLifecycleState,
@as("BranchName") branchName: branchName,
@as("PlatformName") platformName: platformName
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
@as("Regex") regex: optionRestrictionRegex,
@as("MaxLength") maxLength: optionRestrictionMaxLength,
@as("MaxValue") maxValue: optionRestrictionMaxValue,
@as("MinValue") minValue: optionRestrictionMinValue,
@as("ValueOptions") valueOptions: configurationOptionPossibleValues,
@as("ValueType") valueType: configurationOptionValueType,
@as("UserDefined") userDefined: userDefinedOption,
@as("ChangeSeverity") changeSeverity: configurationOptionSeverity,
@as("DefaultValue") defaultValue: configurationOptionDefaultValue,
@as("Name") name: configurationOptionName,
@as("Namespace") namespace: optionNamespace
}
type autoScalingGroupList = array<autoScalingGroup>
type applicationVersionLifecycleConfig = {
@as("MaxAgeRule") maxAgeRule: maxAgeRule,
@as("MaxCountRule") maxCountRule: maxCountRule
}
type applicationVersionDescription = {
@as("Status") status: applicationVersionStatus,
@as("DateUpdated") dateUpdated: updateDate,
@as("DateCreated") dateCreated: creationDate,
@as("SourceBundle") sourceBundle: s3Location,
@as("BuildArn") buildArn: amazonawsString,
@as("SourceBuildInformation") sourceBuildInformation: sourceBuildInformation,
@as("VersionLabel") versionLabel: versionLabel,
@as("Description") description: description,
@as("ApplicationName") applicationName: applicationName,
@as("ApplicationVersionArn") applicationVersionArn: applicationVersionArn
}
type applicationMetrics = {
@as("Latency") latency: latency,
@as("StatusCodes") statusCodes: statusCodes,
@as("RequestCount") requestCount: requestCount,
@as("Duration") duration: nullableInteger
}
type singleInstanceHealth = {
@as("InstanceType") instanceType: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Deployment") deployment: deployment,
@as("System") system: systemStatus,
@as("ApplicationMetrics") applicationMetrics: applicationMetrics,
@as("LaunchedAt") launchedAt: launchedAt,
@as("Causes") causes: causes,
@as("Color") color: amazonawsString,
@as("HealthStatus") healthStatus: amazonawsString,
@as("InstanceId") instanceId: instanceId
}
type searchFilters = array<searchFilter>
type platformSummaryList = array<platformSummary>
type platformFilters = array<platformFilter>
type platformDescription = {
@as("PlatformBranchLifecycleState") platformBranchLifecycleState: platformBranchLifecycleState,
@as("PlatformBranchName") platformBranchName: branchName,
@as("PlatformLifecycleState") platformLifecycleState: platformLifecycleState,
@as("SupportedAddonList") supportedAddonList: supportedAddonList,
@as("SupportedTierList") supportedTierList: supportedTierList,
@as("CustomAmiList") customAmiList: customAmiList,
@as("Frameworks") frameworks: platformFrameworks,
@as("ProgrammingLanguages") programmingLanguages: platformProgrammingLanguages,
@as("OperatingSystemVersion") operatingSystemVersion: operatingSystemVersion,
@as("OperatingSystemName") operatingSystemName: operatingSystemName,
@as("Maintainer") maintainer: maintainer,
@as("Description") description: description,
@as("PlatformCategory") platformCategory: platformCategory,
@as("DateUpdated") dateUpdated: updateDate,
@as("DateCreated") dateCreated: creationDate,
@as("PlatformStatus") platformStatus: platformStatus,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("PlatformVersion") platformVersion: platformVersion,
@as("PlatformName") platformName: platformName,
@as("PlatformOwner") platformOwner: platformOwner,
@as("PlatformArn") platformArn: platformArn
}
type platformBranchSummaryList = array<platformBranchSummary>
type loadBalancerDescription = {
@as("Listeners") listeners: loadBalancerListenersDescription,
@as("Domain") domain: amazonawsString,
@as("LoadBalancerName") loadBalancerName: amazonawsString
}
type environmentResourceDescription = {
@as("Queues") queues: queueList,
@as("Triggers") triggers: triggerList,
@as("LoadBalancers") loadBalancers: loadBalancerList,
@as("LaunchTemplates") launchTemplates: launchTemplateList,
@as("LaunchConfigurations") launchConfigurations: launchConfigurationList,
@as("Instances") instances: instanceList,
@as("AutoScalingGroups") autoScalingGroups: autoScalingGroupList,
@as("EnvironmentName") environmentName: environmentName
}
type configurationSettingsDescription = {
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("DateUpdated") dateUpdated: updateDate,
@as("DateCreated") dateCreated: creationDate,
@as("DeploymentStatus") deploymentStatus: configurationDeploymentStatus,
@as("EnvironmentName") environmentName: environmentName,
@as("Description") description: description,
@as("TemplateName") templateName: configurationTemplateName,
@as("ApplicationName") applicationName: applicationName,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName
}
type configurationOptionDescriptionsList = array<configurationOptionDescription>
type availableSolutionStackDetailsList = array<solutionStackDescription>
type applicationVersionDescriptionList = array<applicationVersionDescription>
type applicationResourceLifecycleConfig = {
@as("VersionLifecycleConfig") versionLifecycleConfig: applicationVersionLifecycleConfig,
@as("ServiceRole") serviceRole: amazonawsString
}
type instanceHealthList = array<singleInstanceHealth>
type environmentResourcesDescription = {
@as("LoadBalancer") loadBalancer: loadBalancerDescription
}
type configurationSettingsDescriptionList = array<configurationSettingsDescription>
type applicationDescription = {
@as("ResourceLifecycleConfig") resourceLifecycleConfig: applicationResourceLifecycleConfig,
@as("ConfigurationTemplates") configurationTemplates: configurationTemplateNamesList,
@as("Versions") versions: versionLabelsList,
@as("DateUpdated") dateUpdated: updateDate,
@as("DateCreated") dateCreated: creationDate,
@as("Description") description: description,
@as("ApplicationName") applicationName: applicationName,
@as("ApplicationArn") applicationArn: applicationArn
}
type environmentDescription = {
@as("OperationsRole") operationsRole: operationsRole,
@as("EnvironmentArn") environmentArn: environmentArn,
@as("EnvironmentLinks") environmentLinks: environmentLinks,
@as("Tier") tier: environmentTier,
@as("Resources") resources: environmentResourcesDescription,
@as("HealthStatus") healthStatus: environmentHealthStatus,
@as("Health") health: environmentHealth,
@as("AbortableOperationInProgress") abortableOperationInProgress: abortableOperationInProgress,
@as("Status") status: environmentStatus,
@as("DateUpdated") dateUpdated: updateDate,
@as("DateCreated") dateCreated: creationDate,
@as("CNAME") cNAME: dNSCname,
@as("EndpointURL") endpointURL: endpointURL,
@as("Description") description: description,
@as("TemplateName") templateName: configurationTemplateName,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("VersionLabel") versionLabel: versionLabel,
@as("ApplicationName") applicationName: applicationName,
@as("EnvironmentId") environmentId: environmentId,
@as("EnvironmentName") environmentName: environmentName
}
type applicationDescriptionList = array<applicationDescription>
type environmentDescriptionsList = array<environmentDescription>
type clientType;
@module("@aws-sdk/client-elasticbeanstalk") @new external createClient: unit => clientType = "ElasticBeanstalkClient";
module SwapEnvironmentCNAMEs = {
  type t;
  type request = {
@as("DestinationEnvironmentName") destinationEnvironmentName: environmentName,
@as("DestinationEnvironmentId") destinationEnvironmentId: environmentId,
@as("SourceEnvironmentName") sourceEnvironmentName: environmentName,
@as("SourceEnvironmentId") sourceEnvironmentId: environmentId
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "SwapEnvironmentCNAMEsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RestartAppServer = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "RestartAppServerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RequestEnvironmentInfo = {
  type t;
  type request = {
@as("InfoType") infoType: option<environmentInfoType>,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "RequestEnvironmentInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RebuildEnvironment = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "RebuildEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateEnvironmentOperationsRole = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: option<environmentName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DisassociateEnvironmentOperationsRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEnvironmentConfiguration = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: option<environmentName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DeleteEnvironmentConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationTemplate = {
  type t;
  type request = {
@as("TemplateName") templateName: option<configurationTemplateName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApplicationVersion = {
  type t;
  type request = {
@as("DeleteSourceBundle") deleteSourceBundle: deleteSourceBundle,
@as("VersionLabel") versionLabel: option<versionLabel>,
@as("ApplicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("TerminateEnvByForce") terminateEnvByForce: terminateEnvForce,
@as("ApplicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateStorageLocation = {
  type t;
  
  type response = {
@as("S3Bucket") s3Bucket: s3Bucket
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<unit>) => t = "CreateStorageLocationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CheckDNSAvailability = {
  type t;
  type request = {
@as("CNAMEPrefix") cNAMEPrefix: option<dNSCnamePrefix>
}
  type response = {
@as("FullyQualifiedCNAME") fullyQualifiedCNAME: dNSCname,
@as("Available") available: cnameAvailability
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CheckDNSAvailabilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateEnvironmentOperationsRole = {
  type t;
  type request = {
@as("OperationsRole") operationsRole: option<operationsRole>,
@as("EnvironmentName") environmentName: option<environmentName>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "AssociateEnvironmentOperationsRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ApplyEnvironmentManagedAction = {
  type t;
  type request = {
@as("ActionId") actionId: option<amazonawsString>,
@as("EnvironmentId") environmentId: amazonawsString,
@as("EnvironmentName") environmentName: amazonawsString
}
  type response = {
@as("Status") status: amazonawsString,
@as("ActionType") actionType: actionType,
@as("ActionDescription") actionDescription: amazonawsString,
@as("ActionId") actionId: amazonawsString
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ApplyEnvironmentManagedActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AbortEnvironmentUpdate = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "AbortEnvironmentUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ValidateConfigurationSettings = {
  type t;
  type request = {
@as("OptionSettings") optionSettings: option<configurationOptionSettingsList>,
@as("EnvironmentName") environmentName: environmentName,
@as("TemplateName") templateName: configurationTemplateName,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("Messages") messages: validationMessagesList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ValidateConfigurationSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTagsForResource = {
  type t;
  type request = {
@as("TagsToRemove") tagsToRemove: tagKeyList,
@as("TagsToAdd") tagsToAdd: tagList,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateConfigurationTemplate = {
  type t;
  type request = {
@as("OptionsToRemove") optionsToRemove: optionsSpecifierList,
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("Description") description: description,
@as("TemplateName") templateName: option<configurationTemplateName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = configurationSettingsDescription;
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationVersion = {
  type t;
  type request = {
@as("Description") description: description,
@as("VersionLabel") versionLabel: option<versionLabel>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersion") applicationVersion: applicationVersionDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RetrieveEnvironmentInfo = {
  type t;
  type request = {
@as("InfoType") infoType: option<environmentInfoType>,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  type response = {
@as("EnvironmentInfo") environmentInfo: environmentInfoDescriptionList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "RetrieveEnvironmentInfoCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("ResourceTags") resourceTags: tagList,
@as("ResourceArn") resourceArn: resourceArn
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxRecords") maxRecords: maxRecords,
@as("EndTime") endTime: timeFilterEnd,
@as("StartTime") startTime: timeFilterStart,
@as("Severity") severity: eventSeverity,
@as("RequestId") requestId: requestId,
@as("PlatformArn") platformArn: platformArn,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId,
@as("TemplateName") templateName: configurationTemplateName,
@as("VersionLabel") versionLabel: versionLabel,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: token,
@as("Events") events: eventDescriptionList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentManagedActions = {
  type t;
  type request = {
@as("Status") status: actionStatus,
@as("EnvironmentId") environmentId: amazonawsString,
@as("EnvironmentName") environmentName: amazonawsString
}
  type response = {
@as("ManagedActions") managedActions: managedActions
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentManagedActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentManagedActionHistory = {
  type t;
  type request = {
@as("MaxItems") maxItems: managedActionHistoryMaxItems,
@as("NextToken") nextToken: amazonawsString,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ManagedActionHistoryItems") managedActionHistoryItems: managedActionHistoryItems
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentManagedActionHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentHealth = {
  type t;
  type request = {
@as("AttributeNames") attributeNames: environmentHealthAttributes,
@as("EnvironmentId") environmentId: environmentId,
@as("EnvironmentName") environmentName: environmentName
}
  type response = {
@as("RefreshedAt") refreshedAt: refreshedAt,
@as("InstancesHealth") instancesHealth: instanceHealthSummary,
@as("ApplicationMetrics") applicationMetrics: applicationMetrics,
@as("Causes") causes: causes,
@as("Color") color: amazonawsString,
@as("Status") status: environmentHealth,
@as("HealthStatus") healthStatus: amazonawsString,
@as("EnvironmentName") environmentName: environmentName
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  
  type response = {
@as("ResourceQuotas") resourceQuotas: resourceQuotas
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<unit>) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePlatformVersion = {
  type t;
  type request = {
@as("PlatformArn") platformArn: platformArn
}
  type response = {
@as("PlatformSummary") platformSummary: platformSummary
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DeletePlatformVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePlatformVersion = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("EnvironmentName") environmentName: environmentName,
@as("PlatformDefinitionBundle") platformDefinitionBundle: option<s3Location>,
@as("PlatformVersion") platformVersion: option<platformVersion>,
@as("PlatformName") platformName: option<platformName>
}
  type response = {
@as("Builder") builder: builder,
@as("PlatformSummary") platformSummary: platformSummary
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CreatePlatformVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConfigurationTemplate = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("Description") description: description,
@as("EnvironmentId") environmentId: environmentId,
@as("SourceConfiguration") sourceConfiguration: sourceConfiguration,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("TemplateName") templateName: option<configurationTemplateName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = configurationSettingsDescription;
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CreateConfigurationTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplicationVersion = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Process") process: applicationVersionProccess,
@as("AutoCreateApplication") autoCreateApplication: autoCreateApplication,
@as("BuildConfiguration") buildConfiguration: buildConfiguration,
@as("SourceBundle") sourceBundle: s3Location,
@as("SourceBuildInformation") sourceBuildInformation: sourceBuildInformation,
@as("Description") description: description,
@as("VersionLabel") versionLabel: option<versionLabel>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersion") applicationVersion: applicationVersionDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationResourceLifecycle = {
  type t;
  type request = {
@as("ResourceLifecycleConfig") resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ResourceLifecycleConfig") resourceLifecycleConfig: applicationResourceLifecycleConfig,
@as("ApplicationName") applicationName: applicationName
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationResourceLifecycleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlatformVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxRecords") maxRecords: platformMaxRecords,
@as("Filters") filters: platformFilters
}
  type response = {
@as("NextToken") nextToken: token,
@as("PlatformSummaryList") platformSummaryList: platformSummaryList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ListPlatformVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPlatformBranches = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxRecords") maxRecords: platformBranchMaxRecords,
@as("Filters") filters: searchFilters
}
  type response = {
@as("NextToken") nextToken: token,
@as("PlatformBranchSummaryList") platformBranchSummaryList: platformBranchSummaryList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ListPlatformBranchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAvailableSolutionStacks = {
  type t;
  
  type response = {
@as("SolutionStackDetails") solutionStackDetails: availableSolutionStackDetailsList,
@as("SolutionStacks") solutionStacks: availableSolutionStackNamesList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<unit>) => t = "ListAvailableSolutionStacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePlatformVersion = {
  type t;
  type request = {
@as("PlatformArn") platformArn: platformArn
}
  type response = {
@as("PlatformDescription") platformDescription: platformDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribePlatformVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironmentResources = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  type response = {
@as("EnvironmentResources") environmentResources: environmentResourceDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationOptions = {
  type t;
  type request = {
@as("Options") options: optionsSpecifierList,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("EnvironmentName") environmentName: environmentName,
@as("TemplateName") templateName: configurationTemplateName,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("Options") options: configurationOptionDescriptionsList,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxRecords") maxRecords: maxRecords,
@as("VersionLabels") versionLabels: versionLabelsList,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: token,
@as("ApplicationVersions") applicationVersions: applicationVersionDescriptionList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironment = {
  type t;
  type request = {
@as("OptionsToRemove") optionsToRemove: optionsSpecifierList,
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("TemplateName") templateName: configurationTemplateName,
@as("VersionLabel") versionLabel: versionLabel,
@as("Tier") tier: environmentTier,
@as("Description") description: description,
@as("GroupName") groupName: groupName,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId,
@as("ApplicationName") applicationName: applicationName
}
  type response = environmentDescription;
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("Description") description: description,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("Application") application: applicationDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateEnvironment = {
  type t;
  type request = {
@as("ForceTerminate") forceTerminate: forceTerminate,
@as("TerminateResources") terminateResources: terminateEnvironmentResources,
@as("EnvironmentName") environmentName: environmentName,
@as("EnvironmentId") environmentId: environmentId
}
  type response = environmentDescription;
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "TerminateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstancesHealth = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("AttributeNames") attributeNames: instancesHealthAttributes,
@as("EnvironmentId") environmentId: environmentId,
@as("EnvironmentName") environmentName: environmentName
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RefreshedAt") refreshedAt: refreshedAt,
@as("InstanceHealthList") instanceHealthList: instanceHealthList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstancesHealthCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationSettings = {
  type t;
  type request = {
@as("EnvironmentName") environmentName: environmentName,
@as("TemplateName") templateName: configurationTemplateName,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ConfigurationSettings") configurationSettings: configurationSettingsDescriptionList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironment = {
  type t;
  type request = {
@as("OperationsRole") operationsRole: operationsRole,
@as("OptionsToRemove") optionsToRemove: optionsSpecifierList,
@as("OptionSettings") optionSettings: configurationOptionSettingsList,
@as("PlatformArn") platformArn: platformArn,
@as("SolutionStackName") solutionStackName: solutionStackName,
@as("TemplateName") templateName: configurationTemplateName,
@as("VersionLabel") versionLabel: versionLabel,
@as("Tags") tags: tags,
@as("Tier") tier: environmentTier,
@as("CNAMEPrefix") cNAMEPrefix: dNSCnamePrefix,
@as("Description") description: description,
@as("GroupName") groupName: groupName,
@as("EnvironmentName") environmentName: environmentName,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = environmentDescription;
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CreateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceLifecycleConfig") resourceLifecycleConfig: applicationResourceLifecycleConfig,
@as("Description") description: description,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("Application") application: applicationDescription
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplications = {
  type t;
  type request = {
@as("ApplicationNames") applicationNames: applicationNamesList
}
  type response = {
@as("Applications") applications: applicationDescriptionList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEnvironments = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxRecords") maxRecords: maxRecords,
@as("IncludedDeletedBackTo") includedDeletedBackTo: includeDeletedBackTo,
@as("IncludeDeleted") includeDeleted: includeDeleted,
@as("EnvironmentNames") environmentNames: environmentNamesList,
@as("EnvironmentIds") environmentIds: environmentIdList,
@as("VersionLabel") versionLabel: versionLabel,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: token,
@as("Environments") environments: environmentDescriptionsList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "DescribeEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ComposeEnvironments = {
  type t;
  type request = {
@as("VersionLabels") versionLabels: versionLabels,
@as("GroupName") groupName: groupName,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: token,
@as("Environments") environments: environmentDescriptionsList
}
  @module("@aws-sdk/client-elasticbeanstalk") @new external new_: (Js.Promise.t<request>) => t = "ComposeEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
