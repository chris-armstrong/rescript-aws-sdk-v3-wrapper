type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type waitTimeInMins = int;
type versionId = string
type version = string
type value = string
type triggerTargetArn = string
type triggerName = string
type triggerEventType = [@as("InstanceReady") #InstanceReady | @as("InstanceFailure") #InstanceFailure | @as("InstanceSuccess") #InstanceSuccess | @as("InstanceStart") #InstanceStart | @as("DeploymentReady") #DeploymentReady | @as("DeploymentRollback") #DeploymentRollback | @as("DeploymentStop") #DeploymentStop | @as("DeploymentFailure") #DeploymentFailure | @as("DeploymentSuccess") #DeploymentSuccess | @as("DeploymentStart") #DeploymentStart]
type trafficWeight = float;
type trafficRoutingType = [@as("AllAtOnce") #AllAtOnce | @as("TimeBasedLinear") #TimeBasedLinear | @as("TimeBasedCanary") #TimeBasedCanary]
type amazonawsTimestamp = Js.Date.t;
type time = Js.Date.t;
type targetStatus = [@as("Ready") #Ready | @as("Unknown") #Unknown | @as("Skipped") #Skipped | @as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("InProgress") #InProgress | @as("Pending") #Pending]
type targetLabel = [@as("Green") #Green | @as("Blue") #Blue]
type targetId = string
type targetGroupName = string
type targetFilterName = [@as("ServerInstanceLabel") #ServerInstanceLabel | @as("TargetStatus") #TargetStatus]
type targetArn = string
type tagFilterType = [@as("KEY_AND_VALUE") #KEY_AND_VALUE | @as("VALUE_ONLY") #VALUE_ONLY | @as("KEY_ONLY") #KEY_ONLY]
type stopStatus = [@as("Succeeded") #Succeeded | @as("Pending") #Pending]
type sortOrder = [@as("descending") #descending | @as("ascending") #ascending]
type scriptName = string
type s3Key = string
type s3Bucket = string
type role = string
type revisionLocationType = [@as("AppSpecContent") #AppSpecContent | @as("String") #String | @as("GitHub") #GitHub | @as("S3") #S3]
type repository = string
type registrationStatus = [@as("Deregistered") #Deregistered | @as("Registered") #Registered]
type rawStringSha256 = string
type rawStringContent = string
type percentage = int;
type outdatedInstancesStrategy = [@as("IGNORE") #IGNORE | @as("UPDATE") #UPDATE]
type nullableBoolean = bool;
type nextToken = string
type minimumHealthyHostsValue = int;
type minimumHealthyHostsType = [@as("FLEET_PERCENT") #FLEET_PERCENT | @as("HOST_COUNT") #HOST_COUNT]
type message = string
type logTail = string
type listenerArn = string
type listStateFilterAction = [@as("ignore") #ignore | @as("exclude") #exclude | @as("include") #include]
type lifecycleMessage = string
type lifecycleEventStatus = [@as("Unknown") #Unknown | @as("Skipped") #Skipped | @as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("InProgress") #InProgress | @as("Pending") #Pending]
type lifecycleEventName = string
type lifecycleEventHookExecutionId = string
type lifecycleErrorCode = [@as("UnknownError") #UnknownError | @as("ScriptFailed") #ScriptFailed | @as("ScriptTimedOut") #ScriptTimedOut | @as("ScriptNotExecutable") #ScriptNotExecutable | @as("ScriptMissing") #ScriptMissing | @as("Success") #Success]
type lambdaFunctionName = string
type lambdaFunctionAlias = string
type key = string
type instanceType = [@as("Green") #Green | @as("Blue") #Blue]
type instanceStatus = [@as("Ready") #Ready | @as("Unknown") #Unknown | @as("Skipped") #Skipped | @as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("InProgress") #InProgress | @as("Pending") #Pending]
type instanceName = string
type instanceId = string
type instanceCount = float;
type instanceArn = string
type instanceAction = [@as("KEEP_ALIVE") #KEEP_ALIVE | @as("TERMINATE") #TERMINATE]
type iamUserArn = string
type iamSessionArn = string
type greenFleetProvisioningAction = [@as("COPY_AUTO_SCALING_GROUP") #COPY_AUTO_SCALING_GROUP | @as("DISCOVER_EXISTING") #DISCOVER_EXISTING]
type gitHubAccountTokenName = string
type filterValue = string
type fileExistsBehavior = [@as("RETAIN") #RETAIN | @as("OVERWRITE") #OVERWRITE | @as("DISALLOW") #DISALLOW]
type externalId = string
type errorMessage = string
type errorCode = [@as("CLOUDFORMATION_STACK_FAILURE") #CLOUDFORMATION_STACK_FAILURE | @as("TIMEOUT") #TIMEOUT | @as("THROTTLED") #THROTTLED | @as("REVISION_MISSING") #REVISION_MISSING | @as("RESOURCE_LIMIT_EXCEEDED") #RESOURCE_LIMIT_EXCEEDED | @as("OVER_MAX_INSTANCES") #OVER_MAX_INSTANCES | @as("NO_INSTANCES") #NO_INSTANCES | @as("NO_EC2_SUBSCRIPTION") #NO_EC2_SUBSCRIPTION | @as("MISSING_GITHUB_TOKEN") #MISSING_GITHUB_TOKEN | @as("MISSING_ELB_INFORMATION") #MISSING_ELB_INFORMATION | @as("MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION") #MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION | @as("MANUAL_STOP") #MANUAL_STOP | @as("INVALID_REVISION") #INVALID_REVISION | @as("INVALID_LAMBDA_FUNCTION") #INVALID_LAMBDA_FUNCTION | @as("INVALID_LAMBDA_CONFIGURATION") #INVALID_LAMBDA_CONFIGURATION | @as("INVALID_ECS_SERVICE") #INVALID_ECS_SERVICE | @as("INTERNAL_ERROR") #INTERNAL_ERROR | @as("IAM_ROLE_PERMISSIONS") #IAM_ROLE_PERMISSIONS | @as("IAM_ROLE_MISSING") #IAM_ROLE_MISSING | @as("HOOK_EXECUTION_FAILURE") #HOOK_EXECUTION_FAILURE | @as("HEALTH_CONSTRAINTS_INVALID") #HEALTH_CONSTRAINTS_INVALID | @as("HEALTH_CONSTRAINTS") #HEALTH_CONSTRAINTS | @as("ELB_INVALID_INSTANCE") #ELB_INVALID_INSTANCE | @as("ELASTIC_LOAD_BALANCING_INVALID") #ELASTIC_LOAD_BALANCING_INVALID | @as("ECS_UPDATE_ERROR") #ECS_UPDATE_ERROR | @as("DEPLOYMENT_GROUP_MISSING") #DEPLOYMENT_GROUP_MISSING | @as("CUSTOMER_APPLICATION_UNHEALTHY") #CUSTOMER_APPLICATION_UNHEALTHY | @as("CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND") #CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND | @as("AUTO_SCALING_IAM_ROLE_PERMISSIONS") #AUTO_SCALING_IAM_ROLE_PERMISSIONS | @as("AUTO_SCALING_CONFIGURATION") #AUTO_SCALING_CONFIGURATION | @as("AUTOSCALING_VALIDATION_ERROR") #AUTOSCALING_VALIDATION_ERROR | @as("APPLICATION_MISSING") #APPLICATION_MISSING | @as("ALARM_ACTIVE") #ALARM_ACTIVE | @as("AGENT_ISSUE") #AGENT_ISSUE]
type eTag = string
type eLBName = string
type eCSTaskSetStatus = string
type eCSTaskSetIdentifier = string
type eCSTaskSetCount = float;
type eCSServiceName = string
type eCSClusterName = string
type eC2TagFilterType = [@as("KEY_AND_VALUE") #KEY_AND_VALUE | @as("VALUE_ONLY") #VALUE_ONLY | @as("KEY_ONLY") #KEY_ONLY]
type duration = int;
type description = string
type deploymentWaitType = [@as("TERMINATION_WAIT") #TERMINATION_WAIT | @as("READY_WAIT") #READY_WAIT]
type deploymentType = [@as("BLUE_GREEN") #BLUE_GREEN | @as("IN_PLACE") #IN_PLACE]
type deploymentTargetType = [@as("CloudFormationTarget") #CloudFormationTarget | @as("ECSTarget") #ECSTarget | @as("LambdaTarget") #LambdaTarget | @as("InstanceTarget") #InstanceTarget]
type deploymentStatus = [@as("Ready") #Ready | @as("Stopped") #Stopped | @as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Baking") #Baking | @as("InProgress") #InProgress | @as("Queued") #Queued | @as("Created") #Created]
type deploymentReadyAction = [@as("STOP_DEPLOYMENT") #STOP_DEPLOYMENT | @as("CONTINUE_DEPLOYMENT") #CONTINUE_DEPLOYMENT]
type deploymentOption = [@as("WITHOUT_TRAFFIC_CONTROL") #WITHOUT_TRAFFIC_CONTROL | @as("WITH_TRAFFIC_CONTROL") #WITH_TRAFFIC_CONTROL]
type deploymentId = string
type deploymentGroupName = string
type deploymentGroupId = string
type deploymentCreator = [@as("CloudFormationRollback") #CloudFormationRollback | @as("CloudFormation") #CloudFormation | @as("CodeDeployAutoUpdate") #CodeDeployAutoUpdate | @as("CodeDeploy") #CodeDeploy | @as("codeDeployRollback") #codeDeployRollback | @as("autoscaling") #autoscaling | @as("user") #user]
type deploymentConfigName = string
type deploymentConfigId = string
type computePlatform = [@as("ECS") #ECS | @as("Lambda") #Lambda | @as("Server") #Server]
type commitId = string
type cloudFormationResourceType = string
type bundleType = [@as("JSON") #JSON | @as("YAML") #YAML | @as("zip") #zip | @as("tgz") #tgz | @as("tar") #tar]
type amazonawsBoolean = bool;
type autoScalingGroupName = string
type autoScalingGroupHook = string
type autoRollbackEvent = [@as("DEPLOYMENT_STOP_ON_REQUEST") #DEPLOYMENT_STOP_ON_REQUEST | @as("DEPLOYMENT_STOP_ON_ALARM") #DEPLOYMENT_STOP_ON_ALARM | @as("DEPLOYMENT_FAILURE") #DEPLOYMENT_FAILURE]
type arn = string
type applicationRevisionSortBy = [@as("lastUsedTime") #lastUsedTime | @as("firstUsedTime") #firstUsedTime | @as("registerTime") #registerTime]
type applicationName = string
type applicationId = string
type alarmName = string
type additionalDeploymentStatusInfo = string
type triggerEventTypeList = array<triggerEventType>
type timeRange = {
@as("end") end: amazonawsTimestamp,
@as("start") start: amazonawsTimestamp
}
type timeBasedLinear = {
@as("linearInterval") linearInterval: waitTimeInMins,
@as("linearPercentage") linearPercentage: percentage
}
type timeBasedCanary = {
@as("canaryInterval") canaryInterval: waitTimeInMins,
@as("canaryPercentage") canaryPercentage: percentage
}
type targetIdList = array<targetId>
type targetGroupInfo = {
@as("name") name: targetGroupName
}
type tagKeyList = array<key>
type tagFilter = {
@as("Type") type_: tagFilterType,
@as("Value") value: value,
@as("Key") key: key
}
type tag = {
@as("Value") value: value,
@as("Key") key: key
}
type s3Location = {
@as("eTag") eTag: eTag,
@as("version") version: versionId,
@as("bundleType") bundleType: bundleType,
@as("key") key: s3Key,
@as("bucket") bucket: s3Bucket
}
type rollbackInfo = {
@as("rollbackMessage") rollbackMessage: description,
@as("rollbackTriggeringDeploymentId") rollbackTriggeringDeploymentId: deploymentId,
@as("rollbackDeploymentId") rollbackDeploymentId: deploymentId
}
type rawString = {
@as("sha256") sha256: rawStringSha256,
@as("content") content: rawStringContent
}
type minimumHealthyHosts = {
@as("value") value: minimumHealthyHostsValue,
@as("type") type_: minimumHealthyHostsType
}
type listenerArnList = array<listenerArn>
type lastDeploymentInfo = {
@as("createTime") createTime: amazonawsTimestamp,
@as("endTime") endTime: amazonawsTimestamp,
@as("status") status: deploymentStatus,
@as("deploymentId") deploymentId: deploymentId
}
type lambdaFunctionInfo = {
@as("targetVersionWeight") targetVersionWeight: trafficWeight,
@as("targetVersion") targetVersion: version,
@as("currentVersion") currentVersion: version,
@as("functionAlias") functionAlias: lambdaFunctionAlias,
@as("functionName") functionName: lambdaFunctionName
}
type instancesList = array<instanceId>
type instanceTypeList = array<instanceType>
type instanceStatusList = array<instanceStatus>
type instanceNameList = array<instanceName>
type greenFleetProvisioningOption = {
@as("action") action: greenFleetProvisioningAction
}
type gitHubLocation = {
@as("commitId") commitId: commitId,
@as("repository") repository: repository
}
type gitHubAccountTokenNameList = array<gitHubAccountTokenName>
type filterValueList = array<filterValue>
type errorInformation = {
@as("message") message: errorMessage,
@as("code") code: errorCode
}
type eLBInfo = {
@as("name") name: eLBName
}
type eCSService = {
@as("clusterName") clusterName: eCSClusterName,
@as("serviceName") serviceName: eCSServiceName
}
type eC2TagFilter = {
@as("Type") type_: eC2TagFilterType,
@as("Value") value: value,
@as("Key") key: key
}
type diagnostics = {
@as("logTail") logTail: logTail,
@as("message") message: lifecycleMessage,
@as("scriptName") scriptName: scriptName,
@as("errorCode") errorCode: lifecycleErrorCode
}
type deploymentsList = array<deploymentId>
type deploymentStyle = {
@as("deploymentOption") deploymentOption: deploymentOption,
@as("deploymentType") deploymentType: deploymentType
}
type deploymentStatusMessageList = array<errorMessage>
type deploymentStatusList = array<deploymentStatus>
type deploymentReadyOption = {
@as("waitTimeInMinutes") waitTimeInMinutes: duration,
@as("actionOnTimeout") actionOnTimeout: deploymentReadyAction
}
type deploymentOverview = {
@as("Ready") ready: instanceCount,
@as("Skipped") skipped: instanceCount,
@as("Failed") failed: instanceCount,
@as("Succeeded") succeeded: instanceCount,
@as("InProgress") inProgress: instanceCount,
@as("Pending") pending: instanceCount
}
type deploymentGroupsList = array<deploymentGroupName>
type deploymentConfigsList = array<deploymentConfigName>
type blueInstanceTerminationOption = {
@as("terminationWaitTimeInMinutes") terminationWaitTimeInMinutes: duration,
@as("action") action: instanceAction
}
type autoScalingGroupNameList = array<autoScalingGroupName>
type autoScalingGroup = {
@as("hook") hook: autoScalingGroupHook,
@as("name") name: autoScalingGroupName
}
type autoRollbackEventsList = array<autoRollbackEvent>
type applicationsList = array<applicationName>
type applicationInfo = {
@as("computePlatform") computePlatform: computePlatform,
@as("gitHubAccountName") gitHubAccountName: gitHubAccountTokenName,
@as("linkedToGitHub") linkedToGitHub: amazonawsBoolean,
@as("createTime") createTime: amazonawsTimestamp,
@as("applicationName") applicationName: applicationName,
@as("applicationId") applicationId: applicationId
}
type appSpecContent = {
@as("sha256") sha256: rawStringSha256,
@as("content") content: rawStringContent
}
type alarm = {
@as("name") name: alarmName
}
type triggerConfig = {
@as("triggerEvents") triggerEvents: triggerEventTypeList,
@as("triggerTargetArn") triggerTargetArn: triggerTargetArn,
@as("triggerName") triggerName: triggerName
}
type trafficRoutingConfig = {
@as("timeBasedLinear") timeBasedLinear: timeBasedLinear,
@as("timeBasedCanary") timeBasedCanary: timeBasedCanary,
@as("type") type_: trafficRoutingType
}
type trafficRoute = {
@as("listenerArns") listenerArns: listenerArnList
}
type targetGroupInfoList = array<targetGroupInfo>
type targetFilters = Js.Dict.t< filterValueList>
type tagList = array<tag>
type tagFilterList = array<tagFilter>
type revisionLocation = {
@as("appSpecContent") appSpecContent: appSpecContent,
@as("string") string: rawString,
@as("gitHubLocation") gitHubLocation: gitHubLocation,
@as("s3Location") s3Location: s3Location,
@as("revisionType") revisionType: revisionLocationType
}
type relatedDeployments = {
@as("autoUpdateOutdatedInstancesDeploymentIds") autoUpdateOutdatedInstancesDeploymentIds: deploymentsList,
@as("autoUpdateOutdatedInstancesRootDeploymentId") autoUpdateOutdatedInstancesRootDeploymentId: deploymentId
}
type lifecycleEvent = {
@as("status") status: lifecycleEventStatus,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("diagnostics") diagnostics: diagnostics,
@as("lifecycleEventName") lifecycleEventName: lifecycleEventName
}
type genericRevisionInfo = {
@as("registerTime") registerTime: amazonawsTimestamp,
@as("lastUsedTime") lastUsedTime: amazonawsTimestamp,
@as("firstUsedTime") firstUsedTime: amazonawsTimestamp,
@as("deploymentGroups") deploymentGroups: deploymentGroupsList,
@as("description") description: description
}
type eLBInfoList = array<eLBInfo>
type eCSTaskSet = {
@as("taskSetLabel") taskSetLabel: targetLabel,
@as("targetGroup") targetGroup: targetGroupInfo,
@as("trafficWeight") trafficWeight: trafficWeight,
@as("status") status: eCSTaskSetStatus,
@as("runningCount") runningCount: eCSTaskSetCount,
@as("pendingCount") pendingCount: eCSTaskSetCount,
@as("desiredCount") desiredCount: eCSTaskSetCount,
@as("identifer") identifer: eCSTaskSetIdentifier
}
type eCSServiceList = array<eCSService>
type eC2TagFilterList = array<eC2TagFilter>
type blueGreenDeploymentConfiguration = {
@as("greenFleetProvisioningOption") greenFleetProvisioningOption: greenFleetProvisioningOption,
@as("deploymentReadyOption") deploymentReadyOption: deploymentReadyOption,
@as("terminateBlueInstancesOnDeploymentSuccess") terminateBlueInstancesOnDeploymentSuccess: blueInstanceTerminationOption
}
type autoScalingGroupList = array<autoScalingGroup>
type autoRollbackConfiguration = {
@as("events") events: autoRollbackEventsList,
@as("enabled") enabled: amazonawsBoolean
}
type applicationsInfoList = array<applicationInfo>
type alarmList = array<alarm>
type triggerConfigList = array<triggerConfig>
type targetGroupPairInfo = {
@as("testTrafficRoute") testTrafficRoute: trafficRoute,
@as("prodTrafficRoute") prodTrafficRoute: trafficRoute,
@as("targetGroups") targetGroups: targetGroupInfoList
}
type revisionLocationList = array<revisionLocation>
type revisionInfo = {
@as("genericRevisionInfo") genericRevisionInfo: genericRevisionInfo,
@as("revisionLocation") revisionLocation: revisionLocation
}
type onPremisesTagSetList = array<tagFilterList>
type lifecycleEventList = array<lifecycleEvent>
type instanceInfo = {
@as("tags") tags: tagList,
@as("deregisterTime") deregisterTime: amazonawsTimestamp,
@as("registerTime") registerTime: amazonawsTimestamp,
@as("instanceArn") instanceArn: instanceArn,
@as("iamUserArn") iamUserArn: iamUserArn,
@as("iamSessionArn") iamSessionArn: iamSessionArn,
@as("instanceName") instanceName: instanceName
}
type eCSTaskSetList = array<eCSTaskSet>
type eC2TagSetList = array<eC2TagFilterList>
type deploymentConfigInfo = {
@as("trafficRoutingConfig") trafficRoutingConfig: trafficRoutingConfig,
@as("computePlatform") computePlatform: computePlatform,
@as("createTime") createTime: amazonawsTimestamp,
@as("minimumHealthyHosts") minimumHealthyHosts: minimumHealthyHosts,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("deploymentConfigId") deploymentConfigId: deploymentConfigId
}
type alarmConfiguration = {
@as("alarms") alarms: alarmList,
@as("ignorePollAlarmFailure") ignorePollAlarmFailure: amazonawsBoolean,
@as("enabled") enabled: amazonawsBoolean
}
type targetGroupPairInfoList = array<targetGroupPairInfo>
type revisionInfoList = array<revisionInfo>
type onPremisesTagSet = {
@as("onPremisesTagSetList") onPremisesTagSetList: onPremisesTagSetList
}
type lambdaTarget = {
@as("lambdaFunctionInfo") lambdaFunctionInfo: lambdaFunctionInfo,
@as("lifecycleEvents") lifecycleEvents: lifecycleEventList,
@as("lastUpdatedAt") lastUpdatedAt: time,
@as("status") status: targetStatus,
@as("targetArn") targetArn: targetArn,
@as("targetId") targetId: targetId,
@as("deploymentId") deploymentId: deploymentId
}
type instanceTarget = {
@as("instanceLabel") instanceLabel: targetLabel,
@as("lifecycleEvents") lifecycleEvents: lifecycleEventList,
@as("lastUpdatedAt") lastUpdatedAt: time,
@as("status") status: targetStatus,
@as("targetArn") targetArn: targetArn,
@as("targetId") targetId: targetId,
@as("deploymentId") deploymentId: deploymentId
}
type instanceSummary = {
@as("instanceType") instanceType: instanceType,
@as("lifecycleEvents") lifecycleEvents: lifecycleEventList,
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("status") status: instanceStatus,
@as("instanceId") instanceId: instanceId,
@as("deploymentId") deploymentId: deploymentId
}
type instanceInfoList = array<instanceInfo>
type eCSTarget = {
@as("taskSetsInfo") taskSetsInfo: eCSTaskSetList,
@as("status") status: targetStatus,
@as("lifecycleEvents") lifecycleEvents: lifecycleEventList,
@as("lastUpdatedAt") lastUpdatedAt: time,
@as("targetArn") targetArn: targetArn,
@as("targetId") targetId: targetId,
@as("deploymentId") deploymentId: deploymentId
}
type eC2TagSet = {
@as("ec2TagSetList") ec2TagSetList: eC2TagSetList
}
type cloudFormationTarget = {
@as("targetVersionWeight") targetVersionWeight: trafficWeight,
@as("resourceType") resourceType: cloudFormationResourceType,
@as("status") status: targetStatus,
@as("lifecycleEvents") lifecycleEvents: lifecycleEventList,
@as("lastUpdatedAt") lastUpdatedAt: time,
@as("targetId") targetId: targetId,
@as("deploymentId") deploymentId: deploymentId
}
type targetInstances = {
@as("ec2TagSet") ec2TagSet: eC2TagSet,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupNameList,
@as("tagFilters") tagFilters: eC2TagFilterList
}
type loadBalancerInfo = {
@as("targetGroupPairInfoList") targetGroupPairInfoList: targetGroupPairInfoList,
@as("targetGroupInfoList") targetGroupInfoList: targetGroupInfoList,
@as("elbInfoList") elbInfoList: eLBInfoList
}
type instanceSummaryList = array<instanceSummary>
type deploymentTarget = {
@as("cloudFormationTarget") cloudFormationTarget: cloudFormationTarget,
@as("ecsTarget") ecsTarget: eCSTarget,
@as("lambdaTarget") lambdaTarget: lambdaTarget,
@as("instanceTarget") instanceTarget: instanceTarget,
@as("deploymentTargetType") deploymentTargetType: deploymentTargetType
}
type deploymentTargetList = array<deploymentTarget>
type deploymentInfo = {
@as("relatedDeployments") relatedDeployments: relatedDeployments,
@as("externalId") externalId: externalId,
@as("computePlatform") computePlatform: computePlatform,
@as("deploymentStatusMessages") deploymentStatusMessages: deploymentStatusMessageList,
@as("fileExistsBehavior") fileExistsBehavior: fileExistsBehavior,
@as("additionalDeploymentStatusInfo") additionalDeploymentStatusInfo: additionalDeploymentStatusInfo,
@as("loadBalancerInfo") loadBalancerInfo: loadBalancerInfo,
@as("blueGreenDeploymentConfiguration") blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
@as("instanceTerminationWaitTimeStarted") instanceTerminationWaitTimeStarted: amazonawsBoolean,
@as("targetInstances") targetInstances: targetInstances,
@as("deploymentStyle") deploymentStyle: deploymentStyle,
@as("rollbackInfo") rollbackInfo: rollbackInfo,
@as("updateOutdatedInstancesOnly") updateOutdatedInstancesOnly: amazonawsBoolean,
@as("autoRollbackConfiguration") autoRollbackConfiguration: autoRollbackConfiguration,
@as("ignoreApplicationStopFailures") ignoreApplicationStopFailures: amazonawsBoolean,
@as("creator") creator: deploymentCreator,
@as("description") description: description,
@as("deploymentOverview") deploymentOverview: deploymentOverview,
@as("completeTime") completeTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("createTime") createTime: amazonawsTimestamp,
@as("errorInformation") errorInformation: errorInformation,
@as("status") status: deploymentStatus,
@as("revision") revision: revisionLocation,
@as("previousRevision") previousRevision: revisionLocation,
@as("deploymentId") deploymentId: deploymentId,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("deploymentGroupName") deploymentGroupName: deploymentGroupName,
@as("applicationName") applicationName: applicationName
}
type deploymentGroupInfo = {
@as("ecsServices") ecsServices: eCSServiceList,
@as("computePlatform") computePlatform: computePlatform,
@as("onPremisesTagSet") onPremisesTagSet: onPremisesTagSet,
@as("ec2TagSet") ec2TagSet: eC2TagSet,
@as("lastAttemptedDeployment") lastAttemptedDeployment: lastDeploymentInfo,
@as("lastSuccessfulDeployment") lastSuccessfulDeployment: lastDeploymentInfo,
@as("loadBalancerInfo") loadBalancerInfo: loadBalancerInfo,
@as("blueGreenDeploymentConfiguration") blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
@as("outdatedInstancesStrategy") outdatedInstancesStrategy: outdatedInstancesStrategy,
@as("deploymentStyle") deploymentStyle: deploymentStyle,
@as("autoRollbackConfiguration") autoRollbackConfiguration: autoRollbackConfiguration,
@as("alarmConfiguration") alarmConfiguration: alarmConfiguration,
@as("triggerConfigurations") triggerConfigurations: triggerConfigList,
@as("targetRevision") targetRevision: revisionLocation,
@as("serviceRoleArn") serviceRoleArn: role,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupList,
@as("onPremisesInstanceTagFilters") onPremisesInstanceTagFilters: tagFilterList,
@as("ec2TagFilters") ec2TagFilters: eC2TagFilterList,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("deploymentGroupName") deploymentGroupName: deploymentGroupName,
@as("deploymentGroupId") deploymentGroupId: deploymentGroupId,
@as("applicationName") applicationName: applicationName
}
type deploymentsInfoList = array<deploymentInfo>
type deploymentGroupInfoList = array<deploymentGroupInfo>
type clientType;
@module("@aws-sdk/client-codedeploy") @new external createClient: unit => clientType = "CodeDeployClient";
module UpdateApplication = {
  type t;
  type request = {
@as("newApplicationName") newApplicationName: applicationName,
@as("applicationName") applicationName: applicationName
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StopDeployment = {
  type t;
  type request = {
@as("autoRollbackEnabled") autoRollbackEnabled: nullableBoolean,
@as("deploymentId") deploymentId: option<deploymentId>
}
  type response = {
@as("statusMessage") statusMessage: message,
@as("status") status: stopStatus
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "StopDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SkipWaitTimeForInstanceTermination = {
  type t;
  type request = {
@as("deploymentId") deploymentId: deploymentId
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "SkipWaitTimeForInstanceTerminationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterOnPremisesInstance = {
  type t;
  type request = {
@as("iamUserArn") iamUserArn: iamUserArn,
@as("iamSessionArn") iamSessionArn: iamSessionArn,
@as("instanceName") instanceName: option<instanceName>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "RegisterOnPremisesInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutLifecycleEventHookExecutionStatus = {
  type t;
  type request = {
@as("status") status: lifecycleEventStatus,
@as("lifecycleEventHookExecutionId") lifecycleEventHookExecutionId: lifecycleEventHookExecutionId,
@as("deploymentId") deploymentId: deploymentId
}
  type response = {
@as("lifecycleEventHookExecutionId") lifecycleEventHookExecutionId: lifecycleEventHookExecutionId
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "PutLifecycleEventHookExecutionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterOnPremisesInstance = {
  type t;
  type request = {
@as("instanceName") instanceName: option<instanceName>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeregisterOnPremisesInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourcesByExternalId = {
  type t;
  type request = {
@as("externalId") externalId: externalId
}
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeleteResourcesByExternalIdCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGitHubAccountToken = {
  type t;
  type request = {
@as("tokenName") tokenName: gitHubAccountTokenName
}
  type response = {
@as("tokenName") tokenName: gitHubAccountTokenName
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeleteGitHubAccountTokenCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeploymentConfig = {
  type t;
  type request = {
@as("deploymentConfigName") deploymentConfigName: option<deploymentConfigName>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeleteDeploymentConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("applicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ContinueDeployment = {
  type t;
  type request = {
@as("deploymentWaitType") deploymentWaitType: deploymentWaitType,
@as("deploymentId") deploymentId: deploymentId
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ContinueDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGitHubAccountTokenNames = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tokenNameList") tokenNameList: gitHubAccountTokenNameList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListGitHubAccountTokenNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeployments = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("createTimeRange") createTimeRange: timeRange,
@as("includeOnlyStatuses") includeOnlyStatuses: deploymentStatusList,
@as("externalId") externalId: externalId,
@as("deploymentGroupName") deploymentGroupName: deploymentGroupName,
@as("applicationName") applicationName: applicationName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("deployments") deployments: deploymentsList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentInstances = {
  type t;
  type request = {
@as("instanceTypeFilter") instanceTypeFilter: instanceTypeList,
@as("instanceStatusFilter") instanceStatusFilter: instanceStatusList,
@as("nextToken") nextToken: nextToken,
@as("deploymentId") deploymentId: option<deploymentId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("instancesList") instancesList: instancesList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListDeploymentInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentGroups = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("deploymentGroups") deploymentGroups: deploymentGroupsList,
@as("applicationName") applicationName: applicationName
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListDeploymentGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentConfigs = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("deploymentConfigsList") deploymentConfigsList: deploymentConfigsList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListDeploymentConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("applications") applications: applicationsList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplication = {
  type t;
  type request = {
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("application") application: applicationInfo
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromOnPremisesInstances = {
  type t;
  type request = {
@as("instanceNames") instanceNames: option<instanceNameList>,
@as("tags") tags: option<tagList>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "RemoveTagsFromOnPremisesInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterApplicationRevision = {
  type t;
  type request = {
@as("revision") revision: option<revisionLocation>,
@as("description") description: description,
@as("applicationName") applicationName: option<applicationName>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "RegisterApplicationRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOnPremisesInstances = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("tagFilters") tagFilters: tagFilterList,
@as("registrationStatus") registrationStatus: registrationStatus
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("instanceNames") instanceNames: instanceNameList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListOnPremisesInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeploymentTargets = {
  type t;
  type request = {
@as("targetFilters") targetFilters: targetFilters,
@as("nextToken") nextToken: nextToken,
@as("deploymentId") deploymentId: deploymentId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("targetIds") targetIds: targetIdList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListDeploymentTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApplicationRevision = {
  type t;
  type request = {
@as("revision") revision: option<revisionLocation>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("revisionInfo") revisionInfo: genericRevisionInfo,
@as("revision") revision: revisionLocation,
@as("applicationName") applicationName: applicationName
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetApplicationRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeploymentGroup = {
  type t;
  type request = {
@as("deploymentGroupName") deploymentGroupName: option<deploymentGroupName>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("hooksNotCleanedUp") hooksNotCleanedUp: autoScalingGroupList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "DeleteDeploymentGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeploymentConfig = {
  type t;
  type request = {
@as("computePlatform") computePlatform: computePlatform,
@as("trafficRoutingConfig") trafficRoutingConfig: trafficRoutingConfig,
@as("minimumHealthyHosts") minimumHealthyHosts: minimumHealthyHosts,
@as("deploymentConfigName") deploymentConfigName: option<deploymentConfigName>
}
  type response = {
@as("deploymentConfigId") deploymentConfigId: deploymentConfigId
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "CreateDeploymentConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("computePlatform") computePlatform: computePlatform,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("applicationId") applicationId: applicationId
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetApplications = {
  type t;
  type request = {
@as("applicationNames") applicationNames: option<applicationsList>
}
  type response = {
@as("applicationsInfo") applicationsInfo: applicationsInfoList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToOnPremisesInstances = {
  type t;
  type request = {
@as("instanceNames") instanceNames: option<instanceNameList>,
@as("tags") tags: option<tagList>
}
  
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "AddTagsToOnPremisesInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListApplicationRevisions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("deployed") deployed: listStateFilterAction,
@as("s3KeyPrefix") s3KeyPrefix: s3Key,
@as("s3Bucket") s3Bucket: s3Bucket,
@as("sortOrder") sortOrder: sortOrder,
@as("sortBy") sortBy: applicationRevisionSortBy,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("revisions") revisions: revisionLocationList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "ListApplicationRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOnPremisesInstance = {
  type t;
  type request = {
@as("instanceName") instanceName: option<instanceName>
}
  type response = {
@as("instanceInfo") instanceInfo: instanceInfo
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetOnPremisesInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentConfig = {
  type t;
  type request = {
@as("deploymentConfigName") deploymentConfigName: option<deploymentConfigName>
}
  type response = {
@as("deploymentConfigInfo") deploymentConfigInfo: deploymentConfigInfo
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetDeploymentConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentInstance = {
  type t;
  type request = {
@as("instanceId") instanceId: option<instanceId>,
@as("deploymentId") deploymentId: option<deploymentId>
}
  type response = {
@as("instanceSummary") instanceSummary: instanceSummary
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetDeploymentInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetOnPremisesInstances = {
  type t;
  type request = {
@as("instanceNames") instanceNames: option<instanceNameList>
}
  type response = {
@as("instanceInfos") instanceInfos: instanceInfoList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetOnPremisesInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetApplicationRevisions = {
  type t;
  type request = {
@as("revisions") revisions: option<revisionLocationList>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("revisions") revisions: revisionInfoList,
@as("errorMessage") errorMessage: errorMessage,
@as("applicationName") applicationName: applicationName
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetApplicationRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeploymentGroup = {
  type t;
  type request = {
@as("onPremisesTagSet") onPremisesTagSet: onPremisesTagSet,
@as("ecsServices") ecsServices: eCSServiceList,
@as("ec2TagSet") ec2TagSet: eC2TagSet,
@as("loadBalancerInfo") loadBalancerInfo: loadBalancerInfo,
@as("blueGreenDeploymentConfiguration") blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
@as("deploymentStyle") deploymentStyle: deploymentStyle,
@as("outdatedInstancesStrategy") outdatedInstancesStrategy: outdatedInstancesStrategy,
@as("autoRollbackConfiguration") autoRollbackConfiguration: autoRollbackConfiguration,
@as("alarmConfiguration") alarmConfiguration: alarmConfiguration,
@as("triggerConfigurations") triggerConfigurations: triggerConfigList,
@as("serviceRoleArn") serviceRoleArn: role,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupNameList,
@as("onPremisesInstanceTagFilters") onPremisesInstanceTagFilters: tagFilterList,
@as("ec2TagFilters") ec2TagFilters: eC2TagFilterList,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("newDeploymentGroupName") newDeploymentGroupName: deploymentGroupName,
@as("currentDeploymentGroupName") currentDeploymentGroupName: option<deploymentGroupName>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("hooksNotCleanedUp") hooksNotCleanedUp: autoScalingGroupList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "UpdateDeploymentGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentTarget = {
  type t;
  type request = {
@as("targetId") targetId: targetId,
@as("deploymentId") deploymentId: deploymentId
}
  type response = {
@as("deploymentTarget") deploymentTarget: deploymentTarget
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetDeploymentTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeploymentGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("onPremisesTagSet") onPremisesTagSet: onPremisesTagSet,
@as("ecsServices") ecsServices: eCSServiceList,
@as("ec2TagSet") ec2TagSet: eC2TagSet,
@as("loadBalancerInfo") loadBalancerInfo: loadBalancerInfo,
@as("blueGreenDeploymentConfiguration") blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
@as("deploymentStyle") deploymentStyle: deploymentStyle,
@as("outdatedInstancesStrategy") outdatedInstancesStrategy: outdatedInstancesStrategy,
@as("autoRollbackConfiguration") autoRollbackConfiguration: autoRollbackConfiguration,
@as("alarmConfiguration") alarmConfiguration: alarmConfiguration,
@as("triggerConfigurations") triggerConfigurations: triggerConfigList,
@as("serviceRoleArn") serviceRoleArn: option<role>,
@as("autoScalingGroups") autoScalingGroups: autoScalingGroupNameList,
@as("onPremisesInstanceTagFilters") onPremisesInstanceTagFilters: tagFilterList,
@as("ec2TagFilters") ec2TagFilters: eC2TagFilterList,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("deploymentGroupName") deploymentGroupName: option<deploymentGroupName>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("deploymentGroupId") deploymentGroupId: deploymentGroupId
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "CreateDeploymentGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeployment = {
  type t;
  type request = {
@as("fileExistsBehavior") fileExistsBehavior: fileExistsBehavior,
@as("updateOutdatedInstancesOnly") updateOutdatedInstancesOnly: amazonawsBoolean,
@as("autoRollbackConfiguration") autoRollbackConfiguration: autoRollbackConfiguration,
@as("targetInstances") targetInstances: targetInstances,
@as("ignoreApplicationStopFailures") ignoreApplicationStopFailures: amazonawsBoolean,
@as("description") description: description,
@as("deploymentConfigName") deploymentConfigName: deploymentConfigName,
@as("revision") revision: revisionLocation,
@as("deploymentGroupName") deploymentGroupName: deploymentGroupName,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("deploymentId") deploymentId: deploymentId
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "CreateDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetDeploymentInstances = {
  type t;
  type request = {
@as("instanceIds") instanceIds: option<instancesList>,
@as("deploymentId") deploymentId: option<deploymentId>
}
  type response = {
@as("errorMessage") errorMessage: errorMessage,
@as("instancesSummary") instancesSummary: instanceSummaryList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetDeploymentInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeploymentGroup = {
  type t;
  type request = {
@as("deploymentGroupName") deploymentGroupName: option<deploymentGroupName>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("deploymentGroupInfo") deploymentGroupInfo: deploymentGroupInfo
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetDeploymentGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeployment = {
  type t;
  type request = {
@as("deploymentId") deploymentId: option<deploymentId>
}
  type response = {
@as("deploymentInfo") deploymentInfo: deploymentInfo
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "GetDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetDeploymentTargets = {
  type t;
  type request = {
@as("targetIds") targetIds: targetIdList,
@as("deploymentId") deploymentId: deploymentId
}
  type response = {
@as("deploymentTargets") deploymentTargets: deploymentTargetList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetDeploymentTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetDeployments = {
  type t;
  type request = {
@as("deploymentIds") deploymentIds: option<deploymentsList>
}
  type response = {
@as("deploymentsInfo") deploymentsInfo: deploymentsInfoList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetDeploymentGroups = {
  type t;
  type request = {
@as("deploymentGroupNames") deploymentGroupNames: option<deploymentGroupsList>,
@as("applicationName") applicationName: option<applicationName>
}
  type response = {
@as("errorMessage") errorMessage: errorMessage,
@as("deploymentGroupsInfo") deploymentGroupsInfo: deploymentGroupInfoList
}
  @module("@aws-sdk/client-codedeploy") @new external new_: (request) => t = "BatchGetDeploymentGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
