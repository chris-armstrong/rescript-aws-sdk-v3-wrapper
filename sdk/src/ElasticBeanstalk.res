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
@ocaml.doc("<p>An error or warning for a desired configuration option value.</p>")
type validationMessage = {
  @ocaml.doc("<p>The name of the option.</p>") @as("OptionName")
  optionName: option<configurationOptionName>,
  @ocaml.doc("<p>The namespace to which the option belongs.</p>") @as("Namespace")
  namespace: option<optionNamespace>,
  @ocaml.doc("<p>An indication of the severity of this message:</p>
         <ul>
            <li>
               <p>
                  <code>error</code>: This message indicates that this is not a valid setting for an
          option.</p>
            </li>
            <li>
               <p>
                  <code>warning</code>: This message is providing information you should take into
          account.</p>
            </li>
         </ul>")
  @as("Severity")
  severity: option<validationSeverity>,
  @ocaml.doc("<p>A message describing the error or warning.</p>") @as("Message")
  message: option<validationMessageString>,
}
@ocaml.doc("<p>Describes a trigger.</p>")
type trigger = {@ocaml.doc("<p>The name of the trigger.</p>") @as("Name") name: option<resourceId>}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag applied to a resource in an environment.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>") @as("Key") key: option<tagKey>,
}
type supportedTierList = array<supportedTier>
type supportedAddonList = array<supportedAddon>
@ocaml.doc("<p>Represents the percentage of requests over the last 10 seconds that resulted in each
      type of status code response. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html\">Status Code
      Definitions</a>.</p>")
type statusCodes = {
  @ocaml.doc("<p>The percentage of requests over the last 10 seconds that resulted in a 5xx (500, 501,
      etc.) status code.</p>")
  @as("Status5xx")
  status5xx: option<nullableInteger>,
  @ocaml.doc("<p>The percentage of requests over the last 10 seconds that resulted in a 4xx (400, 401,
      etc.) status code.</p>")
  @as("Status4xx")
  status4xx: option<nullableInteger>,
  @ocaml.doc("<p>The percentage of requests over the last 10 seconds that resulted in a 3xx (300, 301,
      etc.) status code.</p>")
  @as("Status3xx")
  status3xx: option<nullableInteger>,
  @ocaml.doc("<p>The percentage of requests over the last 10 seconds that resulted in a 2xx (200, 201,
      etc.) status code.</p>")
  @as("Status2xx")
  status2xx: option<nullableInteger>,
}
@ocaml.doc("<p>A specification for an environment configuration.</p>")
type sourceConfiguration = {
  @ocaml.doc("<p>The name of the configuration template.</p>") @as("TemplateName")
  templateName: option<configurationTemplateName>,
  @ocaml.doc("<p>The name of the application associated with the configuration.</p>")
  @as("ApplicationName")
  applicationName: option<applicationName>,
}
@ocaml.doc("<p>Location of the source code for an application version.</p>")
type sourceBuildInformation = {
  @ocaml.doc("<p>The location of the source code, as a formatted string, depending on the value of <code>SourceRepository</code>
         </p>
        <ul>
            <li>
	              <p>For <code>CodeCommit</code>,
	the format is the repository name and commit ID, separated by a forward slash.
	For example,
	<code>my-git-repo/265cfa0cf6af46153527f55d6503ec030551f57a</code>.</p>
            </li>
            <li>
	              <p>For <code>S3</code>,
	the format is the S3 bucket name and object key, separated by a forward slash.
	For example,
	<code>my-s3-bucket/Folders/my-source-file</code>.</p>
            </li>
         </ul>")
  @as("SourceLocation")
  sourceLocation: sourceLocation,
  @ocaml.doc("<p>Location where the repository is stored.</p>
         <ul>
            <li>
	              <p>
                  <code>CodeCommit</code>
               </p>
            </li>
            <li>
	              <p>
                  <code>S3</code>
               </p>
            </li>
         </ul>")
  @as("SourceRepository")
  sourceRepository: sourceRepository,
  @ocaml.doc("<p>The type of repository.</p>
         <ul>
            <li>
	              <p>
                  <code>Git</code>
               </p>
            </li>
            <li>
	              <p>
                  <code>Zip</code>
               </p>
            </li>
         </ul>")
  @as("SourceType")
  sourceType: sourceType,
}
type solutionStackFileTypeList = array<fileTypeExtension>
type searchFilterValues = array<searchFilterValue>
@ocaml.doc("<p>The bucket and key of an item stored in Amazon S3.</p>")
type s3Location = {
  @ocaml.doc("<p>The Amazon S3 key where the data is located.</p>") @as("S3Key")
  s3Key: option<s3Key>,
  @ocaml.doc("<p>The Amazon S3 bucket where the data is located.</p>") @as("S3Bucket")
  s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>The AWS Elastic Beanstalk quota information for a single resource type in an AWS account. It
      reflects the resource's limits for this account.</p>")
type resourceQuota = {
  @ocaml.doc("<p>The maximum number of instances of this Elastic Beanstalk resource type that an AWS account can
      use.</p>")
  @as("Maximum")
  maximum: option<boxedInt>,
}
@ocaml.doc("<p>Describes a queue.</p>")
type queue = {
  @ocaml.doc("<p>The URL of the queue.</p>") @as("URL") url: option<string_>,
  @ocaml.doc("<p>The name of the queue.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A programming language supported by the platform.</p>")
type platformProgrammingLanguage = {
  @ocaml.doc("<p>The version of the programming language.</p>") @as("Version")
  version: option<string_>,
  @ocaml.doc("<p>The name of the programming language.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A framework supported by the platform.</p>")
type platformFramework = {
  @ocaml.doc("<p>The version of the framework.</p>") @as("Version") version: option<string_>,
  @ocaml.doc("<p>The name of the framework.</p>") @as("Name") name: option<string_>,
}
type platformFilterValueList = array<platformFilterValue>
@ocaml.doc("<p>A specification identifying an individual configuration option.</p>")
type optionSpecification = {
  @ocaml.doc("<p>The name of the configuration option.</p>") @as("OptionName")
  optionName: option<configurationOptionName>,
  @ocaml.doc("<p>A unique namespace identifying the option's associated AWS resource.</p>")
  @as("Namespace")
  namespace: option<optionNamespace>,
  @ocaml.doc("<p>A unique resource name for a time-based scaling configuration option.</p>")
  @as("ResourceName")
  resourceName: option<resourceName>,
}
@ocaml.doc("<p>A regular expression representing a restriction on a string configuration option
      value.</p>")
type optionRestrictionRegex = {
  @ocaml.doc("<p>A unique name representing this regular expression.</p>") @as("Label")
  label: option<regexLabel>,
  @ocaml.doc("<p>The regular expression pattern that a string configuration option value with this
      restriction must match.</p>")
  @as("Pattern")
  pattern: option<regexPattern>,
}
@ocaml.doc("<p>A lifecycle rule that deletes the oldest application version when the maximum count is
      exceeded.</p>")
type maxCountRule = {
  @ocaml.doc("<p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when
      Elastic Beanstalk deletes the application version.</p>")
  @as("DeleteSourceFromS3")
  deleteSourceFromS3: option<boxedBoolean>,
  @ocaml.doc("<p>Specify the maximum number of application versions to retain.</p>") @as("MaxCount")
  maxCount: option<boxedInt>,
  @ocaml.doc("<p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable
      it.</p>")
  @as("Enabled")
  enabled: boxedBoolean,
}
@ocaml.doc("<p>A lifecycle rule that deletes application versions after the specified number of
      days.</p>")
type maxAgeRule = {
  @ocaml.doc("<p>Set to <code>true</code> to delete a version's source bundle from Amazon S3 when
      Elastic Beanstalk deletes the application version.</p>")
  @as("DeleteSourceFromS3")
  deleteSourceFromS3: option<boxedBoolean>,
  @ocaml.doc("<p>Specify the number of days to retain an application versions.</p>")
  @as("MaxAgeInDays")
  maxAgeInDays: option<boxedInt>,
  @ocaml.doc("<p>Specify <code>true</code> to apply the rule, or <code>false</code> to disable
      it.</p>")
  @as("Enabled")
  enabled: boxedBoolean,
}
@ocaml.doc("<p>The record of a completed or failed managed action.</p>")
type managedActionHistoryItem = {
  @ocaml.doc("<p>The date and time that the action finished executing.</p>") @as("FinishedTime")
  finishedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the action started executing.</p>") @as("ExecutedTime")
  executedTime: option<timestamp_>,
  @ocaml.doc("<p>If the action failed, a description of the failure.</p>") @as("FailureDescription")
  failureDescription: option<string_>,
  @ocaml.doc("<p>The status of the action.</p>") @as("Status") status: option<actionHistoryStatus>,
  @ocaml.doc("<p>If the action failed, the type of failure.</p>") @as("FailureType")
  failureType: option<failureType>,
  @ocaml.doc("<p>A description of the managed action.</p>") @as("ActionDescription")
  actionDescription: option<string_>,
  @ocaml.doc("<p>The type of the managed action.</p>") @as("ActionType")
  actionType: option<actionType>,
  @ocaml.doc("<p>A unique identifier for the managed action.</p>") @as("ActionId")
  actionId: option<string_>,
}
@ocaml.doc("<p>The record of an upcoming or in-progress managed action.</p>")
type managedAction = {
  @ocaml.doc("<p>The start time of the maintenance window in which the managed action will
      execute.</p>")
  @as("WindowStartTime")
  windowStartTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the managed action. If the action is <code>Scheduled</code>, you can
      apply it immediately with <a>ApplyEnvironmentManagedAction</a>.</p>")
  @as("Status")
  status: option<actionStatus>,
  @ocaml.doc("<p>The type of managed action.</p>") @as("ActionType") actionType: option<actionType>,
  @ocaml.doc("<p>A description of the managed action.</p>") @as("ActionDescription")
  actionDescription: option<string_>,
  @ocaml.doc("<p>A unique identifier for the managed action.</p>") @as("ActionId")
  actionId: option<string_>,
}
@ocaml.doc("<p>Describes a LoadBalancer.</p>")
type loadBalancer = {
  @ocaml.doc("<p>The name of the LoadBalancer.</p>") @as("Name") name: option<resourceId>,
}
type loadAverage = array<loadAverageValue>
@ocaml.doc("<p>Describes the properties of a Listener for the LoadBalancer.</p>")
type listener = {
  @ocaml.doc("<p>The port that is used by the Listener.</p>") @as("Port") port: option<integer_>,
  @ocaml.doc("<p>The protocol that is used by the Listener.</p>") @as("Protocol")
  protocol: option<string_>,
}
@ocaml.doc("<p>Describes an Amazon EC2 launch template.</p>")
type launchTemplate = {
  @ocaml.doc("<p>The ID of the launch template.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>Describes an Auto Scaling launch configuration.</p>")
type launchConfiguration = {
  @ocaml.doc("<p>The name of the launch configuration.</p>") @as("Name") name: option<resourceId>,
}
@ocaml.doc("<p>Represents the average latency for the slowest X percent of requests over the last 10
      seconds.</p>")
type latency = {
  @ocaml.doc("<p>The average latency for the slowest 90 percent of requests over the last 10
      seconds.</p>")
  @as("P10")
  p10: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 50 percent of requests over the last 10
      seconds.</p>")
  @as("P50")
  p50: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 25 percent of requests over the last 10
      seconds.</p>")
  @as("P75")
  p75: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 15 percent of requests over the last 10
      seconds.</p>")
  @as("P85")
  p85: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 10 percent of requests over the last 10
      seconds.</p>")
  @as("P90")
  p90: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 5 percent of requests over the last 10
      seconds.</p>")
  @as("P95")
  p95: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 1 percent of requests over the last 10
      seconds.</p>")
  @as("P99")
  p99: option<nullableDouble>,
  @ocaml.doc("<p>The average latency for the slowest 0.1 percent of requests over the last 10
      seconds.</p>")
  @as("P999")
  p999: option<nullableDouble>,
}
type instancesHealthAttributes = array<instancesHealthAttribute>
@ocaml.doc("<p>Represents summary information about the health of an instance. For more information,
      see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and Statuses</a>.</p>")
type instanceHealthSummary = {
  @ocaml.doc("<p>
            <b>Red.</b> The health agent is reporting a very high number of
      request failures or other issues for an instance or environment.</p>")
  @as("Severe")
  severe: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Red.</b> The health agent is reporting a high number of request
      failures or other issues for an instance or environment.</p>")
  @as("Degraded")
  degraded: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Yellow.</b> The health agent is reporting a moderate number of
      request failures or other issues for an instance or environment.</p>")
  @as("Warning")
  warning: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Green.</b> An operation is in progress on an instance.</p>")
  @as("Info")
  info: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Green.</b> An instance is passing health checks and the health
      agent is not reporting any problems.</p>")
  @as("Ok")
  ok: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Grey.</b> An operation is in progress on an instance within the
      command timeout.</p>")
  @as("Pending")
  pending: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Grey.</b> AWS Elastic Beanstalk and the health agent are
      reporting an insufficient amount of data on an instance.</p>")
  @as("Unknown")
  unknown: option<nullableInteger>,
  @ocaml.doc("<p>
            <b>Grey.</b> AWS Elastic Beanstalk and the health agent are
      reporting no data on an instance.</p>")
  @as("NoData")
  noData: option<nullableInteger>,
}
@ocaml.doc("<p>The description of an Amazon EC2 instance.</p>")
type instance = {
  @ocaml.doc("<p>The ID of the Amazon EC2 instance.</p>") @as("Id") id: option<resourceId>,
}
@ocaml.doc("<p>Describes an event.</p>")
type eventDescription = {
  @ocaml.doc("<p>The severity level of this event.</p>") @as("Severity")
  severity: option<eventSeverity>,
  @ocaml.doc("<p>The web service request ID for the activity of this event.</p>") @as("RequestId")
  requestId: option<requestId>,
  @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
  platformArn: option<platformArn>,
  @ocaml.doc("<p>The name of the environment associated with this event.</p>")
  @as("EnvironmentName")
  environmentName: option<environmentName>,
  @ocaml.doc("<p>The name of the configuration associated with this event.</p>") @as("TemplateName")
  templateName: option<configurationTemplateName>,
  @ocaml.doc("<p>The release label for the application version associated with this event.</p>")
  @as("VersionLabel")
  versionLabel: option<versionLabel>,
  @ocaml.doc("<p>The application associated with the event.</p>") @as("ApplicationName")
  applicationName: option<applicationName>,
  @ocaml.doc("<p>The event message.</p>") @as("Message") message: option<eventMessage>,
  @ocaml.doc("<p>The date when the event occurred.</p>") @as("EventDate")
  eventDate: option<eventDate>,
}
@ocaml.doc("<p>Describes the properties of an environment tier</p>")
type environmentTier = {
  @ocaml.doc("<p>The version of this environment tier. When you don't set a value to it, Elastic Beanstalk uses the
      latest compatible worker tier version.</p>
         <note>
            <p>This member is deprecated. Any specific version that you set may become out of date.
        We recommend leaving it unspecified.</p>
         </note>")
  @as("Version")
  version: option<string_>,
  @ocaml.doc("<p>The type of this environment tier.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>For <i>Web server tier</i> – <code>Standard</code>
               </p>
            </li>
            <li>
               <p>For <i>Worker tier</i> – <code>SQS/HTTP</code>
               </p>
            </li>
         </ul>")
  @as("Type")
  type_: option<string_>,
  @ocaml.doc("<p>The name of this environment tier.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>For <i>Web server tier</i> – <code>WebServer</code>
               </p>
            </li>
            <li>
               <p>For <i>Worker tier</i> – <code>Worker</code>
               </p>
            </li>
         </ul>")
  @as("Name")
  name: option<string_>,
}
type environmentNamesList = array<environmentName>
@ocaml.doc("<p>A link to another environment, defined in the environment's manifest. Links provide
      connection information in system properties that can be used to connect to another environment
      in the same group. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest
        (env.yaml)</a> for details.</p>")
type environmentLink = {
  @ocaml.doc("<p>The name of the linked environment (the dependency).</p>") @as("EnvironmentName")
  environmentName: option<string_>,
  @ocaml.doc("<p>The name of the link.</p>") @as("LinkName") linkName: option<string_>,
}
@ocaml.doc("<p>The information retrieved from the Amazon EC2 instances.</p>")
type environmentInfoDescription = {
  @ocaml.doc("<p>The retrieved information. Currently contains a presigned Amazon S3 URL. The files are
      deleted after 15 minutes.</p>
         <p>Anyone in possession of this URL can access the files before they are deleted. Make the
      URL available only to trusted parties.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>The time stamp when this information was retrieved.</p>") @as("SampleTimestamp")
  sampleTimestamp: option<sampleTimestamp>,
  @ocaml.doc("<p>The Amazon EC2 Instance ID for this information.</p>") @as("Ec2InstanceId")
  ec2InstanceId: option<ec2InstanceId>,
  @ocaml.doc("<p>The type of information retrieved.</p>") @as("InfoType")
  infoType: option<environmentInfoType>,
}
type environmentIdList = array<environmentId>
type environmentHealthAttributes = array<environmentHealthAttribute>
@ocaml.doc("<p>Information about an application version deployment.</p>")
type deployment = {
  @ocaml.doc("<p>For in-progress deployments, the time that the deployment started.</p>
         <p>For completed deployments, the time that the deployment ended.</p>")
  @as("DeploymentTime")
  deploymentTime: option<deploymentTimestamp>,
  @ocaml.doc("<p>The status of the deployment:</p>
         <ul>
            <li>
               <p>
                  <code>In Progress</code> : The deployment is in progress.</p>
            </li>
            <li>
               <p>
                  <code>Deployed</code> : The deployment succeeded.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> : The deployment failed.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The ID of the deployment. This number increases by one each time that you deploy source
      code or change instance configuration settings.</p>")
  @as("DeploymentId")
  deploymentId: option<nullableLong>,
  @ocaml.doc("<p>The version label of the application version in the deployment.</p>")
  @as("VersionLabel")
  versionLabel: option<string_>,
}
@ocaml.doc("<p>A custom AMI available to platforms.</p>")
type customAmi = {
  @ocaml.doc("<p>THe ID of the image used to create the custom AMI.</p>") @as("ImageId")
  imageId: option<imageId>,
  @ocaml.doc("<p>The type of virtualization used to create the custom AMI.</p>")
  @as("VirtualizationType")
  virtualizationType: option<virtualizationType>,
}
type configurationTemplateNamesList = array<configurationTemplateName>
@ocaml.doc("<p>A specification identifying an individual configuration option along with its current
      value. For a list of possible namespaces and option values, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html\">Option Values</a> in the
      <i>AWS Elastic Beanstalk Developer Guide</i>. </p>")
type configurationOptionSetting = {
  @ocaml.doc("<p>The current value for the configuration option.</p>") @as("Value")
  value: option<configurationOptionValue>,
  @ocaml.doc("<p>The name of the configuration option.</p>") @as("OptionName")
  optionName: option<configurationOptionName>,
  @ocaml.doc("<p>A unique namespace that identifies the option's associated AWS resource.</p>")
  @as("Namespace")
  namespace: option<optionNamespace>,
  @ocaml.doc(
    "<p>A unique resource name for the option setting. Use it for a time–based scaling configuration option.</p>"
  )
  @as("ResourceName")
  resourceName: option<resourceName>,
}
type configurationOptionPossibleValues = array<configurationOptionPossibleValue>
type causes = array<cause>
@ocaml.doc("<p>CPU utilization metrics for an instance.</p>")
type cpuutilization = {
  @ocaml.doc("<p>Available on Windows environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>Privileged</code> state over the
      last 10 seconds.</p>")
  @as("Privileged")
  privileged: option<nullableDouble>,
  @ocaml.doc("<p>Available on Linux environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>SoftIRQ</code> state over the
      last 10 seconds.</p>")
  @as("SoftIRQ")
  softIRQ: option<nullableDouble>,
  @ocaml.doc("<p>Available on Linux environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>IRQ</code> state over the last
      10 seconds.</p>")
  @as("IRQ")
  irq: option<nullableDouble>,
  @ocaml.doc("<p>Available on Linux environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>I/O Wait</code> state over the
      last 10 seconds.</p>")
  @as("IOWait")
  iowait: option<nullableDouble>,
  @ocaml.doc("<p>Percentage of time that the CPU has spent in the <code>Idle</code> state over the last
      10 seconds.</p>")
  @as("Idle")
  idle: option<nullableDouble>,
  @ocaml.doc("<p>Available on Linux environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>System</code> state over the
      last 10 seconds.</p>")
  @as("System")
  system: option<nullableDouble>,
  @ocaml.doc("<p>Available on Linux environments only.</p>
         <p>Percentage of time that the CPU has spent in the <code>Nice</code> state over the last
      10 seconds.</p>")
  @as("Nice")
  nice: option<nullableDouble>,
  @ocaml.doc("<p>Percentage of time that the CPU has spent in the <code>User</code> state over the last
      10 seconds.</p>")
  @as("User")
  user: option<nullableDouble>,
}
@ocaml.doc("<p>The builder used to build the custom platform.</p>")
type builder = {@ocaml.doc("<p>The ARN of the builder.</p>") @as("ARN") arn: option<arn>}
@ocaml.doc("<p>Settings for an AWS CodeBuild build.</p>")
type buildConfiguration = {
  @ocaml.doc(
    "<p>How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes.</p>"
  )
  @as("TimeoutInMinutes")
  timeoutInMinutes: option<boxedInt>,
  @ocaml.doc("<p>The ID of the Docker image to use for this build project.</p>") @as("Image")
  image: nonEmptyString,
  @ocaml.doc("<p>Information about the compute resources the build project will use.</p>
         <ul>
            <li>
               <p>
                  <code>BUILD_GENERAL1_SMALL: Use up to 3 GB memory and 2 vCPUs for builds</code>
               </p>
            </li>
            <li>
	              <p>
                  <code>BUILD_GENERAL1_MEDIUM: Use up to 7 GB memory and 4 vCPUs for builds</code>
               </p>
            </li>
            <li>
	              <p>
                  <code>BUILD_GENERAL1_LARGE: Use up to 15 GB memory and 8 vCPUs for builds</code>
               </p>
            </li>
         </ul>")
  @as("ComputeType")
  computeType: option<computeType>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account.</p>"
  )
  @as("CodeBuildServiceRole")
  codeBuildServiceRole: nonEmptyString,
  @ocaml.doc("<p>The name of the artifact of the CodeBuild build.
    If provided, Elastic Beanstalk stores the build artifact in the S3 location 
    <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>-<i>artifact-name</i>.zip.
    If not provided, Elastic Beanstalk stores the build artifact in the S3 location 
    <i>S3-bucket</i>/resources/<i>application-name</i>/codebuild/codebuild-<i>version-label</i>.zip.
    </p>")
  @as("ArtifactName")
  artifactName: option<string_>,
}
type availableSolutionStackNamesList = array<solutionStackName>
@ocaml.doc("<p>Describes an Auto Scaling launch configuration.</p>")
type autoScalingGroup = {
  @ocaml.doc("<p>The name of the <code>AutoScalingGroup</code> . </p>") @as("Name")
  name: option<resourceId>,
}
type applicationNamesList = array<applicationName>
type validationMessagesList = array<validationMessage>
type triggerList = array<trigger>
type tags = array<tag>
type tagList_ = array<tag>
@ocaml.doc("<p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>")
type systemStatus = {
  @ocaml.doc("<p>Load average in the last 1-minute, 5-minute, and 15-minute periods. 
      For more information, see
        <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os\">Operating System Metrics</a>.</p>")
  @as("LoadAverage")
  loadAverage: option<loadAverage>,
  @ocaml.doc("<p>CPU utilization metrics for the instance.</p>") @as("CPUUtilization")
  cpuutilization: option<cpuutilization>,
}
@ocaml.doc("<p>Describes the solution stack.</p>")
type solutionStackDescription = {
  @ocaml.doc("<p>The permitted file types allowed for a solution stack.</p>")
  @as("PermittedFileTypes")
  permittedFileTypes: option<solutionStackFileTypeList>,
  @ocaml.doc("<p>The name of the solution stack.</p>") @as("SolutionStackName")
  solutionStackName: option<solutionStackName>,
}
@ocaml.doc("<p>Describes criteria to restrict a list of results.</p>
         <p>For operators that apply a single value to the attribute, the filter is evaluated as
      follows: <code>Attribute Operator Values[1]</code>
         </p>
         <p>Some operators, e.g. <code>in</code>, can apply multiple values. In this case, the filter
      is evaluated as a logical union (OR) of applications of the operator to the attribute with
      each one of the values: <code>(Attribute Operator Values[1]) OR (Attribute Operator Values[2])
        OR ...</code>
         </p>
         <p>The valid values for attributes of <code>SearchFilter</code> depend on the API action. For
      valid values, see the reference page for the API action you're calling that takes a
        <code>SearchFilter</code> parameter.</p>")
type searchFilter = {
  @ocaml.doc("<p>The list of values applied to the <code>Attribute</code> and <code>Operator</code>
      attributes. Number of values and valid values vary by <code>Attribute</code>.</p>")
  @as("Values")
  values: option<searchFilterValues>,
  @ocaml.doc("<p>The operator to apply to the <code>Attribute</code> with each of the <code>Values</code>.
      Valid values vary by <code>Attribute</code>.</p>")
  @as("Operator")
  operator: option<searchFilterOperator>,
  @ocaml.doc("<p>The result attribute to which the filter values are applied. Valid values vary by API
      action.</p>")
  @as("Attribute")
  attribute: option<searchFilterAttribute>,
}
@ocaml.doc("<p>A set of per-resource AWS Elastic Beanstalk quotas associated with an AWS account. They reflect
      Elastic Beanstalk resource limits for this account.</p>")
type resourceQuotas = {
  @ocaml.doc("<p>The quota for custom platforms in the AWS account.</p>") @as("CustomPlatformQuota")
  customPlatformQuota: option<resourceQuota>,
  @ocaml.doc("<p>The quota for configuration templates in the AWS account.</p>")
  @as("ConfigurationTemplateQuota")
  configurationTemplateQuota: option<resourceQuota>,
  @ocaml.doc("<p>The quota for environments in the AWS account.</p>") @as("EnvironmentQuota")
  environmentQuota: option<resourceQuota>,
  @ocaml.doc("<p>The quota for application versions in the AWS account.</p>")
  @as("ApplicationVersionQuota")
  applicationVersionQuota: option<resourceQuota>,
  @ocaml.doc("<p>The quota for applications in the AWS account.</p>") @as("ApplicationQuota")
  applicationQuota: option<resourceQuota>,
}
type queueList = array<queue>
@ocaml.doc("<p>Summary information about a platform version.</p>")
type platformSummary = {
  @ocaml.doc("<p>The state of the platform version's branch in its lifecycle.</p>
         <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> |
        <code>retired</code>
         </p>")
  @as("PlatformBranchLifecycleState")
  platformBranchLifecycleState: option<platformBranchLifecycleState>,
  @ocaml.doc("<p>The platform branch to which the platform version belongs.</p>")
  @as("PlatformBranchName")
  platformBranchName: option<branchName>,
  @ocaml.doc("<p>The version string of the platform version.</p>") @as("PlatformVersion")
  platformVersion: option<platformVersion>,
  @ocaml.doc("<p>The state of the platform version in its lifecycle.</p>
         <p>Possible values: <code>recommended</code> | empty</p>
         <p>If an empty value is returned, the platform version is supported but isn't the recommended
    one for its branch.</p>")
  @as("PlatformLifecycleState")
  platformLifecycleState: option<platformLifecycleState>,
  @ocaml.doc("<p>The additions associated with the platform version.</p>") @as("SupportedAddonList")
  supportedAddonList: option<supportedAddonList>,
  @ocaml.doc("<p>The tiers in which the platform version runs.</p>") @as("SupportedTierList")
  supportedTierList: option<supportedTierList>,
  @ocaml.doc("<p>The version of the operating system used by the platform version.</p>")
  @as("OperatingSystemVersion")
  operatingSystemVersion: option<operatingSystemVersion>,
  @ocaml.doc("<p>The operating system used by the platform version.</p>") @as("OperatingSystemName")
  operatingSystemName: option<operatingSystemName>,
  @ocaml.doc("<p>The category of platform version.</p>") @as("PlatformCategory")
  platformCategory: option<platformCategory>,
  @ocaml.doc("<p>The status of the platform version. You can create an environment from the platform
      version once it is ready.</p>")
  @as("PlatformStatus")
  platformStatus: option<platformStatus>,
  @ocaml.doc("<p>The AWS account ID of the person who created the platform version.</p>")
  @as("PlatformOwner")
  platformOwner: option<platformOwner>,
  @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
  platformArn: option<platformArn>,
}
type platformProgrammingLanguages = array<platformProgrammingLanguage>
type platformFrameworks = array<platformFramework>
@ocaml.doc("<p>Describes criteria to restrict the results when listing platform versions.</p>
         <p>The filter is evaluated as follows: <code>Type Operator Values[1]</code>
         </p>")
type platformFilter = {
  @ocaml.doc("<p>The list of values applied to the filtering platform version attribute. Only one value is supported
      for all current operators.</p>
         <p>The following list shows valid filter values for some filter attributes.</p>
         <ul>
            <li>
               <p>
                  <code>PlatformStatus</code>: <code>Creating</code> | <code>Failed</code> |
            <code>Ready</code> | <code>Deleting</code> | <code>Deleted</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PlatformLifecycleState</code>: <code>recommended</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SupportedTier</code>: <code>WebServer/Standard</code> |
            <code>Worker/SQS/HTTP</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SupportedAddon</code>: <code>Log/S3</code> | <code>Monitoring/Healthd</code> |
            <code>WorkerDaemon/SQSD</code>
               </p>
            </li>
         </ul>")
  @as("Values")
  values: option<platformFilterValueList>,
  @ocaml.doc("<p>The operator to apply to the <code>Type</code> with each of the
      <code>Values</code>.</p>
         <p>Valid values: <code>=</code> | <code>!=</code> |
        <code><</code> | <code><=</code> |
        <code>></code> | <code>>=</code> |
        <code>contains</code> | <code>begins_with</code> | <code>ends_with</code>
         </p>")
  @as("Operator")
  operator: option<platformFilterOperator>,
  @ocaml.doc("<p>The platform version attribute to which the filter values are applied.</p>
         <p>Valid values: <code>PlatformName</code> | <code>PlatformVersion</code> |
        <code>PlatformStatus</code> | <code>PlatformBranchName</code> |
        <code>PlatformLifecycleState</code> | <code>PlatformOwner</code> |
        <code>SupportedTier</code> | <code>SupportedAddon</code> |
        <code>ProgrammingLanguageName</code> | <code>OperatingSystemName</code>
         </p>")
  @as("Type")
  type_: option<platformFilterType>,
}
@ocaml.doc("<p>Summary information about a platform branch.</p>")
type platformBranchSummary = {
  @ocaml.doc("<p>The environment tiers that platform versions in this branch support.</p>
         <p>Possible values: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
         </p>")
  @as("SupportedTierList")
  supportedTierList: option<supportedTierList>,
  @ocaml.doc("<p>An ordinal number that designates the order in which platform branches have been added to
      a platform. This can be helpful, for example, if your code calls the
        <code>ListPlatformBranches</code> action and then displays a list of platform
      branches.</p>
         <p>A larger <code>BranchOrder</code> value designates a newer platform branch within the
      platform.</p>")
  @as("BranchOrder")
  branchOrder: option<branchOrder>,
  @ocaml.doc("<p>The support life cycle state of the platform branch.</p>
         <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> | 
      <code>retired</code>
         </p>")
  @as("LifecycleState")
  lifecycleState: option<platformBranchLifecycleState>,
  @ocaml.doc("<p>The name of the platform branch.</p>") @as("BranchName")
  branchName: option<branchName>,
  @ocaml.doc("<p>The name of the platform to which this platform branch belongs.</p>")
  @as("PlatformName")
  platformName: option<platformName>,
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
@ocaml.doc("<p>Describes the possible values for a configuration option.</p>")
type configurationOptionDescription = {
  @ocaml.doc("<p>If specified, the configuration option must be a string value that satisfies this
      regular expression.</p>")
  @as("Regex")
  regex: option<optionRestrictionRegex>,
  @ocaml.doc("<p>If specified, the configuration option must be a string value no longer than this
      value.</p>")
  @as("MaxLength")
  maxLength: option<optionRestrictionMaxLength>,
  @ocaml.doc("<p>If specified, the configuration option must be a numeric value less than this
      value.</p>")
  @as("MaxValue")
  maxValue: option<optionRestrictionMaxValue>,
  @ocaml.doc("<p>If specified, the configuration option must be a numeric value greater than this
      value.</p>")
  @as("MinValue")
  minValue: option<optionRestrictionMinValue>,
  @ocaml.doc("<p>If specified, values for the configuration option are selected from this
      list.</p>")
  @as("ValueOptions")
  valueOptions: option<configurationOptionPossibleValues>,
  @ocaml.doc("<p>An indication of which type of values this option has and whether it is allowable to
      select one or more than one of the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>Scalar</code> : Values for this option are a single selection from the possible
          values, or an unformatted string, or numeric value governed by the
          <code>MIN/MAX/Regex</code> constraints.</p>
            </li>
            <li>
               <p>
                  <code>List</code> : Values for this option are multiple selections from the possible
          values.</p>
            </li>
            <li>
               <p>
                  <code>Boolean</code> : Values for this option are either <code>true</code> or
          <code>false</code> .</p>
            </li>
            <li>
               <p>
                  <code>Json</code> : Values for this option are a JSON representation of a
          <code>ConfigDocument</code>.</p>
            </li>
         </ul>")
  @as("ValueType")
  valueType: option<configurationOptionValueType>,
  @ocaml.doc("<p>An indication of whether the user defined this configuration option:</p>
         <ul>
            <li>
               <p>
                  <code>true</code> : This configuration option was defined by the user. It is a valid
          choice for specifying if this as an <code>Option to Remove</code> when updating
          configuration settings. </p>
            </li>
            <li>
               <p>
                  <code>false</code> : This configuration was not defined by the user.</p>
            </li>
         </ul>
         <p> Constraint: You can remove only <code>UserDefined</code> options from a configuration. </p>
         <p> Valid Values: <code>true</code> | <code>false</code>
         </p>")
  @as("UserDefined")
  userDefined: option<userDefinedOption>,
  @ocaml.doc("<p>An indication of which action is required if the value for this configuration option
      changes:</p>
         <ul>
            <li>
               <p>
                  <code>NoInterruption</code> : There is no interruption to the environment or application
          availability.</p>
            </li>
            <li>
               <p>
                  <code>RestartEnvironment</code> : The environment is entirely restarted, all AWS resources
          are deleted and recreated, and the environment is unavailable during the
          process.</p>
            </li>
            <li>
               <p>
                  <code>RestartApplicationServer</code> : The environment is available the entire time.
          However, a short application outage occurs when the application servers on the running
          Amazon EC2 instances are restarted.</p>
            </li>
         </ul>")
  @as("ChangeSeverity")
  changeSeverity: option<configurationOptionSeverity>,
  @ocaml.doc("<p>The default value for this configuration option.</p>") @as("DefaultValue")
  defaultValue: option<configurationOptionDefaultValue>,
  @ocaml.doc("<p>The name of the configuration option.</p>") @as("Name")
  name: option<configurationOptionName>,
  @ocaml.doc("<p>A unique namespace identifying the option's associated AWS resource.</p>")
  @as("Namespace")
  namespace: option<optionNamespace>,
}
type autoScalingGroupList = array<autoScalingGroup>
@ocaml.doc("<p>The application version lifecycle settings for an application. Defines the rules that
      Elastic Beanstalk applies to an application's versions in order to avoid hitting the
      per-region limit for application versions.</p>
         <p>When Elastic Beanstalk deletes an application version from its database, you can no
      longer deploy that version to an environment. The source bundle remains in S3 unless you
      configure the rule to delete it.</p>")
type applicationVersionLifecycleConfig = {
  @ocaml.doc("<p>Specify a max age rule to restrict the length of time that application versions are
      retained for an application.</p>")
  @as("MaxAgeRule")
  maxAgeRule: option<maxAgeRule>,
  @ocaml.doc("<p>Specify a max count rule to restrict the number of application versions that are
      retained for an application.</p>")
  @as("MaxCountRule")
  maxCountRule: option<maxCountRule>,
}
@ocaml.doc("<p>Describes the properties of an application version.</p>")
type applicationVersionDescription = {
  @ocaml.doc("<p>The processing status of the application version. Reflects the state of the application
      version during its creation. Many of the values are only applicable if you specified
        <code>True</code> for the <code>Process</code> parameter of the
        <code>CreateApplicationVersion</code> action. The following list describes the possible
      values.</p>
         <ul>
            <li>
               <p>
                  <code>Unprocessed</code> – Application version wasn't pre-processed or validated.
          Elastic Beanstalk will validate configuration files during deployment of the application version to an
        environment.</p>
            </li>
            <li>
               <p>
                  <code>Processing</code> – Elastic Beanstalk is currently processing the application version.</p>
            </li>
            <li>
               <p>
                  <code>Building</code> – Application version is currently undergoing an AWS CodeBuild build.</p>
            </li>
            <li>
               <p>
                  <code>Processed</code> – Elastic Beanstalk was successfully pre-processed and validated.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> – Either the AWS CodeBuild build failed or configuration files didn't
          pass validation. This application version isn't usable.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<applicationVersionStatus>,
  @ocaml.doc("<p>The last modified date of the application version.</p>") @as("DateUpdated")
  dateUpdated: option<updateDate>,
  @ocaml.doc("<p>The creation date of the application version.</p>") @as("DateCreated")
  dateCreated: option<creationDate>,
  @ocaml.doc("<p>The storage location of the application version's source bundle in Amazon S3.</p>")
  @as("SourceBundle")
  sourceBundle: option<s3Location>,
  @ocaml.doc("<p>Reference to the artifact from the AWS CodeBuild build.</p>") @as("BuildArn")
  buildArn: option<string_>,
  @ocaml.doc("<p>If the version's source code was retrieved from AWS CodeCommit, the location of the
      source code for the application version.</p>")
  @as("SourceBuildInformation")
  sourceBuildInformation: option<sourceBuildInformation>,
  @ocaml.doc("<p>A unique identifier for the application version.</p>") @as("VersionLabel")
  versionLabel: option<versionLabel>,
  @ocaml.doc("<p>The description of the application version.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the application to which the application version belongs.</p>")
  @as("ApplicationName")
  applicationName: option<applicationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application version.</p>")
  @as("ApplicationVersionArn")
  applicationVersionArn: option<applicationVersionArn>,
}
@ocaml.doc("<p>Application request metrics for an AWS Elastic Beanstalk environment.</p>")
type applicationMetrics = {
  @ocaml.doc("<p>Represents the average latency for the slowest X percent of requests over the last 10
      seconds. Latencies are in seconds with one millisecond resolution.</p>")
  @as("Latency")
  latency: option<latency>,
  @ocaml.doc("<p>Represents the percentage of requests over the last 10 seconds that resulted in each
      type of status code response.</p>")
  @as("StatusCodes")
  statusCodes: option<statusCodes>,
  @ocaml.doc("<p>Average number of requests handled by the web server per second over the last 10
      seconds.</p>")
  @as("RequestCount")
  requestCount: option<requestCount>,
  @ocaml.doc("<p>The amount of time that the metrics cover (usually 10 seconds). For example, you might
      have 5 requests (<code>request_count</code>) within the most recent time slice of 10 seconds
        (<code>duration</code>).</p>")
  @as("Duration")
  duration: option<nullableInteger>,
}
@ocaml.doc("<p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk
      environment.</p>")
type singleInstanceHealth = {
  @ocaml.doc("<p>The instance's type.</p>") @as("InstanceType") instanceType: option<string_>,
  @ocaml.doc("<p>The availability zone in which the instance runs.</p>") @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>Information about the most recent deployment to an instance.</p>")
  @as("Deployment")
  deployment: option<deployment>,
  @ocaml.doc("<p>Operating system metrics from the instance.</p>") @as("System")
  system: option<systemStatus>,
  @ocaml.doc("<p>Request metrics from your application.</p>") @as("ApplicationMetrics")
  applicationMetrics: option<applicationMetrics>,
  @ocaml.doc("<p>The time at which the EC2 instance was launched.</p>") @as("LaunchedAt")
  launchedAt: option<launchedAt>,
  @ocaml.doc("<p>Represents the causes, which provide more information about the current health
      status.</p>")
  @as("Causes")
  causes: option<causes>,
  @ocaml.doc("<p>Represents the color indicator that gives you information about the health of the EC2
      instance. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and
        Statuses</a>.</p>")
  @as("Color")
  color: option<string_>,
  @ocaml.doc("<p>Returns the health status of the specified instance. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health
        Colors and Statuses</a>.</p>")
  @as("HealthStatus")
  healthStatus: option<string_>,
  @ocaml.doc("<p>The ID of the Amazon EC2 instance.</p>") @as("InstanceId")
  instanceId: option<instanceId>,
}
type searchFilters = array<searchFilter>
type platformSummaryList = array<platformSummary>
type platformFilters = array<platformFilter>
@ocaml.doc("<p>Detailed information about a platform version.</p>")
type platformDescription = {
  @ocaml.doc("<p>The state of the platform version's branch in its lifecycle.</p>
         <p>Possible values: <code>Beta</code> | <code>Supported</code> | <code>Deprecated</code> |
      <code>Retired</code>
         </p>")
  @as("PlatformBranchLifecycleState")
  platformBranchLifecycleState: option<platformBranchLifecycleState>,
  @ocaml.doc("<p>The platform branch to which the platform version belongs.</p>")
  @as("PlatformBranchName")
  platformBranchName: option<branchName>,
  @ocaml.doc("<p>The state of the platform version in its lifecycle.</p>
         <p>Possible values: <code>Recommended</code> | <code>null</code>
         </p>
         <p>If a null value is returned, the platform version isn't the recommended one for its
      branch. Each platform branch has a single recommended platform version, typically the most
      recent one.</p>")
  @as("PlatformLifecycleState")
  platformLifecycleState: option<platformLifecycleState>,
  @ocaml.doc("<p>The additions supported by the platform version.</p>") @as("SupportedAddonList")
  supportedAddonList: option<supportedAddonList>,
  @ocaml.doc("<p>The tiers supported by the platform version.</p>") @as("SupportedTierList")
  supportedTierList: option<supportedTierList>,
  @ocaml.doc("<p>The custom AMIs supported by the platform version.</p>") @as("CustomAmiList")
  customAmiList: option<customAmiList>,
  @ocaml.doc("<p>The frameworks supported by the platform version.</p>") @as("Frameworks")
  frameworks: option<platformFrameworks>,
  @ocaml.doc("<p>The programming languages supported by the platform version.</p>")
  @as("ProgrammingLanguages")
  programmingLanguages: option<platformProgrammingLanguages>,
  @ocaml.doc("<p>The version of the operating system used by the platform version.</p>")
  @as("OperatingSystemVersion")
  operatingSystemVersion: option<operatingSystemVersion>,
  @ocaml.doc("<p>The operating system used by the platform version.</p>") @as("OperatingSystemName")
  operatingSystemName: option<operatingSystemName>,
  @ocaml.doc("<p>Information about the maintainer of the platform version.</p>") @as("Maintainer")
  maintainer: option<maintainer>,
  @ocaml.doc("<p>The description of the platform version.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The category of the platform version.</p>") @as("PlatformCategory")
  platformCategory: option<platformCategory>,
  @ocaml.doc("<p>The date when the platform version was last updated.</p>") @as("DateUpdated")
  dateUpdated: option<updateDate>,
  @ocaml.doc("<p>The date when the platform version was created.</p>") @as("DateCreated")
  dateCreated: option<creationDate>,
  @ocaml.doc("<p>The status of the platform version.</p>") @as("PlatformStatus")
  platformStatus: option<platformStatus>,
  @ocaml.doc("<p>The name of the solution stack used by the platform version.</p>")
  @as("SolutionStackName")
  solutionStackName: option<solutionStackName>,
  @ocaml.doc("<p>The version of the platform version.</p>") @as("PlatformVersion")
  platformVersion: option<platformVersion>,
  @ocaml.doc("<p>The name of the platform version.</p>") @as("PlatformName")
  platformName: option<platformName>,
  @ocaml.doc("<p>The AWS account ID of the person who created the platform version.</p>")
  @as("PlatformOwner")
  platformOwner: option<platformOwner>,
  @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
  platformArn: option<platformArn>,
}
type platformBranchSummaryList = array<platformBranchSummary>
@ocaml.doc("<p>Describes the details of a LoadBalancer.</p>")
type loadBalancerDescription = {
  @ocaml.doc("<p>A list of Listeners used by the LoadBalancer.</p>") @as("Listeners")
  listeners: option<loadBalancerListenersDescription>,
  @ocaml.doc("<p>The domain name of the LoadBalancer.</p>") @as("Domain") domain: option<string_>,
  @ocaml.doc("<p>The name of the LoadBalancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<string_>,
}
@ocaml.doc("<p>Describes the AWS resources in use by this environment. This data is live.</p>")
type environmentResourceDescription = {
  @ocaml.doc("<p>The queues used by this environment.</p>") @as("Queues") queues: option<queueList>,
  @ocaml.doc("<p>The <code>AutoScaling</code> triggers in use by this environment. </p>")
  @as("Triggers")
  triggers: option<triggerList>,
  @ocaml.doc("<p>The LoadBalancers in use by this environment.</p>") @as("LoadBalancers")
  loadBalancers: option<loadBalancerList>,
  @ocaml.doc("<p>The Amazon EC2 launch templates in use by this environment.</p>")
  @as("LaunchTemplates")
  launchTemplates: option<launchTemplateList>,
  @ocaml.doc("<p>The Auto Scaling launch configurations in use by this environment.</p>")
  @as("LaunchConfigurations")
  launchConfigurations: option<launchConfigurationList>,
  @ocaml.doc("<p>The Amazon EC2 instances used by this environment.</p>") @as("Instances")
  instances: option<instanceList>,
  @ocaml.doc("<p> The <code>AutoScalingGroups</code> used by this environment. </p>")
  @as("AutoScalingGroups")
  autoScalingGroups: option<autoScalingGroupList>,
  @ocaml.doc("<p>The name of the environment.</p>") @as("EnvironmentName")
  environmentName: option<environmentName>,
}
@ocaml.doc("<p>Describes the settings for a configuration set.</p>")
type configurationSettingsDescription = {
  @ocaml.doc("<p>A list of the configuration options and their values in this configuration
      set.</p>")
  @as("OptionSettings")
  optionSettings: option<configurationOptionSettingsList>,
  @ocaml.doc("<p>The date (in UTC time) when this configuration set was last modified.</p>")
  @as("DateUpdated")
  dateUpdated: option<updateDate>,
  @ocaml.doc("<p>The date (in UTC time) when this configuration set was created.</p>")
  @as("DateCreated")
  dateCreated: option<creationDate>,
  @ocaml.doc("<p> If this configuration set is associated with an environment, the
        <code>DeploymentStatus</code> parameter indicates the deployment status of this
      configuration set: </p>
         <ul>
            <li>
               <p>
                  <code>null</code>: This configuration is not associated with a running
          environment.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: This is a draft configuration that is not deployed to the associated
          environment but is in the process of deploying.</p>
            </li>
            <li>
               <p>
                  <code>deployed</code>: This is the configuration that is currently deployed to the
          associated running environment.</p>
            </li>
            <li>
               <p>
                  <code>failed</code>: This is a draft configuration that failed to successfully
          deploy.</p>
            </li>
         </ul>")
  @as("DeploymentStatus")
  deploymentStatus: option<configurationDeploymentStatus>,
  @ocaml.doc("<p> If not <code>null</code>, the name of the environment for this configuration set.
    </p>")
  @as("EnvironmentName")
  environmentName: option<environmentName>,
  @ocaml.doc("<p>Describes this configuration set.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p> If not <code>null</code>, the name of the configuration template for this
      configuration set. </p>")
  @as("TemplateName")
  templateName: option<configurationTemplateName>,
  @ocaml.doc("<p>The name of the application associated with this configuration set.</p>")
  @as("ApplicationName")
  applicationName: option<applicationName>,
  @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
  platformArn: option<platformArn>,
  @ocaml.doc("<p>The name of the solution stack this configuration set uses.</p>")
  @as("SolutionStackName")
  solutionStackName: option<solutionStackName>,
}
type configurationOptionDescriptionsList = array<configurationOptionDescription>
type availableSolutionStackDetailsList = array<solutionStackDescription>
type applicationVersionDescriptionList = array<applicationVersionDescription>
@ocaml.doc("<p>The resource lifecycle configuration for an application. Defines lifecycle settings for
      resources that belong to the application, and the service role that AWS Elastic Beanstalk assumes
      in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle
      settings for application versions.</p>")
type applicationResourceLifecycleConfig = {
  @ocaml.doc("<p>Defines lifecycle settings for application versions.</p>")
  @as("VersionLifecycleConfig")
  versionLifecycleConfig: option<applicationVersionLifecycleConfig>,
  @ocaml.doc("<p>The ARN of an IAM service role that Elastic Beanstalk has permission to
      assume.</p>
         <p>The <code>ServiceRole</code> property is required the first time that you provide a
        <code>VersionLifecycleConfig</code> for the application in one of the supporting calls
        (<code>CreateApplication</code> or <code>UpdateApplicationResourceLifecycle</code>). After
      you provide it once, in either one of the calls, Elastic Beanstalk persists the Service Role with the
      application, and you don't need to specify it again in subsequent
        <code>UpdateApplicationResourceLifecycle</code> calls. You can, however, specify it in
      subsequent calls to change the Service Role to another value.</p>")
  @as("ServiceRole")
  serviceRole: option<string_>,
}
type instanceHealthList = array<singleInstanceHealth>
@ocaml.doc("<p>Describes the AWS resources in use by this environment. This data is not live
      data.</p>")
type environmentResourcesDescription = {
  @ocaml.doc("<p>Describes the LoadBalancer.</p>") @as("LoadBalancer")
  loadBalancer: option<loadBalancerDescription>,
}
type configurationSettingsDescriptionList = array<configurationSettingsDescription>
@ocaml.doc("<p>Describes the properties of an application.</p>")
type applicationDescription = {
  @ocaml.doc("<p>The lifecycle settings for the application.</p>") @as("ResourceLifecycleConfig")
  resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
  @ocaml.doc("<p>The names of the configuration templates associated with this application.</p>")
  @as("ConfigurationTemplates")
  configurationTemplates: option<configurationTemplateNamesList>,
  @ocaml.doc("<p>The names of the versions for this application.</p>") @as("Versions")
  versions: option<versionLabelsList>,
  @ocaml.doc("<p>The date when the application was last modified.</p>") @as("DateUpdated")
  dateUpdated: option<updateDate>,
  @ocaml.doc("<p>The date when the application was created.</p>") @as("DateCreated")
  dateCreated: option<creationDate>,
  @ocaml.doc("<p>User-defined description of the application.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
  applicationName: option<applicationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application.</p>") @as("ApplicationArn")
  applicationArn: option<applicationArn>,
}
@ocaml.doc("<p>Describes the properties of an environment.</p>")
type environmentDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the environment's operations role. For more information,
      see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>")
  @as("OperationsRole")
  operationsRole: option<operationsRole>,
  @ocaml.doc(
    "<p>The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.</p>"
  )
  @as("EnvironmentArn")
  environmentArn: option<environmentArn>,
  @ocaml.doc("<p>A list of links to other environments in the same group.</p>")
  @as("EnvironmentLinks")
  environmentLinks: option<environmentLinks>,
  @ocaml.doc("<p>Describes the current tier of this environment.</p>") @as("Tier")
  tier: option<environmentTier>,
  @ocaml.doc("<p>The description of the AWS resources used by this environment.</p>")
  @as("Resources")
  resources: option<environmentResourcesDescription>,
  @ocaml.doc("<p>Returns the health status of the application running in your environment. For more
      information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">Health Colors and
        Statuses</a>.</p>")
  @as("HealthStatus")
  healthStatus: option<environmentHealthStatus>,
  @ocaml.doc("<p>Describes the health status of the environment. AWS Elastic Beanstalk indicates the
      failure levels for a running environment:</p>
         <ul>
            <li>
               <p>
                  <code>Red</code>: Indicates the environment is not responsive. Occurs when three or more
          consecutive failures occur for an environment.</p>
            </li>
            <li>
               <p>
                  <code>Yellow</code>: Indicates that something is wrong. Occurs when two consecutive
          failures occur for an environment.</p>
            </li>
            <li>
               <p>
                  <code>Green</code>: Indicates the environment is healthy and fully functional.</p>
            </li>
            <li>
               <p>
                  <code>Grey</code>: Default health for a new environment. The environment is not fully
          launched and health checks have not started or health checks are suspended during an
            <code>UpdateEnvironment</code> or <code>RestartEnvironment</code> request.</p>
            </li>
         </ul>
         <p> Default: <code>Grey</code>
         </p>")
  @as("Health")
  health: option<environmentHealth>,
  @ocaml.doc("<p>Indicates if there is an in-progress environment configuration update or application
      version deployment that you can cancel.</p>
         <p>
            <code>true:</code> There is an update in progress. </p>
         <p>
            <code>false:</code> There are no updates currently in progress. </p>")
  @as("AbortableOperationInProgress")
  abortableOperationInProgress: option<abortableOperationInProgress>,
  @ocaml.doc("<p>The current operational status of the environment:</p>

         <ul>
            <li>
               <p>
                  <code>Launching</code>: Environment is in the process of initial deployment.</p>
            </li>
            <li>
               <p>
                  <code>Updating</code>: Environment is in the process of updating its configuration
          settings or application version.</p>
            </li>
            <li>
               <p>
                  <code>Ready</code>: Environment is available to have an action performed on it, such as
          update or terminate.</p>
            </li>
            <li>
               <p>
                  <code>Terminating</code>: Environment is in the shut-down process.</p>
            </li>
            <li>
               <p>
                  <code>Terminated</code>: Environment is not running.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<environmentStatus>,
  @ocaml.doc("<p>The last modified date for this environment.</p>") @as("DateUpdated")
  dateUpdated: option<updateDate>,
  @ocaml.doc("<p>The creation date for this environment.</p>") @as("DateCreated")
  dateCreated: option<creationDate>,
  @ocaml.doc("<p>The URL to the CNAME for this environment.</p>") @as("CNAME")
  cname: option<dnscname>,
  @ocaml.doc("<p>For load-balanced, autoscaling environments, the URL to the LoadBalancer. For
      single-instance environments, the IP address of the instance.</p>")
  @as("EndpointURL")
  endpointURL: option<endpointURL>,
  @ocaml.doc("<p>Describes this environment.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the configuration template used to originally launch this
      environment.</p>")
  @as("TemplateName")
  templateName: option<configurationTemplateName>,
  @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
  platformArn: option<platformArn>,
  @ocaml.doc("<p> The name of the <code>SolutionStack</code> deployed with this environment. </p>")
  @as("SolutionStackName")
  solutionStackName: option<solutionStackName>,
  @ocaml.doc("<p>The application version deployed in this environment.</p>") @as("VersionLabel")
  versionLabel: option<versionLabel>,
  @ocaml.doc("<p>The name of the application associated with this environment.</p>")
  @as("ApplicationName")
  applicationName: option<applicationName>,
  @ocaml.doc("<p>The ID of this environment.</p>") @as("EnvironmentId")
  environmentId: option<environmentId>,
  @ocaml.doc("<p>The name of this environment.</p>") @as("EnvironmentName")
  environmentName: option<environmentName>,
}
type applicationDescriptionList = array<applicationDescription>
type environmentDescriptionsList = array<environmentDescription>
@ocaml.doc("<fullname>AWS Elastic Beanstalk</fullname>
      
    
         <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable,
      fault-tolerant applications running on the Amazon Web Services cloud.</p>
         <p>For more information about this product, go to the <a href=\"http://aws.amazon.com/elasticbeanstalk/\">AWS Elastic Beanstalk</a> details page. The location of the
      latest AWS Elastic Beanstalk WSDL is <a href=\"https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl\">https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>.
      To install the Software Development Kits (SDKs), Integrated Development Environment (IDE)
      Toolkits, and command line tools that enable you to access the API, go to <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p>
         <p>
            <b>Endpoints</b>
         </p>
         <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to
        <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region\">Regions and Endpoints</a> in the <i>Amazon Web Services
      Glossary</i>.</p>")
module SwapEnvironmentCNAMEs = {
  type t
  @ocaml.doc("<p>Swaps the CNAMEs of two environments.</p>")
  type request = {
    @ocaml.doc("<p>The name of the destination environment.</p>
         <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
      <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
      <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>.
    </p>")
    @as("DestinationEnvironmentName")
    destinationEnvironmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the destination environment.</p>
         <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
      <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
      <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>")
    @as("DestinationEnvironmentId")
    destinationEnvironmentId: option<environmentId>,
    @ocaml.doc("<p>The name of the source environment.</p>
         <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
      <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
      <code>SourceEnvironmentName</code>, you must specify the
      <code>DestinationEnvironmentName</code>. </p>")
    @as("SourceEnvironmentName")
    sourceEnvironmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the source environment.</p>
         <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
      <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
      <code>SourceEnvironmentId</code>, you must specify the
      <code>DestinationEnvironmentId</code>. </p>")
    @as("SourceEnvironmentId")
    sourceEnvironmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "SwapEnvironmentCNAMEsCommand"
  let make = (
    ~destinationEnvironmentName=?,
    ~destinationEnvironmentId=?,
    ~sourceEnvironmentName=?,
    ~sourceEnvironmentId=?,
    (),
  ) =>
    new({
      destinationEnvironmentName: destinationEnvironmentName,
      destinationEnvironmentId: destinationEnvironmentId,
      sourceEnvironmentName: sourceEnvironmentName,
      sourceEnvironmentId: sourceEnvironmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RestartAppServer = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the environment to restart the server for.</p>
         <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to restart the server for.</p>
         <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "RestartAppServerCommand"
  let make = (~environmentName=?, ~environmentId=?, ()) =>
    new({environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RequestEnvironmentInfo = {
  type t
  @ocaml.doc("<p>Request to retrieve logs from an environment and store them in your Elastic Beanstalk
      storage bucket.</p>")
  type request = {
    @ocaml.doc("<p>The type of information to request.</p>") @as("InfoType")
    infoType: environmentInfoType,
    @ocaml.doc("<p>The name of the environment of the requested data.</p>
         <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
      <code>InvalidParameterValue</code> error. </p>
         <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment of the requested data.</p>
         <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
      <code>InvalidParameterValue</code> error. </p>
         <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "RequestEnvironmentInfoCommand"
  let make = (~infoType, ~environmentName=?, ~environmentId=?, ()) =>
    new({infoType: infoType, environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RebuildEnvironment = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the environment to rebuild.</p>
         <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to rebuild.</p>
         <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "RebuildEnvironmentCommand"
  let make = (~environmentName=?, ~environmentId=?, ()) =>
    new({environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateEnvironmentOperationsRole = {
  type t
  @ocaml.doc("<p>Request to disassociate the operations role from an environment.</p>")
  type request = {
    @ocaml.doc("<p>The name of the environment from which to disassociate the operations role.</p>")
    @as("EnvironmentName")
    environmentName: environmentName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DisassociateEnvironmentOperationsRoleCommand"
  let make = (~environmentName, ()) => new({environmentName: environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEnvironmentConfiguration = {
  type t
  @ocaml.doc("<p>Request to delete a draft environment configuration.</p>")
  type request = {
    @ocaml.doc("<p>The name of the environment to delete the draft configuration from.</p>")
    @as("EnvironmentName")
    environmentName: environmentName,
    @ocaml.doc("<p>The name of the application the environment is associated with.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DeleteEnvironmentConfigurationCommand"
  let make = (~environmentName, ~applicationName, ()) =>
    new({environmentName: environmentName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationTemplate = {
  type t
  @ocaml.doc("<p>Request to delete a configuration template.</p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration template to delete.</p>") @as("TemplateName")
    templateName: configurationTemplateName,
    @ocaml.doc("<p>The name of the application to delete the configuration template from.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DeleteConfigurationTemplateCommand"
  let make = (~templateName, ~applicationName, ()) =>
    new({templateName: templateName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplicationVersion = {
  type t
  @ocaml.doc("<p>Request to delete an application version.</p>")
  type request = {
    @ocaml.doc("<p>Set to <code>true</code> to delete the source bundle from your storage bucket.
      Otherwise, the application version is deleted only from Elastic Beanstalk and the source
      bundle remains in Amazon S3.</p>")
    @as("DeleteSourceBundle")
    deleteSourceBundle: option<deleteSourceBundle>,
    @ocaml.doc("<p>The label of the version to delete.</p>") @as("VersionLabel")
    versionLabel: versionLabel,
    @ocaml.doc("<p>The name of the application to which the version belongs.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DeleteApplicationVersionCommand"
  let make = (~versionLabel, ~applicationName, ~deleteSourceBundle=?, ()) =>
    new({
      deleteSourceBundle: deleteSourceBundle,
      versionLabel: versionLabel,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteApplication = {
  type t
  @ocaml.doc("<p>Request to delete an application.</p>")
  type request = {
    @ocaml.doc("<p>When set to true, running environments will be terminated before deleting the
      application.</p>")
    @as("TerminateEnvByForce")
    terminateEnvByForce: option<terminateEnvForce>,
    @ocaml.doc("<p>The name of the application to delete.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~applicationName, ~terminateEnvByForce=?, ()) =>
    new({terminateEnvByForce: terminateEnvByForce, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateStorageLocation = {
  type t

  @ocaml.doc("<p>Results of a <a>CreateStorageLocationResult</a> call.</p>")
  type response = {
    @ocaml.doc("<p>The name of the Amazon S3 bucket created.</p>") @as("S3Bucket")
    s3Bucket: option<s3Bucket>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: unit => t = "CreateStorageLocationCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CheckDNSAvailability = {
  type t
  @ocaml.doc("<p>Results message indicating whether a CNAME is available.</p>")
  type request = {
    @ocaml.doc("<p>The prefix used when this CNAME is reserved.</p>") @as("CNAMEPrefix")
    cnameprefix: dnscnamePrefix,
  }
  @ocaml.doc("<p>Indicates if the specified CNAME is available.</p>")
  type response = {
    @ocaml.doc("<p>The fully qualified CNAME to reserve when <a>CreateEnvironment</a> is called
      with the provided prefix.</p>")
    @as("FullyQualifiedCNAME")
    fullyQualifiedCNAME: option<dnscname>,
    @ocaml.doc("<p>Indicates if the specified CNAME is available:</p>
         <ul>
            <li>
               <p>
                  <code>true</code> : The CNAME is available.</p>
            </li>
            <li>
               <p>
                  <code>false</code> : The CNAME is not available.</p>
            </li>
         </ul>")
    @as("Available")
    available: option<cnameAvailability>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CheckDNSAvailabilityCommand"
  let make = (~cnameprefix, ()) => new({cnameprefix: cnameprefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateEnvironmentOperationsRole = {
  type t
  @ocaml.doc("<p>Request to add or change the operations role used by an environment.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
      operations role.</p>")
    @as("OperationsRole")
    operationsRole: operationsRole,
    @ocaml.doc("<p>The name of the environment to which to set the operations role.</p>")
    @as("EnvironmentName")
    environmentName: environmentName,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "AssociateEnvironmentOperationsRoleCommand"
  let make = (~operationsRole, ~environmentName, ()) =>
    new({operationsRole: operationsRole, environmentName: environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ApplyEnvironmentManagedAction = {
  type t
  @ocaml.doc("<p>Request to execute a scheduled managed action immediately.</p>")
  type request = {
    @ocaml.doc("<p>The action ID of the scheduled managed action to execute.</p>") @as("ActionId")
    actionId: string_,
    @ocaml.doc("<p>The environment ID of the target environment.</p>") @as("EnvironmentId")
    environmentId: option<string_>,
    @ocaml.doc("<p>The name of the target environment.</p>") @as("EnvironmentName")
    environmentName: option<string_>,
  }
  @ocaml.doc("<p>The result message containing information about the managed action.</p>")
  type response = {
    @ocaml.doc("<p>The status of the managed action.</p>") @as("Status") status: option<string_>,
    @ocaml.doc("<p>The type of managed action.</p>") @as("ActionType")
    actionType: option<actionType>,
    @ocaml.doc("<p>A description of the managed action.</p>") @as("ActionDescription")
    actionDescription: option<string_>,
    @ocaml.doc("<p>The action ID of the managed action.</p>") @as("ActionId")
    actionId: option<string_>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ApplyEnvironmentManagedActionCommand"
  let make = (~actionId, ~environmentId=?, ~environmentName=?, ()) =>
    new({actionId: actionId, environmentId: environmentId, environmentName: environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AbortEnvironmentUpdate = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>This specifies the name of the environment with the in-progress update that you want to
      cancel.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>This specifies the ID of the environment with the in-progress update that you want to
      cancel.</p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "AbortEnvironmentUpdateCommand"
  let make = (~environmentName=?, ~environmentId=?, ()) =>
    new({environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ValidateConfigurationSettings = {
  type t
  @ocaml.doc("<p>A list of validation messages for a specified configuration template.</p>")
  type request = {
    @ocaml.doc("<p>A list of the options and desired values to evaluate.</p>") @as("OptionSettings")
    optionSettings: configurationOptionSettingsList,
    @ocaml.doc("<p>The name of the environment to validate the settings against.</p>
         <p>Condition: You cannot specify both this and a configuration template name.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The name of the configuration template to validate the settings against.</p>
         <p>Condition: You cannot specify both this and an environment name.</p>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>The name of the application that the configuration template or environment belongs
      to.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Provides a list of validation messages.</p>")
  type response = {
    @ocaml.doc("<p> A list of <a>ValidationMessage</a>. </p>") @as("Messages")
    messages: option<validationMessagesList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ValidateConfigurationSettingsCommand"
  let make = (~optionSettings, ~applicationName, ~environmentName=?, ~templateName=?, ()) =>
    new({
      optionSettings: optionSettings,
      environmentName: environmentName,
      templateName: templateName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored.</p>
         <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
      <code>TagsToRemove</code>.</p>")
    @as("TagsToRemove")
    tagsToRemove: option<tagKeyList>,
    @ocaml.doc("<p>A list of tags to add or update. If a key of an existing tag is added, the tag's value is
      updated.</p>
         <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
        <code>TagsToRemove</code>.</p>")
    @as("TagsToAdd")
    tagsToAdd: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resouce to be updated.</p>
         <p>Must be the ARN of an Elastic Beanstalk resource.</p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateTagsForResourceCommand"
  let make = (~resourceArn, ~tagsToRemove=?, ~tagsToAdd=?, ()) =>
    new({tagsToRemove: tagsToRemove, tagsToAdd: tagsToAdd, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateConfigurationTemplate = {
  type t
  @ocaml.doc("<p>The result message containing the options for the specified solution stack.</p>")
  type request = {
    @ocaml.doc("<p>A list of configuration options to remove from the configuration set.</p>
         <p> Constraint: You can remove only <code>UserDefined</code> configuration options.
    </p>")
    @as("OptionsToRemove")
    optionsToRemove: option<optionsSpecifierList>,
    @ocaml.doc("<p>A list of configuration option settings to update with the new specified option
      value.</p>")
    @as("OptionSettings")
    optionSettings: option<configurationOptionSettingsList>,
    @ocaml.doc("<p>A new description for the configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the configuration template to update.</p>
         <p> If no configuration template is found with this name,
        <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code>
      error. </p>")
    @as("TemplateName")
    templateName: configurationTemplateName,
    @ocaml.doc("<p>The name of the application associated with the configuration template to
      update.</p>
         <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code>
      returns an <code>InvalidParameterValue</code> error. </p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = configurationSettingsDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateConfigurationTemplateCommand"
  let make = (
    ~templateName,
    ~applicationName,
    ~optionsToRemove=?,
    ~optionSettings=?,
    ~description=?,
    (),
  ) =>
    new({
      optionsToRemove: optionsToRemove,
      optionSettings: optionSettings,
      description: description,
      templateName: templateName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplicationVersion = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A new description for this version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the version to update.</p>
         <p>If no application version is found with this label, <code>UpdateApplication</code>
      returns an <code>InvalidParameterValue</code> error. </p>")
    @as("VersionLabel")
    versionLabel: versionLabel,
    @ocaml.doc("<p>The name of the application associated with this version.</p>
         <p> If no application is found with this name, <code>UpdateApplication</code> returns an
        <code>InvalidParameterValue</code> error.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Result message wrapping a single description of an application version.</p>")
  type response = {
    @ocaml.doc("<p> The <a>ApplicationVersionDescription</a> of the application version.
    </p>")
    @as("ApplicationVersion")
    applicationVersion: option<applicationVersionDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateApplicationVersionCommand"
  let make = (~versionLabel, ~applicationName, ~description=?, ()) =>
    new({description: description, versionLabel: versionLabel, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RetrieveEnvironmentInfo = {
  type t
  @ocaml.doc("<p>Request to download logs retrieved with <a>RequestEnvironmentInfo</a>.</p>")
  type request = {
    @ocaml.doc("<p>The type of information to retrieve.</p>") @as("InfoType")
    infoType: environmentInfoType,
    @ocaml.doc("<p>The name of the data's environment.</p>
         <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p>
         <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the data's environment.</p>
         <p>If no such environment is found, returns an <code>InvalidParameterValue</code>
      error.</p>
         <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code>
      error.</p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }
  @ocaml.doc("<p>Result message containing a description of the requested environment info.</p>")
  type response = {
    @ocaml.doc("<p> The <a>EnvironmentInfoDescription</a> of the environment. </p>")
    @as("EnvironmentInfo")
    environmentInfo: option<environmentInfoDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "RetrieveEnvironmentInfoCommand"
  let make = (~infoType, ~environmentName=?, ~environmentId=?, ()) =>
    new({infoType: infoType, environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p>
         <p>Must be the ARN of an Elastic Beanstalk resource.</p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>A list of tag key-value pairs.</p>") @as("ResourceTags")
    resourceTags: option<tagList_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which a tag list was requested.</p>"
    )
    @as("ResourceArn")
    resourceArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  @ocaml.doc("<p>Request to retrieve a list of events for an environment.</p>")
  type request = {
    @ocaml.doc(
      "<p>Pagination token. If specified, the events return the next batch of results.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Specifies the maximum number of events that can be returned, beginning with the most
      recent event.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
      occur up to, but not including, the <code>EndTime</code>. </p>")
    @as("EndTime")
    endTime: option<timeFilterEnd>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
      occur on or after this time.</p>")
    @as("StartTime")
    startTime: option<timeFilterStart>,
    @ocaml.doc("<p>If specified, limits the events returned from this call to include only those with the
      specified severity or higher.</p>")
    @as("Severity")
    severity: option<eventSeverity>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the described events to include only
      those associated with this request ID.</p>")
    @as("RequestId")
    requestId: option<requestId>,
    @ocaml.doc("<p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the
      returned descriptions to those associated with this custom platform version.</p>")
    @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
      associated with this environment.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
      associated with this environment.</p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
      are associated with this environment configuration.</p>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
      associated with this application version.</p>")
    @as("VersionLabel")
    versionLabel: option<versionLabel>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
      those associated with this application.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Result message wrapping a list of event descriptions.</p>")
  type response = {
    @ocaml.doc("<p> If returned, this indicates that there are more results to obtain. Use this token in
      the next <a>DescribeEvents</a> call to get the next batch of events. </p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p> A list of <a>EventDescription</a>. </p>") @as("Events")
    events: option<eventDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEventsCommand"
  let make = (
    ~nextToken=?,
    ~maxRecords=?,
    ~endTime=?,
    ~startTime=?,
    ~severity=?,
    ~requestId=?,
    ~platformArn=?,
    ~environmentName=?,
    ~environmentId=?,
    ~templateName=?,
    ~versionLabel=?,
    ~applicationName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxRecords: maxRecords,
      endTime: endTime,
      startTime: startTime,
      severity: severity,
      requestId: requestId,
      platformArn: platformArn,
      environmentName: environmentName,
      environmentId: environmentId,
      templateName: templateName,
      versionLabel: versionLabel,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentManagedActions = {
  type t
  @ocaml.doc("<p>Request to list an environment's upcoming and in-progress managed actions.</p>")
  type request = {
    @ocaml.doc("<p>To show only actions with a particular status, specify a status.</p>")
    @as("Status")
    status: option<actionStatus>,
    @ocaml.doc("<p>The environment ID of the target environment.</p>") @as("EnvironmentId")
    environmentId: option<string_>,
    @ocaml.doc("<p>The name of the target environment.</p>") @as("EnvironmentName")
    environmentName: option<string_>,
  }
  @ocaml.doc("<p>The result message containing a list of managed actions.</p>")
  type response = {
    @ocaml.doc("<p>A list of upcoming and in-progress managed actions.</p>") @as("ManagedActions")
    managedActions: option<managedActions>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEnvironmentManagedActionsCommand"
  let make = (~status=?, ~environmentId=?, ~environmentName=?, ()) =>
    new({status: status, environmentId: environmentId, environmentName: environmentName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentManagedActionHistory = {
  type t
  @ocaml.doc("<p>Request to list completed and failed managed actions.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of items to return for a single request.</p>") @as("MaxItems")
    maxItems: option<managedActionHistoryMaxItems>,
    @ocaml.doc("<p>The pagination token returned by a previous request.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the target environment.</p>") @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The environment ID of the target environment.</p>") @as("EnvironmentId")
    environmentId: option<environmentId>,
  }
  @ocaml.doc("<p>A result message containing a list of completed and failed managed actions.</p>")
  type response = {
    @ocaml.doc("<p>A pagination token that you pass to <a>DescribeEnvironmentManagedActionHistory</a> to get the next page of
      results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of completed and failed managed actions.</p>")
    @as("ManagedActionHistoryItems")
    managedActionHistoryItems: option<managedActionHistoryItems>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEnvironmentManagedActionHistoryCommand"
  let make = (~maxItems=?, ~nextToken=?, ~environmentName=?, ~environmentId=?, ()) =>
    new({
      maxItems: maxItems,
      nextToken: nextToken,
      environmentName: environmentName,
      environmentId: environmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentHealth = {
  type t
  @ocaml.doc("<p>See the example below to learn how to create a request body.</p>")
  type request = {
    @ocaml.doc("<p>Specify the response elements to return. To retrieve all attributes, set to
        <code>All</code>. If no attribute names are specified, returns the name of the
      environment.</p>")
    @as("AttributeNames")
    attributeNames: option<environmentHealthAttributes>,
    @ocaml.doc("<p>Specify the environment by ID.</p>
         <p>You must specify either this or an EnvironmentName, or both.</p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>Specify the environment by name.</p>
         <p>You must specify either this or an EnvironmentName, or both.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
  }
  @ocaml.doc("<p>Health details for an AWS Elastic Beanstalk environment.</p>")
  type response = {
    @ocaml.doc("<p>The date and time that the health information was retrieved.</p>")
    @as("RefreshedAt")
    refreshedAt: option<refreshedAt>,
    @ocaml.doc("<p>Summary health information for the instances in the environment.</p>")
    @as("InstancesHealth")
    instancesHealth: option<instanceHealthSummary>,
    @ocaml.doc("<p>Application request metrics for the environment.</p>") @as("ApplicationMetrics")
    applicationMetrics: option<applicationMetrics>,
    @ocaml.doc("<p>Descriptions of the data that contributed to the environment's current health
      status.</p>")
    @as("Causes")
    causes: option<causes>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">health color</a> of the
      environment.</p>")
    @as("Color")
    color: option<string_>,
    @ocaml.doc("<p>The environment's operational status. <code>Ready</code>, <code>Launching</code>,
        <code>Updating</code>, <code>Terminating</code>, or <code>Terminated</code>.</p>")
    @as("Status")
    status: option<environmentHealth>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html\">health status</a> of the
      environment. For example, <code>Ok</code>.</p>")
    @as("HealthStatus")
    healthStatus: option<string_>,
    @ocaml.doc("<p>The environment's name.</p>") @as("EnvironmentName")
    environmentName: option<environmentName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEnvironmentHealthCommand"
  let make = (~attributeNames=?, ~environmentId=?, ~environmentName=?, ()) =>
    new({
      attributeNames: attributeNames,
      environmentId: environmentId,
      environmentName: environmentName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t

  type response = {
    @ocaml.doc(
      "<p>The Elastic Beanstalk resource quotas associated with the calling AWS account.</p>"
    )
    @as("ResourceQuotas")
    resourceQuotas: option<resourceQuotas>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: unit => t = "DescribeAccountAttributesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePlatformVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the version of the custom platform.</p>") @as("PlatformArn")
    platformArn: option<platformArn>,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the version of the custom platform.</p>")
    @as("PlatformSummary")
    platformSummary: option<platformSummary>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DeletePlatformVersionCommand"
  let make = (~platformArn=?, ()) => new({platformArn: platformArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePlatformVersion = {
  type t
  @ocaml.doc("<p>Request to create a new platform version.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the tags applied to the new platform version.</p>
         <p>Elastic Beanstalk applies these tags only to the platform version. Environments that you create using
      the platform version don't inherit the tags.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The configuration option settings to apply to the builder environment.</p>")
    @as("OptionSettings")
    optionSettings: option<configurationOptionSettingsList>,
    @ocaml.doc("<p>The name of the builder environment.</p>") @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The location of the platform definition archive in Amazon S3.</p>")
    @as("PlatformDefinitionBundle")
    platformDefinitionBundle: s3Location,
    @ocaml.doc("<p>The number, such as 1.0.2, for the new platform version.</p>")
    @as("PlatformVersion")
    platformVersion: platformVersion,
    @ocaml.doc("<p>The name of your custom platform.</p>") @as("PlatformName")
    platformName: platformName,
  }
  type response = {
    @ocaml.doc("<p>The builder used to create the custom platform.</p>") @as("Builder")
    builder: option<builder>,
    @ocaml.doc("<p>Detailed information about the new version of the custom platform.</p>")
    @as("PlatformSummary")
    platformSummary: option<platformSummary>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CreatePlatformVersionCommand"
  let make = (
    ~platformDefinitionBundle,
    ~platformVersion,
    ~platformName,
    ~tags=?,
    ~optionSettings=?,
    ~environmentName=?,
    (),
  ) =>
    new({
      tags: tags,
      optionSettings: optionSettings,
      environmentName: environmentName,
      platformDefinitionBundle: platformDefinitionBundle,
      platformVersion: platformVersion,
      platformName: platformName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConfigurationTemplate = {
  type t
  @ocaml.doc("<p>Request to create a configuration template.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the tags applied to the configuration template.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these
      values override the values obtained from the solution stack or the source configuration
      template. For a complete list of Elastic Beanstalk configuration options, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html\">Option Values</a> in the
        <i>AWS Elastic Beanstalk Developer Guide</i>.</p>")
    @as("OptionSettings")
    optionSettings: option<configurationOptionSettingsList>,
    @ocaml.doc("<p>An optional description for this configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The ID of an environment whose settings you want to use to create the configuration
      template. You must specify <code>EnvironmentId</code> if you don't specify
        <code>PlatformArn</code>, <code>SolutionStackName</code>, or
        <code>SourceConfiguration</code>.</p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified
      configuration template to create a new configuration.</p>
         <p>Values specified in <code>OptionSettings</code> override any values obtained from the
        <code>SourceConfiguration</code>.</p>
         <p>You must specify <code>SourceConfiguration</code> if you don't specify
        <code>PlatformArn</code>, <code>EnvironmentId</code>, or
      <code>SolutionStackName</code>.</p>
         <p>Constraint: If both solution stack name and source configuration are specified, the
      solution stack of the source configuration template must match the specified solution stack
      name.</p>")
    @as("SourceConfiguration")
    sourceConfiguration: option<sourceConfiguration>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom platform. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html\"> Custom
        Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
         <note>
      
            <p>If you specify <code>PlatformArn</code>, then don't specify
          <code>SolutionStackName</code>.</p>
         </note>")
    @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For
      example, <code>64bit Amazon Linux 2013.09 running Tomcat 7 Java 7</code>. A solution stack
      specifies the operating system, runtime, and application server for a configuration template.
      It also determines the set of configuration options as well as the possible and default
      values. For more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html\">Supported Platforms</a> in the
        <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
         <p>You must specify <code>SolutionStackName</code> if you don't specify
        <code>PlatformArn</code>, <code>EnvironmentId</code>, or
      <code>SourceConfiguration</code>.</p>
         <p>Use the <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html\">
               <code>ListAvailableSolutionStacks</code>
            </a> API to obtain a list of available
      solution stacks.</p>")
    @as("SolutionStackName")
    solutionStackName: option<solutionStackName>,
    @ocaml.doc("<p>The name of the configuration template.</p>
         <p>Constraint: This name must be unique per application.</p>")
    @as("TemplateName")
    templateName: configurationTemplateName,
    @ocaml.doc("<p>The name of the Elastic Beanstalk application to associate with this configuration
      template.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = configurationSettingsDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CreateConfigurationTemplateCommand"
  let make = (
    ~templateName,
    ~applicationName,
    ~tags=?,
    ~optionSettings=?,
    ~description=?,
    ~environmentId=?,
    ~sourceConfiguration=?,
    ~platformArn=?,
    ~solutionStackName=?,
    (),
  ) =>
    new({
      tags: tags,
      optionSettings: optionSettings,
      description: description,
      environmentId: environmentId,
      sourceConfiguration: sourceConfiguration,
      platformArn: platformArn,
      solutionStackName: solutionStackName,
      templateName: templateName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplicationVersion = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Specifies the tags applied to the application version.</p>
         <p>Elastic Beanstalk applies these tags only to the application version. Environments that use the
      application version don't inherit the tags.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and
      configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in
      the source bundle. Validating configuration files can identify issues prior to deploying the
      application version to an environment.</p>
         <p>You must turn processing on for application versions that you create using AWS
      CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3,
      processing is optional.</p>
         <note>
            <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It
      doesn't validate your application's configuration files, like proxy server or Docker
      configuration.</p>
         </note>")
    @as("Process")
    process: option<applicationVersionProccess>,
    @ocaml.doc("<p>Set to <code>true</code> to create an application with the specified name if it doesn't
      already exist.</p>")
    @as("AutoCreateApplication")
    autoCreateApplication: option<autoCreateApplication>,
    @ocaml.doc("<p>Settings for an AWS CodeBuild build.</p>") @as("BuildConfiguration")
    buildConfiguration: option<buildConfiguration>,
    @ocaml.doc("<p>The Amazon S3 bucket and key that identify the location of the source bundle for this
      version.</p>
         <note>
            <p>The Amazon S3 bucket must be in the same region as the
      environment.</p>
         </note>
         <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with
        <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor
        <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample
      application.</p>")
    @as("SourceBundle")
    sourceBundle: option<s3Location>,
    @ocaml.doc("<p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the
      application version.</p>")
    @as("SourceBuildInformation")
    sourceBuildInformation: option<sourceBuildInformation>,
    @ocaml.doc("<p>A description of this application version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>A label identifying this version.</p>
         <p>Constraint: Must be unique per application. If an application version already exists
      with this label for the specified application, AWS Elastic Beanstalk returns an
        <code>InvalidParameterValue</code> error. </p>")
    @as("VersionLabel")
    versionLabel: versionLabel,
    @ocaml.doc("<p> The name of the application. If no application is found with this name, and
        <code>AutoCreateApplication</code> is <code>false</code>, returns an
        <code>InvalidParameterValue</code> error. </p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Result message wrapping a single description of an application version.</p>")
  type response = {
    @ocaml.doc("<p> The <a>ApplicationVersionDescription</a> of the application version.
    </p>")
    @as("ApplicationVersion")
    applicationVersion: option<applicationVersionDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CreateApplicationVersionCommand"
  let make = (
    ~versionLabel,
    ~applicationName,
    ~tags=?,
    ~process=?,
    ~autoCreateApplication=?,
    ~buildConfiguration=?,
    ~sourceBundle=?,
    ~sourceBuildInformation=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      process: process,
      autoCreateApplication: autoCreateApplication,
      buildConfiguration: buildConfiguration,
      sourceBundle: sourceBundle,
      sourceBuildInformation: sourceBuildInformation,
      description: description,
      versionLabel: versionLabel,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplicationResourceLifecycle = {
  type t
  type request = {
    @ocaml.doc("<p>The lifecycle configuration.</p>") @as("ResourceLifecycleConfig")
    resourceLifecycleConfig: applicationResourceLifecycleConfig,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = {
    @ocaml.doc("<p>The lifecycle configuration.</p>") @as("ResourceLifecycleConfig")
    resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
    @ocaml.doc("<p>The name of the application.</p>") @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateApplicationResourceLifecycleCommand"
  let make = (~resourceLifecycleConfig, ~applicationName, ()) =>
    new({resourceLifecycleConfig: resourceLifecycleConfig, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlatformVersions = {
  type t
  type request = {
    @ocaml.doc("<p>For a paginated request. Specify a token from a previous response page to retrieve the
      next response page. All other parameter values must be identical to the ones specified in the
      initial request.</p>
         <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of platform version values returned in one call.</p>")
    @as("MaxRecords")
    maxRecords: option<platformMaxRecords>,
    @ocaml.doc("<p>Criteria for restricting the resulting list of platform versions. The filter is
      interpreted as a logical conjunction (AND) of the separate <code>PlatformFilter</code>
      terms.</p>")
    @as("Filters")
    filters: option<platformFilters>,
  }
  type response = {
    @ocaml.doc("<p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can
      pass in a subsequent request to get the next response page.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Summary information about the platform versions.</p>") @as("PlatformSummaryList")
    platformSummaryList: option<platformSummaryList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ListPlatformVersionsCommand"
  let make = (~nextToken=?, ~maxRecords=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPlatformBranches = {
  type t
  type request = {
    @ocaml.doc("<p>For a paginated request. Specify a token from a previous response page to retrieve the
      next response page. All other parameter values must be identical to the ones specified in the
      initial request.</p>
         <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of platform branch values returned in one call.</p>")
    @as("MaxRecords")
    maxRecords: option<platformBranchMaxRecords>,
    @ocaml.doc("<p>Criteria for restricting the resulting list of platform branches. The filter is evaluated
      as a logical conjunction (AND) of the separate <code>SearchFilter</code> terms.</p>
         <p>The following list shows valid attribute values for each of the <code>SearchFilter</code>
      terms. Most operators take a single value. The <code>in</code> and <code>not_in</code>
      operators can take multiple values.</p>
         <ul>
            <li>
               <p>
                  <code>Attribute = BranchName</code>:</p>
               <ul>
                  <li>
                     <p>
                        <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
              | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
                <code>not_in</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>Attribute = LifecycleState</code>:</p>
               <ul>
                  <li>
                     <p>
                        <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>in</code> |
                <code>not_in</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Values</code>: <code>beta</code> | <code>supported</code> |
                <code>deprecated</code> | <code>retired</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>Attribute = PlatformName</code>:</p>
               <ul>
                  <li>
                     <p>
                        <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
              | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
              <code>not_in</code>
                     </p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>Attribute = TierType</code>:</p>
               <ul>
                  <li>
                     <p>
                        <code>Operator</code>: <code>=</code> | <code>!=</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>Values</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
                     </p>
                  </li>
               </ul>
            </li>
         </ul>
         <p>Array size: limited to 10 <code>SearchFilter</code> objects.</p>
         <p>Within each <code>SearchFilter</code> item, the <code>Values</code> array is limited to 10
      items.</p>")
    @as("Filters")
    filters: option<searchFilters>,
  }
  type response = {
    @ocaml.doc("<p>In a paginated request, if this value isn't <code>null</code>, it's the token that you can
      pass in a subsequent request to get the next response page.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Summary information about the platform branches.</p>")
    @as("PlatformBranchSummaryList")
    platformBranchSummaryList: option<platformBranchSummaryList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ListPlatformBranchesCommand"
  let make = (~nextToken=?, ~maxRecords=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxRecords: maxRecords, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAvailableSolutionStacks = {
  type t

  @ocaml.doc("<p>A list of available AWS Elastic Beanstalk solution stacks.</p>")
  type response = {
    @ocaml.doc(
      "<p> A list of available solution stacks and their <a>SolutionStackDescription</a>. </p>"
    )
    @as("SolutionStackDetails")
    solutionStackDetails: option<availableSolutionStackDetailsList>,
    @ocaml.doc("<p>A list of available solution stacks.</p>") @as("SolutionStacks")
    solutionStacks: option<availableSolutionStackNamesList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: unit => t = "ListAvailableSolutionStacksCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePlatformVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
    platformArn: option<platformArn>,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the platform version.</p>") @as("PlatformDescription")
    platformDescription: option<platformDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribePlatformVersionCommand"
  let make = (~platformArn=?, ()) => new({platformArn: platformArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironmentResources = {
  type t
  @ocaml.doc("<p>Request to describe the resources in an environment.</p>")
  type request = {
    @ocaml.doc("<p>The name of the environment to retrieve AWS resource usage data.</p>
         <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to retrieve AWS resource usage data.</p>
         <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }
  @ocaml.doc("<p>Result message containing a list of environment resource descriptions.</p>")
  type response = {
    @ocaml.doc("<p> A list of <a>EnvironmentResourceDescription</a>. </p>")
    @as("EnvironmentResources")
    environmentResources: option<environmentResourceDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEnvironmentResourcesCommand"
  let make = (~environmentName=?, ~environmentId=?, ()) =>
    new({environmentName: environmentName, environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationOptions = {
  type t
  @ocaml.doc("<p>Result message containing a list of application version descriptions.</p>")
  type request = {
    @ocaml.doc("<p>If specified, restricts the descriptions to only the specified options.</p>")
    @as("Options")
    options: option<optionsSpecifierList>,
    @ocaml.doc("<p>The ARN of the custom platform.</p>") @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>The name of the solution stack whose configuration options you want to
      describe.</p>")
    @as("SolutionStackName")
    solutionStackName: option<solutionStackName>,
    @ocaml.doc(
      "<p>The name of the environment whose configuration options you want to describe.</p>"
    )
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The name of the configuration template whose configuration options you want to
      describe.</p>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>The name of the application associated with the configuration template or environment.
      Only needed if you want to describe the configuration options associated with either the
      configuration template or environment.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Describes the settings for a specified configuration set.</p>")
  type response = {
    @ocaml.doc("<p> A list of <a>ConfigurationOptionDescription</a>. </p>") @as("Options")
    options: option<configurationOptionDescriptionsList>,
    @ocaml.doc("<p>The ARN of the platform version.</p>") @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>The name of the solution stack these configuration options belong to.</p>")
    @as("SolutionStackName")
    solutionStackName: option<solutionStackName>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeConfigurationOptionsCommand"
  let make = (
    ~options=?,
    ~platformArn=?,
    ~solutionStackName=?,
    ~environmentName=?,
    ~templateName=?,
    ~applicationName=?,
    (),
  ) =>
    new({
      options: options,
      platformArn: platformArn,
      solutionStackName: solutionStackName,
      environmentName: environmentName,
      templateName: templateName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplicationVersions = {
  type t
  @ocaml.doc("<p>Request to describe application versions.</p>")
  type request = {
    @ocaml.doc("<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
      parameter values must be identical to the ones specified in the initial request.</p>
         <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>For a paginated request. Specify a maximum number of application versions to include in
      each response.</p>
         <p>If no <code>MaxRecords</code> is specified, all available application versions are
      retrieved in a single response.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>Specify a version label to show a specific application version.</p>")
    @as("VersionLabels")
    versionLabels: option<versionLabelsList>,
    @ocaml.doc("<p>Specify an application name to show only application versions for that
      application.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Result message wrapping a list of application version descriptions.</p>")
  type response = {
    @ocaml.doc("<p>In a paginated request, the token that you can pass in a subsequent request to get the
      next response page.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>List of <code>ApplicationVersionDescription</code> objects sorted in order of
      creation.</p>")
    @as("ApplicationVersions")
    applicationVersions: option<applicationVersionDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeApplicationVersionsCommand"
  let make = (~nextToken=?, ~maxRecords=?, ~versionLabels=?, ~applicationName=?, ()) =>
    new({
      nextToken: nextToken,
      maxRecords: maxRecords,
      versionLabels: versionLabels,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEnvironment = {
  type t
  @ocaml.doc("<p>Request to update an environment.</p>")
  type request = {
    @ocaml.doc("<p>A list of custom user-defined configuration options to remove from the configuration
      set for this environment.</p>")
    @as("OptionsToRemove")
    optionsToRemove: option<optionsSpecifierList>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the
      running environment and sets the specified configuration options to the requested
      value.</p>")
    @as("OptionSettings")
    optionSettings: option<configurationOptionSettingsList>,
    @ocaml.doc("<p>The ARN of the platform, if used.</p>") @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>This specifies the platform version that the environment will run after the environment
      is updated.</p>")
    @as("SolutionStackName")
    solutionStackName: option<solutionStackName>,
    @ocaml.doc("<p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration
      template to the environment. If no such configuration template is found, AWS Elastic Beanstalk
      returns an <code>InvalidParameterValue</code> error. </p>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application
      version to the environment. If no such application version is found, returns an
        <code>InvalidParameterValue</code> error. </p>")
    @as("VersionLabel")
    versionLabel: option<versionLabel>,
    @ocaml.doc("<p>This specifies the tier to use to update the environment.</p>
         <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic
      Beanstalk returns <code>InvalidParameterValue</code> error. </p>")
    @as("Tier")
    tier: option<environmentTier>,
    @ocaml.doc("<p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this
      environment.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the group to which the target environment belongs. Specify a group name
      only if the environment's name is specified in an environment manifest and not with the
      environment name or environment ID parameters. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest
        (env.yaml)</a> for details.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc("<p>The name of the environment to update. If no environment with this name exists, AWS
      Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
         <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to update.</p>
         <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an
        <code>InvalidParameterValue</code> error.</p>
         <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>The name of the application with which the environment is associated.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateEnvironmentCommand"
  let make = (
    ~optionsToRemove=?,
    ~optionSettings=?,
    ~platformArn=?,
    ~solutionStackName=?,
    ~templateName=?,
    ~versionLabel=?,
    ~tier=?,
    ~description=?,
    ~groupName=?,
    ~environmentName=?,
    ~environmentId=?,
    ~applicationName=?,
    (),
  ) =>
    new({
      optionsToRemove: optionsToRemove,
      optionSettings: optionSettings,
      platformArn: platformArn,
      solutionStackName: solutionStackName,
      templateName: templateName,
      versionLabel: versionLabel,
      tier: tier,
      description: description,
      groupName: groupName,
      environmentName: environmentName,
      environmentId: environmentId,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApplication = {
  type t
  @ocaml.doc("<p>Request to update an application.</p>")
  type request = {
    @ocaml.doc("<p>A new description for the application.</p>
         <p>Default: If not specified, AWS Elastic Beanstalk does not update the
      description.</p>")
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the application to update. If no such application is found,
        <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.
    </p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Result message containing a single description of an application.</p>")
  type response = {
    @ocaml.doc("<p> The <a>ApplicationDescription</a> of the application. </p>") @as("Application")
    application: option<applicationDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (~applicationName, ~description=?, ()) =>
    new({description: description, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateEnvironment = {
  type t
  @ocaml.doc("<p>Request to terminate an environment.</p>")
  type request = {
    @ocaml.doc("<p>Terminates the target environment even if another environment in the same group is
      dependent on it.</p>")
    @as("ForceTerminate")
    forceTerminate: option<forceTerminate>,
    @ocaml.doc("<p>Indicates whether the associated AWS resources should shut down when the environment is
      terminated:</p>
         <ul>
            <li>
               <p>
                  <code>true</code>: The specified environment as well as the associated AWS resources, such
          as Auto Scaling group and LoadBalancer, are terminated.</p>
            </li>
            <li>
               <p>
                  <code>false</code>: AWS Elastic Beanstalk resource management is removed from the
          environment, but the AWS resources continue to operate.</p>
            </li>
         </ul>
         <p> For more information, see the <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/ug/\"> AWS Elastic Beanstalk User Guide. </a>
         </p>
         <p> Default: <code>true</code>
         </p>
         <p> Valid Values: <code>true</code> | <code>false</code>
         </p>")
    @as("TerminateResources")
    terminateResources: option<terminateEnvironmentResources>,
    @ocaml.doc("<p>The name of the environment to terminate.</p>
         <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The ID of the environment to terminate.</p>
         <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
      specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    </p>")
    @as("EnvironmentId")
    environmentId: option<environmentId>,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "TerminateEnvironmentCommand"
  let make = (~forceTerminate=?, ~terminateResources=?, ~environmentName=?, ~environmentId=?, ()) =>
    new({
      forceTerminate: forceTerminate,
      terminateResources: terminateResources,
      environmentName: environmentName,
      environmentId: environmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstancesHealth = {
  type t
  @ocaml.doc("<p>Parameters for a call to <code>DescribeInstancesHealth</code>.</p>")
  type request = {
    @ocaml.doc("<p>Specify the pagination token returned by a previous call.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the response elements you wish to receive. To retrieve all attributes, set to
        <code>All</code>. If no attribute names are specified, returns a list of
      instances.</p>")
    @as("AttributeNames")
    attributeNames: option<instancesHealthAttributes>,
    @ocaml.doc("<p>Specify the AWS Elastic Beanstalk environment by ID.</p>") @as("EnvironmentId")
    environmentId: option<environmentId>,
    @ocaml.doc("<p>Specify the AWS Elastic Beanstalk environment by name.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
  }
  @ocaml.doc("<p>Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk
      environment.</p>")
  type response = {
    @ocaml.doc("<p>Pagination token for the next page of results, if available.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The date and time that the health information was retrieved.</p>")
    @as("RefreshedAt")
    refreshedAt: option<refreshedAt>,
    @ocaml.doc("<p>Detailed health information about each instance.</p>
         <p>The output differs slightly between Linux and Windows environments. There is a difference
      in the members that are supported under the <code><CPUUtilization></code> type.</p>")
    @as("InstanceHealthList")
    instanceHealthList: option<instanceHealthList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeInstancesHealthCommand"
  let make = (~nextToken=?, ~attributeNames=?, ~environmentId=?, ~environmentName=?, ()) =>
    new({
      nextToken: nextToken,
      attributeNames: attributeNames,
      environmentId: environmentId,
      environmentName: environmentName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationSettings = {
  type t
  @ocaml.doc("<p>Result message containing all of the configuration settings for a specified solution
      stack or configuration template.</p>")
  type request = {
    @ocaml.doc("<p>The name of the environment to describe.</p>
         <p> Condition: You must specify either this or a TemplateName, but not both. If you
      specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error.
      If you do not specify either, AWS Elastic Beanstalk returns
        <code>MissingRequiredParameter</code> error. </p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The name of the configuration template to describe.</p>
         <p> Conditional: You must specify either this parameter or an EnvironmentName, but not
      both. If you specify both, AWS Elastic Beanstalk returns an
        <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic
      Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>The application for the environment or configuration template.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>The results from a request to change the configuration settings of an
      environment.</p>")
  type response = {
    @ocaml.doc("<p> A list of <a>ConfigurationSettingsDescription</a>. </p>")
    @as("ConfigurationSettings")
    configurationSettings: option<configurationSettingsDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeConfigurationSettingsCommand"
  let make = (~applicationName, ~environmentName=?, ~templateName=?, ()) =>
    new({
      environmentName: environmentName,
      templateName: templateName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEnvironment = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
      operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream
      services during this call and during subsequent calls acting on this environment. To specify
      an operations role, you must have the <code>iam:PassRole</code> permission for the role. For
      more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html\">Operations roles</a> in the
        <i>AWS Elastic Beanstalk Developer Guide</i>.</p>")
    @as("OperationsRole")
    operationsRole: option<operationsRole>,
    @ocaml.doc("<p>A list of custom user-defined configuration options to remove from the configuration
      set for this new environment.</p>")
    @as("OptionsToRemove")
    optionsToRemove: option<optionsSpecifierList>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the
      requested value in the configuration set for the new environment. These override the values
      obtained from the solution stack or the configuration template.</p>")
    @as("OptionSettings")
    optionSettings: option<configurationOptionSettingsList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the custom platform to use with the environment. For
      more information, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html\">Custom Platforms</a> in the
        <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
         <note>
      
            <p>If you specify <code>PlatformArn</code>, don't specify
        <code>SolutionStackName</code>.</p>
         </note>")
    @as("PlatformArn")
    platformArn: option<platformArn>,
    @ocaml.doc("<p>The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If
      specified, Elastic Beanstalk sets the configuration values to the default values associated with the
      specified solution stack. For a list of current solution stacks, see <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html\">Elastic Beanstalk Supported Platforms</a> in the <i>AWS Elastic Beanstalk
        Platforms</i> guide.</p>
         <note>
            <p>If you specify <code>SolutionStackName</code>, don't specify <code>PlatformArn</code> or
          <code>TemplateName</code>.</p>
         </note>")
    @as("SolutionStackName")
    solutionStackName: option<solutionStackName>,
    @ocaml.doc("<p>The name of the Elastic Beanstalk configuration template to use with the environment.</p>
         <note>
            <p>If you specify <code>TemplateName</code>, then don't specify 
          <code>SolutionStackName</code>.</p>
         </note>")
    @as("TemplateName")
    templateName: option<configurationTemplateName>,
    @ocaml.doc("<p>The name of the application version to deploy.</p>
         <p>Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.</p>")
    @as("VersionLabel")
    versionLabel: option<versionLabel>,
    @ocaml.doc("<p>Specifies the tags applied to resources in the environment.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Specifies the tier to use in creating this environment. The environment tier that you
      choose determines whether Elastic Beanstalk provisions resources to support a web application that handles
      HTTP(S) requests or a web application that handles background-processing tasks.</p>")
    @as("Tier")
    tier: option<environmentTier>,
    @ocaml.doc("<p>If specified, the environment attempts to use this value as the prefix for the CNAME in
      your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by
      appending a random alphanumeric string to the environment name.</p>")
    @as("CNAMEPrefix")
    cnameprefix: option<dnscnamePrefix>,
    @ocaml.doc("<p>Your description for this environment.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the group to which the target environment belongs. Specify a group name
      only if the environment's name is specified in an environment manifest and not with the
      environment name parameter. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest
        (env.yaml)</a> for details.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc("<p>A unique name for the environment.</p>
         <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only
      letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique
      within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an
        <code>InvalidParameterValue</code> error. </p>
         <p>If you don't specify the <code>CNAMEPrefix</code> parameter, the environment name becomes part of
      the CNAME, and therefore part of the visible URL for your application.</p>")
    @as("EnvironmentName")
    environmentName: option<environmentName>,
    @ocaml.doc("<p>The name of the application that is associated with this environment.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  type response = environmentDescription
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CreateEnvironmentCommand"
  let make = (
    ~applicationName,
    ~operationsRole=?,
    ~optionsToRemove=?,
    ~optionSettings=?,
    ~platformArn=?,
    ~solutionStackName=?,
    ~templateName=?,
    ~versionLabel=?,
    ~tags=?,
    ~tier=?,
    ~cnameprefix=?,
    ~description=?,
    ~groupName=?,
    ~environmentName=?,
    (),
  ) =>
    new({
      operationsRole: operationsRole,
      optionsToRemove: optionsToRemove,
      optionSettings: optionSettings,
      platformArn: platformArn,
      solutionStackName: solutionStackName,
      templateName: templateName,
      versionLabel: versionLabel,
      tags: tags,
      tier: tier,
      cnameprefix: cnameprefix,
      description: description,
      groupName: groupName,
      environmentName: environmentName,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApplication = {
  type t
  @ocaml.doc("<p>Request to create an application.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the tags applied to the application.</p>
         <p>Elastic Beanstalk applies these tags only to the application. Environments that you create in the
      application don't inherit the tags.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Specifies an application resource lifecycle configuration to prevent your application
      from accumulating too many versions.</p>")
    @as("ResourceLifecycleConfig")
    resourceLifecycleConfig: option<applicationResourceLifecycleConfig>,
    @ocaml.doc("<p>Your description of the application.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the application. Must be unique within your account.</p>")
    @as("ApplicationName")
    applicationName: applicationName,
  }
  @ocaml.doc("<p>Result message containing a single description of an application.</p>")
  type response = {
    @ocaml.doc("<p> The <a>ApplicationDescription</a> of the application. </p>") @as("Application")
    application: option<applicationDescription>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (~applicationName, ~tags=?, ~resourceLifecycleConfig=?, ~description=?, ()) =>
    new({
      tags: tags,
      resourceLifecycleConfig: resourceLifecycleConfig,
      description: description,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeApplications = {
  type t
  @ocaml.doc("<p>Request to describe one or more applications.</p>")
  type request = {
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include
      those with the specified names.</p>")
    @as("ApplicationNames")
    applicationNames: option<applicationNamesList>,
  }
  @ocaml.doc("<p>Result message containing a list of application descriptions.</p>")
  type response = {
    @ocaml.doc("<p>This parameter contains a list of <a>ApplicationDescription</a>.</p>")
    @as("Applications")
    applications: option<applicationDescriptionList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeApplicationsCommand"
  let make = (~applicationNames=?, ()) => new({applicationNames: applicationNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEnvironments = {
  type t
  @ocaml.doc("<p>Request to describe one or more environments.</p>")
  type request = {
    @ocaml.doc("<p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
      parameter values must be identical to the ones specified in the initial request.</p>
         <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>For a paginated request. Specify a maximum number of environments to include in
      each response.</p>
         <p>If no <code>MaxRecords</code> is specified, all available environments are
      retrieved in a single response.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then
      environments deleted after this date are displayed. </p>")
    @as("IncludedDeletedBackTo")
    includedDeletedBackTo: option<includeDeletedBackTo>,
    @ocaml.doc("<p>Indicates whether to include deleted environments:</p>
         <p>
            <code>true</code>: Environments that have been deleted after
      <code>IncludedDeletedBackTo</code> are displayed.</p>
         <p>
            <code>false</code>: Do not include deleted environments.</p>")
    @as("IncludeDeleted")
    includeDeleted: option<includeDeleted>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
      those that have the specified names.</p>")
    @as("EnvironmentNames")
    environmentNames: option<environmentNamesList>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
      those that have the specified IDs.</p>")
    @as("EnvironmentIds")
    environmentIds: option<environmentIdList>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
      those that are associated with this application version.</p>")
    @as("VersionLabel")
    versionLabel: option<versionLabel>,
    @ocaml.doc("<p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
      those that are associated with this application.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Result message containing a list of environment descriptions.</p>")
  type response = {
    @ocaml.doc("<p>In a paginated request, the token that you can pass in a subsequent request to get the
      next response page.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p> Returns an <a>EnvironmentDescription</a> list. </p>") @as("Environments")
    environments: option<environmentDescriptionsList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "DescribeEnvironmentsCommand"
  let make = (
    ~nextToken=?,
    ~maxRecords=?,
    ~includedDeletedBackTo=?,
    ~includeDeleted=?,
    ~environmentNames=?,
    ~environmentIds=?,
    ~versionLabel=?,
    ~applicationName=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxRecords: maxRecords,
      includedDeletedBackTo: includedDeletedBackTo,
      includeDeleted: includeDeleted,
      environmentNames: environmentNames,
      environmentIds: environmentIds,
      versionLabel: versionLabel,
      applicationName: applicationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ComposeEnvironments = {
  type t
  @ocaml.doc("<p>Request to create or update a group of environments.</p>")
  type request = {
    @ocaml.doc("<p>A list of version labels, specifying one or more application source bundles that belong
      to the target application. Each source bundle must include an environment manifest that
      specifies the name of the environment and the name of the solution stack to use, and
      optionally can specify environment links to create.</p>")
    @as("VersionLabels")
    versionLabels: option<versionLabels>,
    @ocaml.doc("<p>The name of the group to which the target environments belong. Specify a group name
      only if the environment name defined in each target environment's manifest ends with a +
      (plus) character. See <a href=\"https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html\">Environment Manifest
        (env.yaml)</a> for details.</p>")
    @as("GroupName")
    groupName: option<groupName>,
    @ocaml.doc("<p>The name of the application to which the specified source bundles belong.</p>")
    @as("ApplicationName")
    applicationName: option<applicationName>,
  }
  @ocaml.doc("<p>Result message containing a list of environment descriptions.</p>")
  type response = {
    @ocaml.doc("<p>In a paginated request, the token that you can pass in a subsequent request to get the
      next response page.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p> Returns an <a>EnvironmentDescription</a> list. </p>") @as("Environments")
    environments: option<environmentDescriptionsList>,
  }
  @module("@aws-sdk/client-elasticbeanstalk") @new
  external new: request => t = "ComposeEnvironmentsCommand"
  let make = (~versionLabels=?, ~groupName=?, ~applicationName=?, ()) =>
    new({versionLabels: versionLabels, groupName: groupName, applicationName: applicationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
