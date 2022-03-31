type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-synthetics") @new
external createClient: unit => awsServiceClient = "SyntheticsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vpcId = string
type uuid = string
type token = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type securityGroupId = string
type roleArn = string
type nullableBoolean = bool
type maxSize3008 = int
type maxSize1024 = int
type maxSize100 = int
type maxOneYearInSeconds = float
type maxFifteenMinutesInSeconds = int
type maxCanaryResults = int
type kmsKeyArn = string
type functionArn = string
type errorMessage = string
type environmentVariableValue = string
type environmentVariableName = string
type encryptionMode = [@as("SSE_KMS") #SSE_KMS | @as("SSE_S3") #SSE_S3]
type codeHandler = string
type canaryStateReasonCode = [@as("INVALID_PERMISSIONS") #INVALID_PERMISSIONS]
type canaryState = [
  | @as("DELETING") #DELETING
  | @as("ERROR") #ERROR
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("UPDATING") #UPDATING
  | @as("RUNNING") #RUNNING
  | @as("STARTING") #STARTING
  | @as("READY") #READY
  | @as("CREATING") #CREATING
]
type canaryRunStateReasonCode = [
  | @as("EXECUTION_FAILURE") #EXECUTION_FAILURE
  | @as("CANARY_FAILURE") #CANARY_FAILURE
]
type canaryRunState = [@as("FAILED") #FAILED | @as("PASSED") #PASSED | @as("RUNNING") #RUNNING]
type canaryName = string
type canaryArn = string
type blob = NodeJs.Buffer.t
type baseScreenshotConfigIgnoreCoordinate = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>A structure that contains the configuration of encryption-at-rest settings for canary artifacts that the canary
         uploads to Amazon S3. </p>
         <p>For more information, see
         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html\">Encrypting canary artifacts</a>
            </p>")
type s3EncryptionConfig = {
  @ocaml.doc("<p>The ARN of the customer-managed KMS key to use, if you specify <code>SSE-KMS</code>
         for <code>EncryptionMode</code>
         </p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p> The encryption method to use for artifacts created by this canary. Specify <code>SSE_S3</code> to use
         server-side encryption (SSE) with an Amazon S3-managed
         key. Specify <code>SSE-KMS</code> to use server-side encryption with a customer-managed KMS key.</p>
         <p>If you omit this parameter, an 
            Amazon Web Services-managed KMS key is used.
        </p>")
  @as("EncryptionMode")
  encryptionMode: option<encryptionMode>,
}
@ocaml.doc("<p>This structure contains information about one canary runtime version. For more information about
         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">
            Canary Runtime Versions</a>.</p>")
type runtimeVersion = {
  @ocaml.doc("<p>If this runtime version is deprecated, this value is the date of deprecation.</p>")
  @as("DeprecationDate")
  deprecationDate: option<timestamp_>,
  @ocaml.doc("<p>The date that the runtime version was released.</p>") @as("ReleaseDate")
  releaseDate: option<timestamp_>,
  @ocaml.doc("<p>A description of the runtime version, created by Amazon.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the runtime version. For a list of valid runtime versions, 
         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">
            Canary Runtime Versions</a>.</p>")
  @as("VersionName")
  versionName: option<string_>,
}
type environmentVariablesMap = Js.Dict.t<environmentVariableValue>
type describeCanariesNameFilter = array<canaryName>
type describeCanariesLastRunNameFilter = array<canaryName>
@ocaml.doc(
  "<p>This structure contains information about when the canary was created and modified.</p>"
)
type canaryTimeline = {
  @ocaml.doc("<p>The date and time that the canary's most recent run ended.</p>") @as("LastStopped")
  lastStopped: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the canary's most recent run started.</p>")
  @as("LastStarted")
  lastStarted: option<timestamp_>,
  @ocaml.doc("<p>The date and time the canary was most recently modified.</p>") @as("LastModified")
  lastModified: option<timestamp_>,
  @ocaml.doc("<p>The date and time the canary was created.</p>") @as("Created")
  created: option<timestamp_>,
}
@ocaml.doc("<p>A structure that contains the current state of the canary.</p>")
type canaryStatus = {
  @ocaml.doc("<p>If the canary cannot run or has failed, this field displays the reason.</p>")
  @as("StateReasonCode")
  stateReasonCode: option<canaryStateReasonCode>,
  @ocaml.doc(
    "<p>If the canary has insufficient permissions to run, this field provides more details.</p>"
  )
  @as("StateReason")
  stateReason: option<string_>,
  @ocaml.doc("<p>The current state of the canary.</p>") @as("State") state: option<canaryState>,
}
@ocaml.doc("<p>How long, in seconds, for the canary to continue making regular runs according to the schedule in the 
         <code>Expression</code> value.</p>")
type canaryScheduleOutput = {
  @ocaml.doc("<p>How long, in seconds, for the canary to continue making regular runs after it 
         was created. The runs are performed according to the schedule in the 
         <code>Expression</code> value.</p>")
  @as("DurationInSeconds")
  durationInSeconds: option<maxOneYearInSeconds>,
  @ocaml.doc("<p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
         <p>For a rate expression, The syntax is
         <code>rate(<i>number unit</i>)</code>. <i>unit</i>
         can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
         <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every 
         10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
         specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
         <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value 
         that causes the 
         canary to run only once when it is started.</p>
         <p>Use <code>cron(<i>expression</i>)</code> to specify a cron 
         expression. For information about the syntax for cron expressions, see 
         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html\">
            Scheduling canary runs using cron</a>.</p>")
  @as("Expression")
  expression: option<string_>,
}
@ocaml.doc("<p>This structure specifies how often a canary is to make runs and the date and time
         when it should stop making runs.</p>")
type canaryScheduleInput = {
  @ocaml.doc("<p>How long, in seconds, for the canary to continue making regular runs according to
         the schedule in the <code>Expression</code> value. If you specify 0, the canary continues
         making runs until you stop it. If you omit this field, the default of 0 is used.</p>")
  @as("DurationInSeconds")
  durationInSeconds: option<maxOneYearInSeconds>,
  @ocaml.doc("<p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>
         <p>For a rate expression, The syntax is
               <code>rate(<i>number unit</i>)</code>. <i>unit</i>
         can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>
         <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every 
      10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can
         specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>
         <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value 
         that causes the 
         canary to run only once when it is started.</p>
         <p>Use <code>cron(<i>expression</i>)</code> to specify a cron 
         expression. You can't schedule a canary to wait for more than a year before running. For information about the syntax for cron expressions, see 
         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html\">
            Scheduling canary runs using cron</a>.</p>")
  @as("Expression")
  expression: string_,
}
@ocaml.doc("<p>This structure contains the start and end times of a single canary run.</p>")
type canaryRunTimeline = {
  @ocaml.doc("<p>The end time of the run.</p>") @as("Completed") completed: option<timestamp_>,
  @ocaml.doc("<p>The start time of the run.</p>") @as("Started") started: option<timestamp_>,
}
@ocaml.doc("<p>This structure contains the status information about a canary run.</p>")
type canaryRunStatus = {
  @ocaml.doc("<p>If this value is <code>CANARY_FAILURE</code>, an exception occurred in the 
         canary code. If this value is <code>EXECUTION_FAILURE</code>, an exception occurred in 
         CloudWatch Synthetics.</p>")
  @as("StateReasonCode")
  stateReasonCode: option<canaryRunStateReasonCode>,
  @ocaml.doc("<p>If run of the canary failed, this field contains the reason for the error.</p>")
  @as("StateReason")
  stateReason: option<string_>,
  @ocaml.doc("<p>The current state of the run.</p>") @as("State") state: option<canaryRunState>,
}
@ocaml.doc("<p>A structure that contains information about a canary run.</p>")
type canaryRunConfigOutput = {
  @ocaml.doc("<p>Displays whether this canary run used active X-Ray tracing. </p>")
  @as("ActiveTracing")
  activeTracing: option<nullableBoolean>,
  @ocaml.doc("<p>The maximum amount of memory available to the canary while it is running, in MB. This value
         must be a multiple of 64.</p>")
  @as("MemoryInMB")
  memoryInMB: option<maxSize3008>,
  @ocaml.doc("<p>How long the canary is allowed to run before it must stop.</p>")
  @as("TimeoutInSeconds")
  timeoutInSeconds: option<maxFifteenMinutesInSeconds>,
}
@ocaml.doc("<p>This structure contains information about the canary's Lambda handler and 
      where its code is stored by CloudWatch Synthetics.</p>")
type canaryCodeOutput = {
  @ocaml.doc("<p>The entry point to use for the source code when running the canary.</p>")
  @as("Handler")
  handler: option<string_>,
  @ocaml.doc("<p>The ARN of the Lambda layer where Synthetics stores the canary script code.</p>")
  @as("SourceLocationArn")
  sourceLocationArn: option<string_>,
}
@ocaml.doc("<p>Use this structure to input your script code for the canary. This structure contains the
         Lambda handler with the location where the canary should start running the script. If the
         script is stored in an S3 bucket, the bucket name, key, and version are also included. If
         the script was passed into the canary directly, the script code is contained in the value
         of <code>Zipfile</code>. </p>")
type canaryCodeInput = {
  @ocaml.doc("<p>The entry point to use for the source code when running the canary. For canaries that use the 
         <code>syn-python-selenium-1.0</code> runtime
         or a <code>syn-nodejs.puppeteer</code> runtime earlier than <code>syn-nodejs.puppeteer-3.4</code>, 
         the handler must be specified as <code>
               <i>fileName</i>.handler</code>. For 
         <code>syn-python-selenium-1.1</code>, <code>syn-nodejs.puppeteer-3.4</code>, and later runtimes, the handler can be specified as 
            <code>
               <i>fileName</i>.<i>functionName</i>
            </code>, or
            you can specify a folder where canary scripts reside as 
<code>
               <i>folder</i>/<i>fileName</i>.<i>functionName</i>
            </code>.</p>")
  @as("Handler")
  handler: codeHandler,
  @ocaml.doc("<p>If you input your canary script directly into the canary instead of referring to an S3
         location, the value of this parameter is the base64-encoded contents of the .zip file that 
         contains the script. It must be smaller than 225 Kb.</p>
         <p>For large canary scripts, we recommend that you use an S3 location instead of inputting it 
      directly with this parameter.</p>")
  @as("ZipFile")
  zipFile: option<blob>,
  @ocaml.doc("<p>The S3 version ID of your script.</p>") @as("S3Version")
  s3Version: option<string_>,
  @ocaml.doc(
    "<p>The S3 key of your script. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html\">Working with Amazon S3 Objects</a>.</p>"
  )
  @as("S3Key")
  s3Key: option<string_>,
  @ocaml.doc("<p>If your canary script is located in S3, specify the bucket name here. Do not include <code>s3://</code> as the 
         start of the bucket name.</p>")
  @as("S3Bucket")
  s3Bucket: option<string_>,
}
type baseScreenshotIgnoreCoordinates = array<baseScreenshotConfigIgnoreCoordinate>
@ocaml.doc("<p>If this canary is to test an endpoint in a VPC, this structure contains
         information about the subnets and security groups of the VPC endpoint. 
         For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">
            Running a Canary in a VPC</a>.</p>")
type vpcConfigOutput = {
  @ocaml.doc("<p>The IDs of the security groups for this canary.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>The IDs of the subnets where this canary is to run.</p>") @as("SubnetIds")
  subnetIds: option<subnetIds>,
  @ocaml.doc("<p>The IDs of the VPC where this canary is to run.</p>") @as("VpcId")
  vpcId: option<vpcId>,
}
@ocaml.doc("<p>If this canary is to test an endpoint in a VPC, this structure contains
         information about the subnets and security groups of the VPC endpoint. 
         For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">
            Running a Canary in a VPC</a>.</p>")
type vpcConfigInput = {
  @ocaml.doc("<p>The IDs of the security groups for this canary.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>The IDs of the subnets where this canary is to run.</p>") @as("SubnetIds")
  subnetIds: option<subnetIds>,
}
type runtimeVersionList = array<runtimeVersion>
@ocaml.doc("<p>A structure that contains input information for a canary run.</p>")
type canaryRunConfigInput = {
  @ocaml.doc("<p>Specifies the keys and values to use for any environment variables
      used in the canary script. Use the following format:</p>
         <p>{ \"key1\" : \"value1\", \"key2\" : \"value2\", ...}</p>
         <p>Keys must start with a letter and be at least two characters. The total size
         of your environment variables cannot exceed 4 KB. You can't specify any Lambda
         reserved environment variables as the keys for your environment variables. For 
         more information about reserved keys, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime\">
            Runtime environment variables</a>.</p>")
  @as("EnvironmentVariables")
  environmentVariables: option<environmentVariablesMap>,
  @ocaml.doc("<p>Specifies whether this canary is to use active X-Ray tracing when it runs. Active tracing 
         enables
         this canary run to be displayed in the ServiceLens and X-Ray service maps even if the canary does 
         not hit an endpoint that has X-Ray tracing enabled. Using X-Ray tracing incurs charges.
      For more information, see  <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html\">
         Canaries and X-Ray tracing</a>.</p>
         <p>You can enable active tracing only for canaries that use version <code>syn-nodejs-2.0</code> 
      or later for their canary runtime.</p>")
  @as("ActiveTracing")
  activeTracing: option<nullableBoolean>,
  @ocaml.doc(
    "<p>The maximum amount of memory available to the canary while it is running, in MB. This value must be a multiple of 64.</p>"
  )
  @as("MemoryInMB")
  memoryInMB: option<maxSize3008>,
  @ocaml.doc("<p>How long the canary is allowed to run before it must stop. You can't set this time to be longer
         than the frequency of the runs of this canary.</p>
         <p>If you omit this field, the
         frequency of the canary is used as this value, up to a maximum of 14 minutes.</p>")
  @as("TimeoutInSeconds")
  timeoutInSeconds: option<maxFifteenMinutesInSeconds>,
}
@ocaml.doc("<p>This structure contains the details about one run of one canary.</p>")
type canaryRun = {
  @ocaml.doc("<p>The location where the canary stored artifacts from the run. Artifacts include 
         the log file, screenshots, and HAR files.</p>")
  @as("ArtifactS3Location")
  artifactS3Location: option<string_>,
  @ocaml.doc("<p>A structure that contains the start and end times of this run.</p>")
  @as("Timeline")
  timeline: option<canaryRunTimeline>,
  @ocaml.doc("<p>The status of this run.</p>") @as("Status") status: option<canaryRunStatus>,
  @ocaml.doc("<p>The name of the canary.</p>") @as("Name") name: option<canaryName>,
  @ocaml.doc("<p>A unique ID that identifies this canary run.</p>") @as("Id") id: option<uuid>,
}
@ocaml.doc(
  "<p>A structure representing a screenshot that is used as a baseline during visual monitoring comparisons made by the canary.</p>"
)
type baseScreenshot = {
  @ocaml.doc("<p>Coordinates that define the part of a screen to ignore during screenshot comparisons. To obtain the coordinates to use here, use the 
         CloudWatch Logs console to draw the boundaries on the screen. For more information, see {LINK}</p>")
  @as("IgnoreCoordinates")
  ignoreCoordinates: option<baseScreenshotIgnoreCoordinates>,
  @ocaml.doc("<p>The name of the screenshot. This is generated the first time the canary is run after the <code>UpdateCanary</code> operation that
      specified for this canary to perform visual monitoring.</p>")
  @as("ScreenshotName")
  screenshotName: string_,
}
@ocaml.doc("<p>A structure that contains the configuration for canary artifacts, including 
         the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>")
type artifactConfigOutput = {
  @ocaml.doc(
    "<p>A structure that contains the configuration of encryption settings for canary artifacts that are stored in Amazon S3. </p>"
  )
  @as("S3Encryption")
  s3Encryption: option<s3EncryptionConfig>,
}
@ocaml.doc("<p>A structure that contains the configuration for canary artifacts, including the 
         encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>")
type artifactConfigInput = {
  @ocaml.doc("<p>A structure that contains the configuration of the encryption-at-rest settings for artifacts that the canary uploads
         to Amazon S3. 
         Artifact encryption functionality is available only for canaries that use Synthetics runtime version 
         syn-nodejs-puppeteer-3.3 or later. For more information, see
         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html\">Encrypting canary artifacts</a>
         </p>")
  @as("S3Encryption")
  s3Encryption: option<s3EncryptionConfig>,
}
type canaryRuns = array<canaryRun>
@ocaml.doc(
  "<p>This structure contains information about the most recent run of a single canary.</p>"
)
type canaryLastRun = {
  @ocaml.doc("<p>The results from this canary's most recent run.</p>") @as("LastRun")
  lastRun: option<canaryRun>,
  @ocaml.doc("<p>The name of the canary.</p>") @as("CanaryName") canaryName: option<canaryName>,
}
type baseScreenshots = array<baseScreenshot>
@ocaml.doc("<p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run that is used as the baseline for screenshots, and the coordinates
         of any parts of those screenshots that are ignored during visual monitoring comparison.</p>
         <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b> runtime or later.</p>")
type visualReferenceOutput = {
  @ocaml.doc(
    "<p>The ID of the canary run that produced the screenshots that are used as the baseline for visual monitoring comparisons during future runs of this canary.</p>"
  )
  @as("BaseCanaryRunId")
  baseCanaryRunId: option<string_>,
  @ocaml.doc(
    "<p>An array of screenshots that are used as the baseline for comparisons during visual monitoring.</p>"
  )
  @as("BaseScreenshots")
  baseScreenshots: option<baseScreenshots>,
}
@ocaml.doc("<p>An object that specifies what screenshots to use as a baseline for visual monitoring by this canary, and optionally the parts of the screenshots to ignore during the visual monitoring comparison.</p>
      
         <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
         runtime or later. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html\">
            Visual monitoring</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html\">
               Visual monitoring blueprint</a>
         </p>")
type visualReferenceInput = {
  @ocaml.doc("<p>Specifies which canary run to use the screenshots from as the baseline for future visual monitoring with this canary. Valid values are 
         <code>nextrun</code> to use the screenshots from the next run after this update is made, <code>lastrun</code> to use the screenshots from the most recent run 
         before this update was made, or the value of <code>Id</code> in the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRun.html\">
            CanaryRun</a> from any past run of this canary.</p>")
  @as("BaseCanaryRunId")
  baseCanaryRunId: string_,
  @ocaml.doc("<p>An array of screenshots that will be used as the baseline for visual monitoring in future runs of this canary. If there is a screenshot that you don't want to be used for
      visual monitoring, remove it from this array.</p>")
  @as("BaseScreenshots")
  baseScreenshots: option<baseScreenshots>,
}
type canariesLastRun = array<canaryLastRun>
@ocaml.doc("<p>This structure contains all information about one canary in your account.</p>")
type canary = {
  @ocaml.doc("<p>A structure that contains the configuration for canary artifacts, including 
         the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>")
  @as("ArtifactConfig")
  artifactConfig: option<artifactConfigOutput>,
  @ocaml.doc("<p>The list of key-value pairs that are associated with the canary.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run to use as the baseline for screenshots, and the coordinates
      of any parts of the screen to ignore during the visual monitoring comparison.</p>")
  @as("VisualReference")
  visualReference: option<visualReferenceOutput>,
  @as("VpcConfig") vpcConfig: option<vpcConfigOutput>,
  @ocaml.doc("<p>Specifies the runtime version to use for the canary. For more information about
         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">
            Canary Runtime Versions</a>.</p>")
  @as("RuntimeVersion")
  runtimeVersion: option<string_>,
  @ocaml.doc("<p>The ARN of the Lambda function that is used as your canary's engine. For more information 
         about Lambda ARN format, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html\">Resources and Conditions for Lambda Actions</a>.</p>")
  @as("EngineArn")
  engineArn: option<functionArn>,
  @ocaml.doc("<p>The location in Amazon S3 where Synthetics stores artifacts from the runs of this
         canary. Artifacts include the log file, screenshots, and HAR files.</p>")
  @as("ArtifactS3Location")
  artifactS3Location: option<string_>,
  @ocaml.doc("<p>A structure that contains information about when the canary was created, modified, and
         most recently run.</p>")
  @as("Timeline")
  timeline: option<canaryTimeline>,
  @ocaml.doc("<p>A structure that contains information about the canary's status.</p>")
  @as("Status")
  status: option<canaryStatus>,
  @ocaml.doc("<p>The number of days to retain data about failed runs of this canary.</p>")
  @as("FailureRetentionPeriodInDays")
  failureRetentionPeriodInDays: option<maxSize1024>,
  @ocaml.doc("<p>The number of days to retain data about successful runs of this canary.</p>")
  @as("SuccessRetentionPeriodInDays")
  successRetentionPeriodInDays: option<maxSize1024>,
  @as("RunConfig") runConfig: option<canaryRunConfigOutput>,
  @ocaml.doc("<p>A structure that contains information about how often the canary is to run, and when
         these runs are to stop.</p>")
  @as("Schedule")
  schedule: option<canaryScheduleOutput>,
  @ocaml.doc("<p>The ARN of the IAM role used to run the canary. This role must include <code>lambda.amazonaws.com</code> as a principal in the trust
         policy.</p>")
  @as("ExecutionRoleArn")
  executionRoleArn: option<roleArn>,
  @as("Code") code: option<canaryCodeOutput>,
  @ocaml.doc("<p>The name of the canary.</p>") @as("Name") name: option<canaryName>,
  @ocaml.doc("<p>The unique ID of this canary.</p>") @as("Id") id: option<uuid>,
}
type canaries = array<canary>
@ocaml.doc("<fullname>Amazon CloudWatch Synthetics</fullname>
         <p>You can use Amazon CloudWatch Synthetics to continually monitor your services. You can
         create and manage <i>canaries</i>, which are modular, lightweight scripts 
         that monitor your endpoints and APIs
            from the outside-in. You can set up your canaries to run
         24 hours a day, once per minute. The canaries help you check the availability and latency
         of your web services and troubleshoot anomalies by investigating load time data,
         screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with CloudWatch
         ServiceLens to help you trace the causes of impacted nodes in your applications. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html\">Using ServiceLens to Monitor
            the Health of Your Applications</a> in the <i>Amazon CloudWatch User
            Guide</i>.</p>
      
         <p>Before you create and manage canaries, be aware of the security considerations. For more
         information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html\">Security
            Considerations for Synthetics Canaries</a>.</p>")
module StopCanary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the canary that you want to stop. To find the names of your 
         canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>")
    @as("Name")
    name: canaryName,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "StopCanaryCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartCanary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the canary that you want to run. To find
         canary names, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>")
    @as("Name")
    name: canaryName,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "StartCanaryCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCanary = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the canary that you want to delete. To find the names of your canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>"
    )
    @as("Name")
    name: canaryName,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "DeleteCanaryCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the canary that you're removing tags from.</p>
         <p>The ARN format of a canary is
               <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
            </code>.</p>")
    @as("ResourceArn")
    resourceArn: canaryArn,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of key-value pairs to associate with the canary.</p>") @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the canary that you're adding tags to.</p>
         <p>The ARN format of a canary is
               <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
            </code>.</p>")
    @as("ResourceArn")
    resourceArn: canaryArn,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the canary that you want to view tags for.</p>
         <p>The ARN format of a canary is
               <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>
            </code>.</p>")
    @as("ResourceArn")
    resourceArn: canaryArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The list of tag keys and values associated with the canary that you specified.</p>"
    )
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-synthetics") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRuntimeVersions = {
  type t
  type request = {
    @ocaml.doc("<p>Specify this parameter to limit how many runs are returned each time you use
         the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array of objects that display the details about each Synthetics canary runtime
         version.</p>")
    @as("RuntimeVersions")
    runtimeVersions: option<runtimeVersionList>,
  }
  @module("@aws-sdk/client-synthetics") @new
  external new: request => t = "DescribeRuntimeVersionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCanaryRuns = {
  type t
  type request = {
    @ocaml.doc("<p>Specify this parameter to limit how many runs are returned each time you use
         the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The name of the canary that you want to see runs for.</p>") @as("Name")
    name: canaryName,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>GetCanaryRuns</code> 
         operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array of structures. Each structure contains the details of one of the 
         retrieved canary runs.</p>")
    @as("CanaryRuns")
    canaryRuns: option<canaryRuns>,
  }
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "GetCanaryRunsCommand"
  let make = (~name, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCanary = {
  type t
  type request = {
    @ocaml.doc("<p>A structure that contains the configuration for canary artifacts, 
         including the encryption-at-rest settings for artifacts that 
         the canary uploads to Amazon S3.</p>")
    @as("ArtifactConfig")
    artifactConfig: option<artifactConfigInput>,
    @ocaml.doc("<p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary. 
         Artifacts include the log file, screenshots, and HAR files. The name of the
         S3 bucket can't include a period (.).</p>")
    @as("ArtifactS3Location")
    artifactS3Location: option<string_>,
    @ocaml.doc("<p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this 
      parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>
         <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>
         runtime or later. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html\">
            Visual monitoring</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html\">
               Visual monitoring blueprint</a>
         </p>")
    @as("VisualReference")
    visualReference: option<visualReferenceInput>,
    @ocaml.doc("<p>If this canary is to test an endpoint in a VPC, this structure contains
         information about the subnet and security groups of the VPC endpoint. 
         For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">
            Running a Canary in a VPC</a>.</p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfigInput>,
    @ocaml.doc("<p>The number of days to retain data about failed runs of this canary.</p>")
    @as("FailureRetentionPeriodInDays")
    failureRetentionPeriodInDays: option<maxSize1024>,
    @ocaml.doc("<p>The number of days to retain data about successful runs of this canary.</p>")
    @as("SuccessRetentionPeriodInDays")
    successRetentionPeriodInDays: option<maxSize1024>,
    @ocaml.doc("<p>A structure that contains the timeout value that is used for each individual run of the 
         canary.</p>")
    @as("RunConfig")
    runConfig: option<canaryRunConfigInput>,
    @ocaml.doc("<p>A structure that contains information about how often the canary is to run, and when
         these runs are to stop.</p>")
    @as("Schedule")
    schedule: option<canaryScheduleInput>,
    @ocaml.doc("<p>Specifies the runtime version to use for the canary.  
         For a list of valid runtime versions and for more information about
         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">
            Canary Runtime Versions</a>.</p>")
    @as("RuntimeVersion")
    runtimeVersion: option<string_>,
    @ocaml.doc("<p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
         and must include <code>lambda.amazonaws.com</code> as a principal in the trust
         policy. The role must also have the following permissions:</p>
         <ul>
            <li>
               <p>
                  <code>s3:PutObject</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetBucketLocation</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:ListAllMyBuckets</code>
               </p>
            </li>
            <li>
               <p>
                  <code>cloudwatch:PutMetricData</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:CreateLogGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:CreateLogStream</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:CreateLogStream</code>
               </p>
            </li>
         </ul>")
    @as("ExecutionRoleArn")
    executionRoleArn: option<roleArn>,
    @ocaml.doc("<p>A structure that includes the entry point from which the canary should start
         running your script. If the script is stored in 
         an S3 bucket, the bucket name, key, and version are also included.
      </p>")
    @as("Code")
    code: option<canaryCodeInput>,
    @ocaml.doc("<p>The name of the canary that you want to update. To find the names of your 
         canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>
         <p>You cannot change the name of a canary that has already been created.</p>")
    @as("Name")
    name: canaryName,
  }
  type response = {.}
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "UpdateCanaryCommand"
  let make = (
    ~name,
    ~artifactConfig=?,
    ~artifactS3Location=?,
    ~visualReference=?,
    ~vpcConfig=?,
    ~failureRetentionPeriodInDays=?,
    ~successRetentionPeriodInDays=?,
    ~runConfig=?,
    ~schedule=?,
    ~runtimeVersion=?,
    ~executionRoleArn=?,
    ~code=?,
    (),
  ) =>
    new({
      artifactConfig: artifactConfig,
      artifactS3Location: artifactS3Location,
      visualReference: visualReference,
      vpcConfig: vpcConfig,
      failureRetentionPeriodInDays: failureRetentionPeriodInDays,
      successRetentionPeriodInDays: successRetentionPeriodInDays,
      runConfig: runConfig,
      schedule: schedule,
      runtimeVersion: runtimeVersion,
      executionRoleArn: executionRoleArn,
      code: code,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCanariesLastRun = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter to return only canaries that match the names that you specify here. You can
         specify as many as five canary names.</p>
         <p>If you specify this parameter, the operation is successful only if you have authorization to view
         all the canaries that you specify in your request. If you do not have permission to view any of 
         the canaries, the request fails with a 403 response.</p>
         <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an 
         IAM policy that restricts which canaries that you are allowed to view. For more information, 
         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html\">
            Limiting a user to viewing specific canaries</a>.</p>")
    @as("Names")
    names: option<describeCanariesLastRunNameFilter>,
    @ocaml.doc("<p>Specify this parameter to limit how many runs are returned each time you use
         the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxSize100>,
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>An array that contains the information from the most recent run of each
         canary.</p>")
    @as("CanariesLastRun")
    canariesLastRun: option<canariesLastRun>,
  }
  @module("@aws-sdk/client-synthetics") @new
  external new: request => t = "DescribeCanariesLastRunCommand"
  let make = (~names=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({names: names, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCanary = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the canary that you want details for.</p>") @as("Name")
    name: canaryName,
  }
  type response = {
    @ocaml.doc("<p>A strucure that contains the full information about the canary.</p>")
    @as("Canary")
    canary: option<canary>,
  }
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "GetCanaryCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCanary = {
  type t
  type request = {
    @ocaml.doc("<p>A structure that contains the configuration for canary artifacts, including 
         the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>")
    @as("ArtifactConfig")
    artifactConfig: option<artifactConfigInput>,
    @ocaml.doc("<p>A list of key-value pairs to associate with the canary. 
         You can associate as many as 50 tags with a canary.</p>
         <p>Tags can help you organize and categorize your
         resources. You can also use them to scope user permissions, by 
         granting a user permission to access or change only the resources that have
         certain tag values.</p>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>If this canary is to test an endpoint in a VPC, this structure contains
      information about the subnet and security groups of the VPC endpoint. 
      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">
         Running a Canary in a VPC</a>.</p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfigInput>,
    @ocaml.doc("<p>Specifies the runtime version to use for the canary. For a list of valid
         runtime versions and more information about
         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">
            Canary Runtime Versions</a>.</p>")
    @as("RuntimeVersion")
    runtimeVersion: string_,
    @ocaml.doc("<p>The number of days to retain data about failed runs of this canary. If you omit 
         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>")
    @as("FailureRetentionPeriodInDays")
    failureRetentionPeriodInDays: option<maxSize1024>,
    @ocaml.doc("<p>The number of days to retain data about successful runs of this canary. If you omit 
         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>")
    @as("SuccessRetentionPeriodInDays")
    successRetentionPeriodInDays: option<maxSize1024>,
    @ocaml.doc("<p>A structure that contains the configuration for individual canary runs, 
         such as timeout value.</p>")
    @as("RunConfig")
    runConfig: option<canaryRunConfigInput>,
    @ocaml.doc("<p>A structure that contains information about how often the canary is to run and when
         these test runs are to stop.</p>")
    @as("Schedule")
    schedule: canaryScheduleInput,
    @ocaml.doc("<p>The ARN of the IAM role to be used to run the canary. This role must already exist, 
         and must include <code>lambda.amazonaws.com</code> as a principal in the trust
         policy. The role must also have the following permissions:</p>
         <ul>
            <li>
               <p>
                  <code>s3:PutObject</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:GetBucketLocation</code>
               </p>
            </li>
            <li>
               <p>
                  <code>s3:ListAllMyBuckets</code>
               </p>
            </li>
            <li>
               <p>
                  <code>cloudwatch:PutMetricData</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:CreateLogGroup</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:CreateLogStream</code>
               </p>
            </li>
            <li>
               <p>
                  <code>logs:PutLogEvents</code>
               </p>
            </li>
         </ul>")
    @as("ExecutionRoleArn")
    executionRoleArn: roleArn,
    @ocaml.doc("<p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this
         canary. Artifacts include the log file, screenshots, and HAR files.  The name of the 
         S3 bucket can't include a period (.).</p>")
    @as("ArtifactS3Location")
    artifactS3Location: string_,
    @ocaml.doc("<p>A structure that includes the entry point from which the canary should start
         running your script. If the script is stored in 
         an S3 bucket, the bucket name, key, and version are also included.
      </p>")
    @as("Code")
    code: canaryCodeInput,
    @ocaml.doc("<p>The name for this canary. Be sure to give it a descriptive name 
         that distinguishes it from other canaries in your account.</p>
         <p>Do not include secrets or proprietary information in your canary names. The canary name
         makes up part of the canary ARN, and the ARN is included in outbound calls over the
         internet. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html\">Security
            Considerations for Synthetics Canaries</a>.</p>")
    @as("Name")
    name: canaryName,
  }
  type response = {
    @ocaml.doc("<p>The full details about the canary you have created.</p>") @as("Canary")
    canary: option<canary>,
  }
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "CreateCanaryCommand"
  let make = (
    ~runtimeVersion,
    ~schedule,
    ~executionRoleArn,
    ~artifactS3Location,
    ~code,
    ~name,
    ~artifactConfig=?,
    ~tags=?,
    ~vpcConfig=?,
    ~failureRetentionPeriodInDays=?,
    ~successRetentionPeriodInDays=?,
    ~runConfig=?,
    (),
  ) =>
    new({
      artifactConfig: artifactConfig,
      tags: tags,
      vpcConfig: vpcConfig,
      runtimeVersion: runtimeVersion,
      failureRetentionPeriodInDays: failureRetentionPeriodInDays,
      successRetentionPeriodInDays: successRetentionPeriodInDays,
      runConfig: runConfig,
      schedule: schedule,
      executionRoleArn: executionRoleArn,
      artifactS3Location: artifactS3Location,
      code: code,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCanaries = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter to return only canaries that match the names that you specify here. You can
         specify as many as five canary names.</p>
         <p>If you specify this parameter, the operation is successful only if you have authorization to view
         all the canaries that you specify in your request. If you do not have permission to view any of 
         the canaries, the request fails with a 403 response.</p>
         <p>You are required to use this parameter if you are logged on to a user or role that has an 
         IAM policy that restricts which canaries that you are allowed to view. For more information, 
         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html\">
            Limiting a user to viewing specific canaries</a>.</p>")
    @as("Names")
    names: option<describeCanariesNameFilter>,
    @ocaml.doc("<p>Specify this parameter to limit how many canaries are returned each time you use
      the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxCanaryResults>,
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A token that indicates that there is more data
         available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next 
         set of results.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>Returns an array. Each item in the array contains the full information about
         one canary.</p>")
    @as("Canaries")
    canaries: option<canaries>,
  }
  @module("@aws-sdk/client-synthetics") @new external new: request => t = "DescribeCanariesCommand"
  let make = (~names=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({names: names, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
