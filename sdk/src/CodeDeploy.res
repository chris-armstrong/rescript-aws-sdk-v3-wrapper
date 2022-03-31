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
@ocaml.doc("<p>Information about a time range.</p>")
type timeRange = {
  @ocaml.doc("<p>The end time of the time range.</p>
        <note>
            <p>Specify null to leave the end time open-ended.</p>
        </note>")
  end: option<timestamp_>,
  @ocaml.doc("<p>The start time of the time range.</p>
        <note>
            <p>Specify null to leave the start time open-ended.</p>
        </note>")
  start: option<timestamp_>,
}
@ocaml.doc("<p>A configuration that shifts traffic from one version of a Lambda function or ECS task
            set to another in equal increments, with an equal number of minutes between each
            increment. The original and target Lambda function versions or ECS task sets are
            specified in the deployment's AppSpec file.</p>")
type timeBasedLinear = {
  @ocaml.doc("<p>The number of minutes between each incremental traffic shift of a
                <code>TimeBasedLinear</code> deployment.</p>")
  linearInterval: option<waitTimeInMins>,
  @ocaml.doc("<p>The percentage of traffic that is shifted at the start of each increment of a
                <code>TimeBasedLinear</code> deployment.</p>")
  linearPercentage: option<percentage>,
}
@ocaml.doc("<p>A configuration that shifts traffic from one version of a Lambda function or ECS task
            set to another in two increments. The original and target Lambda function versions or
            ECS task sets are specified in the deployment's AppSpec file.</p>")
type timeBasedCanary = {
  @ocaml.doc("<p>The number of minutes between the first and second traffic shifts of a
                <code>TimeBasedCanary</code> deployment.</p>")
  canaryInterval: option<waitTimeInMins>,
  @ocaml.doc("<p>The percentage of traffic to shift in the first increment of a
                <code>TimeBasedCanary</code> deployment.</p>")
  canaryPercentage: option<percentage>,
}
type targetIdList = array<targetId>
@ocaml.doc("<p>Information about a target group in Elastic Load Balancing to use in a deployment.
            Instances are registered as targets in a target group, and traffic is routed to the
            target group.</p>")
type targetGroupInfo = {
  @ocaml.doc("<p>For blue/green deployments, the name of the target group that instances in the
            original environment are deregistered from, and instances in the replacement environment
            are registered with. For in-place deployments, the name of the target group that
            instances are deregistered from, so they are not serving traffic during a deployment,
            and then re-registered with after the deployment is complete. </p>")
  name: option<targetGroupName>,
}
type tagKeyList = array<key>
@ocaml.doc("<p>Information about an on-premises instance tag filter.</p>")
type tagFilter = {
  @ocaml.doc("<p>The on-premises instance tag filter type:</p>
        <ul>
            <li>
                <p>KEY_ONLY: Key only.</p>
            </li>
            <li>
                <p>VALUE_ONLY: Value only.</p>
            </li>
            <li>
                <p>KEY_AND_VALUE: Key and value.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<tagFilterType>,
  @ocaml.doc("<p>The on-premises instance tag filter value.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>The on-premises instance tag filter key.</p>") @as("Key") key: option<key>,
}
@ocaml.doc("<p>Information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>The tag's key.</p>") @as("Key") key: option<key>,
}
@ocaml.doc("<p>Information about the location of application artifacts stored in Amazon S3.</p>")
type s3Location = {
  @ocaml.doc("<p>The ETag of the Amazon S3 object that represents the bundled artifacts for the
            application revision.</p>
        <p>If the ETag is not specified as an input parameter, ETag validation of the object is
            skipped.</p>")
  eTag: option<etag>,
  @ocaml.doc("<p>A specific version of the Amazon S3 object that represents the bundled artifacts for
            the application revision.</p>
        <p>If the version is not specified, the system uses the most recent version by
            default.</p>")
  version: option<versionId>,
  @ocaml.doc("<p>The file type of the application revision. Must be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>tar</code>: A tar archive file.</p>
            </li>
            <li>
                <p>
                  <code>tgz</code>: A compressed tar archive file.</p>
            </li>
            <li>
                <p>
                  <code>zip</code>: A zip archive file.</p>
            </li>
         </ul>")
  bundleType: option<bundleType>,
  @ocaml.doc("<p>The name of the Amazon S3 object that represents the bundled artifacts for the
            application revision.</p>")
  key: option<s3Key>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where the application revision is stored.</p>")
  bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Information about a deployment rollback.</p>")
type rollbackInfo = {
  @ocaml.doc("<p>Information that describes the status of a deployment rollback (for example, whether
            the deployment can't be rolled back, is in progress, failed, or succeeded). </p>")
  rollbackMessage: option<description>,
  @ocaml.doc("<p>The deployment ID of the deployment that was underway and triggered a rollback
            deployment because it failed or was stopped.</p>")
  rollbackTriggeringDeploymentId: option<deploymentId>,
  @ocaml.doc("<p>The ID of the deployment rollback.</p>")
  rollbackDeploymentId: option<deploymentId>,
}
@ocaml.doc("<p>A revision for an AWS Lambda deployment that is a YAML-formatted or JSON-formatted
            string. For AWS Lambda deployments, the revision is the same as the AppSpec file.</p>")
type rawString = {
  @ocaml.doc("<p>The SHA256 hash value of the revision content.</p>")
  sha256: option<rawStringSha256>,
  @ocaml.doc("<p>The YAML-formatted or JSON-formatted revision string. It includes information about
            which Lambda function to update and optional Lambda functions that validate deployment
            lifecycle events.</p>")
  content: option<rawStringContent>,
}
@ocaml.doc("<p>Information about minimum healthy instance.</p>")
type minimumHealthyHosts = {
  @ocaml.doc("<p>The minimum healthy instance value.</p>") value: option<minimumHealthyHostsValue>,
  @ocaml.doc("<p>The minimum healthy instance type:</p>
        <ul>
            <li>
                <p>
                  <code>HOST_COUNT</code>: The minimum number of healthy instances as an
                    absolute value.</p>
            </li>
            <li>
                <p>
                  <code>FLEET_PERCENT</code>: The minimum number of healthy instances as a
                    percentage of the total number of instances in the deployment.</p>
            </li>
         </ul>
        <p>In an example of nine instances, if a HOST_COUNT of six is specified, deploy to up to
            three instances at a time. The deployment is successful if six or more instances are
            deployed to successfully. Otherwise, the deployment fails. If a FLEET_PERCENT of 40 is
            specified, deploy to up to five instances at a time. The deployment is successful if
            four or more instances are deployed to successfully. Otherwise, the deployment
            fails.</p>
        <note>
            <p>In a call to the <code>GetDeploymentConfig</code>, CodeDeployDefault.OneAtATime
                returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This
                means a deployment to only one instance at a time. (You cannot set the type to
                MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT.) In addition, with
                CodeDeployDefault.OneAtATime, AWS CodeDeploy attempts to ensure that all instances
                but one are kept in a healthy state during the deployment. Although this allows one
                instance at a time to be taken offline for a new deployment, it also means that if
                the deployment to the last instance fails, the overall deployment is still
                successful.</p>
        </note>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html\">AWS CodeDeploy Instance
                Health</a> in the <i>AWS CodeDeploy User Guide</i>.</p>")
  @as("type")
  type_: option<minimumHealthyHostsType>,
}
type listenerArnList = array<listenerArn>
@ocaml.doc("<p>Information about the most recent attempted or successful deployment to a deployment
            group.</p>")
type lastDeploymentInfo = {
  @ocaml.doc("<p>A timestamp that indicates when the most recent deployment to the deployment group
            started.</p>")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp that indicates when the most recent deployment to the deployment group was
            complete.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the most recent deployment.</p>") status: option<deploymentStatus>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
}
@ocaml.doc("<p> Information about a Lambda function specified in a deployment. </p>")
type lambdaFunctionInfo = {
  @ocaml.doc("<p> The percentage of production traffic that the target version of a Lambda function
            receives. </p>")
  targetVersionWeight: option<trafficWeight>,
  @ocaml.doc("<p> The version of a Lambda function that production traffic points to after the Lambda
            function is deployed. </p>")
  targetVersion: option<version>,
  @ocaml.doc("<p> The version of a Lambda function that production traffic points to. </p>")
  currentVersion: option<version>,
  @ocaml.doc("<p> The alias of a Lambda function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html\">AWS Lambda Function Aliases</a> in the
                <i>AWS Lambda Developer Guide</i>.</p>")
  functionAlias: option<lambdaFunctionAlias>,
  @ocaml.doc("<p> The name of a Lambda function. </p>") functionName: option<lambdaFunctionName>,
}
type instancesList = array<instanceId>
type instanceTypeList = array<instanceType>
type instanceStatusList = array<instanceStatus>
type instanceNameList = array<instanceName>
@ocaml.doc("<p>Information about the instances that belong to the replacement environment in a
            blue/green deployment.</p>")
type greenFleetProvisioningOption = {
  @ocaml.doc("<p>The method used to add instances to a replacement environment.</p>
        <ul>
            <li>
                <p>
                  <code>DISCOVER_EXISTING</code>: Use instances that already exist or will be
                    created manually.</p>
            </li>
            <li>
                <p>
                  <code>COPY_AUTO_SCALING_GROUP</code>: Use settings from a specified Auto
                    Scaling group to define and create instances in a new Auto Scaling group.</p>
            </li>
         </ul>")
  action: option<greenFleetProvisioningAction>,
}
@ocaml.doc("<p>Information about the location of application artifacts stored in GitHub.</p>")
type gitHubLocation = {
  @ocaml.doc("<p>The SHA1 commit ID of the GitHub commit that represents the bundled artifacts for the
            application revision.</p>")
  commitId: option<commitId>,
  @ocaml.doc("<p>The GitHub account and repository pair that stores a reference to the commit that
            represents the bundled artifacts for the application revision. </p>
        <p>Specified as account/repository.</p>")
  repository: option<repository>,
}
type gitHubAccountTokenNameList = array<gitHubAccountTokenName>
type filterValueList = array<filterValue>
@ocaml.doc("<p>Information about a deployment error.</p>")
type errorInformation = {
  @ocaml.doc("<p>An accompanying error message.</p>") message: option<errorMessage>,
  @ocaml.doc("<p>For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/error-codes.html\">Error Codes for AWS
                CodeDeploy</a> in the <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide\">AWS CodeDeploy User Guide</a>.</p>
        <p>The error code:</p>
        <ul>
            <li>
                <p>APPLICATION_MISSING: The application was missing. This error code is most
                    likely raised if the application is deleted after the deployment is created, but
                    before it is started.</p>
            </li>
            <li>
                <p>DEPLOYMENT_GROUP_MISSING: The deployment group was missing. This error code is
                    most likely raised if the deployment group is deleted after the deployment is
                    created, but before it is started.</p>
            </li>
            <li>
                <p>HEALTH_CONSTRAINTS: The deployment failed on too many instances to be
                    successfully deployed within the instance health constraints specified.</p>
            </li>
            <li>
                <p>HEALTH_CONSTRAINTS_INVALID: The revision cannot be successfully deployed
                    within the instance health constraints specified.</p>
            </li>
            <li>
                <p>IAM_ROLE_MISSING: The service role cannot be accessed.</p>
            </li>
            <li>
                <p>IAM_ROLE_PERMISSIONS: The service role does not have the correct
                    permissions.</p>
            </li>
            <li>
                <p>INTERNAL_ERROR: There was an internal error.</p>
            </li>
            <li>
                <p>NO_EC2_SUBSCRIPTION: The calling account is not subscribed to Amazon
                    EC2.</p>
            </li>
            <li>
                <p>NO_INSTANCES: No instances were specified, or no instances can be
                    found.</p>
            </li>
            <li>
                <p>OVER_MAX_INSTANCES: The maximum number of instances was exceeded.</p>
            </li>
            <li>
                <p>THROTTLED: The operation was throttled because the calling account exceeded
                    the throttling limits of one or more AWS services.</p>
            </li>
            <li>
                <p>TIMEOUT: The deployment has timed out.</p>
            </li>
            <li>
                <p>REVISION_MISSING: The revision ID was missing. This error code is most likely
                    raised if the revision is deleted after the deployment is created, but before it
                    is started.</p>
            </li>
         </ul>")
  code: option<errorCode>,
}
@ocaml.doc("<p>Information about a load balancer in Elastic Load Balancing to use in a deployment.
            Instances are registered directly with a load balancer, and traffic is routed to the
            load balancer.</p>")
type elbinfo = {
  @ocaml.doc("<p>For blue/green deployments, the name of the load balancer that is used to route
            traffic from original instances to replacement instances in a blue/green deployment. For
            in-place deployments, the name of the load balancer that instances are deregistered from
            so they are not serving traffic during a deployment, and then re-registered with after
            the deployment is complete.</p>")
  name: option<elbname>,
}
@ocaml.doc("<p> Contains the service and cluster names used to identify an Amazon ECS deployment's
            target. </p>")
type ecsservice = {
  @ocaml.doc("<p> The name of the cluster that the Amazon ECS service is associated with. </p>")
  clusterName: option<ecsclusterName>,
  @ocaml.doc("<p> The name of the target Amazon ECS service. </p>")
  serviceName: option<ecsserviceName>,
}
@ocaml.doc("<p>Information about an EC2 tag filter.</p>")
type ec2TagFilter = {
  @ocaml.doc("<p>The tag filter type:</p>
        <ul>
            <li>
                <p>
                  <code>KEY_ONLY</code>: Key only.</p>
            </li>
            <li>
                <p>
                  <code>VALUE_ONLY</code>: Value only.</p>
            </li>
            <li>
                <p>
                  <code>KEY_AND_VALUE</code>: Key and value.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<ec2TagFilterType>,
  @ocaml.doc("<p>The tag filter value.</p>") @as("Value") value: option<value>,
  @ocaml.doc("<p>The tag filter key.</p>") @as("Key") key: option<key>,
}
@ocaml.doc("<p>Diagnostic information about executable scripts that are part of a deployment.</p>")
type diagnostics = {
  @ocaml.doc("<p>The last portion of the diagnostic log.</p>
        <p>If available, AWS CodeDeploy returns up to the last 4 KB of the diagnostic log.</p>")
  logTail: option<logTail>,
  @ocaml.doc("<p>The message associated with the error.</p>") message: option<lifecycleMessage>,
  @ocaml.doc("<p>The name of the script.</p>") scriptName: option<scriptName>,
  @ocaml.doc("<p>The associated error code:</p>
        <ul>
            <li>
                <p>Success: The specified script ran.</p>
            </li>
            <li>
                <p>ScriptMissing: The specified script was not found in the specified
                    location.</p>
            </li>
            <li>
                <p>ScriptNotExecutable: The specified script is not a recognized executable file
                    type.</p>
            </li>
            <li>
                <p>ScriptTimedOut: The specified script did not finish running in the specified
                    time period.</p>
            </li>
            <li>
                <p>ScriptFailed: The specified script failed to run as expected.</p>
            </li>
            <li>
                <p>UnknownError: The specified script did not run for an unknown reason.</p>
            </li>
         </ul>")
  errorCode: option<lifecycleErrorCode>,
}
type deploymentsList = array<deploymentId>
@ocaml.doc("<p>Information about the type of deployment, either in-place or blue/green, you want to
            run and whether to route deployment traffic behind a load balancer.</p>")
type deploymentStyle = {
  @ocaml.doc("<p>Indicates whether to route deployment traffic behind a load balancer.</p>")
  deploymentOption: option<deploymentOption>,
  @ocaml.doc("<p>Indicates whether to run an in-place deployment or a blue/green deployment.</p>")
  deploymentType: option<deploymentType>,
}
type deploymentStatusMessageList = array<errorMessage>
type deploymentStatusList = array<deploymentStatus>
@ocaml.doc("<p>Information about how traffic is rerouted to instances in a replacement environment in
            a blue/green deployment.</p>")
type deploymentReadyOption = {
  @ocaml.doc("<p>The number of minutes to wait before the status of a blue/green deployment is changed
            to Stopped if rerouting is not started manually. Applies only to the
                <code>STOP_DEPLOYMENT</code> option for <code>actionOnTimeout</code>.</p>")
  waitTimeInMinutes: option<duration>,
  @ocaml.doc("<p>Information about when to reroute traffic from an original environment to a
            replacement environment in a blue/green deployment.</p>
        <ul>
            <li>
                <p>CONTINUE_DEPLOYMENT: Register new instances with the load balancer immediately
                    after the new application revision is installed on the instances in the
                    replacement environment.</p>
            </li>
            <li>
                <p>STOP_DEPLOYMENT: Do not register new instances with a load balancer unless
                    traffic rerouting is started using <a>ContinueDeployment</a>. If
                    traffic rerouting is not started before the end of the specified wait period,
                    the deployment status is changed to Stopped.</p>
            </li>
         </ul>")
  actionOnTimeout: option<deploymentReadyAction>,
}
@ocaml.doc("<p>Information about the deployment status of the instances in the deployment.</p>")
type deploymentOverview = {
  @ocaml.doc("<p>The number of instances in a replacement environment ready to receive traffic in a
            blue/green deployment.</p>")
  @as("Ready")
  ready: option<instanceCount>,
  @ocaml.doc("<p>The number of instances in the deployment in a skipped state.</p>") @as("Skipped")
  skipped: option<instanceCount>,
  @ocaml.doc("<p>The number of instances in the deployment in a failed state.</p>") @as("Failed")
  failed: option<instanceCount>,
  @ocaml.doc("<p>The number of instances in the deployment to which revisions have been successfully
            deployed.</p>")
  @as("Succeeded")
  succeeded: option<instanceCount>,
  @ocaml.doc("<p>The number of instances in which the deployment is in progress.</p>")
  @as("InProgress")
  inProgress: option<instanceCount>,
  @ocaml.doc("<p>The number of instances in the deployment in a pending state.</p>") @as("Pending")
  pending: option<instanceCount>,
}
type deploymentGroupsList = array<deploymentGroupName>
type deploymentConfigsList = array<deploymentConfigName>
@ocaml.doc("<p>Information about whether instances in the original environment are terminated when a
            blue/green deployment is successful. <code>BlueInstanceTerminationOption</code> does not
            apply to Lambda deployments. </p>")
type blueInstanceTerminationOption = {
  @ocaml.doc("<p>For an Amazon EC2 deployment, the number of minutes to wait after a successful
            blue/green deployment before terminating instances from the original environment.</p>

        <p> For an Amazon ECS deployment, the number of minutes before deleting the original
            (blue) task set. During an Amazon ECS deployment, CodeDeploy shifts traffic from the
            original (blue) task set to a replacement (green) task set. </p>

        <p> The maximum setting is 2880 minutes (2 days). </p>")
  terminationWaitTimeInMinutes: option<duration>,
  @ocaml.doc("<p>The action to take on instances in the original environment after a successful
            blue/green deployment.</p>
        <ul>
            <li>
                <p>
                  <code>TERMINATE</code>: Instances are terminated after a specified wait
                    time.</p>
            </li>
            <li>
                <p>
                  <code>KEEP_ALIVE</code>: Instances are left running after they are
                    deregistered from the load balancer and removed from the deployment
                    group.</p>
            </li>
         </ul>")
  action: option<instanceAction>,
}
type autoScalingGroupNameList = array<autoScalingGroupName>
@ocaml.doc("<p>Information about an Auto Scaling group.</p>")
type autoScalingGroup = {
  @ocaml.doc("<p>An Auto Scaling lifecycle event hook name.</p>")
  hook: option<autoScalingGroupHook>,
  @ocaml.doc("<p>The Auto Scaling group name.</p>") name: option<autoScalingGroupName>,
}
type autoRollbackEventsList = array<autoRollbackEvent>
type applicationsList = array<applicationName>
@ocaml.doc("<p>Information about an application.</p>")
type applicationInfo = {
  @ocaml.doc("<p>The destination platform type for deployment of the application (<code>Lambda</code>
            or <code>Server</code>).</p>")
  computePlatform: option<computePlatform>,
  @ocaml.doc("<p>The name for a connection to a GitHub account.</p>")
  gitHubAccountName: option<gitHubAccountTokenName>,
  @ocaml.doc("<p>True if the user has authenticated with GitHub for the specified application.
            Otherwise, false.</p>")
  linkedToGitHub: option<boolean_>,
  @ocaml.doc("<p>The time at which the application was created.</p>")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>The application name.</p>") applicationName: option<applicationName>,
  @ocaml.doc("<p>The application ID.</p>") applicationId: option<applicationId>,
}
@ocaml.doc("<p> A revision for an AWS Lambda or Amazon ECS deployment that is a YAML-formatted or
            JSON-formatted string. For AWS Lambda and Amazon ECS deployments, the revision is the
            same as the AppSpec file. This method replaces the deprecated <code>RawString</code>
            data type. </p>")
type appSpecContent = {
  @ocaml.doc("<p> The SHA256 hash value of the revision content. </p>")
  sha256: option<rawStringSha256>,
  @ocaml.doc("<p> The YAML-formatted or JSON-formatted revision string. </p>
        <p> For an AWS Lambda deployment, the content includes a Lambda function name, the alias
            for its original version, and the alias for its replacement version. The deployment
            shifts traffic from the original version of the Lambda function to the replacement
            version. </p>
        <p> For an Amazon ECS deployment, the content includes the task name, information about
            the load balancer that serves traffic to the container, and more. </p>
        <p> For both types of deployments, the content can specify Lambda functions that run at
            specified hooks, such as <code>BeforeInstall</code>, during a deployment. </p>")
  content: option<rawStringContent>,
}
@ocaml.doc("<p>Information about an alarm.</p>")
type alarm = {
  @ocaml.doc("<p>The name of the alarm. Maximum length is 255 characters. Each alarm name can be used
            only once in a list of alarms.</p>")
  name: option<alarmName>,
}
@ocaml.doc("<p>Information about notification triggers for the deployment group.</p>")
type triggerConfig = {
  @ocaml.doc("<p>The event type or types for which notifications are triggered.</p>")
  triggerEvents: option<triggerEventTypeList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic through
            which notifications about deployment or instance events are sent.</p>")
  triggerTargetArn: option<triggerTargetArn>,
  @ocaml.doc("<p>The name of the notification trigger.</p>") triggerName: option<triggerName>,
}
@ocaml.doc("<p>The configuration that specifies how traffic is shifted from one version of a Lambda
            function to another version during an AWS Lambda deployment, or from one Amazon ECS task
            set to another during an Amazon ECS deployment.</p>")
type trafficRoutingConfig = {
  @ocaml.doc("<p>A configuration that shifts traffic from one version of a Lambda function or ECS task
            set to another in equal increments, with an equal number of minutes between each
            increment. The original and target Lambda function versions or ECS task sets are
            specified in the deployment's AppSpec file.</p>")
  timeBasedLinear: option<timeBasedLinear>,
  @ocaml.doc("<p>A configuration that shifts traffic from one version of a Lambda function or ECS task
            set to another in two increments. The original and target Lambda function versions or
            ECS task sets are specified in the deployment's AppSpec file.</p>")
  timeBasedCanary: option<timeBasedCanary>,
  @ocaml.doc("<p>The type of traffic shifting (<code>TimeBasedCanary</code> or
                <code>TimeBasedLinear</code>) used by a deployment configuration.</p>")
  @as("type")
  type_: option<trafficRoutingType>,
}
@ocaml.doc("<p> Information about a listener. The listener contains the path used to route traffic
            that is received from the load balancer to a target group. </p>")
type trafficRoute = {
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of one listener. The listener identifies the route
            between a target group and a load balancer. This is an array of strings with a maximum
            size of one. </p>")
  listenerArns: option<listenerArnList>,
}
type targetGroupInfoList = array<targetGroupInfo>
type targetFilters = Js.Dict.t<filterValueList>
type tagList_ = array<tag>
type tagFilterList = array<tagFilter>
@ocaml.doc("<p>Information about the location of an application revision.</p>")
type revisionLocation = {
  @ocaml.doc("<p> The content of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The
            content is formatted as JSON or YAML and stored as a RawString. </p>")
  appSpecContent: option<appSpecContent>,
  @ocaml.doc("<p>Information about the location of an AWS Lambda deployment revision stored as a
            RawString.</p>")
  @as("string")
  string_: option<rawString>,
  @ocaml.doc("<p>Information about the location of application artifacts stored in GitHub.</p>")
  gitHubLocation: option<gitHubLocation>,
  @ocaml.doc("<p>Information about the location of a revision stored in Amazon S3. </p>")
  s3Location: option<s3Location>,
  @ocaml.doc("<p>The type of application revision:</p>
        <ul>
            <li>
                <p>S3: An application revision stored in Amazon S3.</p>
            </li>
            <li>
                <p>GitHub: An application revision stored in GitHub (EC2/On-premises deployments
                    only).</p>
            </li>
            <li>
                <p>String: A YAML-formatted or JSON-formatted string (AWS Lambda deployments
                    only).</p>
            </li>
            <li>
                <p>AppSpecContent: An <code>AppSpecContent</code> object that contains the
                    contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The
                    content is formatted as JSON or YAML stored as a RawString.</p>
            </li>
         </ul>")
  revisionType: option<revisionLocationType>,
}
@ocaml.doc("<p>Information about deployments related to the specified deployment.</p>")
type relatedDeployments = {
  @ocaml.doc("<p>The deployment IDs of 'auto-update outdated instances' deployments triggered by this
            deployment.</p>")
  autoUpdateOutdatedInstancesDeploymentIds: option<deploymentsList>,
  @ocaml.doc("<p>The deployment ID of the root deployment that triggered this deployment.</p>")
  autoUpdateOutdatedInstancesRootDeploymentId: option<deploymentId>,
}
@ocaml.doc("<p>Information about a deployment lifecycle event.</p>")
type lifecycleEvent = {
  @ocaml.doc("<p>The deployment lifecycle event status:</p>
        <ul>
            <li>
                <p>Pending: The deployment lifecycle event is pending.</p>
            </li>
            <li>
                <p>InProgress: The deployment lifecycle event is in progress.</p>
            </li>
            <li>
                <p>Succeeded: The deployment lifecycle event ran successfully.</p>
            </li>
            <li>
                <p>Failed: The deployment lifecycle event has failed.</p>
            </li>
            <li>
                <p>Skipped: The deployment lifecycle event has been skipped.</p>
            </li>
            <li>
                <p>Unknown: The deployment lifecycle event is unknown.</p>
            </li>
         </ul>")
  status: option<lifecycleEventStatus>,
  @ocaml.doc("<p>A timestamp that indicates when the deployment lifecycle event ended.</p>")
  endTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp that indicates when the deployment lifecycle event started.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>Diagnostic information about the deployment lifecycle event.</p>")
  diagnostics: option<diagnostics>,
  @ocaml.doc("<p>The deployment lifecycle event name, such as <code>ApplicationStop</code>,
                <code>BeforeInstall</code>, <code>AfterInstall</code>,
            <code>ApplicationStart</code>, or <code>ValidateService</code>.</p>")
  lifecycleEventName: option<lifecycleEventName>,
}
@ocaml.doc("<p>Information about an application revision.</p>")
type genericRevisionInfo = {
  @ocaml.doc("<p>When the revision was registered with AWS CodeDeploy.</p>")
  registerTime: option<timestamp_>,
  @ocaml.doc("<p>When the revision was last used by AWS CodeDeploy.</p>")
  lastUsedTime: option<timestamp_>,
  @ocaml.doc("<p>When the revision was first used by AWS CodeDeploy.</p>")
  firstUsedTime: option<timestamp_>,
  @ocaml.doc("<p>The deployment groups for which this is the current target revision.</p>")
  deploymentGroups: option<deploymentGroupsList>,
  @ocaml.doc("<p>A comment about the revision.</p>") description: option<description>,
}
type elbinfoList = array<elbinfo>
@ocaml.doc("<p> Information about a set of Amazon ECS tasks in an AWS CodeDeploy deployment. An
            Amazon ECS task set includes details such as the desired number of tasks, how many tasks
            are running, and whether the task set serves production traffic. An AWS CodeDeploy
            application that uses the Amazon ECS compute platform deploys a containerized
            application in an Amazon ECS service as a task set. </p>")
type ecstaskSet = {
  @ocaml.doc("<p> A label that identifies whether the ECS task set is an original target
                (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>")
  taskSetLabel: option<targetLabel>,
  @ocaml.doc("<p> The target group associated with the task set. The target group is used by AWS
            CodeDeploy to manage traffic to a task set. </p>")
  targetGroup: option<targetGroupInfo>,
  @ocaml.doc("<p> The percentage of traffic served by this task set. </p>")
  trafficWeight: option<trafficWeight>,
  @ocaml.doc("<p> The status of the task set. There are three valid task set statuses: </p>
        <ul>
            <li>
                <p>
                    <code>PRIMARY</code>: Indicates the task set is serving production traffic.
                </p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code>: Indicates the task set is not serving production traffic.
                </p>
            </li>
            <li>
                <p>
                    <code>DRAINING</code>: Indicates the tasks in the task set are being stopped and
                    their corresponding targets are being deregistered from their target group.
                </p>
            </li>
         </ul>")
  status: option<ecstaskSetStatus>,
  @ocaml.doc("<p> The number of tasks in the task set that are in the <code>RUNNING</code> status
            during an Amazon ECS deployment. A task in the <code>RUNNING</code> state is running and
            ready for use. </p>")
  runningCount: option<ecstaskSetCount>,
  @ocaml.doc("<p> The number of tasks in the task set that are in the <code>PENDING</code> status
            during an Amazon ECS deployment. A task in the <code>PENDING</code> state is preparing
            to enter the <code>RUNNING</code> state. A task set enters the <code>PENDING</code>
            status when it launches for the first time, or when it is restarted after being in the
                <code>STOPPED</code> state. </p>")
  pendingCount: option<ecstaskSetCount>,
  @ocaml.doc("<p> The number of tasks in a task set. During a deployment that uses the Amazon ECS
            compute type, CodeDeploy instructs Amazon ECS to create a new task set and uses this
            value to determine how many tasks to create. After the updated task set is created,
            CodeDeploy shifts traffic to the new task set. </p>")
  desiredCount: option<ecstaskSetCount>,
  @ocaml.doc("<p> A unique ID of an <code>ECSTaskSet</code>. </p>")
  identifer: option<ecstaskSetIdentifier>,
}
type ecsserviceList = array<ecsservice>
type ec2TagFilterList = array<ec2TagFilter>
@ocaml.doc("<p>Information about blue/green deployment options for a deployment group.</p>")
type blueGreenDeploymentConfiguration = {
  @ocaml.doc("<p>Information about how instances are provisioned for a replacement environment in a
            blue/green deployment.</p>")
  greenFleetProvisioningOption: option<greenFleetProvisioningOption>,
  @ocaml.doc("<p>Information about the action to take when newly provisioned instances are ready to
            receive traffic in a blue/green deployment.</p>")
  deploymentReadyOption: option<deploymentReadyOption>,
  @ocaml.doc("<p>Information about whether to terminate instances in the original fleet during a
            blue/green deployment.</p>")
  terminateBlueInstancesOnDeploymentSuccess: option<blueInstanceTerminationOption>,
}
type autoScalingGroupList = array<autoScalingGroup>
@ocaml.doc("<p>Information about a configuration for automatically rolling back to a previous version
            of an application revision when a deployment is not completed successfully.</p>")
type autoRollbackConfiguration = {
  @ocaml.doc("<p>The event type or types that trigger a rollback.</p>")
  events: option<autoRollbackEventsList>,
  @ocaml.doc("<p>Indicates whether a defined automatic rollback configuration is currently
            enabled.</p>")
  enabled: option<boolean_>,
}
type applicationsInfoList = array<applicationInfo>
type alarmList = array<alarm>
type triggerConfigList = array<triggerConfig>
@ocaml.doc("<p> Information about two target groups and how traffic is routed during an Amazon ECS
            deployment. An optional test traffic route can be specified. </p>")
type targetGroupPairInfo = {
  @ocaml.doc("<p> An optional path used by a load balancer to route test traffic after an Amazon ECS
            deployment. Validation can occur while test traffic is served during a deployment.
        </p>")
  testTrafficRoute: option<trafficRoute>,
  @ocaml.doc("<p> The path used by a load balancer to route production traffic when an Amazon ECS
            deployment is complete. </p>")
  prodTrafficRoute: option<trafficRoute>,
  @ocaml.doc("<p> One pair of target groups. One is associated with the original task set. The second
            is associated with the task set that serves traffic after the deployment is complete.
        </p>")
  targetGroups: option<targetGroupInfoList>,
}
type revisionLocationList = array<revisionLocation>
@ocaml.doc("<p>Information about an application revision.</p>")
type revisionInfo = {
  @ocaml.doc("<p>Information about an application revision, including usage details and associated
            deployment groups.</p>")
  genericRevisionInfo: option<genericRevisionInfo>,
  @ocaml.doc("<p>Information about the location and type of an application revision.</p>")
  revisionLocation: option<revisionLocation>,
}
type onPremisesTagSetList = array<tagFilterList>
type lifecycleEventList = array<lifecycleEvent>
@ocaml.doc("<p>Information about an on-premises instance.</p>")
type instanceInfo = {
  @ocaml.doc("<p>The tags currently associated with the on-premises instance.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>If the on-premises instance was deregistered, the time at which the on-premises
            instance was deregistered.</p>")
  deregisterTime: option<timestamp_>,
  @ocaml.doc("<p>The time at which the on-premises instance was registered.</p>")
  registerTime: option<timestamp_>,
  @ocaml.doc("<p>The ARN of the on-premises instance.</p>") instanceArn: option<instanceArn>,
  @ocaml.doc("<p>The IAM user ARN associated with the on-premises instance.</p>")
  iamUserArn: option<iamUserArn>,
  @ocaml.doc("<p>The ARN of the IAM session associated with the on-premises instance.</p>")
  iamSessionArn: option<iamSessionArn>,
  @ocaml.doc("<p>The name of the on-premises instance.</p>") instanceName: option<instanceName>,
}
type ecstaskSetList = array<ecstaskSet>
type ec2TagSetList = array<ec2TagFilterList>
@ocaml.doc("<p>Information about a deployment configuration.</p>")
type deploymentConfigInfo = {
  @ocaml.doc("<p>The configuration that specifies how the deployment traffic is routed. Used for
            deployments with a Lambda or ECS compute platform only.</p>")
  trafficRoutingConfig: option<trafficRoutingConfig>,
  @ocaml.doc("<p>The destination platform type for the deployment (<code>Lambda</code>,
                <code>Server</code>, or <code>ECS</code>).</p>")
  computePlatform: option<computePlatform>,
  @ocaml.doc("<p>The time at which the deployment configuration was created.</p>")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>Information about the number or percentage of minimum healthy instance.</p>")
  minimumHealthyHosts: option<minimumHealthyHosts>,
  @ocaml.doc("<p>The deployment configuration name.</p>")
  deploymentConfigName: option<deploymentConfigName>,
  @ocaml.doc("<p>The deployment configuration ID.</p>")
  deploymentConfigId: option<deploymentConfigId>,
}
@ocaml.doc("<p>Information about alarms associated with the deployment group.</p>")
type alarmConfiguration = {
  @ocaml.doc("<p>A list of alarms configured for the deployment group. A maximum of 10 alarms can be
            added to a deployment group.</p>")
  alarms: option<alarmList>,
  @ocaml.doc("<p>Indicates whether a deployment should continue if information about the current state
            of alarms cannot be retrieved from Amazon CloudWatch. The default value is false.</p>
        <ul>
            <li>
                <p>
                  <code>true</code>: The deployment proceeds even if alarm status information
                    can't be retrieved from Amazon CloudWatch.</p>
            </li>
            <li>
                <p>
                  <code>false</code>: The deployment stops if alarm status information can't be
                    retrieved from Amazon CloudWatch.</p>
            </li>
         </ul>")
  ignorePollAlarmFailure: option<boolean_>,
  @ocaml.doc("<p>Indicates whether the alarm configuration is enabled.</p>")
  enabled: option<boolean_>,
}
type targetGroupPairInfoList = array<targetGroupPairInfo>
type revisionInfoList = array<revisionInfo>
@ocaml.doc("<p>Information about groups of on-premises instance tags.</p>")
type onPremisesTagSet = {
  @ocaml.doc("<p>A list that contains other lists of on-premises instance tag groups. For an instance
            to be included in the deployment group, it must be identified by all of the tag groups
            in the list.</p>")
  onPremisesTagSetList: option<onPremisesTagSetList>,
}
@ocaml.doc("<p> Information about the target AWS Lambda function during an AWS Lambda deployment.
        </p>")
type lambdaTarget = {
  @ocaml.doc("<p> A <code>LambdaFunctionInfo</code> object that describes a target Lambda function.
        </p>")
  lambdaFunctionInfo: option<lambdaFunctionInfo>,
  @ocaml.doc("<p> The lifecycle events of the deployment to this target Lambda function. </p>")
  lifecycleEvents: option<lifecycleEventList>,
  @ocaml.doc("<p> The date and time when the target Lambda function was updated by a deployment.
        </p>")
  lastUpdatedAt: option<time>,
  @ocaml.doc("<p> The status an AWS Lambda deployment's target Lambda function. </p>")
  status: option<targetStatus>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the target. </p>") targetArn: option<targetArn>,
  @ocaml.doc("<p> The unique ID of a deployment target that has a type of <code>lambdaTarget</code>.
        </p>")
  targetId: option<targetId>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
}
@ocaml.doc("<p> A target Amazon EC2 or on-premises instance during a deployment that uses the
            EC2/On-premises compute platform. </p>")
type instanceTarget = {
  @ocaml.doc("<p> A label that identifies whether the instance is an original target
            (<code>BLUE</code>) or a replacement target (<code>GREEN</code>). </p>")
  instanceLabel: option<targetLabel>,
  @ocaml.doc("<p> The lifecycle events of the deployment to this target instance. </p>")
  lifecycleEvents: option<lifecycleEventList>,
  @ocaml.doc("<p> The date and time when the target instance was updated by a deployment. </p>")
  lastUpdatedAt: option<time>,
  @ocaml.doc("<p> The status an EC2/On-premises deployment's target instance. </p>")
  status: option<targetStatus>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the target. </p>") targetArn: option<targetArn>,
  @ocaml.doc("<p> The unique ID of a deployment target that has a type of <code>instanceTarget</code>.
        </p>")
  targetId: option<targetId>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
}
@ocaml.doc("<p>Information about an instance in a deployment.</p>")
type instanceSummary = {
  @ocaml.doc("<p>Information about which environment an instance belongs to in a blue/green
            deployment.</p>
        <ul>
            <li>
                <p>BLUE: The instance is part of the original environment.</p>
            </li>
            <li>
                <p>GREEN: The instance is part of the replacement environment.</p>
            </li>
         </ul>")
  instanceType: option<instanceType>,
  @ocaml.doc("<p>A list of lifecycle events for this instance.</p>")
  lifecycleEvents: option<lifecycleEventList>,
  @ocaml.doc("<p>A timestamp that indicates when the instance information was last updated.</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The deployment status for this instance:</p>
        <ul>
            <li>
                <p>
                  <code>Pending</code>: The deployment is pending for this instance.</p>
            </li>
            <li>
                <p>
                  <code>In Progress</code>: The deployment is in progress for this
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>Succeeded</code>: The deployment has succeeded for this instance.</p>
            </li>
            <li>
                <p>
                  <code>Failed</code>: The deployment has failed for this instance.</p>
            </li>
            <li>
                <p>
                  <code>Skipped</code>: The deployment has been skipped for this
                    instance.</p>
            </li>
            <li>
                <p>
                  <code>Unknown</code>: The deployment status is unknown for this
                    instance.</p>
            </li>
         </ul>")
  status: option<instanceStatus>,
  @ocaml.doc("<p>The instance ID.</p>") instanceId: option<instanceId>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
}
type instanceInfoList = array<instanceInfo>
@ocaml.doc("<p> Information about the target of an Amazon ECS deployment. </p>")
type ecstarget = {
  @ocaml.doc("<p> The <code>ECSTaskSet</code> objects associated with the ECS target. </p>")
  taskSetsInfo: option<ecstaskSetList>,
  @ocaml.doc("<p> The status an Amazon ECS deployment's target ECS application. </p>")
  status: option<targetStatus>,
  @ocaml.doc(
    "<p> The lifecycle events of the deployment to this target Amazon ECS application. </p>"
  )
  lifecycleEvents: option<lifecycleEventList>,
  @ocaml.doc("<p> The date and time when the target Amazon ECS application was updated by a deployment.
        </p>")
  lastUpdatedAt: option<time>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the target. </p>") targetArn: option<targetArn>,
  @ocaml.doc("<p> The unique ID of a deployment target that has a type of <code>ecsTarget</code>.
        </p>")
  targetId: option<targetId>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
}
@ocaml.doc("<p>Information about groups of EC2 instance tags.</p>")
type ec2TagSet = {
  @ocaml.doc("<p>A list that contains other lists of EC2 instance tag groups. For an instance to be
            included in the deployment group, it must be identified by all of the tag groups in the
            list.</p>")
  ec2TagSetList: option<ec2TagSetList>,
}
@ocaml.doc("<p> Information about the target to be updated by an AWS CloudFormation blue/green
            deployment. This target type is used for all deployments initiated by a CloudFormation
            stack update.</p>")
type cloudFormationTarget = {
  @ocaml.doc("<p>The percentage of production traffic that the target version of an AWS CloudFormation
            blue/green deployment receives.</p>")
  targetVersionWeight: option<trafficWeight>,
  @ocaml.doc("<p>The resource type for the AWS CloudFormation blue/green deployment.</p>")
  resourceType: option<cloudFormationResourceType>,
  @ocaml.doc("<p> The status of an AWS CloudFormation blue/green deployment's target application.
        </p>")
  status: option<targetStatus>,
  @ocaml.doc("<p> The lifecycle events of the AWS CloudFormation blue/green deployment to this target
            application. </p>")
  lifecycleEvents: option<lifecycleEventList>,
  @ocaml.doc("<p> The date and time when the target application was updated by an AWS CloudFormation
            blue/green deployment. </p>")
  lastUpdatedAt: option<time>,
  @ocaml.doc("<p> The unique ID of a deployment target that has a type
                of <code>CloudFormationTarget</code>. </p>")
  targetId: option<targetId>,
  @ocaml.doc("<p>The unique ID of an AWS CloudFormation blue/green deployment.</p>")
  deploymentId: option<deploymentId>,
}
@ocaml.doc("<p>Information about the instances to be used in the replacement environment in a
            blue/green deployment.</p>")
type targetInstances = {
  @ocaml.doc("<p>Information about the groups of EC2 instance tags that an instance must be identified
            by in order for it to be included in the replacement environment for a blue/green
            deployment. Cannot be used in the same call as <code>tagFilters</code>.</p>")
  ec2TagSet: option<ec2TagSet>,
  @ocaml.doc("<p>The names of one or more Auto Scaling groups to identify a replacement environment for
            a blue/green deployment.</p>")
  autoScalingGroups: option<autoScalingGroupNameList>,
  @ocaml.doc("<p>The tag filter key, type, and value used to identify Amazon EC2 instances in a
            replacement environment for a blue/green deployment. Cannot be used in the same call as
                <code>ec2TagSet</code>.</p>")
  tagFilters: option<ec2TagFilterList>,
}
@ocaml.doc("<p>Information about the Elastic Load Balancing load balancer or target group used in a
            deployment.</p>")
type loadBalancerInfo = {
  @ocaml.doc("<p> The target group pair information. This is an array of
                <code>TargeGroupPairInfo</code> objects with a maximum size of one. </p>")
  targetGroupPairInfoList: option<targetGroupPairInfoList>,
  @ocaml.doc("<p>An array that contains information about the target group to use for load balancing in
            a deployment. In Elastic Load Balancing, target groups are used with Application Load
            Balancers.</p>
        <note>
            <p> Adding more than one target group to the array is not supported. </p>
        </note>")
  targetGroupInfoList: option<targetGroupInfoList>,
  @ocaml.doc("<p>An array that contains information about the load balancer to use for load balancing
            in a deployment. In Elastic Load Balancing, load balancers are used with Classic Load
            Balancers.</p>
        <note>
            <p> Adding more than one load balancer to the array is not supported. </p>
        </note>")
  elbInfoList: option<elbinfoList>,
}
type instanceSummaryList = array<instanceSummary>
@ocaml.doc("<p> Information about the deployment target. </p>")
type deploymentTarget = {
  cloudFormationTarget: option<cloudFormationTarget>,
  @ocaml.doc("<p> Information about the target for a deployment that uses the Amazon ECS compute
            platform. </p>")
  ecsTarget: option<ecstarget>,
  @ocaml.doc("<p> Information about the target for a deployment that uses the AWS Lambda compute
            platform. </p>")
  lambdaTarget: option<lambdaTarget>,
  @ocaml.doc("<p> Information about the target for a deployment that uses the EC2/On-premises compute
            platform. </p>")
  instanceTarget: option<instanceTarget>,
  @ocaml.doc("<p>The deployment type that is specific to the deployment's compute platform or
            deployments initiated by a CloudFormation stack update.</p>")
  deploymentTargetType: option<deploymentTargetType>,
}
type deploymentTargetList = array<deploymentTarget>
@ocaml.doc("<p>Information about a deployment.</p>")
type deploymentInfo = {
  relatedDeployments: option<relatedDeployments>,
  @ocaml.doc("<p>The unique ID for an external resource (for example, a CloudFormation stack ID) that
            is linked to this deployment.</p>")
  externalId: option<externalId>,
  @ocaml.doc("<p>The destination platform type for the deployment (<code>Lambda</code>,
                <code>Server</code>, or <code>ECS</code>).</p>")
  computePlatform: option<computePlatform>,
  @ocaml.doc("<p>Messages that contain information about the status of a deployment.</p>")
  deploymentStatusMessages: option<deploymentStatusMessageList>,
  @ocaml.doc("<p>Information about how AWS CodeDeploy handles files that already exist in a deployment
            target location but weren't part of the previous successful deployment.</p>
        <ul>
            <li>
                <p>
                  <code>DISALLOW</code>: The deployment fails. This is also the default behavior
                    if no option is specified.</p>
            </li>
            <li>
                <p>
                  <code>OVERWRITE</code>: The version of the file from the application revision
                    currently being deployed replaces the version already on the instance.</p>
            </li>
            <li>
                <p>
                  <code>RETAIN</code>: The version of the file already on the instance is kept
                    and used as part of the new deployment.</p>
            </li>
         </ul>")
  fileExistsBehavior: option<fileExistsBehavior>,
  @ocaml.doc("<p>Provides information about the results of a deployment, such as whether instances in
            the original environment in a blue/green deployment were not terminated.</p>")
  additionalDeploymentStatusInfo: option<additionalDeploymentStatusInfo>,
  @ocaml.doc("<p>Information about the load balancer used in the deployment.</p>")
  loadBalancerInfo: option<loadBalancerInfo>,
  @ocaml.doc("<p>Information about blue/green deployment options for this deployment.</p>")
  blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
  @ocaml.doc("<p>Indicates whether the wait period set for the termination of instances in the original
            environment has started. Status is 'false' if the KEEP_ALIVE option is specified.
            Otherwise, 'true' as soon as the termination wait period starts.</p>")
  instanceTerminationWaitTimeStarted: option<boolean_>,
  @ocaml.doc("<p>Information about the instances that belong to the replacement environment in a
            blue/green deployment.</p>")
  targetInstances: option<targetInstances>,
  @ocaml.doc("<p>Information about the type of deployment, either in-place or blue/green, you want to
            run and whether to route deployment traffic behind a load balancer.</p>")
  deploymentStyle: option<deploymentStyle>,
  @ocaml.doc("<p>Information about a deployment rollback.</p>") rollbackInfo: option<rollbackInfo>,
  @ocaml.doc("<p>Indicates whether only instances that are not running the latest application revision
            are to be deployed to.</p>")
  updateOutdatedInstancesOnly: option<boolean_>,
  @ocaml.doc("<p>Information about the automatic rollback configuration associated with the
            deployment.</p>")
  autoRollbackConfiguration: option<autoRollbackConfiguration>,
  @ocaml.doc("<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
                <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
            the deployment continues to the next deployment lifecycle event. For example, if
                <code>ApplicationStop</code> fails, the deployment continues with DownloadBundle. If
                <code>BeforeBlockTraffic</code> fails, the deployment continues with
                <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code> fails, the deployment
            continues with <code>ApplicationStop</code>. </p>

        <p> If false or not specified, then if a lifecycle event fails during a deployment to an
            instance, that deployment fails. If deployment to that instance is part of an overall
            deployment and the number of healthy hosts is not less than the minimum number of
            healthy hosts, then a deployment to the next instance is attempted. </p>

        <p> During a deployment, the AWS CodeDeploy agent runs the scripts specified for
                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
                <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
            deployment. (All other scripts are run from the AppSpec file in the current deployment.)
            If one of these scripts contains an error and does not run successfully, the deployment
            can fail. </p>

        <p> If the cause of the failure is a script from the last successful deployment that will
            never run successfully, create a new deployment and use
                <code>ignoreApplicationStopFailures</code> to specify that the
                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
                <code>AfterBlockTraffic</code> failures should be ignored. </p>")
  ignoreApplicationStopFailures: option<boolean_>,
  @ocaml.doc("<p>The means by which the deployment was created:</p>
        <ul>
            <li>
                <p>
                  <code>user</code>: A user created the deployment.</p>
            </li>
            <li>
                <p>
                  <code>autoscaling</code>: Amazon EC2 Auto Scaling created the
                    deployment.</p>
            </li>
            <li>
                <p>
                  <code>codeDeployRollback</code>: A rollback process created the
                    deployment.</p>
            </li>
            <li>
                <p>
                  <code>CodeDeployAutoUpdate</code>: An auto-update process created the
                    deployment when it detected outdated EC2 instances.</p>
            </li>
         </ul>")
  creator: option<deploymentCreator>,
  @ocaml.doc("<p>A comment about the deployment.</p>") description: option<description>,
  @ocaml.doc("<p>A summary of the deployment status of the instances in the deployment.</p>")
  deploymentOverview: option<deploymentOverview>,
  @ocaml.doc("<p>A timestamp that indicates when the deployment was complete.</p>")
  completeTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp that indicates when the deployment was deployed to the deployment
            group.</p>
        <p>In some cases, the reported value of the start time might be later than the complete
            time. This is due to differences in the clock settings of backend servers that
            participate in the deployment process.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>A timestamp that indicates when the deployment was created.</p>")
  createTime: option<timestamp_>,
  @ocaml.doc("<p>Information about any error associated with this deployment.</p>")
  errorInformation: option<errorInformation>,
  @ocaml.doc("<p>The current state of the deployment as a whole.</p>")
  status: option<deploymentStatus>,
  @ocaml.doc("<p>Information about the location of stored application artifacts and the service from
            which to retrieve them.</p>")
  revision: option<revisionLocation>,
  @ocaml.doc("<p>Information about the application revision that was deployed to the deployment group
            before the most recent successful deployment.</p>")
  previousRevision: option<revisionLocation>,
  @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
  @ocaml.doc("<p> The deployment configuration name. </p>")
  deploymentConfigName: option<deploymentConfigName>,
  @ocaml.doc("<p> The deployment group name. </p>")
  deploymentGroupName: option<deploymentGroupName>,
  @ocaml.doc("<p>The application name.</p>") applicationName: option<applicationName>,
}
@ocaml.doc("<p>Information about a deployment group.</p>")
type deploymentGroupInfo = {
  @ocaml.doc("<p> The target Amazon ECS services in the deployment group. This applies only to
            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
            is specified as an Amazon ECS cluster and service name pair using the format
                <code><clustername>:<servicename></code>. </p>")
  ecsServices: option<ecsserviceList>,
  @ocaml.doc("<p>The destination platform type for the deployment (<code>Lambda</code>,
                <code>Server</code>, or <code>ECS</code>).</p>")
  computePlatform: option<computePlatform>,
  @ocaml.doc("<p>Information about groups of tags applied to an on-premises instance. The deployment
            group includes only on-premises instances identified by all the tag groups. Cannot be
            used in the same call as onPremisesInstanceTagFilters.</p>")
  onPremisesTagSet: option<onPremisesTagSet>,
  @ocaml.doc("<p>Information about groups of tags applied to an EC2 instance. The deployment group
            includes only EC2 instances identified by all of the tag groups. Cannot be used in the
            same call as ec2TagFilters.</p>")
  ec2TagSet: option<ec2TagSet>,
  @ocaml.doc(
    "<p>Information about the most recent attempted deployment to the deployment group.</p>"
  )
  lastAttemptedDeployment: option<lastDeploymentInfo>,
  @ocaml.doc("<p>Information about the most recent successful deployment to the deployment
            group.</p>")
  lastSuccessfulDeployment: option<lastDeploymentInfo>,
  @ocaml.doc("<p>Information about the load balancer to use in a deployment.</p>")
  loadBalancerInfo: option<loadBalancerInfo>,
  @ocaml.doc("<p>Information about blue/green deployment options for a deployment group.</p>")
  blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
  @ocaml.doc("<p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
            receive the deployed application revision.</p>
        <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
            one or more 'auto-update outdated instances' deployments to apply the deployed
            application revision to the new EC2 instances.</p>
        <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
            deployment to update the new EC2 instances. This may result in instances having
            different revisions.</p>")
  outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
  @ocaml.doc("<p>Information about the type of deployment, either in-place or blue/green, you want to
            run and whether to route deployment traffic behind a load balancer.</p>")
  deploymentStyle: option<deploymentStyle>,
  @ocaml.doc("<p>Information about the automatic rollback configuration associated with the deployment
            group.</p>")
  autoRollbackConfiguration: option<autoRollbackConfiguration>,
  @ocaml.doc("<p>A list of alarms associated with the deployment group.</p>")
  alarmConfiguration: option<alarmConfiguration>,
  @ocaml.doc("<p>Information about triggers associated with the deployment group.</p>")
  triggerConfigurations: option<triggerConfigList>,
  @ocaml.doc("<p>Information about the deployment group's target revision, including type and
            location.</p>")
  targetRevision: option<revisionLocation>,
  @ocaml.doc("<p>A service role Amazon Resource Name (ARN) that grants CodeDeploy permission to make
            calls to AWS services on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/getting-started-create-service-role.html\">Create a
                Service Role for AWS CodeDeploy</a> in the <i>AWS CodeDeploy User
                Guide</i>.</p>")
  serviceRoleArn: option<role>,
  @ocaml.doc("<p>A list of associated Auto Scaling groups.</p>")
  autoScalingGroups: option<autoScalingGroupList>,
  @ocaml.doc("<p>The on-premises instance tags on which to filter. The deployment group includes
            on-premises instances with any of the specified tags.</p>")
  onPremisesInstanceTagFilters: option<tagFilterList>,
  @ocaml.doc("<p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances
            with any of the specified tags.</p>")
  ec2TagFilters: option<ec2TagFilterList>,
  @ocaml.doc("<p>The deployment configuration name.</p>")
  deploymentConfigName: option<deploymentConfigName>,
  @ocaml.doc("<p>The deployment group name.</p>") deploymentGroupName: option<deploymentGroupName>,
  @ocaml.doc("<p>The deployment group ID.</p>") deploymentGroupId: option<deploymentGroupId>,
  @ocaml.doc("<p>The application name.</p>") applicationName: option<applicationName>,
}
type deploymentsInfoList = array<deploymentInfo>
type deploymentGroupInfoList = array<deploymentGroupInfo>
@ocaml.doc("<fullname>AWS CodeDeploy</fullname>
        <p>AWS CodeDeploy is a deployment service that automates application deployments to
            Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS
            Lambda functions, or applications in an Amazon ECS service.</p>
        <p>You can deploy a nearly unlimited variety of application content, such as an updated
            Lambda function, updated applications in an Amazon ECS service, code, web and
            configuration files, executables, packages, scripts, multimedia files, and so on. AWS
            CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub
            repositories, or Bitbucket repositories. You do not need to make changes to your
            existing code before you can use AWS CodeDeploy.</p>
        <p>AWS CodeDeploy makes it easier for you to rapidly release new features, helps you
            avoid downtime during application deployment, and handles the complexity of updating
            your applications, without many of the risks associated with error-prone manual
            deployments.</p>
        <p>
            <b>AWS CodeDeploy Components</b>
        </p>
        <p>Use the information in this guide to help you work with the following AWS CodeDeploy
            components:</p>
        <ul>
            <li>
                <p>
                    <b>Application</b>: A name that uniquely identifies
                    the application you want to deploy. AWS CodeDeploy uses this name, which
                    functions as a container, to ensure the correct combination of revision,
                    deployment configuration, and deployment group are referenced during a
                    deployment.</p>
            </li>
            <li>
                <p>
                    <b>Deployment group</b>: A set of individual
                    instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS
                    service and network details. A Lambda deployment group specifies how to route
                    traffic to a new version of a Lambda function. An Amazon ECS deployment group
                    specifies the service created in Amazon ECS to deploy, a load balancer, and a
                    listener to reroute production traffic to an updated containerized application.
                    An EC2/On-premises deployment group contains individually tagged instances,
                    Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment
                    groups can specify optional trigger, alarm, and rollback settings.</p>
            </li>
            <li>
                <p>
                    <b>Deployment configuration</b>: A set of deployment
                    rules and deployment success and failure conditions used by AWS CodeDeploy
                    during a deployment.</p>
            </li>
            <li>
                <p>
                    <b>Deployment</b>: The process and the components used
                    when updating a Lambda function, a containerized application in an Amazon ECS
                    service, or of installing content on one or more instances. </p>
            </li>
            <li>
                <p>
                    <b>Application revisions</b>: For an AWS Lambda
                    deployment, this is an AppSpec file that specifies the Lambda function to be
                    updated and one or more functions to validate deployment lifecycle events. For
                    an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS
                    task definition, container, and port where production traffic is rerouted. For
                    an EC2/On-premises deployment, this is an archive file that contains source
                    content—source code, webpages, executable files, and deployment scripts—along
                    with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub
                    repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3
                    object key and its ETag, version, or both. For GitHub, a revision is uniquely
                    identified by its commit ID.</p>
            </li>
         </ul>
        <p>This guide also contains information to help you get details about the instances in
            your deployments, to make on-premises instances available for AWS CodeDeploy
            deployments, to get details about a Lambda function deployment, and to get details about
            Amazon ECS service deployments.</p>
        <p>
            <b>AWS CodeDeploy Information Resources</b>
         </p>
        <ul>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide\">AWS CodeDeploy
                        User Guide</a>
               </p>
            </li>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/codedeploy/latest/APIReference/\">AWS
                        CodeDeploy API Reference Guide</a>
               </p>
            </li>
            <li>
                <p>
                  <a href=\"https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html\">AWS
                        CLI Reference for AWS CodeDeploy</a>
               </p>
            </li>
            <li>
                <p>
                    <a href=\"https://forums.aws.amazon.com/forum.jspa?forumID=179\">AWS CodeDeploy
                        Developer Forum</a>
                </p>
            </li>
         </ul>")
module UpdateApplication = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdateApplication</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The new name to give the application.</p>")
    newApplicationName: option<applicationName>,
    @ocaml.doc("<p>The current name of the application you want to change.</p>")
    applicationName: option<applicationName>,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "UpdateApplicationCommand"
  let make = (~newApplicationName=?, ~applicationName=?, ()) =>
    new({newApplicationName: newApplicationName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StopDeployment = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>StopDeployment</code> operation. </p>")
  type request = {
    @ocaml.doc("<p> Indicates, when a deployment is stopped, whether instances that have been updated
            should be rolled back to the previous version of the application revision. </p>")
    autoRollbackEnabled: option<nullableBoolean>,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: deploymentId,
  }
  @ocaml.doc("<p> Represents the output of a <code>StopDeployment</code> operation. </p>")
  type response = {
    @ocaml.doc("<p>An accompanying status message.</p>") statusMessage: option<message>,
    @ocaml.doc("<p>The status of the stop deployment operation:</p>
        <ul>
            <li>
                <p>Pending: The stop operation is pending.</p>
            </li>
            <li>
                <p>Succeeded: The stop operation was successful.</p>
            </li>
         </ul>")
    status: option<stopStatus>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "StopDeploymentCommand"
  let make = (~deploymentId, ~autoRollbackEnabled=?, ()) =>
    new({autoRollbackEnabled: autoRollbackEnabled, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SkipWaitTimeForInstanceTermination = {
  type t
  type request = {
    @ocaml.doc("<p> The unique ID of a blue/green deployment for which you want to skip the instance
            termination wait time. </p>")
    deploymentId: option<deploymentId>,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "SkipWaitTimeForInstanceTerminationCommand"
  let make = (~deploymentId=?, ()) => new({deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterOnPremisesInstance = {
  type t
  @ocaml.doc("<p>Represents the input of the register on-premises instance operation.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the IAM user to associate with the on-premises instance.</p>")
    iamUserArn: option<iamUserArn>,
    @ocaml.doc("<p>The ARN of the IAM session to associate with the on-premises instance.</p>")
    iamSessionArn: option<iamSessionArn>,
    @ocaml.doc("<p>The name of the on-premises instance to register.</p>")
    instanceName: instanceName,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "RegisterOnPremisesInstanceCommand"
  let make = (~instanceName, ~iamUserArn=?, ~iamSessionArn=?, ()) =>
    new({iamUserArn: iamUserArn, iamSessionArn: iamSessionArn, instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecycleEventHookExecutionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The result of a Lambda function that validates a deployment lifecycle event.
                <code>Succeeded</code> and <code>Failed</code> are the only valid values for
                <code>status</code>.</p>")
    status: option<lifecycleEventStatus>,
    @ocaml.doc("<p> The execution ID of a deployment's lifecycle hook. A deployment lifecycle hook is
            specified in the <code>hooks</code> section of the AppSpec file. </p>")
    lifecycleEventHookExecutionId: option<lifecycleEventHookExecutionId>,
    @ocaml.doc("<p> The unique ID of a deployment. Pass this ID to a Lambda function that validates a
            deployment lifecycle event. </p>")
    deploymentId: option<deploymentId>,
  }
  type response = {
    @ocaml.doc("<p>The execution ID of the lifecycle event hook. A hook is specified in the
                <code>hooks</code> section of the deployment's AppSpec file.</p>")
    lifecycleEventHookExecutionId: option<lifecycleEventHookExecutionId>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "PutLifecycleEventHookExecutionStatusCommand"
  let make = (~status=?, ~lifecycleEventHookExecutionId=?, ~deploymentId=?, ()) =>
    new({
      status: status,
      lifecycleEventHookExecutionId: lifecycleEventHookExecutionId,
      deploymentId: deploymentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterOnPremisesInstance = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>DeregisterOnPremisesInstance</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the on-premises instance to deregister.</p>")
    instanceName: instanceName,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "DeregisterOnPremisesInstanceCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcesByExternalId = {
  type t
  type request = {
    @ocaml.doc("<p>The unique ID of an external resource (for example, a CloudFormation stack ID) that is
            linked to one or more CodeDeploy resources.</p>")
    externalId: option<externalId>,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "DeleteResourcesByExternalIdCommand"
  let make = (~externalId=?, ()) => new({externalId: externalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGitHubAccountToken = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteGitHubAccount</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the GitHub account connection to delete.</p>")
    tokenName: option<gitHubAccountTokenName>,
  }
  @ocaml.doc("<p>Represents the output of a <code>DeleteGitHubAccountToken</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The name of the GitHub account connection that was deleted.</p>")
    tokenName: option<gitHubAccountTokenName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "DeleteGitHubAccountTokenCommand"
  let make = (~tokenName=?, ()) => new({tokenName: tokenName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeploymentConfig = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteDeploymentConfig</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a deployment configuration associated with the IAM user or AWS
            account.</p>")
    deploymentConfigName: deploymentConfigName,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "DeleteDeploymentConfigCommand"
  let make = (~deploymentConfigName, ()) => new({deploymentConfigName: deploymentConfigName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteApplication</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "DeleteApplicationCommand"
  let make = (~applicationName, ()) => new({applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ContinueDeployment = {
  type t
  type request = {
    @ocaml.doc("<p> The status of the deployment's waiting period. <code>READY_WAIT</code> indicates that
            the deployment is ready to start shifting traffic. <code>TERMINATION_WAIT</code>
            indicates that the traffic is shifted, but the original target is not terminated.
        </p>")
    deploymentWaitType: option<deploymentWaitType>,
    @ocaml.doc("<p> The unique ID of a blue/green deployment for which you want to start rerouting
            traffic to the replacement environment. </p>")
    deploymentId: option<deploymentId>,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ContinueDeploymentCommand"
  let make = (~deploymentWaitType=?, ~deploymentId=?, ()) =>
    new({deploymentWaitType: deploymentWaitType, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p> A list of keys of <code>Tag</code> objects. The <code>Tag</code> objects identified
            by the keys are disassociated from the resource specified by the
                <code>ResourceArn</code> input parameter. </p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) that specifies from which resource to disassociate the
            tags with the keys in the <code>TagKeys</code> input parameter. </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListGitHubAccountTokenNames = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListGitHubAccountTokenNames</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous <code>ListGitHubAccountTokenNames</code>
            call. It can be used to return the next set of names in the list. </p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>ListGitHubAccountTokenNames</code> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent <code>ListGitHubAccountTokenNames</code> call to return the next
            set of names in the list. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of names of connections to GitHub accounts.</p>")
    tokenNameList: option<gitHubAccountTokenNameList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListGitHubAccountTokenNamesCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeployments = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListDeployments</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous list deployments call. It can be used to
            return the next set of deployments in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A time range (start and end) for returning a subset of the list of deployments.</p>"
    )
    createTimeRange: option<timeRange>,
    @ocaml.doc("<p>A subset of deployments to list by status:</p>
        <ul>
            <li>
                <p>
                  <code>Created</code>: Include created deployments in the resulting
                    list.</p>
            </li>
            <li>
                <p>
                  <code>Queued</code>: Include queued deployments in the resulting list.</p>
            </li>
            <li>
                <p>
                  <code>In Progress</code>: Include in-progress deployments in the resulting
                    list.</p>
            </li>
            <li>
                <p>
                  <code>Succeeded</code>: Include successful deployments in the resulting
                    list.</p>
            </li>
            <li>
                <p>
                  <code>Failed</code>: Include failed deployments in the resulting list.</p>
            </li>
            <li>
                <p>
                  <code>Stopped</code>: Include stopped deployments in the resulting
                    list.</p>
            </li>
         </ul>")
    includeOnlyStatuses: option<deploymentStatusList>,
    @ocaml.doc("<p>The unique ID of an external resource for returning deployments linked to the external
            resource.</p>")
    externalId: option<externalId>,
    @ocaml.doc("<p>The name of a deployment group for the specified application.</p>
        <note>
            <p>If <code>deploymentGroupName</code> is specified, then
                    <code>applicationName</code> must be specified. If it is not specified, then
                    <code>applicationName</code> must not be specified. </p>
        </note>")
    deploymentGroupName: option<deploymentGroupName>,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>
        <note>
            <p>If <code>applicationName</code> is specified, then
                    <code>deploymentGroupName</code> must be specified. If it is not specified, then
                    <code>deploymentGroupName</code> must not be specified. </p>
        </note>")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListDeployments</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list deployments call to return the next set of deployments in
            the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of deployment IDs.</p>") deployments: option<deploymentsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "ListDeploymentsCommand"
  let make = (
    ~nextToken=?,
    ~createTimeRange=?,
    ~includeOnlyStatuses=?,
    ~externalId=?,
    ~deploymentGroupName=?,
    ~applicationName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      createTimeRange: createTimeRange,
      includeOnlyStatuses: includeOnlyStatuses,
      externalId: externalId,
      deploymentGroupName: deploymentGroupName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentInstances = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>ListDeploymentInstances</code> operation. </p>")
  type request = {
    @ocaml.doc("<p>The set of instances in a blue/green deployment, either those in the original
            environment (\"BLUE\") or those in the replacement environment (\"GREEN\"), for which you
            want to view instance information.</p>")
    instanceTypeFilter: option<instanceTypeList>,
    @ocaml.doc("<p>A subset of instances to list by status:</p>
        <ul>
            <li>
                <p>
                  <code>Pending</code>: Include those instances with pending deployments.</p>
            </li>
            <li>
                <p>
                  <code>InProgress</code>: Include those instances where deployments are still
                    in progress.</p>
            </li>
            <li>
                <p>
                  <code>Succeeded</code>: Include those instances with successful
                    deployments.</p>
            </li>
            <li>
                <p>
                  <code>Failed</code>: Include those instances with failed deployments.</p>
            </li>
            <li>
                <p>
                  <code>Skipped</code>: Include those instances with skipped deployments.</p>
            </li>
            <li>
                <p>
                  <code>Unknown</code>: Include those instances with deployments in an unknown
                    state.</p>
            </li>
         </ul>")
    instanceStatusFilter: option<instanceStatusList>,
    @ocaml.doc("<p>An identifier returned from the previous list deployment instances call. It can be
            used to return the next set of deployment instances in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: deploymentId,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListDeploymentInstances</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list deployment instances call to return the next set of
            deployment instances in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of instance IDs.</p>") instancesList: option<instancesList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListDeploymentInstancesCommand"
  let make = (~deploymentId, ~instanceTypeFilter=?, ~instanceStatusFilter=?, ~nextToken=?, ()) =>
    new({
      instanceTypeFilter: instanceTypeFilter,
      instanceStatusFilter: instanceStatusFilter,
      nextToken: nextToken,
      deploymentId: deploymentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentGroups = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListDeploymentGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous list deployment groups call. It can be used
            to return the next set of deployment groups in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListDeploymentGroups</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list deployment groups call to return the next set of deployment
            groups in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of deployment group names.</p>")
    deploymentGroups: option<deploymentGroupsList>,
    @ocaml.doc("<p>The application name.</p>") applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListDeploymentGroupsCommand"
  let make = (~applicationName, ~nextToken=?, ()) =>
    new({nextToken: nextToken, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentConfigs = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListDeploymentConfigs</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous <code>ListDeploymentConfigs</code> call. It
            can be used to return the next set of deployment configurations in the list. </p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListDeploymentConfigs</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list deployment configurations call to return the next set of
            deployment configurations in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of deployment configurations, including built-in configurations such as
                <code>CodeDeployDefault.OneAtATime</code>.</p>")
    deploymentConfigsList: option<deploymentConfigsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListDeploymentConfigsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApplications = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListApplications</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous list applications call. It can be used to
            return the next set of applications in the list.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Represents the output of a ListApplications operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list applications call to return the next set of applications in
            the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of application names.</p>") applications: option<applicationsList>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "ListApplicationsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplication = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetApplication</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetApplication</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the application.</p>") application: option<applicationInfo>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "GetApplicationCommand"
  let make = (~applicationName, ()) => new({applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p> A list of tags that <code>TagResource</code> associates with a resource. The resource
            is identified by the <code>ResourceArn</code> input parameter. </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc(
      "<p> The ARN of a resource, such as a CodeDeploy application or deployment group. </p>"
    )
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveTagsFromOnPremisesInstances = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>RemoveTagsFromOnPremisesInstances</code>
            operation.</p>")
  type request = {
    @ocaml.doc("<p>The names of the on-premises instances from which to remove tags.</p>")
    instanceNames: instanceNameList,
    @ocaml.doc("<p>The tag key-value pairs to remove from the on-premises instances.</p>")
    tags: tagList_,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "RemoveTagsFromOnPremisesInstancesCommand"
  let make = (~instanceNames, ~tags, ()) => new({instanceNames: instanceNames, tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterApplicationRevision = {
  type t
  @ocaml.doc("<p>Represents the input of a RegisterApplicationRevision operation.</p>")
  type request = {
    @ocaml.doc("<p>Information about the application revision to register, including type and
            location.</p>")
    revision: revisionLocation,
    @ocaml.doc("<p>A comment about the revision.</p>") description: option<description>,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "RegisterApplicationRevisionCommand"
  let make = (~revision, ~applicationName, ~description=?, ()) =>
    new({revision: revision, description: description, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous <code>ListTagsForResource</code> call. It can
            be used to return the next set of applications in the list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The ARN of a CodeDeploy resource. <code>ListTagsForResource</code> returns all the
            tags associated with the resource that is identified by the <code>ResourceArn</code>.
        </p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list application revisions call to return the next set of
            application revisions in the list.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> A list of tags returned by <code>ListTagsForResource</code>. The tags are associated
            with the resource identified by the input <code>ResourceArn</code> parameter. </p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOnPremisesInstances = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListOnPremisesInstances</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous list on-premises instances call. It can be
            used to return the next set of on-premises instances in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The on-premises instance tags that are used to restrict the on-premises instance names
            returned.</p>")
    tagFilters: option<tagFilterList>,
    @ocaml.doc("<p>The registration status of the on-premises instances:</p>
        <ul>
            <li>
                <p>
                  <code>Deregistered</code>: Include deregistered on-premises instances in the
                    resulting list.</p>
            </li>
            <li>
                <p>
                  <code>Registered</code>: Include registered on-premises instances in the
                    resulting list.</p>
            </li>
         </ul>")
    registrationStatus: option<registrationStatus>,
  }
  @ocaml.doc("<p>Represents the output of the list on-premises instances operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list on-premises instances call to return the next set of
            on-premises instances in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of matching on-premises instance names.</p>")
    instanceNames: option<instanceNameList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListOnPremisesInstancesCommand"
  let make = (~nextToken=?, ~tagFilters=?, ~registrationStatus=?, ()) =>
    new({nextToken: nextToken, tagFilters: tagFilters, registrationStatus: registrationStatus})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeploymentTargets = {
  type t
  type request = {
    @ocaml.doc("<p> A key used to filter the returned targets. The two valid values are:</p>
        <ul>
            <li>
                <p>
                    <code>TargetStatus</code> - A <code>TargetStatus</code> filter string can be
                        <code>Failed</code>, <code>InProgress</code>, <code>Pending</code>,
                        <code>Ready</code>, <code>Skipped</code>, <code>Succeeded</code>, or
                        <code>Unknown</code>. </p>
            </li>
            <li>
                <p>
                    <code>ServerInstanceLabel</code> - A <code>ServerInstanceLabel</code> filter
                    string can be <code>Blue</code> or <code>Green</code>. </p>
            </li>
         </ul>")
    targetFilters: option<targetFilters>,
    @ocaml.doc("<p> A token identifier returned from the previous <code>ListDeploymentTargets</code>
            call. It can be used to return the next set of deployment targets in the list. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
  }
  type response = {
    @ocaml.doc("<p> If a large amount of information is returned, a token identifier is also returned. It
            can be used in a subsequent <code>ListDeploymentTargets</code> call to return the next
            set of deployment targets in the list. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> The unique IDs of deployment targets. </p>") targetIds: option<targetIdList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListDeploymentTargetsCommand"
  let make = (~targetFilters=?, ~nextToken=?, ~deploymentId=?, ()) =>
    new({targetFilters: targetFilters, nextToken: nextToken, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApplicationRevision = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetApplicationRevision</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Information about the application revision to get, including type and location.</p>"
    )
    revision: revisionLocation,
    @ocaml.doc("<p>The name of the application that corresponds to the revision.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetApplicationRevision</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>General information about the revision.</p>")
    revisionInfo: option<genericRevisionInfo>,
    @ocaml.doc("<p>Additional information about the revision, including type and location.</p>")
    revision: option<revisionLocation>,
    @ocaml.doc("<p>The name of the application that corresponds to the revision.</p>")
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetApplicationRevisionCommand"
  let make = (~revision, ~applicationName, ()) =>
    new({revision: revision, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeploymentGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteDeploymentGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a deployment group for the specified application.</p>")
    deploymentGroupName: deploymentGroupName,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>DeleteDeploymentGroup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If the output contains no data, and the corresponding deployment group contained at
            least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto
            Scaling lifecycle event hooks from the Amazon EC2 instances in the Auto Scaling group.
            If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle
            event hooks from the Amazon EC2 instances in the Auto Scaling group.</p>")
    hooksNotCleanedUp: option<autoScalingGroupList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "DeleteDeploymentGroupCommand"
  let make = (~deploymentGroupName, ~applicationName, ()) =>
    new({deploymentGroupName: deploymentGroupName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentConfig = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateDeploymentConfig</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The destination platform type for the deployment (<code>Lambda</code>,
                <code>Server</code>, or <code>ECS</code>).</p>")
    computePlatform: option<computePlatform>,
    @ocaml.doc("<p>The configuration that specifies how the deployment traffic is routed.</p>")
    trafficRoutingConfig: option<trafficRoutingConfig>,
    @ocaml.doc("<p>The minimum number of healthy instances that should be available at any time during
            the deployment. There are two parameters expected in the input: type and value.</p>
        <p>The type parameter takes either of the following values:</p>
        <ul>
            <li>
                <p>HOST_COUNT: The value parameter represents the minimum number of healthy
                    instances as an absolute value.</p>
            </li>
            <li>
                <p>FLEET_PERCENT: The value parameter represents the minimum number of healthy
                    instances as a percentage of the total number of instances in the deployment. If
                    you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy
                    converts the percentage to the equivalent number of instances and rounds up
                    fractional instances.</p>
            </li>
         </ul>
        <p>The value parameter takes an integer.</p>
        <p>For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT
            and a value of 95.</p>")
    minimumHealthyHosts: option<minimumHealthyHosts>,
    @ocaml.doc("<p>The name of the deployment configuration to create.</p>")
    deploymentConfigName: deploymentConfigName,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateDeploymentConfig</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A unique deployment configuration ID.</p>")
    deploymentConfigId: option<deploymentConfigId>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "CreateDeploymentConfigCommand"
  let make = (
    ~deploymentConfigName,
    ~computePlatform=?,
    ~trafficRoutingConfig=?,
    ~minimumHealthyHosts=?,
    (),
  ) =>
    new({
      computePlatform: computePlatform,
      trafficRoutingConfig: trafficRoutingConfig,
      minimumHealthyHosts: minimumHealthyHosts,
      deploymentConfigName: deploymentConfigName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateApplication</code> operation.</p>")
  type request = {
    @ocaml.doc("<p> The metadata that you apply to CodeDeploy applications to help you organize and
            categorize them. Each tag consists of a key and an optional value, both of which you
            define. </p>")
    tags: option<tagList_>,
    @ocaml.doc("<p> The destination platform type for the deployment (<code>Lambda</code>,
                <code>Server</code>, or <code>ECS</code>).</p>")
    computePlatform: option<computePlatform>,
    @ocaml.doc("<p>The name of the application. This name must be unique with the applicable IAM user or
            AWS account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateApplication</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A unique application ID.</p>") applicationId: option<applicationId>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "CreateApplicationCommand"
  let make = (~applicationName, ~tags=?, ~computePlatform=?, ()) =>
    new({tags: tags, computePlatform: computePlatform, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetApplications = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>BatchGetApplications</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A list of application names separated by spaces. The maximum number of application
            names you can specify is 100.</p>")
    applicationNames: applicationsList,
  }
  @ocaml.doc("<p>Represents the output of a <code>BatchGetApplications</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the applications.</p>")
    applicationsInfo: option<applicationsInfoList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetApplicationsCommand"
  let make = (~applicationNames, ()) => new({applicationNames: applicationNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToOnPremisesInstances = {
  type t
  @ocaml.doc("<p>Represents the input of, and adds tags to, an on-premises instance operation.</p>")
  type request = {
    @ocaml.doc("<p>The names of the on-premises instances to which to add tags.</p>")
    instanceNames: instanceNameList,
    @ocaml.doc("<p>The tag key-value pairs to add to the on-premises instances.</p>
        <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only
            tags are not allowed.</p>")
    tags: tagList_,
  }
  type response = {.}
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "AddTagsToOnPremisesInstancesCommand"
  let make = (~instanceNames, ~tags, ()) => new({instanceNames: instanceNames, tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListApplicationRevisions = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>ListApplicationRevisions</code> operation. </p>")
  type request = {
    @ocaml.doc("<p>An identifier returned from the previous <code>ListApplicationRevisions</code> call.
            It can be used to return the next set of applications in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> Whether to list revisions based on whether the revision is the target revision of a
            deployment group: </p>
        <ul>
            <li>
                <p>
                  <code>include</code>: List revisions that are target revisions of a deployment
                    group.</p>
            </li>
            <li>
                <p>
                  <code>exclude</code>: Do not list revisions that are target revisions of a
                    deployment group.</p>
            </li>
            <li>
                <p>
                  <code>ignore</code>: List all revisions.</p>
            </li>
         </ul>")
    deployed: option<listStateFilterAction>,
    @ocaml.doc("<p> A key prefix for the set of Amazon S3 objects to limit the search for revisions.
        </p>")
    s3KeyPrefix: option<s3Key>,
    @ocaml.doc("<p> An Amazon S3 bucket name to limit the search for revisions. </p>
        <p> If set to null, all of the user's buckets are searched. </p>")
    s3Bucket: option<s3Bucket>,
    @ocaml.doc("<p> The order in which to sort the list results: </p>
        <ul>
            <li>
                <p>
                  <code>ascending</code>: ascending order.</p>
            </li>
            <li>
                <p>
                  <code>descending</code>: descending order.</p>
            </li>
         </ul>
        <p>If not specified, the results are sorted in ascending order.</p>
        <p>If set to null, the results are sorted in an arbitrary order.</p>")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The column name to use to sort the list results:</p>
        <ul>
            <li>
                <p>
                  <code>registerTime</code>: Sort by the time the revisions were registered with
                    AWS CodeDeploy.</p>
            </li>
            <li>
                <p>
                  <code>firstUsedTime</code>: Sort by the time the revisions were first used in
                    a deployment.</p>
            </li>
            <li>
                <p>
                  <code>lastUsedTime</code>: Sort by the time the revisions were last used in a
                    deployment.</p>
            </li>
         </ul>
        <p> If not specified or set to null, the results are returned in an arbitrary order.
        </p>")
    sortBy: option<applicationRevisionSortBy>,
    @ocaml.doc("<p> The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account. </p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListApplicationRevisions</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If a large amount of information is returned, an identifier is also returned. It can
            be used in a subsequent list application revisions call to return the next set of
            application revisions in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of locations that contain the matching revisions.</p>")
    revisions: option<revisionLocationList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "ListApplicationRevisionsCommand"
  let make = (
    ~applicationName,
    ~nextToken=?,
    ~deployed=?,
    ~s3KeyPrefix=?,
    ~s3Bucket=?,
    ~sortOrder=?,
    ~sortBy=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      deployed: deployed,
      s3KeyPrefix: s3KeyPrefix,
      s3Bucket: s3Bucket,
      sortOrder: sortOrder,
      sortBy: sortBy,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOnPremisesInstance = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>GetOnPremisesInstance</code> operation. </p>")
  type request = {
    @ocaml.doc("<p> The name of the on-premises instance about which to get information. </p>")
    instanceName: instanceName,
  }
  @ocaml.doc("<p> Represents the output of a <code>GetOnPremisesInstance</code> operation. </p>")
  type response = {
    @ocaml.doc("<p> Information about the on-premises instance. </p>")
    instanceInfo: option<instanceInfo>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetOnPremisesInstanceCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentConfig = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetDeploymentConfig</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a deployment configuration associated with the IAM user or AWS
            account.</p>")
    deploymentConfigName: deploymentConfigName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetDeploymentConfig</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the deployment configuration.</p>")
    deploymentConfigInfo: option<deploymentConfigInfo>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetDeploymentConfigCommand"
  let make = (~deploymentConfigName, ()) => new({deploymentConfigName: deploymentConfigName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentInstance = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>GetDeploymentInstance</code> operation. </p>")
  type request = {
    @ocaml.doc("<p> The unique ID of an instance in the deployment group. </p>")
    instanceId: instanceId,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: deploymentId,
  }
  @ocaml.doc("<p> Represents the output of a <code>GetDeploymentInstance</code> operation. </p>")
  type response = {
    @ocaml.doc("<p> Information about the instance. </p>") instanceSummary: option<instanceSummary>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetDeploymentInstanceCommand"
  let make = (~instanceId, ~deploymentId, ()) =>
    new({instanceId: instanceId, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetOnPremisesInstances = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>BatchGetOnPremisesInstances</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The names of the on-premises instances about which to get information. The maximum
            number of instance names you can specify is 25.</p>")
    instanceNames: instanceNameList,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>BatchGetOnPremisesInstances</code> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>Information about the on-premises instances.</p>")
    instanceInfos: option<instanceInfoList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetOnPremisesInstancesCommand"
  let make = (~instanceNames, ()) => new({instanceNames: instanceNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetApplicationRevisions = {
  type t
  @ocaml.doc(
    "<p>Represents the input of a <code>BatchGetApplicationRevisions</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>An array of <code>RevisionLocation</code> objects that specify information to get
            about the application revisions, including type and location. The maximum number of
                <code>RevisionLocation</code> objects you can specify is 25.</p>")
    revisions: revisionLocationList,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application about which to get revision
            information.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>BatchGetApplicationRevisions</code> operation.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Additional information about the revisions, including the type and location.</p>"
    )
    revisions: option<revisionInfoList>,
    @ocaml.doc("<p>Information about errors that might have occurred during the API call.</p>")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The name of the application that corresponds to the revisions.</p>")
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetApplicationRevisionsCommand"
  let make = (~revisions, ~applicationName, ()) =>
    new({revisions: revisions, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeploymentGroup = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdateDeploymentGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Information about an on-premises instance tag set. The deployment group includes only
            on-premises instances identified by all the tag groups.</p>")
    onPremisesTagSet: option<onPremisesTagSet>,
    @ocaml.doc("<p> The target Amazon ECS services in the deployment group. This applies only to
            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
            is specified as an Amazon ECS cluster and service name pair using the format
                <code><clustername>:<servicename></code>. </p>")
    ecsServices: option<ecsserviceList>,
    @ocaml.doc("<p>Information about groups of tags applied to on-premises instances. The deployment
            group includes only EC2 instances identified by all the tag groups.</p>")
    ec2TagSet: option<ec2TagSet>,
    @ocaml.doc("<p>Information about the load balancer used in a deployment.</p>")
    loadBalancerInfo: option<loadBalancerInfo>,
    @ocaml.doc("<p>Information about blue/green deployment options for a deployment group.</p>")
    blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
    @ocaml.doc("<p>Information about the type of deployment, either in-place or blue/green, you want to
            run and whether to route deployment traffic behind a load balancer.</p>")
    deploymentStyle: option<deploymentStyle>,
    @ocaml.doc("<p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
            receive the deployed application revision.</p>
        <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
            one or more 'auto-update outdated instances' deployments to apply the deployed
            application revision to the new EC2 instances.</p>
        <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
            deployment to update the new EC2 instances. This may result in instances having
            different revisions.</p>")
    outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
    @ocaml.doc("<p>Information for an automatic rollback configuration that is added or changed when a
            deployment group is updated.</p>")
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    @ocaml.doc("<p>Information to add or change about Amazon CloudWatch alarms when the deployment group
            is updated.</p>")
    alarmConfiguration: option<alarmConfiguration>,
    @ocaml.doc("<p>Information about triggers to change when the deployment group is updated. For
            examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html\">Edit a Trigger in a
                CodeDeploy Deployment Group</a> in the <i>AWS CodeDeploy User
                Guide</i>.</p>")
    triggerConfigurations: option<triggerConfigList>,
    @ocaml.doc("<p>A replacement ARN for the service role, if you want to change it.</p>")
    serviceRoleArn: option<role>,
    @ocaml.doc("<p>The replacement list of Auto Scaling groups to be included in the deployment group, if
            you want to change them. To keep the Auto Scaling groups, enter their names. To remove
            Auto Scaling groups, do not enter any Auto Scaling group names.</p>")
    autoScalingGroups: option<autoScalingGroupNameList>,
    @ocaml.doc("<p>The replacement set of on-premises instance tags on which to filter, if you want to
            change them. To keep the existing tags, enter their names. To remove tags, do not enter
            any tag names.</p>")
    onPremisesInstanceTagFilters: option<tagFilterList>,
    @ocaml.doc("<p>The replacement set of Amazon EC2 tags on which to filter, if you want to change them.
            To keep the existing tags, enter their names. To remove tags, do not enter any tag
            names.</p>")
    ec2TagFilters: option<ec2TagFilterList>,
    @ocaml.doc(
      "<p>The replacement deployment configuration name to use, if you want to change it.</p>"
    )
    deploymentConfigName: option<deploymentConfigName>,
    @ocaml.doc("<p>The new name of the deployment group, if you want to change it.</p>")
    newDeploymentGroupName: option<deploymentGroupName>,
    @ocaml.doc("<p>The current name of the deployment group.</p>")
    currentDeploymentGroupName: deploymentGroupName,
    @ocaml.doc("<p>The application name that corresponds to the deployment group to update.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateDeploymentGroup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>If the output contains no data, and the corresponding deployment group contained at
            least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto
            Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS
            CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS
            account.</p>")
    hooksNotCleanedUp: option<autoScalingGroupList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "UpdateDeploymentGroupCommand"
  let make = (
    ~currentDeploymentGroupName,
    ~applicationName,
    ~onPremisesTagSet=?,
    ~ecsServices=?,
    ~ec2TagSet=?,
    ~loadBalancerInfo=?,
    ~blueGreenDeploymentConfiguration=?,
    ~deploymentStyle=?,
    ~outdatedInstancesStrategy=?,
    ~autoRollbackConfiguration=?,
    ~alarmConfiguration=?,
    ~triggerConfigurations=?,
    ~serviceRoleArn=?,
    ~autoScalingGroups=?,
    ~onPremisesInstanceTagFilters=?,
    ~ec2TagFilters=?,
    ~deploymentConfigName=?,
    ~newDeploymentGroupName=?,
    (),
  ) =>
    new({
      onPremisesTagSet: onPremisesTagSet,
      ecsServices: ecsServices,
      ec2TagSet: ec2TagSet,
      loadBalancerInfo: loadBalancerInfo,
      blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
      deploymentStyle: deploymentStyle,
      outdatedInstancesStrategy: outdatedInstancesStrategy,
      autoRollbackConfiguration: autoRollbackConfiguration,
      alarmConfiguration: alarmConfiguration,
      triggerConfigurations: triggerConfigurations,
      serviceRoleArn: serviceRoleArn,
      autoScalingGroups: autoScalingGroups,
      onPremisesInstanceTagFilters: onPremisesInstanceTagFilters,
      ec2TagFilters: ec2TagFilters,
      deploymentConfigName: deploymentConfigName,
      newDeploymentGroupName: newDeploymentGroupName,
      currentDeploymentGroupName: currentDeploymentGroupName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentTarget = {
  type t
  type request = {
    @ocaml.doc("<p> The unique ID of a deployment target. </p>") targetId: option<targetId>,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
  }
  type response = {
    @ocaml.doc("<p> A deployment target that contains information about a deployment such as its status,
            lifecycle events, and when it was last updated. It also contains metadata about the
            deployment target. The deployment target metadata depends on the deployment target's
            type (<code>instanceTarget</code>, <code>lambdaTarget</code>, or
            <code>ecsTarget</code>). </p>")
    deploymentTarget: option<deploymentTarget>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetDeploymentTargetCommand"
  let make = (~targetId=?, ~deploymentId=?, ()) =>
    new({targetId: targetId, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeploymentGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateDeploymentGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p> The metadata that you apply to CodeDeploy deployment groups to help you organize and
            categorize them. Each tag consists of a key and an optional value, both of which you
            define. </p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Information about groups of tags applied to on-premises instances. The deployment
            group includes only on-premises instances identified by all of the tag groups. Cannot be
            used in the same call as <code>onPremisesInstanceTagFilters</code>.</p>")
    onPremisesTagSet: option<onPremisesTagSet>,
    @ocaml.doc("<p> The target Amazon ECS services in the deployment group. This applies only to
            deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service
            is specified as an Amazon ECS cluster and service name pair using the format
                <code><clustername>:<servicename></code>. </p>")
    ecsServices: option<ecsserviceList>,
    @ocaml.doc("<p>Information about groups of tags applied to EC2 instances. The deployment group
            includes only EC2 instances identified by all the tag groups. Cannot be used in the same
            call as <code>ec2TagFilters</code>.</p>")
    ec2TagSet: option<ec2TagSet>,
    @ocaml.doc("<p>Information about the load balancer used in a deployment.</p>")
    loadBalancerInfo: option<loadBalancerInfo>,
    @ocaml.doc("<p>Information about blue/green deployment options for a deployment group.</p>")
    blueGreenDeploymentConfiguration: option<blueGreenDeploymentConfiguration>,
    @ocaml.doc("<p>Information about the type of deployment, in-place or blue/green, that you want to run
            and whether to route deployment traffic behind a load balancer.</p>")
    deploymentStyle: option<deploymentStyle>,
    @ocaml.doc("<p>Indicates what happens when new EC2 instances are launched mid-deployment and do not
            receive the deployed application revision.</p>
        <p>If this option is set to <code>UPDATE</code> or is unspecified, CodeDeploy initiates
            one or more 'auto-update outdated instances' deployments to apply the deployed
            application revision to the new EC2 instances.</p>
        <p>If this option is set to <code>IGNORE</code>, CodeDeploy does not initiate a
            deployment to update the new EC2 instances. This may result in instances having
            different revisions.</p>")
    outdatedInstancesStrategy: option<outdatedInstancesStrategy>,
    @ocaml.doc("<p>Configuration information for an automatic rollback that is added when a deployment
            group is created.</p>")
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    @ocaml.doc("<p>Information to add about Amazon CloudWatch alarms when the deployment group is
            created.</p>")
    alarmConfiguration: option<alarmConfiguration>,
    @ocaml.doc("<p>Information about triggers to create when the deployment group is created. For
            examples, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-sns.html\">Create a Trigger for an
                AWS CodeDeploy Event</a> in the <i>AWS CodeDeploy User
            Guide</i>.</p>")
    triggerConfigurations: option<triggerConfigList>,
    @ocaml.doc("<p>A service role Amazon Resource Name (ARN) that allows AWS CodeDeploy to act on the
            user's behalf when interacting with AWS services.</p>")
    serviceRoleArn: role,
    @ocaml.doc("<p>A list of associated Amazon EC2 Auto Scaling groups.</p>")
    autoScalingGroups: option<autoScalingGroupNameList>,
    @ocaml.doc("<p>The on-premises instance tags on which to filter. The deployment group includes
            on-premises instances with any of the specified tags. Cannot be used in the same call as
                <code>OnPremisesTagSet</code>.</p>")
    onPremisesInstanceTagFilters: option<tagFilterList>,
    @ocaml.doc("<p>The Amazon EC2 tags on which to filter. The deployment group includes EC2 instances
            with any of the specified tags. Cannot be used in the same call as ec2TagSet.</p>")
    ec2TagFilters: option<ec2TagFilterList>,
    @ocaml.doc("<p>If specified, the deployment configuration name can be either one of the predefined
            configurations provided with AWS CodeDeploy or a custom deployment configuration that
            you create by calling the create deployment configuration operation.</p>
        <p>
            <code>CodeDeployDefault.OneAtATime</code> is the default deployment configuration. It
            is used if a configuration isn't specified for the deployment or deployment
            group.</p>
        <p>For more information about the predefined deployment configurations in AWS CodeDeploy,
            see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html\">Working with
                Deployment Configurations in CodeDeploy</a> in the <i>AWS CodeDeploy User
                Guide</i>.</p>")
    deploymentConfigName: option<deploymentConfigName>,
    @ocaml.doc("<p>The name of a new deployment group for the specified application.</p>")
    deploymentGroupName: deploymentGroupName,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateDeploymentGroup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A unique deployment group ID.</p>") deploymentGroupId: option<deploymentGroupId>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "CreateDeploymentGroupCommand"
  let make = (
    ~serviceRoleArn,
    ~deploymentGroupName,
    ~applicationName,
    ~tags=?,
    ~onPremisesTagSet=?,
    ~ecsServices=?,
    ~ec2TagSet=?,
    ~loadBalancerInfo=?,
    ~blueGreenDeploymentConfiguration=?,
    ~deploymentStyle=?,
    ~outdatedInstancesStrategy=?,
    ~autoRollbackConfiguration=?,
    ~alarmConfiguration=?,
    ~triggerConfigurations=?,
    ~autoScalingGroups=?,
    ~onPremisesInstanceTagFilters=?,
    ~ec2TagFilters=?,
    ~deploymentConfigName=?,
    (),
  ) =>
    new({
      tags: tags,
      onPremisesTagSet: onPremisesTagSet,
      ecsServices: ecsServices,
      ec2TagSet: ec2TagSet,
      loadBalancerInfo: loadBalancerInfo,
      blueGreenDeploymentConfiguration: blueGreenDeploymentConfiguration,
      deploymentStyle: deploymentStyle,
      outdatedInstancesStrategy: outdatedInstancesStrategy,
      autoRollbackConfiguration: autoRollbackConfiguration,
      alarmConfiguration: alarmConfiguration,
      triggerConfigurations: triggerConfigurations,
      serviceRoleArn: serviceRoleArn,
      autoScalingGroups: autoScalingGroups,
      onPremisesInstanceTagFilters: onPremisesInstanceTagFilters,
      ec2TagFilters: ec2TagFilters,
      deploymentConfigName: deploymentConfigName,
      deploymentGroupName: deploymentGroupName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeployment = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateDeployment</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Information about how AWS CodeDeploy handles files that already exist in a deployment
            target location but weren't part of the previous successful deployment.</p>
        <p>The <code>fileExistsBehavior</code> parameter takes any of the following
            values:</p>
        <ul>
            <li>
                <p>DISALLOW: The deployment fails. This is also the default behavior if no option
                    is specified.</p>
            </li>
            <li>
                <p>OVERWRITE: The version of the file from the application revision currently
                    being deployed replaces the version already on the instance.</p>
            </li>
            <li>
                <p>RETAIN: The version of the file already on the instance is kept and used as
                    part of the new deployment.</p>
            </li>
         </ul>")
    fileExistsBehavior: option<fileExistsBehavior>,
    @ocaml.doc("<p> Indicates whether to deploy to all instances or only to instances that are not
            running the latest application revision. </p>")
    updateOutdatedInstancesOnly: option<boolean_>,
    @ocaml.doc("<p>Configuration information for an automatic rollback that is added when a deployment is
            created.</p>")
    autoRollbackConfiguration: option<autoRollbackConfiguration>,
    @ocaml.doc("<p> Information about the instances that belong to the replacement environment in a
            blue/green deployment. </p>")
    targetInstances: option<targetInstances>,
    @ocaml.doc("<p> If true, then if an <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, or
                <code>AfterBlockTraffic</code> deployment lifecycle event to an instance fails, then
            the deployment continues to the next deployment lifecycle event. For example, if
                <code>ApplicationStop</code> fails, the deployment continues with
                <code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails, the
            deployment continues with <code>BlockTraffic</code>. If <code>AfterBlockTraffic</code>
            fails, the deployment continues with <code>ApplicationStop</code>. </p>

        <p> If false or not specified, then if a lifecycle event fails during a deployment to an
            instance, that deployment fails. If deployment to that instance is part of an overall
            deployment and the number of healthy hosts is not less than the minimum number of
            healthy hosts, then a deployment to the next instance is attempted. </p>

        <p> During a deployment, the AWS CodeDeploy agent runs the scripts specified for
                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
                <code>AfterBlockTraffic</code> in the AppSpec file from the previous successful
            deployment. (All other scripts are run from the AppSpec file in the current deployment.)
            If one of these scripts contains an error and does not run successfully, the deployment
            can fail. </p>

        <p> If the cause of the failure is a script from the last successful deployment that will
            never run successfully, create a new deployment and use
                <code>ignoreApplicationStopFailures</code> to specify that the
                <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
                <code>AfterBlockTraffic</code> failures should be ignored. </p>")
    ignoreApplicationStopFailures: option<boolean_>,
    @ocaml.doc("<p>A comment about the deployment.</p>") description: option<description>,
    @ocaml.doc("<p>The name of a deployment configuration associated with the IAM user or AWS
            account.</p>
        <p>If not specified, the value configured in the deployment group is used as the default.
            If the deployment group does not have a deployment configuration associated with it,
                <code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by default.</p>")
    deploymentConfigName: option<deploymentConfigName>,
    @ocaml.doc("<p> The type and location of the revision to deploy. </p>")
    revision: option<revisionLocation>,
    @ocaml.doc("<p>The name of the deployment group.</p>")
    deploymentGroupName: option<deploymentGroupName>,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateDeployment</code> operation. </p>")
  type response = {
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "CreateDeploymentCommand"
  let make = (
    ~applicationName,
    ~fileExistsBehavior=?,
    ~updateOutdatedInstancesOnly=?,
    ~autoRollbackConfiguration=?,
    ~targetInstances=?,
    ~ignoreApplicationStopFailures=?,
    ~description=?,
    ~deploymentConfigName=?,
    ~revision=?,
    ~deploymentGroupName=?,
    (),
  ) =>
    new({
      fileExistsBehavior: fileExistsBehavior,
      updateOutdatedInstancesOnly: updateOutdatedInstancesOnly,
      autoRollbackConfiguration: autoRollbackConfiguration,
      targetInstances: targetInstances,
      ignoreApplicationStopFailures: ignoreApplicationStopFailures,
      description: description,
      deploymentConfigName: deploymentConfigName,
      revision: revision,
      deploymentGroupName: deploymentGroupName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentInstances = {
  type t
  @ocaml.doc(
    "<p> Represents the input of a <code>BatchGetDeploymentInstances</code> operation. </p>"
  )
  type request = {
    @ocaml.doc("<p>The unique IDs of instances used in the deployment. The maximum number of instance IDs
            you can specify is 25.</p>")
    instanceIds: instancesList,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: deploymentId,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>BatchGetDeploymentInstances</code> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>Information about errors that might have occurred during the API call.</p>")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Information about the instance.</p>")
    instancesSummary: option<instanceSummaryList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetDeploymentInstancesCommand"
  let make = (~instanceIds, ~deploymentId, ()) =>
    new({instanceIds: instanceIds, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeploymentGroup = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetDeploymentGroup</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of a deployment group for the specified application.</p>")
    deploymentGroupName: deploymentGroupName,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the IAM user or AWS
            account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetDeploymentGroup</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the deployment group.</p>")
    deploymentGroupInfo: option<deploymentGroupInfo>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "GetDeploymentGroupCommand"
  let make = (~deploymentGroupName, ~applicationName, ()) =>
    new({deploymentGroupName: deploymentGroupName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeployment = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetDeployment</code> operation.</p>")
  type request = {
    @ocaml.doc(
      "<p> The unique ID of a deployment associated with the IAM user or AWS account. </p>"
    )
    deploymentId: deploymentId,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetDeployment</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the deployment.</p>") deploymentInfo: option<deploymentInfo>,
  }
  @module("@aws-sdk/client-codedeploy") @new external new: request => t = "GetDeploymentCommand"
  let make = (~deploymentId, ()) => new({deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentTargets = {
  type t
  type request = {
    @ocaml.doc("<p> The unique IDs of the deployment targets. The compute platform of the deployment
            determines the type of the targets and their formats. The maximum number of deployment
            target IDs you can specify is 25.</p>
        <ul>
            <li>
                <p> For deployments that use the EC2/On-premises compute platform, the target IDs
                    are EC2 or on-premises instances IDs, and their target type is
                        <code>instanceTarget</code>. </p>
            </li>
            <li>
                <p> For deployments that use the AWS Lambda compute platform, the target IDs are
                    the names of Lambda functions, and their target type is
                        <code>instanceTarget</code>. </p>
            </li>
            <li>
                <p> For deployments that use the Amazon ECS compute platform, the target IDs are
                    pairs of Amazon ECS clusters and services specified using the format
                        <code><clustername>:<servicename></code>. Their target type is
                        <code>ecsTarget</code>. </p>
            </li>
            <li>
                <p> For deployments that are deployed with AWS CloudFormation, the target IDs are
                    CloudFormation stack IDs. Their target type is
                    <code>cloudFormationTarget</code>. </p>
            </li>
         </ul>")
    targetIds: option<targetIdList>,
    @ocaml.doc("<p> The unique ID of a deployment. </p>") deploymentId: option<deploymentId>,
  }
  type response = {
    @ocaml.doc("<p> A list of target objects for a deployment. Each target object contains details about
            the target, such as its status and lifecycle events. The type of the target objects
            depends on the deployment' compute platform. </p>
        <ul>
            <li>
                <p>
                    <b>EC2/On-premises</b>: Each target object is an EC2
                    or on-premises instance. </p>
            </li>
            <li>
                <p>
                    <b>AWS Lambda</b>: The target object is a specific
                    version of an AWS Lambda function. </p>
            </li>
            <li>
                <p>
                    <b>Amazon ECS</b>: The target object is an Amazon ECS
                    service. </p>
            </li>
            <li>
                <p>
                    <b>CloudFormation</b>: The target object is an AWS
                    CloudFormation blue/green deployment. </p>
            </li>
         </ul>")
    deploymentTargets: option<deploymentTargetList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetDeploymentTargetsCommand"
  let make = (~targetIds=?, ~deploymentId=?, ()) =>
    new({targetIds: targetIds, deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeployments = {
  type t
  @ocaml.doc("<p> Represents the input of a <code>BatchGetDeployments</code> operation. </p>")
  type request = {
    @ocaml.doc("<p> A list of deployment IDs, separated by spaces. The maximum number of deployment IDs
            you can specify is 25.</p>")
    deploymentIds: deploymentsList,
  }
  @ocaml.doc("<p> Represents the output of a <code>BatchGetDeployments</code> operation. </p>")
  type response = {
    @ocaml.doc("<p> Information about the deployments. </p>")
    deploymentsInfo: option<deploymentsInfoList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetDeploymentsCommand"
  let make = (~deploymentIds, ()) => new({deploymentIds: deploymentIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetDeploymentGroups = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>BatchGetDeploymentGroups</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The names of the deployment groups.</p>")
    deploymentGroupNames: deploymentGroupsList,
    @ocaml.doc("<p>The name of an AWS CodeDeploy application associated with the applicable IAM user or
            AWS account.</p>")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Represents the output of a <code>BatchGetDeploymentGroups</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about errors that might have occurred during the API call.</p>")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Information about the deployment groups.</p>")
    deploymentGroupsInfo: option<deploymentGroupInfoList>,
  }
  @module("@aws-sdk/client-codedeploy") @new
  external new: request => t = "BatchGetDeploymentGroupsCommand"
  let make = (~deploymentGroupNames, ~applicationName, ()) =>
    new({deploymentGroupNames: deploymentGroupNames, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
