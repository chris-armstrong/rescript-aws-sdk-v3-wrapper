type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codedeploy") @new
external createClient: unit => awsServiceClient = "CodeDeployClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type waitTimeInMins = int
type versionId = string
type version = string
type value = string
type triggerTargetArn = string
type triggerName = string
type triggerEventType = [
  | @as("InstanceReady") #InstanceReady
  | @as("InstanceFailure") #InstanceFailure
  | @as("InstanceSuccess") #InstanceSuccess
  | @as("InstanceStart") #InstanceStart
  | @as("DeploymentReady") #DeploymentReady
  | @as("DeploymentRollback") #DeploymentRollback
  | @as("DeploymentStop") #DeploymentStop
  | @as("DeploymentFailure") #DeploymentFailure
  | @as("DeploymentSuccess") #DeploymentSuccess
  | @as("DeploymentStart") #DeploymentStart
]
type trafficWeight = float
type trafficRoutingType = [
  | @as("AllAtOnce") #AllAtOnce
  | @as("TimeBasedLinear") #TimeBasedLinear
  | @as("TimeBasedCanary") #TimeBasedCanary
]
type timestamp_ = Js.Date.t
type time = Js.Date.t
type targetStatus = [
  | @as("Ready") #Ready
  | @as("Unknown") #Unknown
  | @as("Skipped") #Skipped
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type targetLabel = [@as("Green") #Green | @as("Blue") #Blue]
type targetId = string
type targetGroupName = string
type targetFilterName = [
  | @as("ServerInstanceLabel") #ServerInstanceLabel
  | @as("TargetStatus") #TargetStatus
]
type targetArn = string
type tagFilterType = [
  | @as("KEY_AND_VALUE") #KEY_AND_VALUE
  | @as("VALUE_ONLY") #VALUE_ONLY
  | @as("KEY_ONLY") #KEY_ONLY
]
type stopStatus = [@as("Succeeded") #Succeeded | @as("Pending") #Pending]
type sortOrder = [@as("descending") #Descending | @as("ascending") #Ascending]
type scriptName = string
type s3Key = string
type s3Bucket = string
type role = string
type revisionLocationType = [
  | @as("AppSpecContent") #AppSpecContent
  | @as("String") #String
  | @as("GitHub") #GitHub
  | @as("S3") #S3
]
type repository = string
type registrationStatus = [@as("Deregistered") #Deregistered | @as("Registered") #Registered]
type rawStringSha256 = string
type rawStringContent = string
type percentage = int
type outdatedInstancesStrategy = [@as("IGNORE") #IGNORE | @as("UPDATE") #UPDATE]
type nullableBoolean = bool
type nextToken = string
type minimumHealthyHostsValue = int
type minimumHealthyHostsType = [@as("FLEET_PERCENT") #FLEET_PERCENT | @as("HOST_COUNT") #HOST_COUNT]
type message = string
type logTail = string
type listenerArn = string
type listStateFilterAction = [
  | @as("ignore") #Ignore
  | @as("exclude") #Exclude
  | @as("include") #Include
]
type lifecycleMessage = string
type lifecycleEventStatus = [
  | @as("Unknown") #Unknown
  | @as("Skipped") #Skipped
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type lifecycleEventName = string
type lifecycleEventHookExecutionId = string
type lifecycleErrorCode = [
  | @as("UnknownError") #UnknownError
  | @as("ScriptFailed") #ScriptFailed
  | @as("ScriptTimedOut") #ScriptTimedOut
  | @as("ScriptNotExecutable") #ScriptNotExecutable
  | @as("ScriptMissing") #ScriptMissing
  | @as("Success") #Success
]
type lambdaFunctionName = string
type lambdaFunctionAlias = string
type key = string
type instanceType = [@as("Green") #Green | @as("Blue") #Blue]
type instanceStatus = [
  | @as("Ready") #Ready
  | @as("Unknown") #Unknown
  | @as("Skipped") #Skipped
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type instanceName = string
type instanceId = string
type instanceCount = float
type instanceArn = string
type instanceAction = [@as("KEEP_ALIVE") #KEEP_ALIVE | @as("TERMINATE") #TERMINATE]
type iamUserArn = string
type iamSessionArn = string
type greenFleetProvisioningAction = [
  | @as("COPY_AUTO_SCALING_GROUP") #COPY_AUTO_SCALING_GROUP
  | @as("DISCOVER_EXISTING") #DISCOVER_EXISTING
]
type gitHubAccountTokenName = string
type filterValue = string
type fileExistsBehavior = [
  | @as("RETAIN") #RETAIN
  | @as("OVERWRITE") #OVERWRITE
  | @as("DISALLOW") #DISALLOW
]
type externalId = string
type errorMessage = string
type errorCode = [
  | @as("CLOUDFORMATION_STACK_FAILURE") #CLOUDFORMATION_STACK_FAILURE
  | @as("TIMEOUT") #TIMEOUT
  | @as("THROTTLED") #THROTTLED
  | @as("REVISION_MISSING") #REVISION_MISSING
  | @as("RESOURCE_LIMIT_EXCEEDED") #RESOURCE_LIMIT_EXCEEDED
  | @as("OVER_MAX_INSTANCES") #OVER_MAX_INSTANCES
  | @as("NO_INSTANCES") #NO_INSTANCES
  | @as("NO_EC2_SUBSCRIPTION") #NO_EC2_SUBSCRIPTION
  | @as("MISSING_GITHUB_TOKEN") #MISSING_GITHUB_TOKEN
  | @as("MISSING_ELB_INFORMATION") #MISSING_ELB_INFORMATION
  | @as("MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION") #MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION
  | @as("MANUAL_STOP") #MANUAL_STOP
  | @as("INVALID_REVISION") #INVALID_REVISION
  | @as("INVALID_LAMBDA_FUNCTION") #INVALID_LAMBDA_FUNCTION
  | @as("INVALID_LAMBDA_CONFIGURATION") #INVALID_LAMBDA_CONFIGURATION
  | @as("INVALID_ECS_SERVICE") #INVALID_ECS_SERVICE
  | @as("INTERNAL_ERROR") #INTERNAL_ERROR
  | @as("IAM_ROLE_PERMISSIONS") #IAM_ROLE_PERMISSIONS
  | @as("IAM_ROLE_MISSING") #IAM_ROLE_MISSING
  | @as("HOOK_EXECUTION_FAILURE") #HOOK_EXECUTION_FAILURE
  | @as("HEALTH_CONSTRAINTS_INVALID") #HEALTH_CONSTRAINTS_INVALID
  | @as("HEALTH_CONSTRAINTS") #HEALTH_CONSTRAINTS
  | @as("ELB_INVALID_INSTANCE") #ELB_INVALID_INSTANCE
  | @as("ELASTIC_LOAD_BALANCING_INVALID") #ELASTIC_LOAD_BALANCING_INVALID
  | @as("ECS_UPDATE_ERROR") #ECS_UPDATE_ERROR
  | @as("DEPLOYMENT_GROUP_MISSING") #DEPLOYMENT_GROUP_MISSING
  | @as("CUSTOMER_APPLICATION_UNHEALTHY") #CUSTOMER_APPLICATION_UNHEALTHY
  | @as("CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND") #CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND
  | @as("AUTO_SCALING_IAM_ROLE_PERMISSIONS") #AUTO_SCALING_IAM_ROLE_PERMISSIONS
  | @as("AUTO_SCALING_CONFIGURATION") #AUTO_SCALING_CONFIGURATION
  | @as("AUTOSCALING_VALIDATION_ERROR") #AUTOSCALING_VALIDATION_ERROR
  | @as("APPLICATION_MISSING") #APPLICATION_MISSING
  | @as("ALARM_ACTIVE") #ALARM_ACTIVE
  | @as("AGENT_ISSUE") #AGENT_ISSUE
]
type etag = string
type elbname = string
type ecstaskSetStatus = string
type ecstaskSetIdentifier = string
type ecstaskSetCount = float
type ecsserviceName = string
type ecsclusterName = string
type ec2TagFilterType = [
  | @as("KEY_AND_VALUE") #KEY_AND_VALUE
  | @as("VALUE_ONLY") #VALUE_ONLY
  | @as("KEY_ONLY") #KEY_ONLY
]
type duration = int
type description = string
type deploymentWaitType = [
  | @as("TERMINATION_WAIT") #TERMINATION_WAIT
  | @as("READY_WAIT") #READY_WAIT
]
type deploymentType = [@as("BLUE_GREEN") #BLUE_GREEN | @as("IN_PLACE") #IN_PLACE]
type deploymentTargetType = [
  | @as("CloudFormationTarget") #CloudFormationTarget
  | @as("ECSTarget") #ECSTarget
  | @as("LambdaTarget") #LambdaTarget
  | @as("InstanceTarget") #InstanceTarget
]
type deploymentStatus = [
  | @as("Ready") #Ready
  | @as("Stopped") #Stopped
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("Baking") #Baking
  | @as("InProgress") #InProgress
  | @as("Queued") #Queued
  | @as("Created") #Created
]
type deploymentReadyAction = [
  | @as("STOP_DEPLOYMENT") #STOP_DEPLOYMENT
  | @as("CONTINUE_DEPLOYMENT") #CONTINUE_DEPLOYMENT
]
type deploymentOption = [
  | @as("WITHOUT_TRAFFIC_CONTROL") #WITHOUT_TRAFFIC_CONTROL
  | @as("WITH_TRAFFIC_CONTROL") #WITH_TRAFFIC_CONTROL
]
type deploymentId = string
type deploymentGroupName = string
type deploymentGroupId = string
type deploymentCreator = [
  | @as("CloudFormationRollback") #CloudFormationRollback
  | @as("CloudFormation") #CloudFormation
  | @as("CodeDeployAutoUpdate") #CodeDeployAutoUpdate
  | @as("CodeDeploy") #CodeDeploy
  | @as("codeDeployRollback") #CodeDeployRollback
  | @as("autoscaling") #Autoscaling
  | @as("user") #User
]
type deploymentConfigName = string
type deploymentConfigId = string
type computePlatform = [@as("ECS") #ECS | @as("Lambda") #Lambda | @as("Server") #Server]
type commitId = string
type cloudFormationResourceType = string
type bundleType = [
  | @as("JSON") #JSON
  | @as("YAML") #YAML
  | @as("zip") #Zip
  | @as("tgz") #Tgz
  | @as("tar") #Tar
]
type boolean_ = bool
type autoScalingGroupName = string
type autoScalingGroupHook = string
type autoRollbackEvent = [
  | @as("DEPLOYMENT_STOP_ON_REQUEST") #DEPLOYMENT_STOP_ON_REQUEST
  | @as("DEPLOYMENT_STOP_ON_ALARM") #DEPLOYMENT_STOP_ON_ALARM
  | @as("DEPLOYMENT_FAILURE") #DEPLOYMENT_FAILURE
]
type arn = string
type applicationRevisionSortBy = [
  | @as("lastUsedTime") #LastUsedTime
  | @as("firstUsedTime") #FirstUsedTime
  | @as("registerTime") #RegisterTime
]
type applicationName = string
type applicationId = string
type alarmName = string
type additionalDeploymentStatusInfo = string
type triggerEventTypeList = array<triggerEventType>
type timeRange = {
  end: option<timestamp_>,
  start: option<timestamp_>,
}
type timeBasedLinear = {
  linearInterval: option<waitTimeInMins>,
  linearPercentage: option<percentage>,
}
type timeBasedCanary = {
  canaryInterval: option<waitTimeInMins>,
  canaryPercentage: option<percentage>,
}
type targetIdList = array<targetId>
type targetGroupInfo = {name: option<targetGroupName>}
type tagKeyList = array<key>
type tagFilter = {
  @as("Type") type_: option<tagFilterType>,
  @as("Value") value: option<value>,
  @as("Key") key: option<key>,
}
type tag = {
  @as("Value") value: option<value>,
  @as("Key") key: option<key>,
}
type s3Location = {
  eTag: option<etag>,
  version: option<versionId>,
  bundleType: option<bundleType>,
  key: option<s3Key>,
  bucket: option<s3Bucket>,
}
type rollbackInfo = {
  rollbackMessage: option<description>,
  rollbackTriggeringDeploymentId: option<deploymentId>,
  rollbackDeploymentId: option<deploymentId>,
}
type rawString = {
  sha256: option<rawStringSha256>,
  content: option<rawStringContent>,
}
type minimumHealthyHosts = {
  value: option<minimumHealthyHostsValue>,
  @as("type") type_: option<minimumHealthyHostsType>,
}
type listenerArnList = array<listenerArn>
type lastDeploymentInfo = {
  createTime: option<timestamp_>,
  endTime: option<timestamp_>,
  status: option<deploymentStatus>,
  deploymentId: option<deploymentId>,
}
type lambdaFunctionInfo = {
  targetVersionWeight: option<trafficWeight>,
  targetVersion: option<version>,
  currentVersion: option<version>,
  functionAlias: option<lambdaFunctionAlias>,
  functionName: option<lambdaFunctionName>,
}
type instancesList = array<instanceId>
type instanceTypeList = array<instanceType>
type instanceStatusList = array<instanceStatus>
type instanceNameList = array<instanceName>
type greenFleetProvisioningOption = {action: option<greenFleetProvisioningAction>}
type gitHubLocation = {
  commitId: option<commitId>,
  repository: option<repository>,
}
type gitHubAccountTokenNameList = array<gitHubAccountTokenName>
type filterValueList = array<filterValue>
type errorInformation = {
  message: option<errorMessage>,
  code: option<errorCode>,
}
type elbinfo = {name: option<elbname>}
type ecsservice = {
  clusterName: option<ecsclusterName>,
  serviceName: option<ecsserviceName>,
}
type ec2TagFilter = {
  @as("Type") type_: option<ec2TagFilterType>,
  @as("Value") value: option<value>,
  @as("Key") key: option<key>,
}
type diagnostics = {
  logTail: option<logTail>,
  message: option<lifecycleMessage>,
  scriptName: option<scriptName>,
  errorCode: option<lifecycleErrorCode>,
}
type deploymentsList = array<deploymentId>
type deploymentStyle = {
  deploymentOption: option<deploymentOption>,
  deploymentType: option<deploymentType>,
}
type deploymentStatusMessageList = array<errorMessage>
type deploymentStatusList = array<deploymentStatus>
type deploymentReadyOption = {
  waitTimeInMinutes: option<duration>,
  actionOnTimeout: option<deploymentReadyAction>,
}
type deploymentOverview = {
  @as("Ready") ready: option<instanceCount>,
  @as("Skipped") skipped: option<instanceCount>,
  @as("Failed") failed: option<instanceCount>,
  @as("Succeeded") succeeded: option<instanceCount>,
  @as("InProgress") inProgress: option<instanceCount>,
  @as("Pending") pending: option<instanceCount>,
}
type deploymentGroupsList = array<deploymentGroupName>
type deploymentConfigsList = array<deploymentConfigName>
type blueInstanceTerminationOption = {
  terminationWaitTimeInMinutes: option<duration>,
  action: option<instanceAction>,
}
type autoScalingGroupNameList = array<autoScalingGroupName>
type autoScalingGroup = {
  hook: option<autoScalingGroupHook>,
  name: option<autoScalingGroupName>,
}
type autoRollbackEventsList = array<autoRollbackEvent>
type applicationsList = array<applicationName>
type applicationInfo = {
  computePlatform: option<computePlatform>,
  gitHubAccountName: option<gitHubAccountTokenName>,
  linkedToGitHub: option<boolean_>,
  createTime: option<timestamp_>,
  applicationName: option<applicationName>,
  applicationId: option<applicationId>,
}
type appSpecContent = {
  sha256: option<rawStringSha256>,
  content: option<rawStringContent>,
}
type alarm = {name: option<alarmName>}
type triggerConfig = {
  triggerEvents: option<triggerEventTypeList>,
  triggerTargetArn: option<triggerTargetArn>,
  triggerName: option<triggerName>,
}
type trafficRoutingConfig = {
  timeBasedLinear: option<timeBasedLinear>,
  timeBasedCanary: option<timeBasedCanary>,
  @as("type") type_: option<trafficRoutingType>,
}
type trafficRoute = {listenerArns: option<listenerArnList>}
type targetGroupInfoList = array<targetGroupInfo>
type targetFilters = Js.Dict.t<filterValueList>
type tagList_ = array<tag>
type tagFilterList = array<tagFilter>
type revisionLocation = {
  appSpecContent: option<appSpecContent>,
  @as("string") string_: option<rawString>,
  gitHubLocation: option<gitHubLocation>,
  s3Location: option<s3Location>,
  revisionType: option<revisionLocationType>,
}
type relatedDeployments = {
  autoUpdateOutdatedInstancesDeploymentIds: option<deploymentsList>,
  autoUpdateOutdatedInstancesRootDeploymentId: option<deploymentId>,
}
type lifecycleEvent = {
  status: option<lifecycleEventStatus>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  diagnostics: option<diagnostics>,
  lifecycleEventName: option<lifecycleEventName>,
}
type genericRevisionInfo = {
  registerTime: option<timestamp_>,
  lastUsedTime: option<timestamp_>,
  firstUsedTime: option<timestamp_>,
  deploymentGroups: option<deploymentGroupsList>,
  description: option<description>,
}
type elbinfoList = array<elbinfo>
type ecstaskSet = {
  taskSetLabel: option<targetLabel>,
  targetGroup: option<targetGroupInfo>,
  trafficWeight: option<trafficWeight>,
  status: option<ecstaskSetStatus>,
  runningCount: option<ecstaskSetCount>,
  pendingCount: option<ecstaskSetCount>,
  desiredCount: option<ecstaskSetCount>,
  identifer: option<ecstaskSetIdentifier>,
}
type ecsserviceList = array<ecsservice>
type ec2TagFilterList = array<ec2TagFilter>
type blueGreenDeploymentConfiguration = {
  greenFleetProvisioningOption: option<greenFleetProvisioningOption>,
  deploymentReadyOption: option<deploymentReadyOption>,
  terminateBlueInstancesOnDeploymentSuccess: option<blueInstanceTerminationOption>,
}
type autoScalingGroupList = array<autoScalingGroup>
type autoRollbackConfiguration = {
  events: option<autoRollbackEventsList>,
  enabled: option<boolean_>,
}
type applicationsInfoList = array<applicationInfo>
type alarmList = array<alarm>
type triggerConfigList = array<triggerConfig>
type targetGroupPairInfo = {
  testTrafficRoute: option<trafficRoute>,
  prodTrafficRoute: option<trafficRoute>,
  targetGroups: option<targetGroupInfoList>,
}
type revisionLocationList = array<revisionLocation>
type revisionInfo = {
  genericRevisionInfo: option<genericRevisionInfo>,
  revisionLocation: option<revisionLocation>,
}
type onPremisesTagSetList = array<tagFilterList>
type lifecycleEventList = array<lifecycleEvent>
type instanceInfo = {
  tags: option<tagList_>,
  deregisterTime: option<timestamp_>,
  registerTime: option<timestamp_>,
  instanceArn: option<instanceArn>,
  iamUserArn: option<iamUserArn>,
  iamSessionArn: option<iamSessionArn>,
  instanceName: option<instanceName>,
}
type ecstaskSetList = array<ecstaskSet>
type ec2TagSetList = array<ec2TagFilterList>
type deploymentConfigInfo = {
  trafficRoutingConfig: option<trafficRoutingConfig>,
  computePlatform: option<computePlatform>,
  createTime: option<timestamp_>,
  minimumHealthyHosts: option<minimumHealthyHosts>,
  deploymentConfigName: option<deploymentConfigName>,
  deploymentConfigId: option<deploymentConfigId>,
}
type alarmConfiguration = {
  alarms: option<alarmList>,
  ignorePollAlarmFailure: option<boolean_>,
  enabled: option<boolean_>,
}
type targetGroupPairInfoList = array<targetGroupPairInfo>
type revisionInfoList = array<revisionInfo>
type onPremisesTagSet = {onPremisesTagSetList: option<onPremisesTagSetList>}
type lambdaTarget = {
  lambdaFunctionInfo: option<lambdaFunctionInfo>,
  lifecycleEvents: option<lifecycleEventList>,
  lastUpdatedAt: option<time>,
  status: option<targetStatus>,
  targetArn: option<targetArn>,
  targetId: option<targetId>,
  deploymentId: option<deploymentId>,
}
type instanceTarget = {
  instanceLabel: option<targetLabel>,
  lifecycleEvents: option<lifecycleEventList>,
  lastUpdatedAt: option<time>,
  status: option<targetStatus>,
  targetArn: option<targetArn>,
  targetId: option<targetId>,
  deploymentId: option<deploymentId>,
}
type instanceSummary = {
  instanceType: option<instanceType>,
  lifecycleEvents: option<lifecycleEventList>,
  lastUpdatedAt: option<timestamp_>,
  status: option<instanceStatus>,
  instanceId: option<instanceId>,
  deploymentId: option<deploymentId>,
}
type instanceInfoList = array<instanceInfo>
type ecstarget = {
  taskSetsInfo: option<ecstaskSetList>,
  status: option<targetStatus>,
  lifecycleEvents: option<lifecycleEventList>,
  lastUpdatedAt: option<time>,
  targetArn: option<targetArn>,
  targetId: option<targetId>,
  deploymentId: option<deploymentId>,
}
type ec2TagSet = {ec2TagSetList: option<ec2TagSetList>}
type cloudFormationTarget = {
  targetVersionWeight: option<trafficWeight>,
  resourceType: option<cloudFormationResourceType>,
  status: option<targetStatus>,
  lifecycleEvents: option<lifecycleEventList>,
  lastUpdatedAt: option<time>,
  targetId: option<targetId>,
  deploymentId: option<deploymentId>,
}
type targetInstances = {
  ec2TagSet: option<ec2TagSet>,
  autoScalingGroups: option<autoScalingGroupNameList>,
  tagFilters: option<ec2TagFilterList>,
}
type loadBalancerInfo = {
  targetGroupPairInfoList: option<targetGroupPairInfoList>,
  targetGroupInfoList: option<targetGroupInfoList>,
  elbInfoList: option<elbinfoList>,
}
type instanceSummaryList = array<instanceSummary>
type deploymentTarget = {
  cloudFormationTarget: option<cloudFormationTarget>,
  ecsTarget: option<ecstarget>,
  lambdaTarget: option<lambdaTarget>,
  instanceTarget: option<instanceTarget>,
  deploymentTargetType: option<deploymentTargetType>,
}
type deploymentTargetList = array<deploymentTarget>
type deploymentInfo = {
  relatedDeployments: option<relatedDeployments>,
  externalId: option<externalId>,
  computePlatform: option<computePlatform>,
  deploymentStatusMessages: option<deploymentStatusMessageList>,
  fileExistsBehavior: option<fileExistsBehavior>,
  additionalDeploymentStatusInfo: option<additionalDeploymentStatusInfo>,
  loadBalancerInfo: option<loadBalancerInfo>,
  blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
  instanceTerminationWaitTimeStarted: option<boolean_>,
  targetInstances: option<targetInstances>,
  deploymentStyle: option<deploymentStyle>,
  rollbackInfo: option<rollbackInfo>,
  updateOutdatedInstancesOnly: option<boolean_>,
  autoRollbackConfiguration: option<autoRollbackConfiguration>,
  ignoreApplicationStopFailures: option<boolean_>,
  creator: option<deploymentCreator>,
  description: option<description>,
  deploymentOverview: option<deploymentOverview>,
  completeTime: option<timestamp_>,
  startTime: option<timestamp_>,
  createTime: option<timestamp_>,
  errorInformation: option<errorInformation>,
  status: option<deploymentStatus>,
  revision: option<revisionLocation>,
  previousRevision: option<revisionLocation>,
  deploymentId: option<deploymentId>,
  deploymentConfigName: option<deploymentConfigName>,
  deploymentGroupName: option<deploymentGroupName>,
  applicationName: option<applicationName>,
}
type deploymentGroupInfo = {
  ecsServices: option<ecsserviceList>,
  computePlatform: option<computePlatform>,
  onPremisesTagSet: option<onPremisesTagSet>,
  ec2TagSet: option<ec2TagSet>,
  lastAttemptedDeployment: option<lastDeploymentInfo>,
  lastSuccessfulDeployment: option<lastDeploymentInfo>,
  loadBalancerInfo: option<loadBalancerInfo>,
  blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
  outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
  deploymentStyle: option<deploymentStyle>,
  autoRollbackConfiguration: option<autoRollbackConfiguration>,
  alarmConfiguration: option<alarmConfiguration>,
  triggerConfigurations: option<triggerConfigList>,
  targetRevision: option<revisionLocation>,
  serviceRoleArn: option<role>,
  autoScalingGroups: option<autoScalingGroupList>,
  onPremisesInstanceTagFilters: option<tagFilterList>,
  ec2TagFilters: option<ec2TagFilterList>,
  deploymentConfigName: option<deploymentConfigName>,
  deploymentGroupName: option<deploymentGroupName>,
  deploymentGroupId: option<deploymentGroupId>,
  applicationName: option<applicationName>,
}
type deploymentsInfoList = array<deploymentInfo>
type deploymentGroupInfoList = array<deploymentGroupInfo>

module UpdateApplication = {
  type t
  type request = {
    newApplicationName: option<applicationName>,
    applicationName: option<applicationName>,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "UpdateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopDeployment = {
  type t
  type request = {
    autoRollbackEnabled: option<nullableBoolean>,
    deploymentId: deploymentId,
  }
  type response = {
    statusMessage: option<message>,
    status: option<stopStatus>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "StopDeploymentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SkipWaitTimeForInstanceTermination = {
  type t
  type request = {deploymentId: option<deploymentId>}

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "SkipWaitTimeForInstanceTerminationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterOnPremisesInstance = {
  type t
  type request = {
    iamUserArn: option<iamUserArn>,
    iamSessionArn: option<iamSessionArn>,
    instanceName: instanceName,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "RegisterOnPremisesInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecycleEventHookExecutionStatus = {
  type t
  type request = {
    status: option<lifecycleEventStatus>,
    lifecycleEventHookExecutionId: option<lifecycleEventHookExecutionId>,
    deploymentId: option<deploymentId>,
  }
  type response = {lifecycleEventHookExecutionId: option<lifecycleEventHookExecutionId>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "PutLifecycleEventHookExecutionStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterOnPremisesInstance = {
  type t
  type request = {instanceName: instanceName}

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeregisterOnPremisesInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcesByExternalId = {
  type t
  type request = {externalId: option<externalId>}
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeleteResourcesByExternalIdCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGitHubAccountToken = {
  type t
  type request = {tokenName: option<gitHubAccountTokenName>}
  type response = {tokenName: option<gitHubAccountTokenName>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeleteGitHubAccountTokenCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeploymentConfig = {
  type t
  type request = {deploymentConfigName: deploymentConfigName}

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeleteDeploymentConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  type request = {applicationName: applicationName}

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeleteApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ContinueDeployment = {
  type t
  type request = {
    deploymentWaitType: option<deploymentWaitType>,
    deploymentId: option<deploymentId>,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ContinueDeploymentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGitHubAccountTokenNames = {
  type t
  type request = {nextToken: option<nextToken>}
  type response = {
    nextToken: option<nextToken>,
    tokenNameList: option<gitHubAccountTokenNameList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListGitHubAccountTokenNamesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeployments = {
  type t
  type request = {
    nextToken: option<nextToken>,
    createTimeRange: option<timeRange>,
    includeOnlyStatuses: option<deploymentStatusList>,
    externalId: option<externalId>,
    deploymentGroupName: option<deploymentGroupName>,
    applicationName: option<applicationName>,
  }
  type response = {
    nextToken: option<nextToken>,
    deployments: option<deploymentsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "ListDeploymentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentInstances = {
  type t
  type request = {
    instanceTypeFilter: option<instanceTypeList>,
    instanceStatusFilter: option<instanceStatusList>,
    nextToken: option<nextToken>,
    deploymentId: deploymentId,
  }
  type response = {
    nextToken: option<nextToken>,
    instancesList: option<instancesList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListDeploymentInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentGroups = {
  type t
  type request = {
    nextToken: option<nextToken>,
    applicationName: applicationName,
  }
  type response = {
    nextToken: option<nextToken>,
    deploymentGroups: option<deploymentGroupsList>,
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListDeploymentGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentConfigs = {
  type t
  type request = {nextToken: option<nextToken>}
  type response = {
    nextToken: option<nextToken>,
    deploymentConfigsList: option<deploymentConfigsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListDeploymentConfigsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  type request = {nextToken: option<nextToken>}
  type response = {
    nextToken: option<nextToken>,
    applications: option<applicationsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "ListApplicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplication = {
  type t
  type request = {applicationName: applicationName}
  type response = {application: option<applicationInfo>}
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "GetApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = unit
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromOnPremisesInstances = {
  type t
  type request = {
    instanceNames: instanceNameList,
    tags: tagList_,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "RemoveTagsFromOnPremisesInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterApplicationRevision = {
  type t
  type request = {
    revision: revisionLocation,
    description: option<description>,
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "RegisterApplicationRevisionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ResourceArn") resourceArn: arn,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOnPremisesInstances = {
  type t
  type request = {
    nextToken: option<nextToken>,
    tagFilters: option<tagFilterList>,
    registrationStatus: option<registrationStatus>,
  }
  type response = {
    nextToken: option<nextToken>,
    instanceNames: option<instanceNameList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListOnPremisesInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentTargets = {
  type t
  type request = {
    targetFilters: option<targetFilters>,
    nextToken: option<nextToken>,
    deploymentId: option<deploymentId>,
  }
  type response = {
    nextToken: option<nextToken>,
    targetIds: option<targetIdList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListDeploymentTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationRevision = {
  type t
  type request = {
    revision: revisionLocation,
    applicationName: applicationName,
  }
  type response = {
    revisionInfo: option<genericRevisionInfo>,
    revision: option<revisionLocation>,
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetApplicationRevisionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeploymentGroup = {
  type t
  type request = {
    deploymentGroupName: deploymentGroupName,
    applicationName: applicationName,
  }
  type response = {hooksNotCleanedUp: option<autoScalingGroupList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "DeleteDeploymentGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentConfig = {
  type t
  type request = {
    computePlatform: option<computePlatform>,
    trafficRoutingConfig: option<trafficRoutingConfig>,
    minimumHealthyHosts: option<minimumHealthyHosts>,
    deploymentConfigName: deploymentConfigName,
  }
  type response = {deploymentConfigId: option<deploymentConfigId>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "CreateDeploymentConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  type request = {
    tags: option<tagList_>,
    computePlatform: option<computePlatform>,
    applicationName: applicationName,
  }
  type response = {applicationId: option<applicationId>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "CreateApplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetApplications = {
  type t
  type request = {applicationNames: applicationsList}
  type response = {applicationsInfo: option<applicationsInfoList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetApplicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToOnPremisesInstances = {
  type t
  type request = {
    instanceNames: instanceNameList,
    tags: tagList_,
  }

  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "AddTagsToOnPremisesInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListApplicationRevisions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    deployed: option<listStateFilterAction>,
    s3KeyPrefix: option<s3Key>,
    s3Bucket: option<s3Bucket>,
    sortOrder: option<sortOrder>,
    sortBy: option<applicationRevisionSortBy>,
    applicationName: applicationName,
  }
  type response = {
    nextToken: option<nextToken>,
    revisions: option<revisionLocationList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "ListApplicationRevisionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOnPremisesInstance = {
  type t
  type request = {instanceName: instanceName}
  type response = {instanceInfo: option<instanceInfo>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetOnPremisesInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentConfig = {
  type t
  type request = {deploymentConfigName: deploymentConfigName}
  type response = {deploymentConfigInfo: option<deploymentConfigInfo>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetDeploymentConfigCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentInstance = {
  type t
  type request = {
    instanceId: instanceId,
    deploymentId: deploymentId,
  }
  type response = {instanceSummary: option<instanceSummary>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetDeploymentInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetOnPremisesInstances = {
  type t
  type request = {instanceNames: instanceNameList}
  type response = {instanceInfos: option<instanceInfoList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetOnPremisesInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetApplicationRevisions = {
  type t
  type request = {
    revisions: revisionLocationList,
    applicationName: applicationName,
  }
  type response = {
    revisions: option<revisionInfoList>,
    errorMessage: option<errorMessage>,
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetApplicationRevisionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeploymentGroup = {
  type t
  type request = {
    onPremisesTagSet: option<onPremisesTagSet>,
    ecsServices: option<ecsserviceList>,
    ec2TagSet: option<ec2TagSet>,
    loadBalancerInfo: option<loadBalancerInfo>,
    blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
    deploymentStyle: option<deploymentStyle>,
    outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    alarmConfiguration: option<alarmConfiguration>,
    triggerConfigurations: option<triggerConfigList>,
    serviceRoleArn: option<role>,
    autoScalingGroups: option<autoScalingGroupNameList>,
    onPremisesInstanceTagFilters: option<tagFilterList>,
    ec2TagFilters: option<ec2TagFilterList>,
    deploymentConfigName: option<deploymentConfigName>,
    newDeploymentGroupName: option<deploymentGroupName>,
    currentDeploymentGroupName: deploymentGroupName,
    applicationName: applicationName,
  }
  type response = {hooksNotCleanedUp: option<autoScalingGroupList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "UpdateDeploymentGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentTarget = {
  type t
  type request = {
    targetId: option<targetId>,
    deploymentId: option<deploymentId>,
  }
  type response = {deploymentTarget: option<deploymentTarget>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetDeploymentTargetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentGroup = {
  type t
  type request = {
    tags: option<tagList_>,
    onPremisesTagSet: option<onPremisesTagSet>,
    ecsServices: option<ecsserviceList>,
    ec2TagSet: option<ec2TagSet>,
    loadBalancerInfo: option<loadBalancerInfo>,
    blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
    deploymentStyle: option<deploymentStyle>,
    outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    alarmConfiguration: option<alarmConfiguration>,
    triggerConfigurations: option<triggerConfigList>,
    serviceRoleArn: role,
    autoScalingGroups: option<autoScalingGroupNameList>,
    onPremisesInstanceTagFilters: option<tagFilterList>,
    ec2TagFilters: option<ec2TagFilterList>,
    deploymentConfigName: option<deploymentConfigName>,
    deploymentGroupName: deploymentGroupName,
    applicationName: applicationName,
  }
  type response = {deploymentGroupId: option<deploymentGroupId>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "CreateDeploymentGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  type request = {
    fileExistsBehavior: option<fileExistsBehavior>,
    updateOutdatedInstancesOnly: option<boolean_>,
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    targetInstances: option<targetInstances>,
    ignoreApplicationStopFailures: option<boolean_>,
    description: option<description>,
    deploymentConfigName: option<deploymentConfigName>,
    revision: option<revisionLocation>,
    deploymentGroupName: option<deploymentGroupName>,
    applicationName: applicationName,
  }
  type response = {deploymentId: option<deploymentId>}
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "CreateDeploymentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentInstances = {
  type t
  type request = {
    instanceIds: instancesList,
    deploymentId: deploymentId,
  }
  type response = {
    errorMessage: option<errorMessage>,
    instancesSummary: option<instanceSummaryList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetDeploymentInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentGroup = {
  type t
  type request = {
    deploymentGroupName: deploymentGroupName,
    applicationName: applicationName,
  }
  type response = {deploymentGroupInfo: option<deploymentGroupInfo>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "GetDeploymentGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployment = {
  type t
  type request = {deploymentId: deploymentId}
  type response = {deploymentInfo: option<deploymentInfo>}
  @module("@aws-sdk/client-codedeploy") @new external new_: request => t = "GetDeploymentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentTargets = {
  type t
  type request = {
    targetIds: option<targetIdList>,
    deploymentId: option<deploymentId>,
  }
  type response = {deploymentTargets: option<deploymentTargetList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetDeploymentTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeployments = {
  type t
  type request = {deploymentIds: deploymentsList}
  type response = {deploymentsInfo: option<deploymentsInfoList>}
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetDeploymentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentGroups = {
  type t
  type request = {
    deploymentGroupNames: deploymentGroupsList,
    applicationName: applicationName,
  }
  type response = {
    errorMessage: option<errorMessage>,
    deploymentGroupsInfo: option<deploymentGroupInfoList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new_: request => t = "BatchGetDeploymentGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
