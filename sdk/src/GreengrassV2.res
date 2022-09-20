type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-greengrass") @new
external createClient: unit => awsServiceClient = "GreengrassV2Client"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type topicString = string
type timestamp_ = Js.Date.t
type thingGroupARN = string
type targetARN = string
type tagValue = string
type tagKey = string
type string_ = string
type retryAfterSeconds = int
type recipeOutputFormat = [@as("YAML") #YAML | @as("JSON") #JSON]
type recipeBlob = NodeJs.Buffer.t
type reason = string
type publisherString = string
type portNumberInt = int
type optionalInteger = int
type optionalBoolean = bool
type nullableString = string
type nonEmptyString = string
type nextTokenString = string
type memory = float
type lifecycleStateDetails = string
type lambdaIsolationMode = [
  | @as("NoContainer") #NoContainer
  | @as("GreengrassContainer") #GreengrassContainer
]
type lambdaInputPayloadEncodingType = [@as("binary") #Binary | @as("json") #Json]
type lambdaFunctionARNWithVersionNumber = string
type lambdaFilesystemPermission = [@as("rw") #Rw | @as("ro") #Ro]
type lambdaExecArg = string
type lambdaEventSourceType = [@as("IOT_CORE") #IOT_CORE | @as("PUB_SUB") #PUB_SUB]
type isRoot = bool
type isLatestForTarget = bool
type ioTThingName = string
type ioTJobRolloutIncrementFactor = float
type ioTJobRolloutBaseRatePerMinute = int
type ioTJobNumberOfThings = int
type ioTJobMinimumNumberOfExecutedThings = int
type ioTJobMaxExecutionsPerMin = int
type ioTJobInProgressTimeoutInMinutes = float
type ioTJobId = string
type ioTJobExecutionFailureType = [
  | @as("ALL") #ALL
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("REJECTED") #REJECTED
  | @as("FAILED") #FAILED
]
type ioTJobAbortThresholdPercentage = float
type ioTJobAbortAction = [@as("CANCEL") #CANCEL]
type ioTJobARN = string
type installedComponentLifecycleState = [
  | @as("FINISHED") #FINISHED
  | @as("BROKEN") #BROKEN
  | @as("ERRORED") #ERRORED
  | @as("STOPPING") #STOPPING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("INSTALLED") #INSTALLED
  | @as("NEW") #NEW
]
type genericV2ARN = string
type ggcversion = string
type fileSystemPath = string
type effectiveDeploymentExecutionStatus = [
  | @as("REJECTED") #REJECTED
  | @as("CANCELED") #CANCELED
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("QUEUED") #QUEUED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type descriptionString = string
type description = string
type deploymentStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("FAILED") #FAILED
  | @as("CANCELED") #CANCELED
  | @as("COMPLETED") #COMPLETED
  | @as("ACTIVE") #ACTIVE
]
type deploymentName = string
type deploymentID = string
type deploymentHistoryFilter = [@as("LATEST_ONLY") #LATEST_ONLY | @as("ALL") #ALL]
type deploymentFailureHandlingPolicy = [@as("DO_NOTHING") #DO_NOTHING | @as("ROLLBACK") #ROLLBACK]
type deploymentComponentUpdatePolicyAction = [
  | @as("SKIP_NOTIFY_COMPONENTS") #SKIP_NOTIFY_COMPONENTS
  | @as("NOTIFY_COMPONENTS") #NOTIFY_COMPONENTS
]
type defaultMaxResults = int
type coreDeviceThingName = string
type coreDeviceStatus = [@as("UNHEALTHY") #UNHEALTHY | @as("HEALTHY") #HEALTHY]
type coreDevicePlatformString = string
type coreDeviceArchitectureString = string
type componentVisibilityScope = [@as("PUBLIC") #PUBLIC | @as("PRIVATE") #PRIVATE]
type componentVersionString = string
type componentVersionARN = string
type componentNameString = string
type componentDependencyType = [@as("SOFT") #SOFT | @as("HARD") #HARD]
type componentConfigurationString = string
type componentConfigurationPath = string
type componentARN = string
type cloudComponentState = [
  | @as("DEPRECATED") #DEPRECATED
  | @as("FAILED") #FAILED
  | @as("DEPLOYABLE") #DEPLOYABLE
  | @as("INITIATED") #INITIATED
  | @as("REQUESTED") #REQUESTED
]
type clientTokenString = string
type cpu = float
@ocaml.doc("<p>Contains information about a validation exception field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>The message of the exception field.</p>") message: string_,
  @ocaml.doc("<p>The name of the exception field.</p>") name: string_,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Contains information about system resource limits that the IoT Greengrass Core software applies to a
      component's processes. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits\">Configure system resource limits for components</a>.</p>")
type systemResourceLimits = {
  @ocaml.doc("<p>The maximum amount of CPU time that a component's processes can use on the core device. A
      core device's total CPU time is equivalent to the device's number of CPU cores. For example,
      on a core device with 4 CPU cores, you can set this value to <code>2</code> to limit the
      component's processes to 50 percent usage of each CPU core. On a device with 1 CPU core, you
      can set this value to <code>0.25</code> to limit the component's processes to 25 percent usage
      of the CPU. If you set this value to a number greater than the number of CPU cores, the IoT Greengrass Core
      software doesn't limit the component's CPU usage.</p>")
  cpus: option<cpu>,
  @ocaml.doc("<p>The maximum amount of RAM, expressed in kilobytes, that a component's processes can use on
      the core device.</p>")
  memory: option<memory>,
}
type stringMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Contains information about a component version that is compatible to run on a Greengrass core
      device.</p>")
type resolvedComponentVersion = {
  @ocaml.doc("<p>The recipe of the component version.</p>") recipe: option<recipeBlob>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
  )
  arn: option<componentVersionARN>,
}
type platformAttributesMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Contains information about a volume that Linux processes in a container can access. When
      you define a volume, the IoT Greengrass Core software mounts the source files to the destination inside the
      container.</p>")
type lambdaVolumeMount = {
  @ocaml.doc("<p>Whether or not to add the IoT Greengrass user group as an owner of the volume.</p>
         <p>Default: <code>false</code>
         </p>")
  addGroupOwner: option<optionalBoolean>,
  @ocaml.doc("<p>The permission to access the volume: read/only (<code>ro</code>) or read/write
        (<code>rw</code>).</p>
         <p>Default: <code>ro</code>
         </p>")
  permission: option<lambdaFilesystemPermission>,
  @ocaml.doc("<p>The path to the logical volume in the file system.</p>")
  destinationPath: fileSystemPath,
  @ocaml.doc("<p>The path to the physical volume in the file system.</p>")
  sourcePath: fileSystemPath,
}
type lambdaExecArgsList = array<lambdaExecArg>
@ocaml.doc("<p>Contains information about an event source for an Lambda function. The event source
      defines the topics on which this Lambda function subscribes to receive messages that run the
      function.</p>")
type lambdaEventSource = {
  @ocaml.doc("<p>The type of event source. Choose from the following options:</p>
         <ul>
            <li>
               <p>
                  <code>PUB_SUB</code> – Subscribe to local publish/subscribe messages. This event
          source type doesn't support MQTT wildcards (<code>+</code> and <code>#</code>) in the
          event source topic.</p>
            </li>
            <li>
               <p>
                  <code>IOT_CORE</code> – Subscribe to Amazon Web Services IoT Core MQTT messages. This event source
          type supports MQTT wildcards (<code>+</code> and <code>#</code>) in the event source
          topic.</p>
            </li>
         </ul>")
  @as("type")
  type_: lambdaEventSourceType,
  @ocaml.doc("<p>The topic to which to subscribe to receive event messages.</p>")
  topic: topicString,
}
type lambdaEnvironmentVariables = Js.Dict.t<string_>
@ocaml.doc(
  "<p>Contains information about a device that Linux processes in a container can access.</p>"
)
type lambdaDeviceMount = {
  @ocaml.doc("<p>Whether or not to add the component's system user as an owner of the device.</p>
         <p>Default: <code>false</code>
         </p>")
  addGroupOwner: option<optionalBoolean>,
  @ocaml.doc("<p>The permission to access the device: read/only (<code>ro</code>) or read/write
      (<code>rw</code>).</p>
         <p>Default: <code>ro</code>
         </p>")
  permission: option<lambdaFilesystemPermission>,
  @ocaml.doc("<p>The mount path for the device in the file system.</p>") path: fileSystemPath,
}
@ocaml.doc("<p>Contains information about the timeout configuration for a job.</p>")
type ioTJobTimeoutConfig = {
  @ocaml.doc("<p>The amount of time, in minutes, that devices have to complete the job. The timer starts
      when the job status is set to <code>IN_PROGRESS</code>. If the job status doesn't change to a
      terminal state before the time expires, then the job status is set to
      <code>TIMED_OUT</code>.</p>
         <p>The timeout interval must be between 1 minute and 7 days (10080 minutes).</p>")
  inProgressTimeoutInMinutes: option<ioTJobInProgressTimeoutInMinutes>,
}
@ocaml.doc("<p>Contains information about criteria to meet before a job increases its rollout rate.
      Specify either <code>numberOfNotifiedThings</code> or
      <code>numberOfSucceededThings</code>.</p>")
type ioTJobRateIncreaseCriteria = {
  @ocaml.doc("<p>The number of devices to successfully run the configuration job before the rollout rate
      increases.</p>")
  numberOfSucceededThings: option<ioTJobNumberOfThings>,
  @ocaml.doc("<p>The number of devices to receive the job notification before the rollout rate
      increases.</p>")
  numberOfNotifiedThings: option<ioTJobNumberOfThings>,
}
@ocaml.doc("<p>Contains criteria that define when and how to cancel a job.</p>
         <p>The deployment stops if the following conditions are true:</p>
         <ol>
            <li>
               <p>The number of things that receive the deployment exceeds the
          <code>minNumberOfExecutedThings</code>.</p>
            </li>
            <li>
               <p>The percentage of failures with type <code>failureType</code> exceeds the
          <code>thresholdPercentage</code>.</p>
            </li>
         </ol>")
type ioTJobAbortCriteria = {
  @ocaml.doc("<p>The minimum number of things that receive the configuration before the job can
      cancel.</p>")
  minNumberOfExecutedThings: ioTJobMinimumNumberOfExecutedThings,
  @ocaml.doc("<p>The minimum percentage of <code>failureType</code> failures that occur before the job can
      cancel.</p>
         <p>This parameter supports up to two digits after the decimal (for example, you can specify
      <code>10.9</code> or <code>10.99</code>, but not <code>10.999</code>).</p>")
  thresholdPercentage: ioTJobAbortThresholdPercentage,
  @ocaml.doc("<p>The action to perform when the criteria are met.</p>") action: ioTJobAbortAction,
  @ocaml.doc("<p>The type of job deployment failure that can cancel a job.</p>")
  failureType: ioTJobExecutionFailureType,
}
@ocaml.doc("<p>Contains information about a component on a Greengrass core device.</p>")
type installedComponent = {
  @ocaml.doc("<p>Whether or not the component is a root component.</p>") isRoot: option<isRoot>,
  @ocaml.doc("<p>The details about the lifecycle state of the component.</p>")
  lifecycleStateDetails: option<lifecycleStateDetails>,
  @ocaml.doc("<p>The lifecycle state of the component.</p>")
  lifecycleState: option<installedComponentLifecycleState>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
}
@ocaml.doc(
  "<p>Contains information about a deployment job that IoT Greengrass sends to a Greengrass core device.</p>"
)
type effectiveDeployment = {
  @ocaml.doc("<p>The time at which the deployment job was last modified, expressed in ISO 8601
      format.</p>")
  modifiedTimestamp: timestamp_,
  @ocaml.doc("<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>")
  creationTimestamp: timestamp_,
  @ocaml.doc("<p>The reason code for the update, if the job was updated.</p>")
  reason: option<reason>,
  @ocaml.doc("<p>The status of the deployment job on the Greengrass core device.</p>")
  coreDeviceExecutionStatus: effectiveDeploymentExecutionStatus,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"
  )
  targetArn: targetARN,
  @ocaml.doc("<p>The description of the deployment job.</p>") description: option<description>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"
  )
  iotJobArn: option<ioTJobARN>,
  @ocaml.doc("<p>The ID of the IoT job that applies the deployment to target devices.</p>")
  iotJobId: option<ioTJobId>,
  @ocaml.doc("<p>The name of the deployment.</p>") deploymentName: deploymentName,
  @ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: deploymentID,
}
@ocaml.doc("<p>Contains an error that occurs from a request to disassociate a client device from a core
      device. The <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html\">BatchDisassociateClientDeviceWithCoreDevice</a> operation returns a list of these
      errors.</p>")
type disassociateClientDeviceFromCoreDeviceErrorEntry = {
  @ocaml.doc("<p>A message that provides additional information about the error.</p>")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The error code for the request.</p>") code: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the IoT thing whose disassociate request failed.</p>")
  thingName: option<ioTThingName>,
}
@ocaml.doc("<p>Contains a request to disassociate a client device from a core device. The <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html\">BatchDisassociateClientDeviceWithCoreDevice</a> operation consumes a list of these
      requests.</p>")
type disassociateClientDeviceFromCoreDeviceEntry = {
  @ocaml.doc("<p>The name of the IoT thing that represents the client device to disassociate.</p>")
  thingName: ioTThingName,
}
@ocaml.doc("<p>Contains information about how long a component on a core device can validate its
      configuration updates before it times out. Components can use the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetovalidateconfigurationupdates\">SubscribeToValidateConfigurationUpdates</a> IPC operation to receive notifications when
      a deployment specifies a configuration update. Then, components can respond with the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-sendconfigurationvalidityreport\">SendConfigurationValidityReport</a> IPC operation. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html\">Create deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
type deploymentConfigurationValidationPolicy = {
  @ocaml.doc("<p>The amount of time in seconds that a component can validate its configuration updates. If
      the validation time exceeds this timeout, then the deployment proceeds for the device.</p>
         <p>Default: <code>30</code>
         </p>")
  timeoutInSeconds: option<optionalInteger>,
}
@ocaml.doc("<p>Contains information about a deployment's policy that defines when components are safe to
      update.</p>
         <p>Each component on a device can report whether or not it's ready to update. After a
      component and its dependencies are ready, they can apply the update in the deployment. You can
      configure whether or not the deployment notifies components of an update and waits for a
      response. You specify the amount of time each component has to respond to the update
      notification.</p>")
type deploymentComponentUpdatePolicy = {
  @ocaml.doc("<p>Whether or not to notify components and wait for components to become safe to update.
      Choose from the following options:</p>
         <ul>
            <li>
               <p>
                  <code>NOTIFY_COMPONENTS</code> – The deployment notifies each component before
          it stops and updates that component. Components can use the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetocomponentupdates\">SubscribeToComponentUpdates</a> IPC operation to receive these notifications. Then,
          components can respond with the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-defercomponentupdate\">DeferComponentUpdate</a> IPC operation. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html\">Create deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
            </li>
            <li>
               <p>
                  <code>SKIP_NOTIFY_COMPONENTS</code> – The deployment doesn't notify components
          or wait for them to be safe to update.</p>
            </li>
         </ul>
         <p>Default: <code>NOTIFY_COMPONENTS</code>
         </p>")
  action: option<deploymentComponentUpdatePolicyAction>,
  @ocaml.doc("<p>The amount of time in seconds that each component on a device has to report that it's safe
      to update. If the component waits for longer than this timeout, then the deployment proceeds
      on the device.</p>
         <p>Default: <code>60</code>
         </p>")
  timeoutInSeconds: option<optionalInteger>,
}
@ocaml.doc("<p>Contains information about a deployment.</p>")
type deployment = {
  @ocaml.doc("<p>Whether or not the deployment is the latest revision for its target.</p>")
  isLatestForTarget: option<isLatestForTarget>,
  @ocaml.doc("<p>The status of the deployment.</p>") deploymentStatus: option<deploymentStatus>,
  @ocaml.doc("<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>")
  creationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the deployment.</p>") deploymentName: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: option<nonEmptyString>,
  @ocaml.doc("<p>The revision number of the deployment.</p>") revisionId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"
  )
  targetArn: option<targetARN>,
}
@ocaml.doc("<p>Contains information about a Greengrass core device, which is an IoT thing that runs the IoT Greengrass
      Core software.</p>")
type coreDevice = {
  @ocaml.doc("<p>The time at which the core device's status last updated, expressed in ISO 8601
      format.</p>")
  lastStatusUpdateTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The status of the core device. Core devices can have the following
      statuses:</p>
         <ul>
            <li>
               <p>
                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
            </li>
            <li>
               <p>
                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
          on the core device.</p>
            </li>
         </ul>")
  status: option<coreDeviceStatus>,
  @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
  coreDeviceThingName: option<coreDeviceThingName>,
}
@ocaml.doc("<p>Contains information about an endpoint and port where client devices can connect to an
      MQTT broker on a Greengrass core device.</p>")
type connectivityInfo = {
  @ocaml.doc(
    "<p>Additional metadata to provide to client devices that connect to this core device.</p>"
  )
  metadata: option<string_>,
  @ocaml.doc("<p>The port where the MQTT broker operates on the core device. This port is typically 8883,
      which is the default port for the MQTT broker component that runs on core devices.</p>")
  portNumber: option<portNumberInt>,
  @ocaml.doc("<p>The IP address or DNS address where client devices can connect to an MQTT broker on the
      Greengrass core device.</p>")
  hostAddress: option<string_>,
  @ocaml.doc("<p>An ID for the connectivity information.</p>") id: option<string_>,
}
type componentVersionRequirementMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Contains information about a component version in a list.</p>")
type componentVersionListItem = {
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
  )
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
}
@ocaml.doc(
  "<p>Contains information about a component dependency for a Lambda function component.</p>"
)
type componentDependencyRequirement = {
  @ocaml.doc("<p>The type of this dependency. Choose from the following options:</p>
         <ul>
            <li>
               <p>
                  <code>SOFT</code> – The component doesn't restart if the dependency changes
          state.</p>
            </li>
            <li>
               <p>
                  <code>HARD</code> – The component restarts if the dependency changes
          state.</p>
            </li>
         </ul>
         <p>Default: <code>HARD</code>
         </p>")
  dependencyType: option<componentDependencyType>,
  @ocaml.doc("<p>The component version requirement for the component dependency.</p>
         <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href=\"https://semver.org/\">Semantic Versioning</a>.</p>")
  versionRequirement: option<nonEmptyString>,
}
type componentConfigurationPathList = array<componentConfigurationPath>
@ocaml.doc("<p>Contains information about a client device that is associated to a core device for cloud
      discovery.</p>")
type associatedClientDevice = {
  @ocaml.doc("<p>The time that the client device was associated, expressed in ISO 8601 format.</p>")
  associationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The name of the IoT thing that represents the associated client device.</p>")
  thingName: option<ioTThingName>,
}
@ocaml.doc("<p>Contains an error that occurs from a request to associate a client device with a core
      device. The <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html\">BatchAssociateClientDeviceWithCoreDevice</a> operation returns a list of these
      errors.</p>")
type associateClientDeviceWithCoreDeviceErrorEntry = {
  @ocaml.doc("<p>A message that provides additional information about the error.</p>")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The error code for the request.</p>") code: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the IoT thing whose associate request failed.</p>")
  thingName: option<ioTThingName>,
}
@ocaml.doc("<p>Contains a request to associate a client device with a core device. The <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html\">BatchAssociateClientDeviceWithCoreDevice</a> operation consumes a list of these
      requests.</p>")
type associateClientDeviceWithCoreDeviceEntry = {
  @ocaml.doc("<p>The name of the IoT thing that represents the client device to associate.</p>")
  thingName: ioTThingName,
}
type connectivityInfoList = array<connectivityInfo>
type validationExceptionFieldList = array<validationExceptionField>
type resolvedComponentVersionsList = array<resolvedComponentVersion>
type lambdaVolumeList = array<lambdaVolumeMount>
type lambdaEventSourceList = array<lambdaEventSource>
type lambdaDeviceList = array<lambdaDeviceMount>
@ocaml.doc("<p>Contains information about an exponential rollout rate for a configuration deployment
      job.</p>")
type ioTJobExponentialRolloutRate = {
  @ocaml.doc("<p>The criteria to increase the rollout rate for the job.</p>")
  rateIncreaseCriteria: ioTJobRateIncreaseCriteria,
  @ocaml.doc("<p>The exponential factor to increase the rollout rate for the job.</p>
         <p>This parameter supports up to one digit after the decimal (for example, you can specify
      <code>1.5</code>, but not <code>1.55</code>).</p>")
  incrementFactor: ioTJobRolloutIncrementFactor,
  @ocaml.doc("<p>The minimum number of devices that receive a pending job notification, per minute, when
      the job starts. This parameter defines the initial rollout rate of the job.</p>")
  baseRatePerMinute: ioTJobRolloutBaseRatePerMinute,
}
type ioTJobAbortCriteriaList = array<ioTJobAbortCriteria>
type installedComponentList = array<installedComponent>
type effectiveDeploymentsList = array<effectiveDeployment>
type disassociateClientDeviceFromCoreDeviceErrorList = array<
  disassociateClientDeviceFromCoreDeviceErrorEntry,
>
type disassociateClientDeviceFromCoreDeviceEntryList = array<
  disassociateClientDeviceFromCoreDeviceEntry,
>
@ocaml.doc("<p>Contains information about policies that define how a deployment updates components and
      handles failure.</p>")
type deploymentPolicies = {
  @ocaml.doc("<p>The configuration validation policy for the configuration deployment. This policy defines
      how long each component has to validate its configure updates.</p>")
  configurationValidationPolicy: option<deploymentConfigurationValidationPolicy>,
  @ocaml.doc("<p>The component update policy for the configuration deployment. This policy defines when
      it's safe to deploy the configuration to devices.</p>")
  componentUpdatePolicy: option<deploymentComponentUpdatePolicy>,
  @ocaml.doc("<p>The failure handling policy for the configuration deployment. This policy defines what to
      do if the deployment fails.</p>
         <p>Default: <code>ROLLBACK</code>
         </p>")
  failureHandlingPolicy: option<deploymentFailureHandlingPolicy>,
}
type deploymentList = array<deployment>
type coreDevicesList = array<coreDevice>
type componentVersionList = array<componentVersionListItem>
@ocaml.doc("<p>Contains information system user and group that the IoT Greengrass Core software uses to run component
      processes on the core device. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
        Guide</i>.</p>")
type componentRunWith = {
  @ocaml.doc("<p>The Windows user to use to run this component on Windows core devices. The user must exist
      on each Windows core device, and its name and password must be in the LocalSystem account's
      Credentials Manager instance.</p>
         <p>If you omit this parameter, the IoT Greengrass Core software uses the default Windows user that you
      configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a>.</p>")
  windowsUser: option<nonEmptyString>,
  @ocaml.doc("<p>The system resource limits to apply to this component's process on the core device. IoT Greengrass
      currently supports this feature on only Linux core devices.</p>
         <p>If you omit this parameter, the IoT Greengrass Core software uses the default system resource limits
      that you configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits\">Configure system resource limits for components</a>.</p>")
  systemResourceLimits: option<systemResourceLimits>,
  @ocaml.doc("<p>The POSIX system user and, optionally, group to use to run this component on Linux core
      devices. The user, and group if specified, must exist on each Linux core device. Specify the
      user and group separated by a colon (<code>:</code>) in the following format:
        <code>user:group</code>. The group is optional. If you don't specify a group, the IoT Greengrass Core
      software uses the primary user for the group.</p>
         <p>If you omit this parameter, the IoT Greengrass Core software uses the default system user and group that
      you configure on the Greengrass nucleus component. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a>.</p>")
  posixUser: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a platform that a component supports.</p>")
type componentPlatform = {
  @ocaml.doc("<p>A dictionary of attributes for the platform. The IoT Greengrass Core software defines the
        <code>os</code> and <code>platform</code> by default. You can specify additional platform
      attributes for a core device when you deploy the Greengrass nucleus component. For more information,
      see the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html\">Greengrass nucleus
        component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
  attributes: option<platformAttributesMap>,
  @ocaml.doc("<p>The friendly name of the platform. This name helps you identify the platform.</p>
         <p>If you omit this parameter, IoT Greengrass creates a friendly name from the <code>os</code> and
        <code>architecture</code> of the platform.</p>")
  name: option<nonEmptyString>,
}
type componentDependencyMap = Js.Dict.t<componentDependencyRequirement>
@ocaml.doc("<p>Contains information about a deployment's update to a component's configuration on
      Greengrass core devices. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html\">Update component
        configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
type componentConfigurationUpdate = {
  @ocaml.doc("<p>The list of configuration nodes to reset to default values on target devices. Use JSON
      pointers to specify each node to reset. JSON pointers start with a forward slash
      (<code>/</code>) and use forward slashes to separate the key for each level in the object.
      For more information, see the <a href=\"https://tools.ietf.org/html/rfc6901\">JSON pointer
        specification</a> and <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#reset-configuration-update\">Reset configuration updates</a> in the <i>IoT Greengrass V2 Developer
            Guide</i>.</p>")
  reset: option<componentConfigurationPathList>,
  @ocaml.doc("<p>A serialized JSON string that contains the configuration object to merge to target
      devices. The core device merges this configuration with the component's existing
      configuration. If this is the first time a component deploys on a device, the core device
      merges this configuration with the component's default configuration. This means that the core
      device keeps it's existing configuration for keys and values that you don't specify in this
      object. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#merge-configuration-update\">Merge configuration updates</a> in the <i>IoT Greengrass V2 Developer
          Guide</i>.</p>")
  merge: option<componentConfigurationString>,
}
@ocaml.doc("<p>Contains information about a component that is a candidate to deploy to a Greengrass core
      device.</p>")
type componentCandidate = {
  @ocaml.doc("<p>The version requirements for the component's dependencies. Greengrass core devices get the
      version requirements from component recipes.</p>
         <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href=\"https://semver.org/\">Semantic Versioning</a>.</p>")
  versionRequirements: option<componentVersionRequirementMap>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
}
@ocaml.doc("<p>Contains the status of a component in the IoT Greengrass service.</p>")
type cloudComponentStatus = {
  @ocaml.doc("<p>A dictionary of errors that communicate why the component is in an error state. For
      example, if IoT Greengrass can't access an artifact for the component, then <code>errors</code> contains
      the artifact's URI as a key, and the error message as the value for that key.</p>")
  errors: option<stringMap>,
  @ocaml.doc(
    "<p>A message that communicates details, such as errors, about the status of the component.</p>"
  )
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The state of the component.</p>") componentState: option<cloudComponentState>,
}
type associatedClientDeviceList = array<associatedClientDevice>
type associateClientDeviceWithCoreDeviceErrorList = array<
  associateClientDeviceWithCoreDeviceErrorEntry,
>
type associateClientDeviceWithCoreDeviceEntryList = array<associateClientDeviceWithCoreDeviceEntry>
@ocaml.doc("<p>Contains information about a container in which Lambda functions run on Greengrass core
      devices.</p>")
type lambdaContainerParams = {
  @ocaml.doc("<p>The list of system devices that the container can access.</p>")
  devices: option<lambdaDeviceList>,
  @ocaml.doc("<p>The list of volumes that the container can access.</p>")
  volumes: option<lambdaVolumeList>,
  @ocaml.doc("<p>Whether or not the container can read information from the device's <code>/sys</code>
      folder.</p>
         <p>Default: <code>false</code>
         </p>")
  mountROSysfs: option<optionalBoolean>,
  @ocaml.doc("<p>The memory size of the container, expressed in kilobytes.</p>
         <p>Default: <code>16384</code> (16 MB)</p>")
  memorySizeInKB: option<optionalInteger>,
}
@ocaml.doc("<p>Contains information about the rollout configuration for a job. This configuration defines
      the rate at which the job deploys a configuration to a fleet of target devices.</p>")
type ioTJobExecutionsRolloutConfig = {
  @ocaml.doc(
    "<p>The maximum number of devices that receive a pending job notification, per minute.</p>"
  )
  maximumPerMinute: option<ioTJobMaxExecutionsPerMin>,
  @ocaml.doc("<p>The exponential rate to increase the job rollout rate.</p>")
  exponentialRate: option<ioTJobExponentialRolloutRate>,
}
@ocaml.doc("<p>Contains a list of criteria that define when and how to cancel a configuration
      deployment.</p>")
type ioTJobAbortConfig = {
  @ocaml.doc(
    "<p>The list of criteria that define when and how to cancel the configuration deployment.</p>"
  )
  criteriaList: ioTJobAbortCriteriaList,
}
type componentPlatformList = array<componentPlatform>
@ocaml.doc("<p>Contains information about a component to deploy.</p>")
type componentDeploymentSpecification = {
  @ocaml.doc("<p>The system user and group that the IoT Greengrass Core software uses to run component processes on the
      core device. If you omit this parameter, the IoT Greengrass Core software uses the system user and group
      that you configure for the core device. For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user\">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
        Guide</i>.</p>")
  runWith: option<componentRunWith>,
  @ocaml.doc("<p>The configuration updates to deploy for the component. You can define
      <i>reset</i> updates and <i>merge</i> updates. A reset updates
      the keys that you specify to the default configuration for the component. A merge updates the
      core device's component configuration with the keys and values that you specify. The IoT Greengrass Core
      software applies reset updates before it applies merge updates. For more information, see
      <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html\">Update component
        configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
  configurationUpdate: option<componentConfigurationUpdate>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
}
type componentCandidateList = array<componentCandidate>
@ocaml.doc("<p>Contains parameters for a Linux process that contains an Lambda function.</p>")
type lambdaLinuxProcessParams = {
  @ocaml.doc("<p>The parameters for the container in which the Lambda function runs.</p>")
  containerParams: option<lambdaContainerParams>,
  @ocaml.doc("<p>The isolation mode for the process that contains the Lambda function. The process can run
      in an isolated runtime environment inside the IoT Greengrass container, or as a regular process outside
      any container.</p>
         <p>Default: <code>GreengrassContainer</code>
         </p>")
  isolationMode: option<lambdaIsolationMode>,
}
@ocaml.doc("<p>Contains information about an IoT job configuration.</p>")
type deploymentIoTJobConfiguration = {
  @ocaml.doc("<p>The timeout configuration for the job. This configuration defines the amount of time each
      device has to complete the job.</p>")
  timeoutConfig: option<ioTJobTimeoutConfig>,
  @ocaml.doc("<p>The stop configuration for the job. This configuration defines when and how to stop a job
      rollout.</p>")
  abortConfig: option<ioTJobAbortConfig>,
  @ocaml.doc("<p>The rollout configuration for the job. This configuration defines the rate at which the
      job rolls out to the fleet of target devices.</p>")
  jobExecutionsRolloutConfig: option<ioTJobExecutionsRolloutConfig>,
}
@ocaml.doc("<p>Contains information about the latest version of a component.</p>")
type componentLatestVersion = {
  @ocaml.doc("<p>The platforms that the component version supports.</p>")
  platforms: option<componentPlatformList>,
  @ocaml.doc("<p>The publisher of the component version.</p>") publisher: option<nonEmptyString>,
  @ocaml.doc("<p>The description of the component version.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The time at which the component was created, expressed in ISO 8601 format.</p>")
  creationTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The version of the component.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
  )
  arn: option<componentVersionARN>,
}
type componentDeploymentSpecifications = Js.Dict.t<componentDeploymentSpecification>
@ocaml.doc("<p>Contains parameters for a Lambda function that runs on IoT Greengrass.</p>")
type lambdaExecutionParameters = {
  @ocaml.doc("<p>The parameters for the Linux process that contains the Lambda function.</p>")
  linuxProcessParams: option<lambdaLinuxProcessParams>,
  @ocaml.doc(
    "<p>The map of environment variables that are available to the Lambda function when it runs.</p>"
  )
  environmentVariables: option<lambdaEnvironmentVariables>,
  @ocaml.doc("<p>The list of arguments to pass to the Lambda function when it runs.</p>")
  execArgs: option<lambdaExecArgsList>,
  @ocaml.doc("<p>The encoding type that the Lambda function supports.</p>
         <p>Default: <code>json</code>
         </p>")
  inputPayloadEncodingType: option<lambdaInputPayloadEncodingType>,
  @ocaml.doc("<p>Whether or not the Lambda function is pinned, or long-lived.</p>
         <ul>
            <li>
               <p>A pinned Lambda function starts
          when IoT Greengrass starts and keeps running in its own container.</p>
            </li>
            <li>
               <p>A non-pinned Lambda function starts only when it receives a work item and exists after
          it idles for <code>maxIdleTimeInSeconds</code>. If the function has multiple work items,
          the IoT Greengrass Core software creates multiple instances of the function.</p>
            </li>
         </ul>
         <p>Default: <code>true</code>
         </p>")
  pinned: option<optionalBoolean>,
  @ocaml.doc("<p>The interval in seconds at which a pinned (also known as long-lived) Lambda function
      component sends status updates to the Lambda manager component.</p>")
  statusTimeoutInSeconds: option<optionalInteger>,
  @ocaml.doc("<p>The maximum amount of time in seconds that the Lambda function can process a work
      item.</p>")
  timeoutInSeconds: option<optionalInteger>,
  @ocaml.doc("<p>The maximum amount of time in seconds that a non-pinned Lambda function can idle before the
      IoT Greengrass Core software stops its process.</p>")
  maxIdleTimeInSeconds: option<optionalInteger>,
  @ocaml.doc("<p>The maximum number of instances that a non-pinned Lambda function can run at the same
      time.</p>")
  maxInstancesCount: option<optionalInteger>,
  @ocaml.doc("<p>The maximum size of the message queue for the Lambda function component. The IoT Greengrass core
      stores messages in a FIFO (first-in-first-out) queue until it can run the Lambda function to
      consume each message.</p>")
  maxQueueSize: option<optionalInteger>,
  @ocaml.doc("<p>The list of event sources to which to subscribe to receive work messages. The Lambda
      function runs when it receives a message from an event source. You can subscribe this function
      to local publish/subscribe messages and Amazon Web Services IoT Core MQTT messages.</p>")
  eventSources: option<lambdaEventSourceList>,
}
@ocaml.doc("<p>Contains information about a component.</p>")
type component = {
  @ocaml.doc("<p>The latest version of the component and its details.</p>")
  latestVersion: option<componentLatestVersion>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
  )
  arn: option<componentARN>,
}
@ocaml.doc("<p>Contains information about an Lambda function to import to create a component.</p>")
type lambdaFunctionRecipeSource = {
  @ocaml.doc("<p>The system and runtime parameters for the Lambda function as it runs on the Greengrass core
      device.</p>")
  componentLambdaParameters: option<lambdaExecutionParameters>,
  @ocaml.doc("<p>The component versions on which this Lambda function component depends.</p>")
  componentDependencies: option<componentDependencyMap>,
  @ocaml.doc("<p>The platforms that the component version supports.</p>")
  componentPlatforms: option<componentPlatformList>,
  @ocaml.doc("<p>The version of the component.</p>
         <p>Defaults to the version of the Lambda function as a semantic version. For example, if your
      function version is <code>3</code>, the component version becomes <code>3.0.0</code>.</p>")
  componentVersion: option<componentVersionString>,
  @ocaml.doc("<p>The name of the component.</p>
         <p>Defaults to the name of the Lambda function.</p>")
  componentName: option<componentNameString>,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Lambda function. The ARN must include the version of the function to
      import. You can't use version aliases like <code>$LATEST</code>.</p>")
  lambdaArn: lambdaFunctionARNWithVersionNumber,
}
type componentList = array<component>
@ocaml.doc("<p>IoT Greengrass brings local compute, messaging, data management, sync, and ML inference capabilities
      to edge devices. This enables devices to collect and analyze data closer to the source of
      information, react autonomously to local events, and communicate securely with each other on
      local networks. Local devices can also communicate securely with Amazon Web Services IoT Core and export IoT data
      to the Amazon Web Services Cloud. IoT Greengrass developers can use Lambda functions and components to create and
      deploy applications to fleets of edge devices for local operation.</p>
         <p>IoT Greengrass Version 2 provides a new major version of the IoT Greengrass Core software, new APIs, and a new console.
      Use this API reference to learn how to use the IoT Greengrass V2 API operations to manage components,
      manage deployments, and core devices.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html\">What is IoT Greengrass?</a> in
      the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
module GetServiceRoleForAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The ARN of the service role that is associated with IoT Greengrass for your Amazon Web Services account in this
      Amazon Web Services Region.</p>")
    roleArn: option<string_>,
    @ocaml.doc("<p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
      Amazon Web Services Region.</p>")
    associatedAt: option<string_>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetServiceRoleForAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateServiceRoleFromAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The time when the service role was disassociated from IoT Greengrass for your Amazon Web Services account in this
      Amazon Web Services Region.</p>")
    disassociatedAt: option<string_>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "DisassociateServiceRoleFromAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConnectivityInfo = {
  type t
  type request = {
    @ocaml.doc("<p>The connectivity information for the core device.</p>")
    connectivityInfo: connectivityInfoList,
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    thingName: coreDeviceThingName,
  }
  type response = {
    @ocaml.doc("<p>A message about the connectivity information update request.</p>")
    message: option<string_>,
    @ocaml.doc("<p>The new version of the connectivity information for the core device.</p>")
    version: option<string_>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "UpdateConnectivityInfoCommand"
  let make = (~connectivityInfo, ~thingName, ()) => new({connectivityInfo, thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of keys for tags to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to untag.</p>"
    )
    resourceArn: genericV2ARN,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: tagMap,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to tag.</p>"
    )
    resourceArn: genericV2ARN,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource.</p>"
    )
    resourceArn: genericV2ARN,
  }
  type response = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListInstalledComponents = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: coreDeviceThingName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list that summarizes each component on the core device.</p>")
    installedComponents: option<installedComponentList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListInstalledComponentsCommand"
  let make = (~coreDeviceThingName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, coreDeviceThingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEffectiveDeployments = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: coreDeviceThingName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list that summarizes each deployment on the core device.</p>")
    effectiveDeployments: option<effectiveDeploymentsList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListEffectiveDeploymentsCommand"
  let make = (~coreDeviceThingName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, coreDeviceThingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeployments = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The filter for the list of deployments. Choose one of the following options:</p>
         <ul>
            <li>
               <p>
                  <code>ALL</code> – The list includes all deployments.</p>
            </li>
            <li>
               <p>
                  <code>LATEST_ONLY</code> – The list includes only the latest revision of each
          deployment.</p>
            </li>
         </ul>
         <p>Default: <code>LATEST_ONLY</code>
         </p>")
    historyFilter: option<deploymentHistoryFilter>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"
    )
    targetArn: option<targetARN>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list that summarizes each deployment.</p>")
    deployments: option<deploymentList>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListDeploymentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~historyFilter=?, ~targetArn=?, ()) =>
    new({nextToken, maxResults, historyFilter, targetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCoreDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The core device status by which to filter. If you specify this parameter, the list
      includes only core devices that have this status. Choose one of the following options:</p>
         <ul>
            <li>
               <p>
                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
            </li>
            <li>
               <p>
                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
          on the core device.</p>
            </li>
         </ul>")
    status: option<coreDeviceStatus>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT thing group by which to filter. If you specify this parameter, the
      list includes only core devices that are members of this thing group.</p>")
    thingGroupArn: option<thingGroupARN>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list that summarizes each core device.</p>")
    coreDevices: option<coreDevicesList>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListCoreDevicesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~status=?, ~thingGroupArn=?, ()) =>
    new({nextToken, maxResults, status, thingGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListComponentVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: componentARN,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list of versions that exist for the component.</p>")
    componentVersions: option<componentVersionList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListComponentVersionsCommand"
  let make = (~arn, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListClientDevicesAssociatedWithCoreDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: ioTThingName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc(
      "<p>A list that describes the client devices that are associated with the core device.</p>"
    )
    associatedClientDevices: option<associatedClientDeviceList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ListClientDevicesAssociatedWithCoreDeviceCommand"
  let make = (~coreDeviceThingName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, coreDeviceThingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: coreDeviceThingName,
  }
  type response = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time at which the core device's status last updated, expressed in ISO 8601
      format.</p>")
    lastStatusUpdateTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The status of the core device. The core device status can be:</p>
         <ul>
            <li>
               <p>
                  <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
            </li>
            <li>
               <p>
                  <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
          on the core device.</p>
            </li>
         </ul>")
    status: option<coreDeviceStatus>,
    @ocaml.doc("<p>The computer architecture of the core device.</p>")
    architecture: option<coreDeviceArchitectureString>,
    @ocaml.doc("<p>The operating system platform that the core device runs.</p>")
    platform: option<coreDevicePlatformString>,
    @ocaml.doc("<p>The version of the IoT Greengrass Core software that the core device runs. This version is equivalent to
      the version of the Greengrass nucleus component that runs on the core device. For more information,
      see the <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html\">Greengrass nucleus
        component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    coreVersion: option<ggcversion>,
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: option<coreDeviceThingName>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetCoreDeviceCommand"
  let make = (~coreDeviceThingName, ()) => new({coreDeviceThingName: coreDeviceThingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectivityInfo = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    thingName: coreDeviceThingName,
  }
  type response = {
    @ocaml.doc("<p>A message about the connectivity information request.</p>")
    message: option<string_>,
    @ocaml.doc("<p>The connectivity information for the core device.</p>")
    connectivityInfo: option<connectivityInfoList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetConnectivityInfoCommand"
  let make = (~thingName, ()) => new({thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetComponentVersionArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the artifact.</p>
         <p>You can use the <a href=\"https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html\">GetComponent</a> operation to
      download the component recipe, which includes the URI of the artifact. The artifact name is
      the section of the URI after the scheme. For example, in the artifact URI
        <code>greengrass:SomeArtifact.zip</code>, the artifact name is
      <code>SomeArtifact.zip</code>.</p>")
    artifactName: nonEmptyString,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version. Specify the ARN of a public component version.</p>"
    )
    arn: componentVersionARN,
  }
  type response = {@ocaml.doc("<p>The URL of the artifact.</p>") preSignedUrl: nonEmptyString}
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "GetComponentVersionArtifactCommand"
  let make = (~artifactName, ~arn, ()) => new({artifactName, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetComponent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: componentVersionARN,
    @ocaml.doc("<p>The format of the recipe.</p>") recipeOutputFormat: option<recipeOutputFormat>,
  }
  type response = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The recipe of the component version.</p>") recipe: recipeBlob,
    @ocaml.doc("<p>The format of the recipe.</p>") recipeOutputFormat: recipeOutputFormat,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetComponentCommand"
  let make = (~arn, ~recipeOutputFormat=?, ()) => new({arn, recipeOutputFormat})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCoreDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: coreDeviceThingName,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "DeleteCoreDeviceCommand"
  let make = (~coreDeviceThingName, ()) => new({coreDeviceThingName: coreDeviceThingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteComponent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: componentVersionARN,
  }
  type response = {.}
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "DeleteComponentCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelDeployment = {
  type t
  type request = {@ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: nonEmptyString}
  type response = {
    @ocaml.doc("<p>A message that communicates if the cancel was successful.</p>")
    message: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CancelDeploymentCommand"
  let make = (~deploymentId, ()) => new({deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDisassociateClientDeviceFromCoreDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: ioTThingName,
    @ocaml.doc("<p>The list of client devices to disassociate.</p>")
    entries: option<disassociateClientDeviceFromCoreDeviceEntryList>,
  }
  type response = {
    @ocaml.doc("<p>The list of any errors for the entries in the request. Each error entry contains the name
      of the IoT thing that failed to disassociate.</p>")
    errorEntries: option<disassociateClientDeviceFromCoreDeviceErrorList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "BatchDisassociateClientDeviceFromCoreDeviceCommand"
  let make = (~coreDeviceThingName, ~entries=?, ()) => new({coreDeviceThingName, entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchAssociateClientDeviceWithCoreDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the core device. This is also the name of the IoT thing.</p>")
    coreDeviceThingName: ioTThingName,
    @ocaml.doc("<p>The list of client devices to associate.</p>")
    entries: option<associateClientDeviceWithCoreDeviceEntryList>,
  }
  type response = {
    @ocaml.doc("<p>The list of any errors for the entries in the request. Each error entry contains the name
      of the IoT thing that failed to associate.</p>")
    errorEntries: option<associateClientDeviceWithCoreDeviceErrorList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "BatchAssociateClientDeviceWithCoreDeviceCommand"
  let make = (~coreDeviceThingName, ~entries=?, ()) => new({coreDeviceThingName, entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateServiceRoleToAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your
      Amazon Web Services account in this Amazon Web Services Region.</p>")
    roleArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
      Amazon Web Services Region.</p>")
    associatedAt: option<string_>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "AssociateServiceRoleToAccountCommand"
  let make = (~roleArn, ()) => new({roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ResolveComponentCandidates = {
  type t
  type request = {
    @ocaml.doc("<p>The list of components to resolve.</p>")
    componentCandidates: componentCandidateList,
    @ocaml.doc("<p>The platform to use to resolve compatible components.</p>")
    platform: componentPlatform,
  }
  type response = {
    @ocaml.doc("<p>A list of components that meet the requirements that you specify in the request. This list
      includes each component's recipe that you can use to install the component.</p>")
    resolvedComponentVersions: option<resolvedComponentVersionsList>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "ResolveComponentCandidatesCommand"
  let make = (~componentCandidates, ~platform, ()) => new({componentCandidates, platform})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeComponent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: componentVersionARN,
  }
  type response = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The platforms that the component version supports.</p>")
    platforms: option<componentPlatformList>,
    @ocaml.doc("<p>The status of the component version in IoT Greengrass V2. This status
      is different from the status of the component on a core device.</p>")
    status: option<cloudComponentStatus>,
    @ocaml.doc("<p>The description of the component version.</p>")
    description: option<descriptionString>,
    @ocaml.doc("<p>The publisher of the component version.</p>") publisher: option<publisherString>,
    @ocaml.doc("<p>The time at which the component was created, expressed in ISO 8601 format.</p>")
    creationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The version of the component.</p>")
    componentVersion: option<componentVersionString>,
    @ocaml.doc("<p>The name of the component.</p>") componentName: option<componentNameString>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: option<componentVersionARN>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "DescribeComponentCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDeployment = {
  type t
  type request = {@ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: nonEmptyString}
  type response = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Whether or not the deployment is the latest revision for its target.</p>")
    isLatestForTarget: option<isLatestForTarget>,
    @ocaml.doc("<p>The time at which the deployment was created, expressed in ISO 8601 format.</p>")
    creationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The job configuration for the deployment configuration. The job configuration specifies
      the rollout, timeout, and stop configurations for the deployment configuration.</p>")
    iotJobConfiguration: option<deploymentIoTJobConfiguration>,
    @ocaml.doc("<p>The deployment policies for the deployment. These policies define how the deployment
      updates components and handles failure.</p>")
    deploymentPolicies: option<deploymentPolicies>,
    @ocaml.doc("<p>The components to deploy. This is a dictionary, where each key is the name of a component,
        and each key's value is the version and configuration to deploy for that component.</p>")
    components: option<componentDeploymentSpecifications>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"
    )
    iotJobArn: option<ioTJobARN>,
    @ocaml.doc("<p>The ID of the IoT job that applies the deployment to target devices.</p>")
    iotJobId: option<nullableString>,
    @ocaml.doc("<p>The status of the deployment.</p>") deploymentStatus: option<deploymentStatus>,
    @ocaml.doc("<p>The name of the deployment.</p>") deploymentName: option<nullableString>,
    @ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: option<nonEmptyString>,
    @ocaml.doc("<p>The revision number of the deployment.</p>") revisionId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"
    )
    targetArn: option<targetARN>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "GetDeploymentCommand"
  let make = (~deploymentId, ()) => new({deploymentId: deploymentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    idempotent requests for up to 8 hours.</p>")
    clientToken: option<clientTokenString>,
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The deployment policies for the deployment. These policies define how the deployment
      updates components and handles failure.</p>")
    deploymentPolicies: option<deploymentPolicies>,
    @ocaml.doc("<p>The job configuration for the deployment configuration. The job configuration specifies
      the rollout, timeout, and stop configurations for the deployment configuration.</p>")
    iotJobConfiguration: option<deploymentIoTJobConfiguration>,
    @ocaml.doc("<p>The components to deploy. This is a dictionary, where each key is the name of a component,
        and each key's value is the version and configuration to deploy for that component.</p>")
    components: option<componentDeploymentSpecifications>,
    @ocaml.doc("<p>The name of the deployment.</p>") deploymentName: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the target IoT thing or thing group.</p>"
    )
    targetArn: targetARN,
  }
  type response = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IoT job that applies the deployment to target devices.</p>"
    )
    iotJobArn: option<ioTJobARN>,
    @ocaml.doc("<p>The ID of the IoT job that applies the deployment to target devices.</p>")
    iotJobId: option<nonEmptyString>,
    @ocaml.doc("<p>The ID of the deployment.</p>") deploymentId: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "CreateDeploymentCommand"
  let make = (
    ~targetArn,
    ~clientToken=?,
    ~tags=?,
    ~deploymentPolicies=?,
    ~iotJobConfiguration=?,
    ~components=?,
    ~deploymentName=?,
    (),
  ) =>
    new({
      clientToken,
      tags,
      deploymentPolicies,
      iotJobConfiguration,
      components,
      deploymentName,
      targetArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListComponents = {
  type t
  type request = {
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<defaultMaxResults>,
    @ocaml.doc("<p>The scope of the components to list.</p>
         <p>Default: <code>PRIVATE</code>
         </p>")
    scope: option<componentVisibilityScope>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list that summarizes each component.</p>") components: option<componentList>,
  }
  @module("@aws-sdk/client-greengrass") @new external new: request => t = "ListComponentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~scope=?, ()) => new({nextToken, maxResults, scope})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateComponentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    idempotent requests for up to 8 hours.</p>")
    clientToken: option<clientTokenString>,
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more
      information, see <a href=\"https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html\">Tag your
        resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The parameters to create a component from a Lambda function.</p>
         <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>")
    lambdaFunction: option<lambdaFunctionRecipeSource>,
    @ocaml.doc("<p>The recipe to use to create the component. The recipe defines the component's metadata,
      parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>
         <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>")
    inlineRecipe: option<recipeBlob>,
  }
  type response = {
    @ocaml.doc("<p>The status of the component version in IoT Greengrass V2. This status
      is different from the status of the component on a core device.</p>")
    status: cloudComponentStatus,
    @ocaml.doc("<p>The time at which the component was created, expressed in ISO 8601 format.</p>")
    creationTimestamp: timestamp_,
    @ocaml.doc("<p>The version of the component.</p>") componentVersion: componentVersionString,
    @ocaml.doc("<p>The name of the component.</p>") componentName: componentNameString,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the component version.</p>"
    )
    arn: option<componentVersionARN>,
  }
  @module("@aws-sdk/client-greengrass") @new
  external new: request => t = "CreateComponentVersionCommand"
  let make = (~clientToken=?, ~tags=?, ~lambdaFunction=?, ~inlineRecipe=?, ()) =>
    new({clientToken, tags, lambdaFunction, inlineRecipe})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
