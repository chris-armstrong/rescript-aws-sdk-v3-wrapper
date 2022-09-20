type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-robomaker") @new
external createClient: unit => awsServiceClient = "RoboMakerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type errorMessage = string
type worldGenerationJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Canceling") #Canceling
  | @as("PartialFailed") #PartialFailed
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Running") #Running
  | @as("Pending") #Pending
]
type worldGenerationJobErrorCode = [
  | @as("AllWorldGenerationFailed") #AllWorldGenerationFailed
  | @as("InvalidInput") #InvalidInput
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("LimitExceeded") #LimitExceeded
  | @as("InternalServiceError") #InternalServiceError
]
type worldExportJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Canceling") #Canceling
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Running") #Running
  | @as("Pending") #Pending
]
type worldExportJobErrorCode = [
  | @as("AccessDenied") #AccessDenied
  | @as("InvalidInput") #InvalidInput
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("LimitExceeded") #LimitExceeded
  | @as("InternalServiceError") #InternalServiceError
]
type versionQualifier = string
type version = string
type uploadBehavior = [
  | @as("UPLOAD_ROLLING_AUTO_REMOVE") #UPLOAD_ROLLING_AUTO_REMOVE
  | @as("UPLOAD_ON_TERMINATE") #UPLOAD_ON_TERMINATE
]
type unrestrictedCommand = string
type templateName = string
type tagValue = string
type tagKey = string
type simulationUnit = int
type simulationTimeMillis = float
type simulationSoftwareSuiteVersionType = string
type simulationSoftwareSuiteType = [
  | @as("SimulationRuntime") #SimulationRuntime
  | @as("RosbagPlay") #RosbagPlay
  | @as("Gazebo") #Gazebo
]
type simulationJobStatus = [
  | @as("Canceled") #Canceled
  | @as("Terminated") #Terminated
  | @as("Terminating") #Terminating
  | @as("RunningFailed") #RunningFailed
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("Restarting") #Restarting
  | @as("Running") #Running
  | @as("Preparing") #Preparing
  | @as("Pending") #Pending
]
type simulationJobErrorCode = [
  | @as("UploadContentMismatchError") #UploadContentMismatchError
  | @as("WrongRegionSimulationApplication") #WrongRegionSimulationApplication
  | @as("WrongRegionRobotApplication") #WrongRegionRobotApplication
  | @as("WrongRegionS3Output") #WrongRegionS3Output
  | @as("WrongRegionS3Bucket") #WrongRegionS3Bucket
  | @as("InvalidInput") #InvalidInput
  | @as("BatchCanceled") #BatchCanceled
  | @as("BatchTimedOut") #BatchTimedOut
  | @as("RequestThrottled") #RequestThrottled
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("SimulationApplicationVersionMismatchedEtag") #SimulationApplicationVersionMismatchedEtag
  | @as("RobotApplicationVersionMismatchedEtag") #RobotApplicationVersionMismatchedEtag
  | @as("MismatchedEtag") #MismatchedEtag
  | @as("LimitExceeded") #LimitExceeded
  | @as("ThrottlingError") #ThrottlingError
  | @as("InvalidS3Resource") #InvalidS3Resource
  | @as("InvalidBundleSimulationApplication") #InvalidBundleSimulationApplication
  | @as("InvalidBundleRobotApplication") #InvalidBundleRobotApplication
  | @as("BadPermissionsUserCredentials") #BadPermissionsUserCredentials
  | @as("ENILimitExceeded") #ENILimitExceeded
  | @as("SubnetIpLimitExceeded") #SubnetIpLimitExceeded
  | @as("BadPermissionsCloudwatchLogs") #BadPermissionsCloudwatchLogs
  | @as("BadPermissionsS3Output") #BadPermissionsS3Output
  | @as("BadPermissionsS3Object") #BadPermissionsS3Object
  | @as("BadPermissionsSimulationApplication") #BadPermissionsSimulationApplication
  | @as("BadPermissionsRobotApplication") #BadPermissionsRobotApplication
  | @as("SimulationApplicationHealthCheckFailure") #SimulationApplicationHealthCheckFailure
  | @as("RobotApplicationHealthCheckFailure") #RobotApplicationHealthCheckFailure
  | @as("SimulationApplicationCrash") #SimulationApplicationCrash
  | @as("RobotApplicationCrash") #RobotApplicationCrash
  | @as("InternalServiceError") #InternalServiceError
]
type simulationJobBatchStatus = [
  | @as("TimedOut") #TimedOut
  | @as("TimingOut") #TimingOut
  | @as("Completing") #Completing
  | @as("Canceling") #Canceling
  | @as("Canceled") #Canceled
  | @as("Completed") #Completed
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type simulationJobBatchErrorCode = [@as("InternalServiceError") #InternalServiceError]
type s3KeyOrPrefix = string
type s3Key = string
type s3Etag = string
type s3Bucket = string
type robotStatus = [
  | @as("NoResponse") #NoResponse
  | @as("InSync") #InSync
  | @as("Failed") #Failed
  | @as("Deploying") #Deploying
  | @as("PendingNewDeployment") #PendingNewDeployment
  | @as("Registered") #Registered
  | @as("Available") #Available
]
type robotSoftwareSuiteVersionType = [
  | @as("Foxy") #Foxy
  | @as("Dashing") #Dashing
  | @as("Melodic") #Melodic
  | @as("Kinetic") #Kinetic
]
type robotSoftwareSuiteType = [@as("General") #General | @as("ROS2") #ROS2 | @as("ROS") #ROS]
type robotDeploymentStep = [
  | @as("Finished") #Finished
  | @as("ExecutingPostLaunch") #ExecutingPostLaunch
  | @as("Launching") #Launching
  | @as("ExecutingPreLaunch") #ExecutingPreLaunch
  | @as("ExecutingDownloadCondition") #ExecutingDownloadCondition
  | @as("DownloadingExtracting") #DownloadingExtracting
  | @as("Validating") #Validating
]
type revisionId = string
type repositoryUrl = string
type renderingEngineVersionType = string
type renderingEngineType = [@as("OGRE") #OGRE]
type port = int
type percentage = int
type percentDone = float
type path = string
type paginationToken = string
type nonSystemPort = int
type nonEmptyString = string
type name = string
type maxResults = int
type maxConcurrency = int
type lastUpdatedAt = Js.Date.t
type lastStartedAt = Js.Date.t
type json = string
type jobDuration = float
type interiorCountPerFloorplan = int
type integer_ = int
type imageDigest = string
type id = string
type iamRole = string
type genericString = string
type genericInteger = int
type gpuunit = int
type floorplanCount = int
type failureBehavior = [@as("Continue") #Continue | @as("Fail") #Fail]
type failedAt = Js.Date.t
type exitBehavior = [@as("RESTART") #RESTART | @as("FAIL") #FAIL]
type environmentVariableValue = string
type environmentVariableKey = string
type deploymentVersion = string
type deploymentTimeout = float
type deploymentStatus = [
  | @as("Canceled") #Canceled
  | @as("Succeeded") #Succeeded
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Preparing") #Preparing
  | @as("Pending") #Pending
]
type deploymentJobErrorCode = [
  | @as("FleetDeploymentTimeout") #FleetDeploymentTimeout
  | @as("DeploymentFleetDoesNotExist") #DeploymentFleetDoesNotExist
  | @as("RobotApplicationDoesNotExist") #RobotApplicationDoesNotExist
  | @as("InternalServerError") #InternalServerError
  | @as("BadLambdaAssociated") #BadLambdaAssociated
  | @as("DownloadConditionFailed") #DownloadConditionFailed
  | @as("BadPermissionError") #BadPermissionError
  | @as("PostLaunchFileFailure") #PostLaunchFileFailure
  | @as("PreLaunchFileFailure") #PreLaunchFileFailure
  | @as("ExtractingBundleFailure") #ExtractingBundleFailure
  | @as("LambdaDeleted") #LambdaDeleted
  | @as("GreengrassGroupVersionDoesNotExist") #GreengrassGroupVersionDoesNotExist
  | @as("MissingRobotDeploymentResource") #MissingRobotDeploymentResource
  | @as("MissingRobotApplicationArchitecture") #MissingRobotApplicationArchitecture
  | @as("MissingRobotArchitecture") #MissingRobotArchitecture
  | @as("InvalidGreengrassGroup") #InvalidGreengrassGroup
  | @as("GreengrassDeploymentFailed") #GreengrassDeploymentFailed
  | @as("RobotAgentConnectionTimeout") #RobotAgentConnectionTimeout
  | @as("RobotDeploymentNoResponse") #RobotDeploymentNoResponse
  | @as("RobotDeploymentAborted") #RobotDeploymentAborted
  | @as("FailureThresholdBreached") #FailureThresholdBreached
  | @as("EtagMismatch") #EtagMismatch
  | @as("EnvironmentSetupError") #EnvironmentSetupError
  | @as("ResourceNotFound") #ResourceNotFound
]
type dataSourceType = [@as("File") #File | @as("Archive") #Archive | @as("Prefix") #Prefix]
type createdAt = Js.Date.t
type computeType = [@as("GPU_AND_CPU") #GPU_AND_CPU | @as("CPU") #CPU]
type command = string
type clientRequestToken = string
type boxedBoolean = bool
type boolean_ = bool
type batchTimeoutInSeconds = float
type arn = string
type architecture = [@as("ARMHF") #ARMHF | @as("ARM64") #ARM64 | @as("X86_64") #X86_64]
@ocaml.doc("<p>Information about a world.</p>")
type worldSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>") template: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (arn) of the world generation job.</p>")
  generationJob: option<arn>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world was created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world.</p>") arn: option<arn>,
}
@ocaml.doc("<p>Information about a failed world.</p>")
type worldFailure = {
  @ocaml.doc("<p>The number of failed worlds.</p>") failureCount: option<integer_>,
  @ocaml.doc("<p>The sample reason why the world failed. World errors are aggregated. A sample is used as
         the <code>sampleFailureReason</code>. </p>")
  sampleFailureReason: option<genericString>,
  @ocaml.doc("<p>The failure code of the world export job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>LimitExceeded</dt>
            <dd>
               <p>The requested resource exceeds the maximum number allowed, or the number of
                  concurrent stream requests exceeds the maximum number allowed. </p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>The specified resource could not be found. </p>
            </dd>
            <dt>RequestThrottled</dt>
            <dd>
               <p>The request was throttled.</p>
            </dd>
            <dt>InvalidInput</dt>
            <dd>
               <p>An input parameter in the request is not valid.</p>
            </dd>
         </dl>")
  failureCode: option<worldGenerationJobErrorCode>,
}
@ocaml.doc("<p>The number of worlds that will be created. You can configure the number of unique
         floorplans and the number of unique interiors for each floor plan. For example, if you want
         1 world with 20 unique interiors, you set <code>floorplanCount = 1</code> and
            <code>interiorCountPerFloorplan = 20</code>. This will result in 20 worlds
            (<code>floorplanCount</code> * <code>interiorCountPerFloorplan)</code>. </p>
         <p>If you set <code>floorplanCount = 4</code> and <code>interiorCountPerFloorplan =
            5</code>, there will be 20 worlds with 5 unique floor plans. </p>")
type worldCount = {
  @ocaml.doc("<p>The number of unique interiors per floorplan.</p>")
  interiorCountPerFloorplan: option<interiorCountPerFloorplan>,
  @ocaml.doc("<p>The number of unique floorplans.</p>") floorplanCount: option<floorplanCount>,
}
@ocaml.doc("<p>Configuration information for a world.</p>")
type worldConfig = {
  @ocaml.doc("<p>The world generated by Simulation WorldForge.</p>") world: option<arn>,
}
@ocaml.doc("<p>Provides upload configuration information. Files are uploaded from the simulation job to
         a location you specify. </p>")
type uploadConfiguration = {
  @ocaml.doc("<p>Specifies when to upload the files:</p>
         <dl>
            <dt>UPLOAD_ON_TERMINATE</dt>
            <dd>
               <p>Matching files are uploaded once the simulation enters the
                     <code>TERMINATING</code> state. Matching files are not uploaded until all of
                  your code (including tools) have stopped. </p>
               <p>If there is a problem uploading a file, the upload is retried. If problems
                  persist, no further upload attempts will be made.</p>
            </dd>
            <dt>UPLOAD_ROLLING_AUTO_REMOVE</dt>
            <dd>
               <p>Matching files are uploaded as they are created. They are deleted after they
                  are uploaded. The specified path is checked every 5 seconds. A final check is made
                  when all of your code (including tools) have stopped. </p>
            </dd>
         </dl>")
  uploadBehavior: uploadBehavior,
  @ocaml.doc("<p> Specifies the path of the file(s) to upload. Standard Unix glob matching rules are
         accepted, with the addition of <code>**</code> as a <i>super asterisk</i>.
         For example, specifying <code>/var/log/**.log</code> causes all .log files in the
            <code>/var/log</code> directory tree to be collected. For more examples, see <a href=\"https://github.com/gobwas/glob\">Glob Library</a>. </p>")
  path: path,
  @ocaml.doc("<p>A prefix that specifies where files will be uploaded in Amazon S3. It is appended to the
         simulation output location to determine the final path. </p>
         <p> For example, if your simulation output location is <code>s3://my-bucket</code> and your
         upload configuration name is <code>robot-test</code>, your files will be uploaded to
            <code>s3://my-bucket/<simid>/<runid>/robot-test</code>. </p>")
  name: name,
}
@ocaml.doc("<p>Information about a tool. Tools are used in a simulation job.</p>")
type tool = {
  @ocaml.doc("<p>Exit behavior determines what happens when your tool quits running. <code>RESTART</code>
         will cause your tool to be restarted. <code>FAIL</code> will cause your job to exit. The
         default is <code>RESTART</code>. </p>")
  exitBehavior: option<exitBehavior>,
  @ocaml.doc("<p>Boolean indicating whether logs will be recorded in CloudWatch for the tool. The default
         is <code>False</code>. </p>")
  streamOutputToCloudWatch: option<boxedBoolean>,
  @ocaml.doc(
    "<p>Command-line arguments for the tool. It must include the tool executable name.</p>"
  )
  command: unrestrictedCommand,
  @ocaml.doc("<p>The name of the tool.</p>") name: name,
  @ocaml.doc("<p>Boolean indicating whether a streaming session will be configured for the tool. If
            <code>True</code>, AWS RoboMaker will configure a connection so you can interact with
         the tool as it is running in the simulation. It must have a graphical user interface. The
         default is <code>False</code>. </p>")
  streamUI: option<boxedBoolean>,
}
@ocaml.doc("<p>Summary information for a template.</p>")
type templateSummary = {
  @ocaml.doc("<p>The version of the template that you're using.</p>")
  version: option<genericString>,
  @ocaml.doc("<p>The name of the template.</p>") name: option<templateName>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the template was last updated.</p>"
  )
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the template was created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the template.</p>") arn: option<arn>,
}
@ocaml.doc("<p>Information about a template location.</p>")
type templateLocation = {
  @ocaml.doc("<p>The list of S3 keys identifying the data source files.</p>") s3Key: s3Key,
  @ocaml.doc("<p>The Amazon S3 bucket name.</p>") s3Bucket: s3Bucket,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnets = array<nonEmptyString>
@ocaml.doc("<p>Information about a source configuration.</p>")
type sourceConfig = {
  @ocaml.doc("<p>The target processor architecture for the application.</p>")
  architecture: option<architecture>,
  @ocaml.doc("<p>The s3 object key.</p>") s3Key: option<s3Key>,
  @ocaml.doc("<p>The Amazon S3 bucket name.</p>") s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Information about a source.</p>")
type source = {
  @ocaml.doc("<p>The taget processor architecture for the application.</p>")
  architecture: option<architecture>,
  @ocaml.doc(
    "<p>A hash of the object specified by <code>s3Bucket</code> and <code>s3Key</code>.</p>"
  )
  etag: option<s3Etag>,
  @ocaml.doc("<p>The s3 object key.</p>") s3Key: option<s3Key>,
  @ocaml.doc("<p>The s3 bucket name.</p>") s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Information about a simulation software suite.</p>")
type simulationSoftwareSuite = {
  @ocaml.doc("<p>The version of the simulation software suite.</p>")
  version: option<simulationSoftwareSuiteVersionType>,
  @ocaml.doc("<p>The name of the simulation software suite.</p>")
  name: option<simulationSoftwareSuiteType>,
}
@ocaml.doc("<p>Information about a simulation job batch.</p>")
type simulationJobBatchSummary = {
  @ocaml.doc("<p>The number of created simulation job requests.</p>")
  createdRequestCount: option<integer_>,
  @ocaml.doc("<p>The number of pending simulation job requests.</p>")
  pendingRequestCount: option<integer_>,
  @ocaml.doc("<p>The number of failed simulation job requests.</p>")
  failedRequestCount: option<integer_>,
  @ocaml.doc("<p>The status of the simulation job batch.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The simulation job batch request is pending.</p>
            </dd>
            <dt>InProgress</dt>
            <dd>
               <p>The simulation job batch is in progress. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The simulation job batch failed. One or more simulation job requests could not
                  be completed due to an internal failure (like <code>InternalServiceError</code>).
                  See <code>failureCode</code> and <code>failureReason</code> for more
                  information.</p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The simulation batch job completed. A batch is complete when (1) there are no
                  pending simulation job requests in the batch and none of the failed simulation job
                  requests are due to <code>InternalServiceError</code> and (2) when all created
                  simulation jobs have reached a terminal state (for example, <code>Completed</code>
                  or <code>Failed</code>). </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The simulation batch job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The simulation batch job is being cancelled.</p>
            </dd>
            <dt>Completing</dt>
            <dd>
               <p>The simulation batch job is completing.</p>
            </dd>
            <dt>TimingOut</dt>
            <dd>
               <p>The simulation job batch is timing out.</p>
               <p>If a batch timing out, and there are pending requests that were failing due to
                  an internal failure (like <code>InternalServiceError</code>), the batch status
                  will be <code>Failed</code>. If there are no such failing request, the batch
                  status will be <code>TimedOut</code>. </p>
            </dd>
            <dt>TimedOut</dt>
            <dd>
               <p>The simulation batch job timed out.</p>
            </dd>
         </dl>")
  status: option<simulationJobBatchStatus>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job batch was
         created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job batch was last
         updated.</p>")
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the batch.</p>") arn: option<arn>,
}
type simulationApplicationNames = array<name>
type securityGroups = array<nonEmptyString>
@ocaml.doc("<p>Information about an S3 object.</p>")
type s3Object = {
  @ocaml.doc("<p>The etag of the object.</p>") etag: option<s3Etag>,
  @ocaml.doc("<p>The key of the object.</p>") key: s3Key,
  @ocaml.doc("<p>The bucket containing the object.</p>") bucket: s3Bucket,
}
type s3KeysOrPrefixes = array<s3KeyOrPrefix>
@ocaml.doc("<p>Information about S3 keys.</p>")
type s3KeyOutput = {
  @ocaml.doc("<p>The etag for the object.</p>") etag: option<s3Etag>,
  @ocaml.doc("<p>The S3 key.</p>") s3Key: option<s3KeyOrPrefix>,
}
type s3Etags = array<s3Etag>
@ocaml.doc("<p>Information about a robot software suite (ROS distribution).</p>")
type robotSoftwareSuite = {
  @ocaml.doc("<p>The version of the robot software suite (ROS distribution).</p>")
  version: option<robotSoftwareSuiteVersionType>,
  @ocaml.doc("<p>The name of the robot software suite (ROS distribution).</p>")
  name: option<robotSoftwareSuiteType>,
}
type robotApplicationNames = array<name>
@ocaml.doc("<p>Information about a robot.</p>")
type robot = {
  @ocaml.doc("<p>The time of the last deployment.</p>") lastDeploymentTime: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the last deployment job.</p>")
  lastDeploymentJob: option<arn>,
  @ocaml.doc("<p>The architecture of the robot.</p>") architecture: option<architecture>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot was created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The Greengrass group associated with the robot.</p>")
  greenGrassGroupId: option<id>,
  @ocaml.doc("<p>The status of the robot.</p>") status: option<robotStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleetArn: option<arn>,
  @ocaml.doc("<p>The name of the robot.</p>") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") arn: option<arn>,
}
@ocaml.doc("<p>Information about a rendering engine.</p>")
type renderingEngine = {
  @ocaml.doc("<p>The version of the rendering engine.</p>")
  version: option<renderingEngineVersionType>,
  @ocaml.doc("<p>The name of the rendering engine.</p>") name: option<renderingEngineType>,
}
@ocaml.doc("<p>Information about the progress of a deployment job.</p>")
type progressDetail = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployment job.</p>")
  targetResource: option<genericString>,
  @ocaml.doc("<p>Estimated amount of time in seconds remaining in the step. This currently only applies
         to the <code>Downloading/Extracting</code> step of the deployment. It is empty for other
         steps.</p>")
  estimatedTimeRemainingSeconds: option<genericInteger>,
  @ocaml.doc("<p>Precentage of the step that is done. This currently only applies to the
            <code>Downloading/Extracting</code> step of the deployment. It is empty for other
         steps.</p>")
  percentDone: option<percentDone>,
  @ocaml.doc("<p>The current progress status.</p>
         <dl>
            <dt>Validating</dt>
            <dd>
               <p>Validating the deployment.</p>
            </dd>
            <dt>DownloadingExtracting</dt>
            <dd>
               <p>Downloading and extracting the bundle on the robot.</p>
            </dd>
            <dt>ExecutingPreLaunch</dt>
            <dd>
               <p>Executing pre-launch script(s) if provided.</p>
            </dd>
            <dt>Launching</dt>
            <dd>
               <p>Launching the robot application.</p>
            </dd>
            <dt>ExecutingPostLaunch</dt>
            <dd>
               <p>Executing post-launch script(s) if provided.</p>
            </dd>
            <dt>Finished</dt>
            <dd>
               <p>Deployment is complete.</p>
            </dd>
         </dl>")
  currentProgress: option<robotDeploymentStep>,
}
@ocaml.doc("<p>An object representing a port mapping.</p>")
type portMapping = {
  @ocaml.doc("<p>A Boolean indicating whether to enable this port mapping on public IP.</p>")
  enableOnPublicIp: option<boolean_>,
  @ocaml.doc("<p>The port number on the application.</p>") applicationPort: nonSystemPort,
  @ocaml.doc("<p>The port number on the simulation job instance to use as a remote connection point.
         </p>")
  jobPort: port,
}
@ocaml.doc("<p>The output location.</p>")
type outputLocation = {
  @ocaml.doc("<p>The S3 folder in the <code>s3Bucket</code> where output files will be placed.</p>")
  s3Prefix: option<s3Key>,
  @ocaml.doc("<p>The S3 bucket for output.</p>") s3Bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Describes a network interface.</p>")
type networkInterface = {
  @ocaml.doc("<p>The IPv4 public address of the network interface.</p>")
  publicIpAddress: option<genericString>,
  @ocaml.doc("<p>The IPv4 address of the network interface within the subnet.</p>")
  privateIpAddress: option<genericString>,
  @ocaml.doc("<p>The ID of the network interface.</p>") networkInterfaceId: option<genericString>,
}
@ocaml.doc("<p>The logging configuration.</p>")
type loggingConfig = {
  @ocaml.doc("<p>A boolean indicating whether to record all ROS topics.</p>
         <important>
            <p>This API is no longer supported and will throw an error if used.</p>
         </important>")
  recordAllRosTopics: option<boxedBoolean>,
}
@ocaml.doc("<p>Information about a fleet.</p>")
type fleet = {
  @ocaml.doc("<p>The time of the last deployment.</p>") lastDeploymentTime: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the last deployment job.</p>")
  lastDeploymentJob: option<arn>,
  @ocaml.doc("<p>The status of the last fleet deployment.</p>")
  lastDeploymentStatus: option<deploymentStatus>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the fleet was created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") arn: option<arn>,
  @ocaml.doc("<p>The name of the fleet.</p>") name: option<name>,
}
type filterValues = array<name>
type environmentVariableMap = Js.Dict.t<environmentVariableValue>
@ocaml.doc("<p>The object that contains the Docker image URI for either your robot or simulation
         applications.</p>")
type environment = {
  @ocaml.doc("<p>The Docker image URI for either your robot or simulation applications.</p>")
  uri: option<repositoryUrl>,
}
type dataSourceNames = array<name>
@ocaml.doc("<p>Compute information for the simulation job</p>")
type computeResponse = {
  @ocaml.doc("<p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs
         allocated to the SimulationJob.</p>")
  gpuUnitLimit: option<gpuunit>,
  @ocaml.doc("<p>Compute type response information for the simulation job.</p>")
  computeType: option<computeType>,
  @ocaml.doc("<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to
         the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are
         only billed for the SU utilization you consume up to the maximum value provided. The
         default is 15. </p>")
  simulationUnitLimit: option<simulationUnit>,
}
@ocaml.doc("<p>Compute information for the simulation job.</p>")
type compute = {
  @ocaml.doc("<p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs
        allocated to the SimulationJob.</p>")
  gpuUnitLimit: option<gpuunit>,
  @ocaml.doc("<p>Compute type information for the simulation job.</p>")
  computeType: option<computeType>,
  @ocaml.doc("<p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to
         the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are
        only billed for the SU utilization you consume up to the maximum value provided. The
         default is 15. </p>")
  simulationUnitLimit: option<simulationUnit>,
}
type commandList = array<nonEmptyString>
@ocaml.doc("<p>Information about the batch policy.</p>")
type batchPolicy = {
  @ocaml.doc("<p>The number of active simulation jobs create as part of the batch that can be in an
         active state at the same time. </p>
         <p>Active states include: <code>Pending</code>,<code>Preparing</code>,
         <code>Running</code>, <code>Restarting</code>, <code>RunningFailed</code> and
            <code>Terminating</code>. All other states are terminal states. </p>")
  maxConcurrency: option<maxConcurrency>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for the batch to complete.
         
      </p>
         <p>If a batch times out, and there are pending requests that were failing due to an
         internal failure (like <code>InternalServiceError</code>), they will be moved to the failed
         list and the batch status will be <code>Failed</code>. If the pending requests were failing
         for any other reason, the failed pending requests will be moved to the failed list and the
         batch status will be <code>TimedOut</code>. </p>")
  timeoutInSeconds: option<batchTimeoutInSeconds>,
}
type arns = array<arn>
type worldSummaries = array<worldSummary>
@ocaml.doc("<p>Information about a world generator job.</p>")
type worldGenerationJobSummary = {
  @ocaml.doc("<p>The number of worlds that failed.</p>") failedWorldCount: option<integer_>,
  @ocaml.doc("<p>The number of worlds that were generated.</p>")
  succeededWorldCount: option<integer_>,
  @ocaml.doc("<p>Information about the world count.</p>") worldCount: option<worldCount>,
  @ocaml.doc("<p>The status of the world generator job:</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world generator job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world generator job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world generator job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world generator job failed. See <code>failureCode</code> for more
                  information. </p>
            </dd>
            <dt>PartialFailed</dt>
            <dd>
               <p>Some worlds did not generate.</p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world generator job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world generator job is being cancelled.</p>
            </dd>
         </dl>")
  status: option<worldGenerationJobStatus>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world generator job was
         created.</p>")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>") template: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world generator job.</p>") arn: option<arn>,
}
type worldFailures = array<worldFailure>
@ocaml.doc("<p>Information about a world export job.</p>")
type worldExportJobSummary = {
  outputLocation: option<outputLocation>,
  @ocaml.doc("<p>A list of worlds.</p>") worlds: option<arns>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
  )
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The status of the world export job.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world export job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world export job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world export job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world export job failed. See <code>failureCode</code> for more information.
               </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world export job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world export job is being cancelled.</p>
            </dd>
         </dl>")
  status: option<worldExportJobStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world export job.</p>") arn: option<arn>,
}
type worldConfigs = array<worldConfig>
@ocaml.doc("<p>VPC configuration associated with your simulation job.</p>")
type vpcconfigResponse = {
  @ocaml.doc("<p>A boolean indicating if a public IP was assigned.</p>")
  assignPublicIp: option<boolean_>,
  @ocaml.doc("<p>The VPC ID associated with your simulation job.</p>") vpcId: option<genericString>,
  @ocaml.doc("<p>A list of security group IDs associated with the simulation job.</p>")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>A list of subnet IDs associated with the simulation job.</p>")
  subnets: option<subnets>,
}
@ocaml.doc("<p>If your simulation job accesses resources in a VPC, you provide this parameter
         identifying the list of security group IDs and subnet IDs. These must belong to the same
         VPC. You must provide at least one security group and two subnet IDs.</p>")
type vpcconfig = {
  @ocaml.doc("<p>A boolean indicating whether to assign a public IP address.</p>")
  assignPublicIp: option<boolean_>,
  @ocaml.doc("<p>A list of one or more security groups IDs in your VPC.</p>")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>A list of one or more subnet IDs in your VPC.</p>") subnets: subnets,
}
type uploadConfigurations = array<uploadConfiguration>
type tools = array<tool>
type templateSummaries = array<templateSummary>
type sources = array<source>
type sourceConfigs = array<sourceConfig>
@ocaml.doc("<p>Summary information for a simulation job.</p>")
type simulationJobSummary = {
  @ocaml.doc("<p>The compute type for the simulation job summary.</p>")
  computeType: option<computeType>,
  @ocaml.doc("<p>The names of the data sources.</p>") dataSourceNames: option<dataSourceNames>,
  @ocaml.doc("<p>A list of simulation job robot application names.</p>")
  robotApplicationNames: option<robotApplicationNames>,
  @ocaml.doc("<p>A list of simulation job simulation application names.</p>")
  simulationApplicationNames: option<simulationApplicationNames>,
  @ocaml.doc("<p>The status of the simulation job.</p>") status: option<simulationJobStatus>,
  @ocaml.doc("<p>The name of the simulation job.</p>") name: option<name>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         updated.</p>")
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job.</p>") arn: option<arn>,
}
type simulationJobBatchSummaries = array<simulationJobBatchSummary>
@ocaml.doc("<p>Summary information for a simulation application.</p>")
type simulationApplicationSummary = {
  @ocaml.doc("<p>Information about a simulation software suite.</p>")
  simulationSoftwareSuite: option<simulationSoftwareSuite>,
  @ocaml.doc("<p>Information about a robot software suite (ROS distribution).</p>")
  robotSoftwareSuite: option<robotSoftwareSuite>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation application was last
         updated.</p>")
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The version of the simulation application.</p>") version: option<version>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation application.</p>")
  arn: option<arn>,
  @ocaml.doc("<p>The name of the simulation application.</p>") name: option<name>,
}
type s3KeyOutputs = array<s3KeyOutput>
type robots = array<robot>
@ocaml.doc("<p>Information about a robot deployment.</p>")
type robotDeployment = {
  @ocaml.doc("<p>The robot deployment failure code.</p>")
  failureCode: option<deploymentJobErrorCode>,
  @ocaml.doc("<p>A short description of the reason why the robot deployment failed.</p>")
  failureReason: option<genericString>,
  @ocaml.doc("<p>Information about how the deployment is progressing.</p>")
  progressDetail: option<progressDetail>,
  @ocaml.doc("<p>The status of the robot deployment.</p>") status: option<robotStatus>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the deployment finished.</p>")
  deploymentFinishTime: option<createdAt>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the deployment was started.</p>")
  deploymentStartTime: option<createdAt>,
  @ocaml.doc("<p>The robot deployment Amazon Resource Name (ARN).</p>") arn: option<arn>,
}
@ocaml.doc("<p>Summary information for a robot application.</p>")
type robotApplicationSummary = {
  @ocaml.doc("<p>Information about a robot software suite (ROS distribution).</p>")
  robotSoftwareSuite: option<robotSoftwareSuite>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot application was last
         updated.</p>")
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") arn: option<arn>,
  @ocaml.doc("<p>The name of the robot application.</p>") name: option<name>,
}
type portMappingList = array<portMapping>
type fleets = array<fleet>
@ocaml.doc("<p>Information about a filter.</p>")
type filter = {
  @ocaml.doc("<p>A list of values.</p>") values: option<filterValues>,
  @ocaml.doc("<p>The name of the filter.</p>") name: option<name>,
}
@ocaml.doc("<p>Configuration information for a deployment launch.</p>")
type deploymentLaunchConfig = {
  @ocaml.doc("<p>An array of key/value pairs specifying environment variables for the robot
         application</p>")
  environmentVariables: option<environmentVariableMap>,
  @ocaml.doc("<p>The deployment post-launch file. This file will be executed after the launch
         file.</p>")
  postLaunchFile: option<path>,
  @ocaml.doc("<p>The launch file name.</p>") launchFile: command,
  @ocaml.doc("<p>The deployment pre-launch file. This file will be executed prior to the launch
         file.</p>")
  preLaunchFile: option<path>,
  @ocaml.doc("<p>The package name.</p>") packageName: command,
}
@ocaml.doc("<p>Information about a deployment configuration.</p>")
type deploymentConfig = {
  @ocaml.doc("<p>The download condition file.</p>") downloadConditionFile: option<s3Object>,
  @ocaml.doc("<p>The amount of time, in seconds, to wait for deployment to a single robot to complete.
         Choose a time between 1 minute and 7 days. The default is 5 hours.</p>")
  robotDeploymentTimeoutInSeconds: option<deploymentTimeout>,
  @ocaml.doc("<p>The percentage of deployments that need to fail before stopping deployment.</p>")
  failureThresholdPercentage: option<percentage>,
  @ocaml.doc("<p>The percentage of robots receiving the deployment at the same time.</p>")
  concurrentDeploymentPercentage: option<percentage>,
}
@ocaml.doc("<p>Information about a data source.</p>")
type dataSourceConfig = {
  @ocaml.doc("<p>The location where your files are mounted in the container image.</p>
         <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,
         you must provide an Amazon S3 object key to your archive. The object key must point to
         either a <code>.zip</code> or <code>.tar.gz</code> file.</p>
         <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,
         you provide the Amazon S3 prefix that points to the files that you are using for your data
         source.</p>
         <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you
         provide the Amazon S3 path to the file that you're using as your data source.</p>")
  destination: option<path>,
  @ocaml.doc("<p>The data type for the data source that you're using for your container image or
         simulation job. You can use this field to specify whether your data source is an Archive,
         an Amazon S3 prefix, or a file.</p>
         <p>If you don't specify a field, the default value is <code>File</code>.</p>")
  @as("type")
  type_: option<dataSourceType>,
  @ocaml.doc("<p>The list of S3 keys identifying the data source files.</p>")
  s3Keys: s3KeysOrPrefixes,
  @ocaml.doc("<p>The S3 bucket where the data files are located.</p>") s3Bucket: s3Bucket,
  @ocaml.doc("<p>The name of the data source.</p>") name: name,
}
type worldGenerationJobSummaries = array<worldGenerationJobSummary>
type worldExportJobSummaries = array<worldExportJobSummary>
type simulationJobSummaries = array<simulationJobSummary>
type simulationApplicationSummaries = array<simulationApplicationSummary>
type robotDeploymentSummary = array<robotDeployment>
type robotApplicationSummaries = array<robotApplicationSummary>
@ocaml.doc("<p>Configuration information for port forwarding.</p>")
type portForwardingConfig = {
  @ocaml.doc("<p>The port mappings for the configuration.</p>")
  portMappings: option<portMappingList>,
}
type filters = array<filter>
@ocaml.doc("<p>Information about worlds that failed.</p>")
type failureSummary = {
  @ocaml.doc("<p>The worlds that failed.</p>") failures: option<worldFailures>,
  @ocaml.doc("<p>The total number of failures.</p>") totalFailureCount: option<integer_>,
}
@ocaml.doc("<p>Information about a deployment application configuration.</p>")
type deploymentApplicationConfig = {
  @ocaml.doc("<p>The launch configuration.</p>") launchConfig: deploymentLaunchConfig,
  @ocaml.doc("<p>The version of the application.</p>") applicationVersion: deploymentVersion,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot application.</p>") application: arn,
}
type dataSourceConfigs = array<dataSourceConfig>
@ocaml.doc("<p>Information about a data source.</p>")
type dataSource = {
  @ocaml.doc("<p>The location where your files are mounted in the container image.</p>
         <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,
         you must provide an Amazon S3 object key to your archive. The object key must point to
         either a <code>.zip</code> or <code>.tar.gz</code> file.</p>
         <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,
         you provide the Amazon S3 prefix that points to the files that you are using for your data
         source.</p>
         <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you
         provide the Amazon S3 path to the file that you're using as your data source.</p>")
  destination: option<path>,
  @ocaml.doc("<p>The data type for the data source that you're using for your container image or
         simulation job. You can use this field to specify whether your data source is an Archive,
         an Amazon S3 prefix, or a file.</p>
         <p>If you don't specify a field, the default value is <code>File</code>.</p>")
  @as("type")
  type_: option<dataSourceType>,
  @ocaml.doc("<p>The list of S3 keys identifying the data source files.</p>")
  s3Keys: option<s3KeyOutputs>,
  @ocaml.doc("<p>The S3 bucket where the data files are located.</p>") s3Bucket: option<s3Bucket>,
  @ocaml.doc("<p>The name of the data source.</p>") name: option<name>,
}
@ocaml.doc("<p>Information about a launch configuration.</p>")
type launchConfig = {
  @ocaml.doc("<p>If you've specified <code>General</code> as the value for your <code>RobotSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>
         <p>If you've specified <code>SimulationRuntime</code> as the value for your <code>SimulationSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>")
  command: option<commandList>,
  @ocaml.doc("<p>Boolean indicating whether a streaming session will be configured for the application.
         If <code>True</code>, AWS RoboMaker will configure a connection so you can interact with
         your application as it is running in the simulation. You must configure and launch the
         component. It must have a graphical user interface. </p>")
  streamUI: option<boolean_>,
  @ocaml.doc("<p>The port forwarding configuration.</p>")
  portForwardingConfig: option<portForwardingConfig>,
  @ocaml.doc("<p>The environment variables for the application launch.</p>")
  environmentVariables: option<environmentVariableMap>,
  @ocaml.doc("<p>The launch file name.</p>") launchFile: option<command>,
  @ocaml.doc("<p>The package name.</p>") packageName: option<command>,
}
@ocaml.doc("<p>Information about worlds that finished.</p>")
type finishedWorldsSummary = {
  @ocaml.doc("<p>Information about worlds that failed.</p>") failureSummary: option<failureSummary>,
  @ocaml.doc("<p>A list of worlds that succeeded.</p>") succeededWorlds: option<arns>,
  @ocaml.doc("<p>The total number of finished worlds.</p>") finishedCount: option<integer_>,
}
type deploymentApplicationConfigs = array<deploymentApplicationConfig>
type dataSources = array<dataSource>
@ocaml.doc("<p>Information about a simulation application configuration.</p>")
type simulationApplicationConfig = {
  @ocaml.doc("<p>A Boolean indicating whether to use default simulation application tools. The default
         tools are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>
         <important>
            <p>This API is no longer supported and will throw an error if used.</p>
         </important>")
  useDefaultTools: option<boxedBoolean>,
  @ocaml.doc("<p>Information about tools configured for the simulation application.</p>")
  tools: option<tools>,
  @ocaml.doc("<p>A Boolean indicating whether to use default upload configurations. By default,
            <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application
         terminates and all ROS topics will be recorded.</p>
         <p>If you set this value, you must specify an <code>outputLocation</code>.</p>
         <important>
            <p>This API is no longer supported and will throw an error if used.</p>
         </important>")
  useDefaultUploadConfigurations: option<boxedBoolean>,
  @ocaml.doc("<p>A list of world configurations.</p>") worldConfigs: option<worldConfigs>,
  @ocaml.doc("<p>Information about upload configurations for the simulation application.</p>")
  uploadConfigurations: option<uploadConfigurations>,
  @ocaml.doc("<p>The launch configuration for the simulation application.</p>")
  launchConfig: launchConfig,
  @ocaml.doc("<p>The version of the simulation application.</p>")
  applicationVersion: option<version>,
  @ocaml.doc("<p>The application information for the simulation application.</p>") application: arn,
}
@ocaml.doc("<p>Application configuration information for a robot.</p>")
type robotApplicationConfig = {
  @ocaml.doc("<p>A Boolean indicating whether to use default robot application tools. The default tools
         are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>
         <important>
            <p>This API is no longer supported and will throw an error if used.</p>
         </important>")
  useDefaultTools: option<boxedBoolean>,
  @ocaml.doc("<p>Information about tools configured for the robot application.</p>")
  tools: option<tools>,
  @ocaml.doc("<p>A Boolean indicating whether to use default upload configurations. By default,
            <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application
         terminates and all ROS topics will be recorded.</p>
         <p>If you set this value, you must specify an <code>outputLocation</code>.</p>
         <important>
            <p>This API is no longer supported and will throw an error if used.</p>
         </important>")
  useDefaultUploadConfigurations: option<boxedBoolean>,
  @ocaml.doc("<p>The upload configurations for the robot application.</p>")
  uploadConfigurations: option<uploadConfigurations>,
  @ocaml.doc("<p>The launch configuration for the robot application.</p>")
  launchConfig: launchConfig,
  @ocaml.doc("<p>The version of the robot application.</p>") applicationVersion: option<version>,
  @ocaml.doc("<p>The application information for the robot application.</p>") application: arn,
}
@ocaml.doc("<p>Information about a deployment job.</p>")
type deploymentJob = {
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"
  )
  createdAt: option<createdAt>,
  @ocaml.doc("<p>The deployment job failure code.</p>") failureCode: option<deploymentJobErrorCode>,
  @ocaml.doc("<p>A short description of the reason why the deployment job failed.</p>")
  failureReason: option<genericString>,
  @ocaml.doc("<p>The deployment configuration.</p>") deploymentConfig: option<deploymentConfig>,
  @ocaml.doc("<p>The deployment application configuration.</p>")
  deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
  @ocaml.doc("<p>The status of the deployment job.</p>") status: option<deploymentStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployment job.</p>") arn: option<arn>,
}
type simulationApplicationConfigs = array<simulationApplicationConfig>
type robotApplicationConfigs = array<robotApplicationConfig>
type deploymentJobs = array<deploymentJob>
@ocaml.doc("<p>Information about a simulation job request.</p>")
type simulationJobRequest = {
  @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the simulation job
         request.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>Compute information for the simulation job</p>") compute: option<compute>,
  vpcConfig: option<vpcconfig>,
  @ocaml.doc("<p>Specify data sources to mount read-only files from S3 into your simulation. These files
         are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
         <note>
            <p>There is a limit of 100 files and a combined size of 25GB for all
               <code>DataSourceConfig</code> objects. </p>
         </note>")
  dataSources: option<dataSourceConfigs>,
  @ocaml.doc("<p>The simulation applications to use in the simulation job.</p>")
  simulationApplications: option<simulationApplicationConfigs>,
  @ocaml.doc("<p>The robot applications to use in the simulation job.</p>")
  robotApplications: option<robotApplicationConfigs>,
  @ocaml.doc("<p>A Boolean indicating whether to use default applications in the simulation job. Default
         applications include Gazebo, rqt, rviz and terminal access. </p>")
  useDefaultApplications: option<boxedBoolean>,
  @ocaml.doc("<p>The failure behavior the simulation job.</p>
         <dl>
            <dt>Continue</dt>
            <dd>
               <p>Leaves the host running for its maximum timeout duration after a
                     <code>4XX</code> error code.</p>
            </dd>
            <dt>Fail</dt>
            <dd>
               <p>Stop the simulation job and terminate the instance.</p>
            </dd>
         </dl>")
  failureBehavior: option<failureBehavior>,
  @ocaml.doc("<p>The IAM role name that allows the simulation instance to call the AWS APIs that are
         specified in its associated policies on your behalf. This is how credentials are passed in
         to your simulation job. </p>")
  iamRole: option<iamRole>,
  @ocaml.doc("<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200
         seconds) or less.</p>")
  maxJobDurationInSeconds: jobDuration,
  loggingConfig: option<loggingConfig>,
  outputLocation: option<outputLocation>,
}
@ocaml.doc("<p>Information about a simulation job.</p>")
type simulationJob = {
  @ocaml.doc("<p>Compute information for the simulation job</p>") compute: option<computeResponse>,
  @ocaml.doc("<p>Information about a network interface.</p>")
  networkInterface: option<networkInterface>,
  @ocaml.doc("<p>VPC configuration information.</p>") vpcConfig: option<vpcconfigResponse>,
  @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the simulation
         job.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The data sources for the simulation job.</p>") dataSources: option<dataSources>,
  @ocaml.doc("<p>A list of simulation applications.</p>")
  simulationApplications: option<simulationApplicationConfigs>,
  @ocaml.doc("<p>A list of robot applications.</p>")
  robotApplications: option<robotApplicationConfigs>,
  @ocaml.doc("<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified
         in its associated policies on your behalf. This is how credentials are passed in to your
         simulation job. </p>")
  iamRole: option<iamRole>,
  @ocaml.doc("<p>The simulation job execution duration in milliseconds.</p>")
  simulationTimeMillis: option<simulationTimeMillis>,
  @ocaml.doc("<p>The maximum simulation job duration in seconds. The value must be 8 days (691,200
         seconds) or less.</p>")
  maxJobDurationInSeconds: option<jobDuration>,
  @ocaml.doc("<p>The logging configuration.</p>") loggingConfig: option<loggingConfig>,
  @ocaml.doc("<p>Location for output files generated by the simulation job.</p>")
  outputLocation: option<outputLocation>,
  @ocaml.doc("<p>A unique identifier for this <code>SimulationJob</code> request.</p>")
  clientRequestToken: option<clientRequestToken>,
  @ocaml.doc("<p>The reason why the simulation job failed.</p>")
  failureReason: option<genericString>,
  @ocaml.doc("<p>The failure code of the simulation job if it failed.</p>")
  failureCode: option<simulationJobErrorCode>,
  @ocaml.doc("<p>The failure behavior the simulation job.</p>
         <dl>
            <dt>Continue</dt>
            <dd>
               <p>Leaves the host running for its maximum timeout duration after a
                     <code>4XX</code> error code.</p>
            </dd>
            <dt>Fail</dt>
            <dd>
               <p>Stop the simulation job and terminate the instance.</p>
            </dd>
         </dl>")
  failureBehavior: option<failureBehavior>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         updated.</p>")
  lastUpdatedAt: option<lastUpdatedAt>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         started.</p>")
  lastStartedAt: option<lastStartedAt>,
  @ocaml.doc("<p>Status of the simulation job.</p>") status: option<simulationJobStatus>,
  @ocaml.doc("<p>The name of the simulation job.</p>") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job.</p>") arn: option<arn>,
}
type simulationJobs = array<simulationJob>
@ocaml.doc("<p>Information about a failed create simulation job request.</p>")
type failedCreateSimulationJobRequest = {
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the simulation job batch failed.</p>"
  )
  failedAt: option<failedAt>,
  @ocaml.doc("<p>The failure code.</p>") failureCode: option<simulationJobErrorCode>,
  @ocaml.doc("<p>The failure reason of the simulation job request.</p>")
  failureReason: option<genericString>,
  @ocaml.doc("<p>The simulation job request.</p>") request: option<simulationJobRequest>,
}
type createSimulationJobRequests = array<simulationJobRequest>
type failedCreateSimulationJobRequests = array<failedCreateSimulationJobRequest>
@ocaml.doc("<p>This section provides documentation for the AWS RoboMaker API operations.</p>")
module RestartSimulationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job.</p>") job: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "RestartSimulationJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterRobot = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") robot: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about the robot registration.</p>") robot: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet that the robot will join.</p>")
    fleet: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "RegisterRobotCommand"
  let make = (~robot, ~fleet, ()) => new({robot, fleet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorldTemplateBody = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world generator job.</p>")
    generationJob: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>")
    template: option<arn>,
  }
  type response = {@ocaml.doc("<p>The world template body.</p>") templateBody: option<json>}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "GetWorldTemplateBodyCommand"
  let make = (~generationJob=?, ~template=?, ()) => new({generationJob, template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeregisterRobot = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") robot: arn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: arn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") robot: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeregisterRobotCommand"
  let make = (~robot, ~fleet, ()) => new({robot, fleet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteWorldTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template you want to delete.</p>")
    template: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteWorldTemplateCommand"
  let make = (~template, ()) => new({template: template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSimulationApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the simulation application to delete.</p>")
    applicationVersion: option<version>,
    @ocaml.doc("<p>The application information for the simulation application to delete.</p>")
    application: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteSimulationApplicationCommand"
  let make = (~application, ~applicationVersion=?, ()) => new({applicationVersion, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRobotApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the robot application to delete.</p>")
    applicationVersion: option<version>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the the robot application.</p>")
    application: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DeleteRobotApplicationCommand"
  let make = (~application, ~applicationVersion=?, ()) => new({applicationVersion, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRobot = {
  type t
  type request = {@ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") robot: arn}
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeleteRobotCommand"
  let make = (~robot, ()) => new({robot: robot})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFleet = {
  type t
  type request = {@ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: arn}
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DeleteFleetCommand"
  let make = (~fleet, ()) => new({fleet: fleet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelWorldGenerationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>")
    job: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelWorldGenerationJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelWorldExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world export job to cancel.</p>") job: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelWorldExportJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelSimulationJobBatch = {
  type t
  type request = {@ocaml.doc("<p>The id of the batch to cancel.</p>") batch: arn}
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelSimulationJobBatchCommand"
  let make = (~batch, ()) => new({batch: batch})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelSimulationJob = {
  type t
  type request = {@ocaml.doc("<p>The simulation job ARN to cancel.</p>") job: arn}
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelSimulationJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CancelDeploymentJob = {
  type t
  type request = {@ocaml.doc("<p>The deployment job ARN to cancel.</p>") job: arn}
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CancelDeploymentJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateWorldTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The location of the world template.</p>")
    templateLocation: option<templateLocation>,
    @ocaml.doc("<p>The world template body.</p>") templateBody: option<json>,
    @ocaml.doc("<p>The name of the template.</p>") name: option<templateName>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template to update.</p>")
    template: arn,
  }
  type response = {
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world template was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The name of the world template.</p>") name: option<templateName>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateWorldTemplateCommand"
  let make = (~template, ~templateLocation=?, ~templateBody=?, ~name=?, ()) =>
    new({templateLocation, templateBody, name, template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that will be unattached from the
         resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing
         tags.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A map that contains tag keys and tag values that are attached to the resource.</p>"
    )
    tags: tagMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the specified resource.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeWorldTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template you want to describe.</p>")
    template: arn,
  }
  type response = {
    @ocaml.doc("<p>The version of the world template that you're using.</p>")
    version: option<genericString>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world
         template.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world template was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The name of the world template.</p>") name: option<templateName>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world template.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldTemplateCommand"
  let make = (~template, ()) => new({template: template})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeWorldExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world export job to describe.</p>")
    job: arn,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world export
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
         the export.</p>")
    iamRole: option<iamRole>,
    outputLocation: option<outputLocation>,
    @ocaml.doc(
      "<p>A list of Amazon Resource Names (arns) that correspond to worlds to be exported.</p>"
    )
    worlds: option<arns>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The reason why the world export job failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The failure code of the world export job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>LimitExceeded</dt>
            <dd>
               <p>The requested resource exceeds the maximum number allowed, or the number of
                  concurrent stream requests exceeds the maximum number allowed. </p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>The specified resource could not be found. </p>
            </dd>
            <dt>RequestThrottled</dt>
            <dd>
               <p>The request was throttled.</p>
            </dd>
            <dt>InvalidInput</dt>
            <dd>
               <p>An input parameter in the request is not valid.</p>
            </dd>
         </dl>")
    failureCode: option<worldExportJobErrorCode>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The status of the world export job.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world export job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world export job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world export job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world export job failed. See <code>failureCode</code> and
                     <code>failureReason</code> for more information. </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world export job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world export job is being cancelled.</p>
            </dd>
         </dl>")
    status: option<worldExportJobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world export job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldExportJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeWorld = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world you want to describe.</p>")
    world: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns the JSON formatted string that describes the contents of your world.</p>"
    )
    worldDescriptionBody: option<json>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The world template.</p>") template: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world generation job that generated the
         world.</p>")
    generationJob: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeWorldCommand"
  let make = (~world, ()) => new({world: world})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRobot = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot to be described.</p>") robot: arn,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the specified robot.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The time of the last deployment job.</p>") lastDeploymentTime: option<createdAt>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the last deployment job.</p>")
    lastDeploymentJob: option<arn>,
    @ocaml.doc("<p>The target architecture of the robot application.</p>")
    architecture: option<architecture>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The Greengrass group id.</p>") greengrassGroupId: option<id>,
    @ocaml.doc("<p>The status of the fleet.</p>") status: option<robotStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleetArn: option<arn>,
    @ocaml.doc("<p>The name of the robot.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeRobotCommand"
  let make = (~robot, ()) => new({robot: robot})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateWorldTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world
         template.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The location of the world template.</p>")
    templateLocation: option<templateLocation>,
    @ocaml.doc("<p>The world template body.</p>") templateBody: option<json>,
    @ocaml.doc("<p>The name of the world template.</p>") name: option<templateName>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world
         template.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The name of the world template.</p>") name: option<templateName>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the world template was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world template.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldTemplateCommand"
  let make = (~tags=?, ~templateLocation=?, ~templateBody=?, ~name=?, ~clientRequestToken=?, ()) =>
    new({tags, templateLocation, templateBody, name, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateWorldGenerationJob = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the generated
         worlds.</p>")
    worldTags: option<tagMap>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world generator
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Information about the world count.</p>") worldCount: worldCount,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template describing the worlds you want to
         create.</p>")
    template: arn,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the generated
         worlds.</p>")
    worldTags: option<tagMap>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world generator
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Information about the world count. </p>") worldCount: option<worldCount>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>")
    template: option<arn>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The failure code of the world generator job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>LimitExceeded</dt>
            <dd>
               <p>The requested resource exceeds the maximum number allowed, or the number of
                  concurrent stream requests exceeds the maximum number allowed. </p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>The specified resource could not be found. </p>
            </dd>
            <dt>RequestThrottled</dt>
            <dd>
               <p>The request was throttled.</p>
            </dd>
            <dt>InvalidInput</dt>
            <dd>
               <p>An input parameter in the request is not valid.</p>
            </dd>
         </dl>")
    failureCode: option<worldGenerationJobErrorCode>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world generator job was
         created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The status of the world generator job.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world generator job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world generator job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world generator job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world generator job failed. See <code>failureCode</code> for more
                  information. </p>
            </dd>
            <dt>PartialFailed</dt>
            <dd>
               <p>Some worlds did not generate.</p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world generator job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world generator job is being cancelled.</p>
            </dd>
         </dl>")
    status: option<worldGenerationJobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world generator job.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldGenerationJobCommand"
  let make = (~worldCount, ~template, ~worldTags=?, ~tags=?, ~clientRequestToken=?, ()) =>
    new({worldTags, tags, worldCount, template, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateWorldExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world export
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
         the export.</p>")
    iamRole: iamRole,
    outputLocation: outputLocation,
    @ocaml.doc("<p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>")
    worlds: arns,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world export
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
         the export. </p>")
    iamRole: option<iamRole>,
    outputLocation: option<outputLocation>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The failure code of the world export job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>LimitExceeded</dt>
            <dd>
               <p>The requested resource exceeds the maximum number allowed, or the number of
                  concurrent stream requests exceeds the maximum number allowed. </p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>The specified resource could not be found. </p>
            </dd>
            <dt>RequestThrottled</dt>
            <dd>
               <p>The request was throttled.</p>
            </dd>
            <dt>InvalidInput</dt>
            <dd>
               <p>An input parameter in the request is not valid.</p>
            </dd>
            <dt>AllWorldGenerationFailed</dt>
            <dd>
               <p>All of the worlds in the world generation job failed. This can happen if your
                     <code>worldCount</code> is greater than 50 or less than 1. </p>
            </dd>
         </dl>
         <p>For more information about troubleshooting WorldForge, see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting-worldforge.html\">Troubleshooting Simulation WorldForge</a>. </p>")
    failureCode: option<worldExportJobErrorCode>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the world export job was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The status of the world export job.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world export job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world export job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world export job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world export job failed. See <code>failureCode</code> for more information.
               </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world export job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world export job is being cancelled.</p>
            </dd>
         </dl>")
    status: option<worldExportJobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world export job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateWorldExportJobCommand"
  let make = (~iamRole, ~outputLocation, ~worlds, ~tags=?, ~clientRequestToken=?, ()) =>
    new({tags, iamRole, outputLocation, worlds, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRobot = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the robot.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The Greengrass group id.</p>") greengrassGroupId: id,
    @ocaml.doc("<p>The target architecture of the robot.</p>") architecture: architecture,
    @ocaml.doc("<p>The name for the robot.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the robot.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The target architecture of the robot.</p>") architecture: option<architecture>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Greengrass group associated with the robot.</p>"
    )
    greengrassGroupId: option<id>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The name of the robot.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "CreateRobotCommand"
  let make = (~greengrassGroupId, ~architecture, ~name, ~tags=?, ()) =>
    new({tags, greengrassGroupId, architecture, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFleet = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the fleet.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The name of the fleet.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the fleet.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the fleet was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The name of the fleet.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "CreateFleetCommand"
  let make = (~name, ~tags=?, ()) => new({tags, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteWorlds = {
  type t
  type request = {
    @ocaml.doc("<p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>")
    worlds: arns,
  }
  type response = {
    @ocaml.doc("<p>A list of unprocessed worlds associated with the call. These worlds were not
         deleted.</p>")
    unprocessedWorlds: option<arns>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "BatchDeleteWorldsCommand"
  let make = (~worlds, ()) => new({worlds: worlds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSimulationApplication = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The object that contains the Docker image URI for your simulation application.</p>"
    )
    environment: option<environment>,
    @ocaml.doc("<p>The revision id for the robot application.</p>")
    currentRevisionId: option<revisionId>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc("<p>Information about the robot software suite (ROS distribution).</p>")
    robotSoftwareSuite: robotSoftwareSuite,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: simulationSoftwareSuite,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sourceConfigs>,
    @ocaml.doc("<p>The application information for the simulation application.</p>")
    application: arn,
  }
  type response = {
    @ocaml.doc("<p>The object that contains the Docker image URI used for your simulation
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The revision id of the simulation application.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc("<p>Information about the robot software suite (ROS distribution).</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the simulation application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the updated simulation application.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateSimulationApplicationCommand"
  let make = (
    ~robotSoftwareSuite,
    ~simulationSoftwareSuite,
    ~application,
    ~environment=?,
    ~currentRevisionId=?,
    ~renderingEngine=?,
    ~sources=?,
    (),
  ) =>
    new({
      environment,
      currentRevisionId,
      renderingEngine,
      robotSoftwareSuite,
      simulationSoftwareSuite,
      sources,
      application,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRobotApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The object that contains the Docker image URI for your robot application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The revision id for the robot application.</p>")
    currentRevisionId: option<revisionId>,
    @ocaml.doc("<p>The robot software suite (ROS distribution) used by the robot application.</p>")
    robotSoftwareSuite: robotSoftwareSuite,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sourceConfigs>,
    @ocaml.doc("<p>The application information for the robot application.</p>") application: arn,
  }
  type response = {
    @ocaml.doc("<p>The object that contains the Docker image URI for your robot application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The revision id of the robot application.</p>") revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The robot software suite (ROS distribution) used by the robot application.</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the robot application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the updated robot application.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "UpdateRobotApplicationCommand"
  let make = (
    ~robotSoftwareSuite,
    ~application,
    ~environment=?,
    ~currentRevisionId=?,
    ~sources=?,
    (),
  ) => new({environment, currentRevisionId, robotSoftwareSuite, sources, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorldTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>When this parameter is used, <code>ListWorldTemplates</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 100. If this parameter is not used, then
            <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>
         value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldTemplates</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldTemplates</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Summary information for templates.</p>")
    templateSummaries: option<templateSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListWorldTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSimulationApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the simulation application to describe.</p>")
    applicationVersion: option<version>,
    @ocaml.doc("<p>The application information for the simulation application.</p>")
    application: arn,
  }
  type response = {
    @ocaml.doc("<p>A SHA256 identifier for the Docker image that you use for your simulation
         application.</p>")
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The object that contains the Docker image URI used to create the simulation
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The list of all tags added to the specified simulation application.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The revision id of the simulation application.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc("<p>Information about the robot software suite (ROS distribution).</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the simulation application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the simulation application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot simulation application.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationApplicationCommand"
  let make = (~application, ~applicationVersion=?, ()) => new({applicationVersion, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRobotApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the robot application to describe.</p>")
    applicationVersion: option<version>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot application.</p>") application: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>A SHA256 identifier for the Docker image that you use for your robot application.</p>"
    )
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The object that contains the Docker image URI used to create the robot
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The list of all tags added to the specified robot application.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The revision id of the robot application.</p>") revisionId: option<revisionId>,
    @ocaml.doc("<p>The robot software suite (ROS distribution) used by the robot application.</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the robot application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot application.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeRobotApplicationCommand"
  let make = (~application, ~applicationVersion=?, ()) => new({applicationVersion, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFleet = {
  type t
  type request = {@ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: arn}
  type response = {
    @ocaml.doc("<p>The list of all tags added to the specified fleet.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The time of the last deployment.</p>") lastDeploymentTime: option<createdAt>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the last deployment job.</p>")
    lastDeploymentJob: option<arn>,
    @ocaml.doc("<p>The status of the last deployment.</p>")
    lastDeploymentStatus: option<deploymentStatus>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the fleet was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>A list of robots.</p>") robots: option<robots>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") arn: option<arn>,
    @ocaml.doc("<p>The name of the fleet.</p>") name: option<name>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "DescribeFleetCommand"
  let make = (~fleet, ()) => new({fleet: fleet})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSimulationApplicationVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The SHA256 digest used to identify the Docker image URI used to created the simulation
         application.</p>")
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The Amazon S3 eTag identifier for the zip file bundle that you use to create the
         simulation application.</p>")
    s3Etags: option<s3Etags>,
    @ocaml.doc("<p>The current revision id for the simulation application. If you provide a value and it
         matches the latest revision ID, a new version will be created.</p>")
    currentRevisionId: option<revisionId>,
    @ocaml.doc("<p>The application information for the simulation application.</p>")
    application: arn,
  }
  type response = {
    @ocaml.doc("<p>The object that contains the Docker image URI used to create the simulation
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The revision ID of the simulation application.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc("<p>Information about the robot software suite (ROS distribution).</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the simulation application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the simulation application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation application.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationApplicationVersionCommand"
  let make = (~application, ~imageDigest=?, ~s3Etags=?, ~currentRevisionId=?, ()) =>
    new({imageDigest, s3Etags, currentRevisionId, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSimulationApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The object that contains the Docker image URI used to create your simulation
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the simulation
         application.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc(
      "<p>The robot software suite (ROS distribution) used by the simulation application.</p>"
    )
    robotSoftwareSuite: robotSoftwareSuite,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: simulationSoftwareSuite,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sourceConfigs>,
    @ocaml.doc("<p>The name of the simulation application.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The object that contains the Docker image URI that you used to create your simulation
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The list of all tags added to the simulation application.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The revision id of the simulation application.</p>")
    revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The rendering engine for the simulation application.</p>")
    renderingEngine: option<renderingEngine>,
    @ocaml.doc("<p>Information about the robot software suite (ROS distribution).</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The simulation software suite used by the simulation application.</p>")
    simulationSoftwareSuite: option<simulationSoftwareSuite>,
    @ocaml.doc("<p>The sources of the simulation application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the simulation application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the simulation application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation application.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationApplicationCommand"
  let make = (
    ~robotSoftwareSuite,
    ~simulationSoftwareSuite,
    ~name,
    ~environment=?,
    ~tags=?,
    ~renderingEngine=?,
    ~sources=?,
    (),
  ) =>
    new({
      environment,
      tags,
      renderingEngine,
      robotSoftwareSuite,
      simulationSoftwareSuite,
      sources,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRobotApplicationVersion = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A SHA256 identifier for the Docker image that you use for your robot application.</p>"
    )
    imageDigest: option<imageDigest>,
    @ocaml.doc("<p>The Amazon S3 identifier for the zip file bundle that you use for your robot
         application.</p>")
    s3Etags: option<s3Etags>,
    @ocaml.doc("<p>The current revision id for the robot application. If you provide a value and it matches
         the latest revision ID, a new version will be created.</p>")
    currentRevisionId: option<revisionId>,
    @ocaml.doc("<p>The application information for the robot application.</p>") application: arn,
  }
  type response = {
    @ocaml.doc("<p>The object that contains the Docker image URI used to create your robot
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The revision id of the robot application.</p>") revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The robot software suite (ROS distribution) used by the robot application.</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the robot application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot application.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateRobotApplicationVersionCommand"
  let make = (~application, ~imageDigest=?, ~s3Etags=?, ~currentRevisionId=?, ()) =>
    new({imageDigest, s3Etags, currentRevisionId, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRobotApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The object that contains that URI of the Docker image that you use for your robot
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the robot
         application.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The robot software suite (ROS distribuition) used by the robot application.</p>")
    robotSoftwareSuite: robotSoftwareSuite,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sourceConfigs>,
    @ocaml.doc("<p>The name of the robot application.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>An object that contains the Docker image URI used to a create your robot
         application.</p>")
    environment: option<environment>,
    @ocaml.doc("<p>The list of all tags added to the robot application.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The revision id of the robot application.</p>") revisionId: option<revisionId>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the robot application was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The robot software suite (ROS distribution) used by the robot application.</p>")
    robotSoftwareSuite: option<robotSoftwareSuite>,
    @ocaml.doc("<p>The sources of the robot application.</p>") sources: option<sources>,
    @ocaml.doc("<p>The version of the robot application.</p>") version: option<version>,
    @ocaml.doc("<p>The name of the robot application.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the robot application.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateRobotApplicationCommand"
  let make = (~robotSoftwareSuite, ~name, ~environment=?, ~tags=?, ~sources=?, ()) =>
    new({environment, tags, robotSoftwareSuite, sources, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorlds = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results. You can use <code>status</code>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListWorlds</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListWorlds</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 100. If this parameter is not used, then
            <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if
         applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorlds</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorlds</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Summary information for worlds.</p>") worldSummaries: option<worldSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListWorldsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorldGenerationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results. You can use <code>status</code> and
            <code>templateId</code>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListWorldGeneratorJobs</code> request with the returned
            <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
         not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that
         token to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldGeneratorJobsRequest</code> again and assign that
         token to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Summary information for world generator jobs.</p>")
    worldGenerationJobSummaries: worldGenerationJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListWorldGenerationJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorldExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results. You can use <code>generationJobId</code> and
            <code>templateId</code>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListWorldExportJobs</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 100. If this parameter is not used, then
            <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code>
         value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldExportJobs</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListWorldExportJobsRequest</code> again and assign that
         token to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Summary information for world export jobs.</p>")
    worldExportJobSummaries: worldExportJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListWorldExportJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSimulationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results.</p>
         <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and
            <code>robotApplicationName</code> are supported. When filtering, you must use the
         complete value of the filtered item. You can use up to three filters, but they must be for
         the same named item. For example, if you are looking for items with the status
            <code>Preparing</code> or the status <code>Running</code>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListSimulationJobs</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 1000. If this parameter is not used, then
            <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code>
         value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationJobs</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationJobs</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of simulation job summaries that meet the criteria of the request.</p>")
    simulationJobSummaries: simulationJobSummaries,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListSimulationJobsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSimulationJobBatches = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results.</p>") filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListSimulationJobBatches</code> request with the returned
            <code>nextToken</code> value. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
         to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
         to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of simulation job batch summaries.</p>")
    simulationJobBatchSummaries: option<simulationJobBatchSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListSimulationJobBatchesCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSimulationApplications = {
  type t
  type request = {
    @ocaml.doc("<p>Optional list of filters to limit results.</p>
         <p>The filter name <code>name</code> is supported. When filtering, you must use the
         complete value of the filtered item. You can use up to three filters.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListSimulationApplications</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListSimulationApplications</code> request with the returned
            <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
         not used, then <code>ListSimulationApplications</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationApplications</code> again and assign that
         token to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The version qualifier of the simulation application.</p>")
    versionQualifier: option<versionQualifier>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListSimulationApplications</code> again and assign that
         token to the request object's <code>nextToken</code> parameter. If there are no remaining
         results, the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>A list of simulation application summaries that meet the criteria of the request.</p>"
    )
    simulationApplicationSummaries: option<simulationApplicationSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListSimulationApplicationsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ~versionQualifier=?, ()) =>
    new({filters, maxResults, nextToken, versionQualifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRobots = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results.</p>
         <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
         filtering, you must use the complete value of the filtered item. You can use up to three
         filters, but they must be for the same named item. For example, if you are looking for
         items with the status <code>Registered</code> or the status <code>Available</code>.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListRobots</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListRobots</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 200. If this parameter is not used, then
            <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if
         applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListRobots</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListRobots</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of robots that meet the criteria of the request.</p>")
    robots: option<robots>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListRobotsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRobotApplications = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results.</p>
         <p>The filter name <code>name</code> is supported. When filtering, you must use the
         complete value of the filtered item. You can use up to three filters.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListRobotApplications</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListRobotApplications</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 100. If this parameter is not used, then
            <code>ListRobotApplications</code> returns up to 100 results and a
            <code>nextToken</code> value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListRobotApplications</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The version qualifier of the robot application.</p>")
    versionQualifier: option<versionQualifier>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListRobotApplications</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>A list of robot application summaries that meet the criteria of the request.</p>"
    )
    robotApplicationSummaries: option<robotApplicationSummaries>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "ListRobotApplicationsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ~versionQualifier=?, ()) =>
    new({filters, maxResults, nextToken, versionQualifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFleets = {
  type t
  type request = {
    @ocaml.doc("<p>Optional filters to limit results.</p>
         <p>The filter name <code>name</code> is supported. When filtering, you must use the
         complete value of the filtered item. You can use up to three filters.</p>")
    filters: option<filters>,
    @ocaml.doc("<p>When this parameter is used, <code>ListFleets</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListFleets</code> request with the returned <code>nextToken</code> value.
         This value can be between 1 and 200. If this parameter is not used, then
            <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if
         applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListFleets</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>
         <note>
            <p>This token should be treated as an opaque identifier that is only used to retrieve
            the next items in a list and not for other programmatic purposes.</p>
         </note>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListFleets</code> again and assign that token to the
         request object's <code>nextToken</code> parameter. If there are no remaining results, the
         previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of fleet details meeting the request criteria.</p>")
    fleetDetails: option<fleets>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListFleetsCommand"
  let make = (~filters=?, ~maxResults=?, ~nextToken=?, ()) => new({filters, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SyncDeploymentJob = {
  type t
  type request = {
    @ocaml.doc("<p>The target fleet for the synchronization.</p>") fleet: arn,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: clientRequestToken,
  }
  type response = {
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the fleet was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The failure code if the job fails:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>RobotApplicationCrash</dt>
            <dd>
               <p>Robot application exited abnormally.</p>
            </dd>
            <dt>SimulationApplicationCrash</dt>
            <dd>
               <p> Simulation application exited abnormally.</p>
            </dd>
            <dt>BadPermissionsRobotApplication</dt>
            <dd>
               <p>Robot application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsSimulationApplication</dt>
            <dd>
               <p>Simulation application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsS3Output</dt>
            <dd>
               <p>Unable to publish outputs to customer-provided S3 bucket.</p>
            </dd>
            <dt>BadPermissionsCloudwatchLogs</dt>
            <dd>
               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
            </dd>
            <dt>SubnetIpLimitExceeded</dt>
            <dd>
               <p>Subnet IP limit exceeded.</p>
            </dd>
            <dt>ENILimitExceeded</dt>
            <dd>
               <p>ENI limit exceeded.</p>
            </dd>
            <dt>BadPermissionsUserCredentials</dt>
            <dd>
               <p>Unable to use the Role provided.</p>
            </dd>
            <dt>InvalidBundleRobotApplication</dt>
            <dd>
               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>InvalidBundleSimulationApplication</dt>
            <dd>
               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>RobotApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for RobotApplication does not match value during version creation.</p>
            </dd>
            <dt>SimulationApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for SimulationApplication does not match value during version
                  creation.</p>
            </dd>
         </dl>")
    failureCode: option<deploymentJobErrorCode>,
    @ocaml.doc("<p>The failure reason if the job fails.</p>") failureReason: option<genericString>,
    @ocaml.doc("<p>Information about the deployment application configurations.</p>")
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    @ocaml.doc("<p>Information about the deployment configuration.</p>")
    deploymentConfig: option<deploymentConfig>,
    @ocaml.doc("<p>The status of the synchronization job.</p>") status: option<deploymentStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the synchronization request.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "SyncDeploymentJobCommand"
  let make = (~fleet, ~clientRequestToken, ()) => new({fleet, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeWorldGenerationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world generation job to describe.</p>")
    job: arn,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the generated
         worlds.</p>")
    worldTags: option<tagMap>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the world generation
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Summary information about finished worlds.</p>")
    finishedWorldsSummary: option<finishedWorldsSummary>,
    @ocaml.doc("<p>Information about the world count.</p>") worldCount: option<worldCount>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the world template.</p>")
    template: option<arn>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The reason why the world generation job failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The failure code of the world generation job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>LimitExceeded</dt>
            <dd>
               <p>The requested resource exceeds the maximum number allowed, or the number of
                  concurrent stream requests exceeds the maximum number allowed. </p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>The specified resource could not be found. </p>
            </dd>
            <dt>RequestThrottled</dt>
            <dd>
               <p>The request was throttled.</p>
            </dd>
            <dt>InvalidInput</dt>
            <dd>
               <p>An input parameter in the request is not valid.</p>
            </dd>
         </dl>")
    failureCode: option<worldGenerationJobErrorCode>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the world generation job was
         created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The status of the world generation job:</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The world generation job request is pending.</p>
            </dd>
            <dt>Running</dt>
            <dd>
               <p>The world generation job is running. </p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The world generation job completed. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The world generation job failed. See <code>failureCode</code> for more
                  information. </p>
            </dd>
            <dt>PartialFailed</dt>
            <dd>
               <p>Some worlds did not generate.</p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The world generation job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The world generation job is being cancelled.</p>
            </dd>
         </dl>")
    status: option<worldGenerationJobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the world generation job.</p>")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeWorldGenerationJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDeploymentJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployment job.</p>") job: arn,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the specified deployment job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of robot deployment summaries.</p>")
    robotDeploymentSummary: option<robotDeploymentSummary>,
    @ocaml.doc(
      "<p>The time, in milliseconds since the epoch, when the deployment job was created.</p>"
    )
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The deployment job failure code.</p>")
    failureCode: option<deploymentJobErrorCode>,
    @ocaml.doc("<p>A short description of the reason why the deployment job failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The deployment application configuration.</p>")
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    @ocaml.doc("<p>The deployment configuration.</p>") deploymentConfig: option<deploymentConfig>,
    @ocaml.doc("<p>The status of the deployment job.</p>") status: option<deploymentStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") fleet: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployment job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeDeploymentJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDeploymentJob = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the deployment
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The deployment application configuration.</p>")
    deploymentApplicationConfigs: deploymentApplicationConfigs,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>") fleet: arn,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The requested deployment configuration.</p>")
    deploymentConfig: option<deploymentConfig>,
  }
  type response = {
    @ocaml.doc("<p>The list of all tags added to the deployment job.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The deployment configuration.</p>") deploymentConfig: option<deploymentConfig>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the fleet was created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The failure code of the simulation job if it failed:</p>
         <dl>
            <dt>BadPermissionError</dt>
            <dd>
               <p>AWS Greengrass requires a service-level role permission to access other
                  services. The role must include the <a href=\"https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor\">
                     <code>AWSGreengrassResourceAccessRolePolicy</code> managed policy</a>.
               </p>
            </dd>
            <dt>ExtractingBundleFailure</dt>
            <dd>
               <p>The robot application could not be extracted from the bundle.</p>
            </dd>
            <dt>FailureThresholdBreached</dt>
            <dd>
               <p>The percentage of robots that could not be updated exceeded the percentage set
                  for the deployment.</p>
            </dd>
            <dt>GreengrassDeploymentFailed</dt>
            <dd>
               <p>The robot application could not be deployed to the robot.</p>
            </dd>
            <dt>GreengrassGroupVersionDoesNotExist</dt>
            <dd>
               <p>The AWS Greengrass group or version associated with a robot is missing.</p>
            </dd>
            <dt>InternalServerError</dt>
            <dd>
               <p>An internal error has occurred. Retry your request, but if the problem
                  persists, contact us with details.</p>
            </dd>
            <dt>MissingRobotApplicationArchitecture</dt>
            <dd>
               <p>The robot application does not have a source that matches the architecture of
                  the robot.</p>
            </dd>
            <dt>MissingRobotDeploymentResource</dt>
            <dd>
               <p>One or more of the resources specified for the robot application are missing.
                  For example, does the robot application have the correct launch package and launch
                  file?</p>
            </dd>
            <dt>PostLaunchFileFailure</dt>
            <dd>
               <p>The post-launch script failed.</p>
            </dd>
            <dt>PreLaunchFileFailure</dt>
            <dd>
               <p>The pre-launch script failed.</p>
            </dd>
            <dt>ResourceNotFound</dt>
            <dd>
               <p>One or more deployment resources are missing. For example, do robot application
                  source bundles still exist? </p>
            </dd>
            <dt>RobotDeploymentNoResponse</dt>
            <dd>
               <p>There is no response from the robot. It might not be powered on or connected to
                  the internet.</p>
            </dd>
         </dl>")
    failureCode: option<deploymentJobErrorCode>,
    @ocaml.doc("<p>The failure reason of the deployment job if it failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The deployment application configuration.</p>")
    deploymentApplicationConfigs: option<deploymentApplicationConfigs>,
    @ocaml.doc("<p>The status of the deployment job.</p>") status: option<deploymentStatus>,
    @ocaml.doc("<p>The target fleet for the deployment job.</p>") fleet: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployment job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateDeploymentJobCommand"
  let make = (
    ~deploymentApplicationConfigs,
    ~fleet,
    ~clientRequestToken,
    ~tags=?,
    ~deploymentConfig=?,
    (),
  ) => new({tags, deploymentApplicationConfigs, fleet, clientRequestToken, deploymentConfig})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeploymentJobs = {
  type t
  type request = {
    @ocaml.doc("<p>When this parameter is used, <code>ListDeploymentJobs</code> only returns
            <code>maxResults</code> results in a single page along with a <code>nextToken</code>
         response element. The remaining results of the initial request can be seen by sending
         another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code>
         value. This value can be between 1 and 200. If this parameter is not used, then
            <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code>
         value if applicable. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Optional filters to limit results.</p>
         <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
         filtering, you must use the complete value of the filtered item. You can use up to three
         filters, but they must be for the same named item. For example, if you are looking for
         items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>")
    filters: option<filters>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request did not return all of the remaining results, the
         response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
         next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
         the request object's <code>nextToken</code> parameter. If there are no remaining results,
         the previous response object's NextToken parameter is set to null. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of deployment jobs that meet the criteria of the request.</p>")
    deploymentJobs: option<deploymentJobs>,
  }
  @module("@aws-sdk/client-robomaker") @new external new: request => t = "ListDeploymentJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) => new({maxResults, nextToken, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSimulationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>")
    job: arn,
  }
  type response = {
    @ocaml.doc("<p>Compute information for the simulation job.</p>")
    compute: option<computeResponse>,
    @ocaml.doc("<p>The network interface information for the simulation job.</p>")
    networkInterface: option<networkInterface>,
    @ocaml.doc("<p>The VPC configuration.</p>") vpcConfig: option<vpcconfigResponse>,
    @ocaml.doc("<p>The list of all tags added to the specified simulation job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The data sources for the simulation job.</p>") dataSources: option<dataSources>,
    @ocaml.doc("<p>A list of simulation applications.</p>")
    simulationApplications: option<simulationApplicationConfigs>,
    @ocaml.doc("<p>A list of robot applications.</p>")
    robotApplications: option<robotApplicationConfigs>,
    @ocaml.doc("<p>The IAM role that allows the simulation instance to call the AWS APIs that are specified
         in its associated policies on your behalf.</p>")
    iamRole: option<iamRole>,
    @ocaml.doc("<p>The simulation job execution duration in milliseconds.</p>")
    simulationTimeMillis: option<simulationTimeMillis>,
    @ocaml.doc("<p>The maximum job duration in seconds. The value must be 8 days (691,200 seconds) or
         less.</p>")
    maxJobDurationInSeconds: option<jobDuration>,
    @ocaml.doc("<p>The logging configuration.</p>") loggingConfig: option<loggingConfig>,
    @ocaml.doc("<p>Location for output files generated by the simulation job.</p>")
    outputLocation: option<outputLocation>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Details about why the simulation job failed. For more information about troubleshooting,
         see <a href=\"https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html\">Troubleshooting</a>.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The failure code of the simulation job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>RobotApplicationCrash</dt>
            <dd>
               <p>Robot application exited abnormally.</p>
            </dd>
            <dt>SimulationApplicationCrash</dt>
            <dd>
               <p> Simulation application exited abnormally.</p>
            </dd>
            <dt>BadPermissionsRobotApplication</dt>
            <dd>
               <p>Robot application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsSimulationApplication</dt>
            <dd>
               <p>Simulation application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsS3Output</dt>
            <dd>
               <p>Unable to publish outputs to customer-provided S3 bucket.</p>
            </dd>
            <dt>BadPermissionsCloudwatchLogs</dt>
            <dd>
               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
            </dd>
            <dt>SubnetIpLimitExceeded</dt>
            <dd>
               <p>Subnet IP limit exceeded.</p>
            </dd>
            <dt>ENILimitExceeded</dt>
            <dd>
               <p>ENI limit exceeded.</p>
            </dd>
            <dt>BadPermissionsUserCredentials</dt>
            <dd>
               <p>Unable to use the Role provided.</p>
            </dd>
            <dt>InvalidBundleRobotApplication</dt>
            <dd>
               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>InvalidBundleSimulationApplication</dt>
            <dd>
               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>RobotApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for RobotApplication does not match value during version creation.</p>
            </dd>
            <dt>SimulationApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for SimulationApplication does not match value during version
                  creation.</p>
            </dd>
         </dl>")
    failureCode: option<simulationJobErrorCode>,
    @ocaml.doc("<p>The failure behavior for the simulation job.</p>")
    failureBehavior: option<failureBehavior>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         started.</p>")
    lastStartedAt: option<lastStartedAt>,
    @ocaml.doc("<p>The status of the simulation job.</p>") status: option<simulationJobStatus>,
    @ocaml.doc("<p>The name of the simulation job.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationJobCommand"
  let make = (~job, ()) => new({job: job})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSimulationJob = {
  type t
  type request = {
    @ocaml.doc("<p>Compute information for the simulation job.</p>") compute: option<compute>,
    @ocaml.doc("<p>If your simulation job accesses resources in a VPC, you provide this parameter
         identifying the list of security group IDs and subnet IDs. These must belong to the same
         VPC. You must provide at least one security group and one subnet ID. </p>")
    vpcConfig: option<vpcconfig>,
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the simulation
         job.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Specify data sources to mount read-only files from S3 into your simulation. These files
         are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
         <note>
            <p>There is a limit of 100 files and a combined size of 25GB for all
               <code>DataSourceConfig</code> objects. </p>
         </note>")
    dataSources: option<dataSourceConfigs>,
    @ocaml.doc("<p>The simulation application to use in the simulation job.</p>")
    simulationApplications: option<simulationApplicationConfigs>,
    @ocaml.doc("<p>The robot application to use in the simulation job.</p>")
    robotApplications: option<robotApplicationConfigs>,
    @ocaml.doc("<p>The failure behavior the simulation job.</p>
         <dl>
            <dt>Continue</dt>
            <dd>
               <p>Leaves the instance running for its maximum timeout duration after a
                     <code>4XX</code> error code.</p>
            </dd>
            <dt>Fail</dt>
            <dd>
               <p>Stop the simulation job and terminate the instance.</p>
            </dd>
         </dl>")
    failureBehavior: option<failureBehavior>,
    @ocaml.doc("<p>The IAM role name that allows the simulation instance to call the AWS APIs that are
         specified in its associated policies on your behalf. This is how credentials are passed in
         to your simulation job. </p>")
    iamRole: iamRole,
    @ocaml.doc("<p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When
            <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will
         transition to <code>Completed</code>.</p>")
    maxJobDurationInSeconds: jobDuration,
    @ocaml.doc("<p>The logging configuration.</p>") loggingConfig: option<loggingConfig>,
    @ocaml.doc("<p>Location for output files generated by the simulation job.</p>")
    outputLocation: option<outputLocation>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>Compute information for the simulation job.</p>")
    compute: option<computeResponse>,
    @ocaml.doc("<p>Information about the vpc configuration.</p>")
    vpcConfig: option<vpcconfigResponse>,
    @ocaml.doc("<p>The list of all tags added to the simulation job.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The data sources for the simulation job.</p>") dataSources: option<dataSources>,
    @ocaml.doc("<p>The simulation application used by the simulation job.</p>")
    simulationApplications: option<simulationApplicationConfigs>,
    @ocaml.doc("<p>The robot application used by the simulation job.</p>")
    robotApplications: option<robotApplicationConfigs>,
    @ocaml.doc("<p>The IAM role that allows the simulation job to call the AWS APIs that are specified in
         its associated policies on your behalf.</p>")
    iamRole: option<iamRole>,
    @ocaml.doc("<p>The simulation job execution duration in milliseconds.</p>")
    simulationTimeMillis: option<simulationTimeMillis>,
    @ocaml.doc("<p>The maximum simulation job duration in seconds. </p>")
    maxJobDurationInSeconds: option<jobDuration>,
    @ocaml.doc("<p>The logging configuration.</p>") loggingConfig: option<loggingConfig>,
    @ocaml.doc("<p>Simulation job output files location.</p>")
    outputLocation: option<outputLocation>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The failure code of the simulation job if it failed:</p>
         <dl>
            <dt>InternalServiceError</dt>
            <dd>
               <p>Internal service error.</p>
            </dd>
            <dt>RobotApplicationCrash</dt>
            <dd>
               <p>Robot application exited abnormally.</p>
            </dd>
            <dt>SimulationApplicationCrash</dt>
            <dd>
               <p> Simulation application exited abnormally.</p>
            </dd>
            <dt>BadPermissionsRobotApplication</dt>
            <dd>
               <p>Robot application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsSimulationApplication</dt>
            <dd>
               <p>Simulation application bundle could not be downloaded.</p>
            </dd>
            <dt>BadPermissionsS3Output</dt>
            <dd>
               <p>Unable to publish outputs to customer-provided S3 bucket.</p>
            </dd>
            <dt>BadPermissionsCloudwatchLogs</dt>
            <dd>
               <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
            </dd>
            <dt>SubnetIpLimitExceeded</dt>
            <dd>
               <p>Subnet IP limit exceeded.</p>
            </dd>
            <dt>ENILimitExceeded</dt>
            <dd>
               <p>ENI limit exceeded.</p>
            </dd>
            <dt>BadPermissionsUserCredentials</dt>
            <dd>
               <p>Unable to use the Role provided.</p>
            </dd>
            <dt>InvalidBundleRobotApplication</dt>
            <dd>
               <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>InvalidBundleSimulationApplication</dt>
            <dd>
               <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
                  issue).</p>
            </dd>
            <dt>RobotApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for RobotApplication does not match value during version creation.</p>
            </dd>
            <dt>SimulationApplicationVersionMismatchedEtag</dt>
            <dd>
               <p>Etag for SimulationApplication does not match value during version
                  creation.</p>
            </dd>
         </dl>")
    failureCode: option<simulationJobErrorCode>,
    @ocaml.doc("<p>the failure behavior for the simulation job.</p>")
    failureBehavior: option<failureBehavior>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job was last
         started.</p>")
    lastStartedAt: option<lastStartedAt>,
    @ocaml.doc("<p>The status of the simulation job.</p>") status: option<simulationJobStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the simulation job.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "CreateSimulationJobCommand"
  let make = (
    ~iamRole,
    ~maxJobDurationInSeconds,
    ~compute=?,
    ~vpcConfig=?,
    ~tags=?,
    ~dataSources=?,
    ~simulationApplications=?,
    ~robotApplications=?,
    ~failureBehavior=?,
    ~loggingConfig=?,
    ~outputLocation=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      compute,
      vpcConfig,
      tags,
      dataSources,
      simulationApplications,
      robotApplications,
      failureBehavior,
      iamRole,
      maxJobDurationInSeconds,
      loggingConfig,
      outputLocation,
      clientRequestToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDescribeSimulationJob = {
  type t
  type request = {
    @ocaml.doc("<p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>")
    jobs: arns,
  }
  type response = {
    @ocaml.doc("<p>A list of unprocessed simulation job Amazon Resource Names (ARNs).</p>")
    unprocessedJobs: option<arns>,
    @ocaml.doc("<p>A list of simulation jobs.</p>") jobs: option<simulationJobs>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "BatchDescribeSimulationJobCommand"
  let make = (~jobs, ()) => new({jobs: jobs})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartSimulationJobBatch = {
  type t
  type request = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the deployment job
         batch.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of simulation job requests to create in the batch.</p>")
    createSimulationJobRequests: createSimulationJobRequests,
    @ocaml.doc("<p>The batch policy.</p>") batchPolicy: option<batchPolicy>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
  }
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the deployment job
         batch.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of created simulation job request summaries.</p>")
    createdRequests: option<simulationJobSummaries>,
    @ocaml.doc("<p>A list of pending simulation job requests. These requests have not yet been created into
         simulation jobs.</p>")
    pendingRequests: option<createSimulationJobRequests>,
    @ocaml.doc("<p>A list of failed simulation job requests. The request failed to be created into a
         simulation job. Failed requests do not have a simulation job ID. </p>")
    failedRequests: option<failedCreateSimulationJobRequests>,
    @ocaml.doc("<p>The reason the simulation job batch failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The failure code if the simulation job batch failed.</p>")
    failureCode: option<simulationJobBatchErrorCode>,
    @ocaml.doc("<p>The batch policy.</p>") batchPolicy: option<batchPolicy>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job batch was
         created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The status of the simulation job batch.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The simulation job batch request is pending.</p>
            </dd>
            <dt>InProgress</dt>
            <dd>
               <p>The simulation job batch is in progress. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The simulation job batch failed. One or more simulation job requests could not
                  be completed due to an internal failure (like <code>InternalServiceError</code>).
                  See <code>failureCode</code> and <code>failureReason</code> for more
                  information.</p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The simulation batch job completed. A batch is complete when (1) there are no
                  pending simulation job requests in the batch and none of the failed simulation job
                  requests are due to <code>InternalServiceError</code> and (2) when all created
                  simulation jobs have reached a terminal state (for example, <code>Completed</code>
                  or <code>Failed</code>). </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The simulation batch job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The simulation batch job is being cancelled.</p>
            </dd>
            <dt>Completing</dt>
            <dd>
               <p>The simulation batch job is completing.</p>
            </dd>
            <dt>TimingOut</dt>
            <dd>
               <p>The simulation job batch is timing out.</p>
               <p>If a batch timing out, and there are pending requests that were failing due to
                  an internal failure (like <code>InternalServiceError</code>), the batch status
                  will be <code>Failed</code>. If there are no such failing request, the batch
                  status will be <code>TimedOut</code>. </p>
            </dd>
            <dt>TimedOut</dt>
            <dd>
               <p>The simulation batch job timed out.</p>
            </dd>
         </dl>")
    status: option<simulationJobBatchStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (arn) of the batch.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "StartSimulationJobBatchCommand"
  let make = (~createSimulationJobRequests, ~tags=?, ~batchPolicy=?, ~clientRequestToken=?, ()) =>
    new({tags, createSimulationJobRequests, batchPolicy, clientRequestToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSimulationJobBatch = {
  type t
  type request = {@ocaml.doc("<p>The id of the batch to describe.</p>") batch: arn}
  type response = {
    @ocaml.doc("<p>A map that contains tag keys and tag values that are attached to the simulation job
         batch.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A list of created simulation job summaries.</p>")
    createdRequests: option<simulationJobSummaries>,
    @ocaml.doc("<p>A list of pending simulation job requests. These requests have not yet been created into
         simulation jobs.</p>")
    pendingRequests: option<createSimulationJobRequests>,
    @ocaml.doc("<p>A list of failed create simulation job requests. The request failed to be created into a
         simulation job. Failed requests do not have a simulation job ID. </p>")
    failedRequests: option<failedCreateSimulationJobRequests>,
    @ocaml.doc("<p>The reason the simulation job batch failed.</p>")
    failureReason: option<genericString>,
    @ocaml.doc("<p>The failure code of the simulation job batch.</p>")
    failureCode: option<simulationJobBatchErrorCode>,
    @ocaml.doc("<p>The batch policy.</p>") batchPolicy: option<batchPolicy>,
    @ocaml.doc("<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
         request.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job batch was
         created.</p>")
    createdAt: option<createdAt>,
    @ocaml.doc("<p>The time, in milliseconds since the epoch, when the simulation job batch was last
         updated.</p>")
    lastUpdatedAt: option<lastUpdatedAt>,
    @ocaml.doc("<p>The status of the batch.</p>
         <dl>
            <dt>Pending</dt>
            <dd>
               <p>The simulation job batch request is pending.</p>
            </dd>
            <dt>InProgress</dt>
            <dd>
               <p>The simulation job batch is in progress. </p>
            </dd>
            <dt>Failed</dt>
            <dd>
               <p>The simulation job batch failed. One or more simulation job requests could not
                  be completed due to an internal failure (like <code>InternalServiceError</code>).
                  See <code>failureCode</code> and <code>failureReason</code> for more
                  information.</p>
            </dd>
            <dt>Completed</dt>
            <dd>
               <p>The simulation batch job completed. A batch is complete when (1) there are no
                  pending simulation job requests in the batch and none of the failed simulation job
                  requests are due to <code>InternalServiceError</code> and (2) when all created
                  simulation jobs have reached a terminal state (for example, <code>Completed</code>
                  or <code>Failed</code>). </p>
            </dd>
            <dt>Canceled</dt>
            <dd>
               <p>The simulation batch job was cancelled.</p>
            </dd>
            <dt>Canceling</dt>
            <dd>
               <p>The simulation batch job is being cancelled.</p>
            </dd>
            <dt>Completing</dt>
            <dd>
               <p>The simulation batch job is completing.</p>
            </dd>
            <dt>TimingOut</dt>
            <dd>
               <p>The simulation job batch is timing out.</p>
               <p>If a batch timing out, and there are pending requests that were failing due to
                  an internal failure (like <code>InternalServiceError</code>), the batch status
                  will be <code>Failed</code>. If there are no such failing request, the batch
                  status will be <code>TimedOut</code>. </p>
            </dd>
            <dt>TimedOut</dt>
            <dd>
               <p>The simulation batch job timed out.</p>
            </dd>
         </dl>")
    status: option<simulationJobBatchStatus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the batch.</p>") arn: option<arn>,
  }
  @module("@aws-sdk/client-robomaker") @new
  external new: request => t = "DescribeSimulationJobBatchCommand"
  let make = (~batch, ()) => new({batch: batch})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
