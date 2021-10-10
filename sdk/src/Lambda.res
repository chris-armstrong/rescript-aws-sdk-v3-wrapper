type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lambda") @new
external createClient: unit => awsServiceClient = "LambdaClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workingDirectory = string
type weight = float
type vpcId = string
type version = string
type unreservedConcurrentExecutions = int
type uri = string
type tumblingWindowInSeconds = int
type tracingMode = [@as("PassThrough") #PassThrough | @as("Active") #Active]
type topic = string
type timestamp_ = string
type timeout = int
type throttleReason = [
  | @as("CallerRateLimitExceeded") #CallerRateLimitExceeded
  | @as("ReservedFunctionInvocationRateLimitExceeded") #ReservedFunctionInvocationRateLimitExceeded
  | @as("ReservedFunctionConcurrentInvocationLimitExceeded")
  #ReservedFunctionConcurrentInvocationLimitExceeded
  | @as("FunctionInvocationRateLimitExceeded") #FunctionInvocationRateLimitExceeded
  | @as("ConcurrentInvocationLimitExceeded") #ConcurrentInvocationLimitExceeded
]
type tagValue = string
type tagKey = string
type subnetId = string
type string_ = string
type statementId = string
type stateReasonCode = [
  | @as("InvalidImage") #InvalidImage
  | @as("ImageAccessDenied") #ImageAccessDenied
  | @as("ImageDeleted") #ImageDeleted
  | @as("InvalidSecurityGroup") #InvalidSecurityGroup
  | @as("InvalidSubnet") #InvalidSubnet
  | @as("SubnetOutOfIPAddresses") #SubnetOutOfIPAddresses
  | @as("InternalError") #InternalError
  | @as("InvalidConfiguration") #InvalidConfiguration
  | @as("InsufficientRolePermissions") #InsufficientRolePermissions
  | @as("EniLimitExceeded") #EniLimitExceeded
  | @as("Restoring") #Restoring
  | @as("Creating") #Creating
  | @as("Idle") #Idle
]
type stateReason = string
type state = [
  | @as("Failed") #Failed
  | @as("Inactive") #Inactive
  | @as("Active") #Active
  | @as("Pending") #Pending
]
type sourceOwner = string
type sourceAccessType = [
  | @as("SASL_SCRAM_256_AUTH") #SASL_SCRAM_256_AUTH
  | @as("SASL_SCRAM_512_AUTH") #SASL_SCRAM_512_AUTH
  | @as("VPC_SECURITY_GROUP") #VPC_SECURITY_GROUP
  | @as("VPC_SUBNET") #VPC_SUBNET
  | @as("BASIC_AUTH") #BASIC_AUTH
]
type sensitiveString = string
type securityGroupId = string
type s3ObjectVersion = string
type s3Key = string
type s3Bucket = string
type runtime = [
  | @as("provided.al2") #Provided_Al2
  | @as("provided") #Provided
  | @as("ruby2.7") #Ruby2_7
  | @as("ruby2.5") #Ruby2_5
  | @as("go1.x") #Go1_X
  | @as("nodejs4.3-edge") #Nodejs4_3_Edge
  | @as("dotnetcore3.1") #Dotnetcore3_1
  | @as("dotnetcore2.1") #Dotnetcore2_1
  | @as("dotnetcore2.0") #Dotnetcore2_0
  | @as("dotnetcore1.0") #Dotnetcore1_0
  | @as("python3.8") #Python3_8
  | @as("python3.7") #Python3_7
  | @as("python3.6") #Python3_6
  | @as("python2.7") #Python2_7
  | @as("java11") #Java11
  | @as("java8.al2") #Java8_Al2
  | @as("java8") #Java8
  | @as("nodejs14.x") #Nodejs14_X
  | @as("nodejs12.x") #Nodejs12_X
  | @as("nodejs10.x") #Nodejs10_X
  | @as("nodejs8.10") #Nodejs8_10
  | @as("nodejs6.10") #Nodejs6_10
  | @as("nodejs4.3") #Nodejs4_3
  | @as("nodejs") #Nodejs
]
type roleArn = string
type resourceArn = string
type reservedConcurrentExecutions = int
type queue = string
type qualifier = string
type provisionedConcurrencyStatusEnum = [
  | @as("FAILED") #FAILED
  | @as("READY") #READY
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type principal = string
type positiveInteger = int
type parallelizationFactor = int
type packageType = [@as("Image") #Image | @as("Zip") #Zip]
type organizationId = string
type nonNegativeInteger = int
type namespacedStatementId = string
type namespacedFunctionName = string
type nameSpacedFunctionArn = string
type memorySize = int
type maximumRetryAttemptsEventSourceMapping = int
type maximumRetryAttempts = int
type maximumRecordAgeInSeconds = int
type maximumEventAgeInSeconds = int
type maximumBatchingWindowInSeconds = int
type maxProvisionedConcurrencyConfigListItems = int
type maxListItems = int
type maxLayerListItems = int
type maxFunctionEventInvokeConfigListItems = int
type masterRegion = string
type long = float
type logType = [@as("Tail") #Tail | @as("None") #None]
type localMountPath = string
type licenseInfo = string
type layerVersionNumber = float
type layerVersionArn = string
type layerPermissionAllowedPrincipal = string
type layerPermissionAllowedAction = string
type layerName = string
type layerArn = string
type lastUpdateStatusReasonCode = [
  | @as("InvalidImage") #InvalidImage
  | @as("ImageAccessDenied") #ImageAccessDenied
  | @as("ImageDeleted") #ImageDeleted
  | @as("InvalidSecurityGroup") #InvalidSecurityGroup
  | @as("InvalidSubnet") #InvalidSubnet
  | @as("SubnetOutOfIPAddresses") #SubnetOutOfIPAddresses
  | @as("InternalError") #InternalError
  | @as("InvalidConfiguration") #InvalidConfiguration
  | @as("InsufficientRolePermissions") #InsufficientRolePermissions
  | @as("EniLimitExceeded") #EniLimitExceeded
]
type lastUpdateStatusReason = string
type lastUpdateStatus = [
  | @as("InProgress") #InProgress
  | @as("Failed") #Failed
  | @as("Successful") #Successful
]
type kmskeyArn = string
type invocationType = [
  | @as("DryRun") #DryRun
  | @as("RequestResponse") #RequestResponse
  | @as("Event") #Event
]
type integer_ = int
type httpStatus = int
type handler = string
type functionVersion = [@as("ALL") #ALL]
type functionResponseType = [@as("ReportBatchItemFailures") #ReportBatchItemFailures]
type functionName = string
type functionArn = string
type fileSystemArn = string
type eventSourceToken = string
type eventSourcePosition = [
  | @as("AT_TIMESTAMP") #AT_TIMESTAMP
  | @as("LATEST") #LATEST
  | @as("TRIM_HORIZON") #TRIM_HORIZON
]
type environmentVariableValue = string
type environmentVariableName = string
type endpoint = string
type endPointType = [@as("KAFKA_BOOTSTRAP_SERVERS") #KAFKA_BOOTSTRAP_SERVERS]
type enabled = bool
type destinationArn = string
type description = string
type date = Js.Date.t
type codeSigningPolicy = [@as("Enforce") #Enforce | @as("Warn") #Warn]
type codeSigningConfigId = string
type codeSigningConfigArn = string
type boolean_ = bool
type blobStream = NodeJs.Buffer.t
type blob = NodeJs.Buffer.t
type bisectBatchOnFunctionError = bool
type batchSize = int
type arn = string
type alias = string
type additionalVersion = string
type action = string
@ocaml.doc("<p>The function's AWS X-Ray tracing configuration.</p>")
type tracingConfigResponse = {
  @ocaml.doc("<p>The tracing mode.</p>") @as("Mode") mode: option<tracingMode>,
}
@ocaml.doc("<p>The function's AWS X-Ray tracing configuration. To sample and record incoming requests, set <code>Mode</code>
      to <code>Active</code>.</p>")
type tracingConfig = {@ocaml.doc("<p>The tracing mode.</p>") @as("Mode") mode: option<tracingMode>}
type topics = array<topic>
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type stringList = array<string_>
@ocaml.doc(
  "<p>You can specify the authentication protocol, or the VPC components to secure access to your event source.</p>"
)
type sourceAccessConfiguration = {
  @ocaml.doc(
    "<p>The value for your chosen configuration in <code>Type</code>. For example: <code>\"URI\": \"arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName\"</code>.</p>"
  )
  @as("URI")
  uri: option<uri>,
  @ocaml.doc("<p>The type of authentication protocol or the VPC components for your event source. For example: <code>\"Type\":\"SASL_SCRAM_512_AUTH\"</code>.</p>
         <ul>
            <li>
               <p>
                  <code>BASIC_AUTH</code> - (MQ) The Secrets Manager secret that stores your broker credentials.</p>
            </li>
            <li>
               <p>
                  <code>VPC_SUBNET</code> - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your Self-Managed Apache Kafka cluster.</p>
            </li>
            <li>
               <p>
                  <code>VPC_SECURITY_GROUP</code> - The VPC security group used to manage access to your Self-Managed Apache Kafka brokers.</p>
            </li>
            <li>
               <p>
                  <code>SASL_SCRAM_256_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your Self-Managed Apache Kafka brokers.</p>
            </li>
            <li>
               <p>
                  <code>SASL_SCRAM_512_AUTH</code> - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your Self-Managed Apache Kafka brokers.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<sourceAccessType>,
}
type signingProfileVersionArns = array<arn>
type securityGroupIds = array<securityGroupId>
type queues = array<queue>
@ocaml.doc(
  "<p>Details about the provisioned concurrency configuration for a function alias or version.</p>"
)
type provisionedConcurrencyConfigListItem = {
  @ocaml.doc(
    "<p>The date and time that a user last updated the configuration, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601 format</a>.</p>"
  )
  @as("LastModified")
  lastModified: option<timestamp_>,
  @ocaml.doc(
    "<p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>"
  )
  @as("StatusReason")
  statusReason: option<string_>,
  @ocaml.doc("<p>The status of the allocation process.</p>") @as("Status")
  status: option<provisionedConcurrencyStatusEnum>,
  @ocaml.doc("<p>The amount of provisioned concurrency allocated.</p>")
  @as("AllocatedProvisionedConcurrentExecutions")
  allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
  @ocaml.doc("<p>The amount of provisioned concurrency available.</p>")
  @as("AvailableProvisionedConcurrentExecutions")
  availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
  @ocaml.doc("<p>The amount of provisioned concurrency requested.</p>")
  @as("RequestedProvisionedConcurrentExecutions")
  requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alias or version.</p>") @as("FunctionArn")
  functionArn: option<functionArn>,
}
@ocaml.doc("<p>A destination for events that were processed successfully.</p>")
type onSuccess = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination resource.</p>")
  @as("Destination")
  destination: option<destinationArn>,
}
@ocaml.doc("<p>A destination for events that failed processing.</p>")
type onFailure = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the destination resource.</p>")
  @as("Destination")
  destination: option<destinationArn>,
}
@ocaml.doc("<p>Details about a version of an <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">AWS Lambda
        layer</a>.</p>")
type layerVersionContentOutput = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN)  of a signing job.</p>") @as("SigningJobArn")
  signingJobArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a signing profile version.</p>")
  @as("SigningProfileVersionArn")
  signingProfileVersionArn: option<string_>,
  @ocaml.doc("<p>The size of the layer archive in bytes.</p>") @as("CodeSize")
  codeSize: option<long>,
  @ocaml.doc("<p>The SHA-256 hash of the layer archive.</p>") @as("CodeSha256")
  codeSha256: option<string_>,
  @ocaml.doc("<p>A link to the layer archive in Amazon S3 that is valid for 10 minutes.</p>")
  @as("Location")
  location: option<string_>,
}
@ocaml.doc("<p>A ZIP archive that contains the contents of an <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">AWS Lambda
        layer</a>. You can specify either an Amazon S3 location,
      or upload a layer archive directly.</p>")
type layerVersionContentInput = {
  @ocaml.doc("<p>The base64-encoded contents of the layer archive. AWS SDK and AWS CLI clients handle the encoding for
      you.</p>")
  @as("ZipFile")
  zipFile: option<blob>,
  @ocaml.doc("<p>For versioned objects, the version of the layer archive object to use.</p>")
  @as("S3ObjectVersion")
  s3ObjectVersion: option<s3ObjectVersion>,
  @ocaml.doc("<p>The Amazon S3 key of the layer archive.</p>") @as("S3Key") s3Key: option<s3Key>,
  @ocaml.doc("<p>The Amazon S3 bucket of the layer archive.</p>") @as("S3Bucket")
  s3Bucket: option<s3Bucket>,
}
type layerList = array<layerVersionArn>
@ocaml.doc("<p>An <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">AWS Lambda
        layer</a>.</p>")
type layer = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN)  of a signing job.</p>") @as("SigningJobArn")
  signingJobArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for a signing profile version.</p>")
  @as("SigningProfileVersionArn")
  signingProfileVersionArn: option<arn>,
  @ocaml.doc("<p>The size of the layer archive in bytes.</p>") @as("CodeSize")
  codeSize: option<long>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function layer.</p>") @as("Arn")
  arn: option<layerVersionArn>,
}
@ocaml.doc("<p>Error response to GetFunctionConfiguration.</p>")
type imageConfigError = {
  @ocaml.doc("<p>Error message.</p>") @as("Message") message: option<sensitiveString>,
  @ocaml.doc("<p>Error code.</p>") @as("ErrorCode") errorCode: option<string_>,
}
type functionResponseTypeList = array<functionResponseType>
@ocaml.doc("<p>Details about a function's deployment package.</p>")
type functionCodeLocation = {
  @ocaml.doc("<p>The resolved URI for the image.</p>") @as("ResolvedImageUri")
  resolvedImageUri: option<string_>,
  @ocaml.doc("<p>URI of a container image in the Amazon ECR registry.</p>") @as("ImageUri")
  imageUri: option<string_>,
  @ocaml.doc("<p>A presigned URL that you can use to download the deployment package.</p>")
  @as("Location")
  location: option<string_>,
  @ocaml.doc("<p>The service that's hosting the file.</p>") @as("RepositoryType")
  repositoryType: option<string_>,
}
@ocaml.doc("<p>The code for the Lambda function. You can specify either an object in Amazon S3, upload a .zip file archive deployment
      package directly, or specify the URI of a container image.</p>")
type functionCode = {
  @ocaml.doc("<p>URI of a container image in the Amazon ECR registry.</p>") @as("ImageUri")
  imageUri: option<string_>,
  @ocaml.doc("<p>For versioned objects, the version of the deployment package object to use.</p>")
  @as("S3ObjectVersion")
  s3ObjectVersion: option<s3ObjectVersion>,
  @ocaml.doc("<p>The Amazon S3 key of the deployment package.</p>") @as("S3Key")
  s3Key: option<s3Key>,
  @ocaml.doc(
    "<p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>"
  )
  @as("S3Bucket")
  s3Bucket: option<s3Bucket>,
  @ocaml.doc("<p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for
  you.</p>")
  @as("ZipFile")
  zipFile: option<blob>,
}
type functionArnList = array<functionArn>
@ocaml.doc(
  "<p>Details about the connection between a Lambda function and an Amazon EFS file system.</p>"
)
type fileSystemConfig = {
  @ocaml.doc(
    "<p>The path where the function can access the file system, starting with <code>/mnt/</code>.</p>"
  )
  @as("LocalMountPath")
  localMountPath: localMountPath,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Amazon EFS access point that provides access to the file system.</p>"
  )
  @as("Arn")
  arn: fileSystemArn,
}
type environmentVariables = Js.Dict.t<environmentVariableValue>
@ocaml.doc("<p>Error messages for environment variables that couldn't be applied.</p>")
type environmentError = {
  @ocaml.doc("<p>The error message.</p>") @as("Message") message: option<sensitiveString>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<string_>,
}
type endpointLists = array<endpoint>
@ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq\">dead-letter queue</a> for
      failed asynchronous invocations.</p>")
type deadLetterConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>")
  @as("TargetArn")
  targetArn: option<resourceArn>,
}
type concurrency = {
  @ocaml.doc(
    "<p>The number of concurrent executions that are reserved for this function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html\">Managing Concurrency</a>.</p>"
  )
  @as("ReservedConcurrentExecutions")
  reservedConcurrentExecutions: option<reservedConcurrentExecutions>,
}
type compatibleRuntimes = array<runtime>
@ocaml.doc("<p>Code signing configuration policies specifies the validation failure action for signature mismatch or
       expiry.</p>")
type codeSigningPolicies = {
  @ocaml.doc("<p>Code signing configuration policy for deployment validation failure. If you set the policy to
      <code>Enforce</code>, Lambda blocks the deployment request if signature validation checks fail. If you set the
      policy to <code>Warn</code>, Lambda allows the deployment and creates a CloudWatch log. </p>
         <p>Default value: <code>Warn</code>
         </p>")
  @as("UntrustedArtifactOnDeployment")
  untrustedArtifactOnDeployment: option<codeSigningPolicy>,
}
type additionalVersionWeights = Js.Dict.t<weight>
@ocaml.doc("<p>The number of functions and amount of storage in use.</p>")
type accountUsage = {
  @ocaml.doc("<p>The number of Lambda functions.</p>") @as("FunctionCount")
  functionCount: option<long>,
  @ocaml.doc(
    "<p>The amount of storage space, in bytes, that's being used by deployment packages and layer archives.</p>"
  )
  @as("TotalCodeSize")
  totalCodeSize: option<long>,
}
@ocaml.doc(
  "<p>Limits that are related to concurrency and storage. All file and storage sizes are in bytes.</p>"
)
type accountLimit = {
  @ocaml.doc("<p>The maximum number of simultaneous function executions, minus the capacity that's reserved for individual
      functions with <a>PutFunctionConcurrency</a>.</p>")
  @as("UnreservedConcurrentExecutions")
  unreservedConcurrentExecutions: option<unreservedConcurrentExecutions>,
  @ocaml.doc("<p>The maximum number of simultaneous function executions.</p>")
  @as("ConcurrentExecutions")
  concurrentExecutions: option<integer_>,
  @ocaml.doc("<p>The maximum size of a deployment package when it's uploaded directly to AWS Lambda. Use Amazon S3 for larger
      files.</p>")
  @as("CodeSizeZipped")
  codeSizeZipped: option<long>,
  @ocaml.doc(
    "<p>The maximum size of a function's deployment package and layers when they're extracted.</p>"
  )
  @as("CodeSizeUnzipped")
  codeSizeUnzipped: option<long>,
  @ocaml.doc(
    "<p>The amount of storage space that you can use for all deployment packages and layer archives.</p>"
  )
  @as("TotalCodeSize")
  totalCodeSize: option<long>,
}
@ocaml.doc("<p>The VPC security groups and subnets that are attached to a Lambda function.</p>")
type vpcConfigResponse = {
  @ocaml.doc("<p>The ID of the VPC.</p>") @as("VpcId") vpcId: option<vpcId>,
  @ocaml.doc("<p>A list of VPC security groups IDs.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>A list of VPC subnet IDs.</p>") @as("SubnetIds") subnetIds: option<subnetIds>,
}
@ocaml.doc(
  "<p>The VPC security groups and subnets that are attached to a Lambda function. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html\">VPC Settings</a>.</p>"
)
type vpcConfig = {
  @ocaml.doc("<p>A list of VPC security groups IDs.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<securityGroupIds>,
  @ocaml.doc("<p>A list of VPC subnet IDs.</p>") @as("SubnetIds") subnetIds: option<subnetIds>,
}
type sourceAccessConfigurations = array<sourceAccessConfiguration>
type provisionedConcurrencyConfigList = array<provisionedConcurrencyConfigListItem>
type layersReferenceList = array<layer>
@ocaml.doc("<p>Details about a version of an <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">AWS Lambda
        layer</a>.</p>")
type layerVersionsListItem = {
  @ocaml.doc("<p>The layer's open-source license.</p>") @as("LicenseInfo")
  licenseInfo: option<licenseInfo>,
  @ocaml.doc("<p>The layer's compatible runtimes.</p>") @as("CompatibleRuntimes")
  compatibleRuntimes: option<compatibleRuntimes>,
  @ocaml.doc(
    "<p>The date that the version was created, in ISO 8601 format. For example, <code>2018-11-27T15:10:45.123+0000</code>.</p>"
  )
  @as("CreatedDate")
  createdDate: option<timestamp_>,
  @ocaml.doc("<p>The description of the version.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The version number.</p>") @as("Version") version: option<layerVersionNumber>,
  @ocaml.doc("<p>The ARN of the layer version.</p>") @as("LayerVersionArn")
  layerVersionArn: option<layerVersionArn>,
}
@ocaml.doc("<p>Configuration values that override the container image Dockerfile settings. See   
      <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms\">Container settings</a>. </p>")
type imageConfig = {
  @ocaml.doc("<p>Specifies the working directory.</p>") @as("WorkingDirectory")
  workingDirectory: option<workingDirectory>,
  @ocaml.doc("<p>Specifies parameters that you want to pass in with ENTRYPOINT. </p>")
  @as("Command")
  command: option<stringList>,
  @ocaml.doc("<p>Specifies the entry point to their application, which is typically the location of the runtime
      executable.</p>")
  @as("EntryPoint")
  entryPoint: option<stringList>,
}
type fileSystemConfigList = array<fileSystemConfig>
@ocaml.doc("<p>The results of an operation to update or read environment variables. If the operation is successful, the
      response contains the environment variables. If it failed, the response contains details about the error.</p>")
type environmentResponse = {
  @ocaml.doc("<p>Error messages for environment variables that couldn't be applied.</p>")
  @as("Error")
  error: option<environmentError>,
  @ocaml.doc("<p>Environment variable key-value pairs.</p>") @as("Variables")
  variables: option<environmentVariables>,
}
@ocaml.doc("<p>A function's environment variable settings.</p>")
type environment = {
  @ocaml.doc("<p>Environment variable key-value pairs.</p>") @as("Variables")
  variables: option<environmentVariables>,
}
type endpoints = Js.Dict.t<endpointLists>
@ocaml.doc(
  "<p>A configuration object that specifies the destination of an event after Lambda processes it.</p>"
)
type destinationConfig = {
  @ocaml.doc("<p>The destination configuration for failed invocations.</p>") @as("OnFailure")
  onFailure: option<onFailure>,
  @ocaml.doc("<p>The destination configuration for successful invocations.</p>") @as("OnSuccess")
  onSuccess: option<onSuccess>,
}
@ocaml.doc("<p>List of signing profiles that can sign a code package. </p>")
type allowedPublishers = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for each of the signing profiles. A signing profile defines a trusted user
      who can sign a code package. </p>")
  @as("SigningProfileVersionArns")
  signingProfileVersionArns: signingProfileVersionArns,
}
@ocaml.doc(
  "<p>The <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html\">traffic-shifting</a> configuration of a Lambda function alias.</p>"
)
type aliasRoutingConfiguration = {
  @ocaml.doc("<p>The second version, and the percentage of traffic that's routed to it.</p>")
  @as("AdditionalVersionWeights")
  additionalVersionWeights: option<additionalVersionWeights>,
}
@ocaml.doc("<p>The Self-Managed Apache Kafka cluster for your event source.</p>")
type selfManagedEventSource = {
  @ocaml.doc(
    "<p>The list of bootstrap servers for your Kafka brokers in the following format: <code>\"KAFKA_BOOTSTRAP_SERVERS\": [\"abc.xyz.com:xxxx\",\"abc2.xyz.com:xxxx\"]</code>.</p>"
  )
  @as("Endpoints")
  endpoints: option<endpoints>,
}
@ocaml.doc("<p>Details about an <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">AWS Lambda
        layer</a>.</p>")
type layersListItem = {
  @ocaml.doc("<p>The newest version of the layer.</p>") @as("LatestMatchingVersion")
  latestMatchingVersion: option<layerVersionsListItem>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function layer.</p>") @as("LayerArn")
  layerArn: option<layerArn>,
  @ocaml.doc("<p>The name of the layer.</p>") @as("LayerName") layerName: option<layerName>,
}
type layerVersionsList = array<layerVersionsListItem>
@ocaml.doc("<p>Response to GetFunctionConfiguration request.</p>")
type imageConfigResponse = {
  @ocaml.doc("<p>Error response to GetFunctionConfiguration.</p>") @as("Error")
  error: option<imageConfigError>,
  @ocaml.doc("<p>Configuration values that override the container image Dockerfile.</p>")
  @as("ImageConfig")
  imageConfig: option<imageConfig>,
}
type functionEventInvokeConfig = {
  @ocaml.doc("<p>A destination for events after they have been sent to a function for processing.</p>
         <p class=\"title\">
            <b>Destinations</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
            </li>
            <li>
               <p>
                  <b>Queue</b> - The ARN of an SQS queue.</p>
            </li>
            <li>
               <p>
                  <b>Topic</b> - The ARN of an SNS topic.</p>
            </li>
            <li>
               <p>
                  <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
            </li>
         </ul>")
  @as("DestinationConfig")
  destinationConfig: option<destinationConfig>,
  @ocaml.doc("<p>The maximum age of a request that Lambda sends to a function for processing.</p>")
  @as("MaximumEventAgeInSeconds")
  maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
  @ocaml.doc("<p>The maximum number of times to retry when the function returns an error.</p>")
  @as("MaximumRetryAttempts")
  maximumRetryAttempts: option<maximumRetryAttempts>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function.</p>") @as("FunctionArn")
  functionArn: option<functionArn>,
  @ocaml.doc("<p>The date and time that the configuration was last updated.</p>")
  @as("LastModified")
  lastModified: option<date>,
}
@ocaml.doc("<p>Details about a Code signing configuration. </p>")
type codeSigningConfig = {
  @ocaml.doc(
    "<p>The date and time that the Code signing configuration was last modified, in ISO-8601 format (YYYY-MM-DDThh:mm:ss.sTZD). </p>"
  )
  @as("LastModified")
  lastModified: timestamp_,
  @ocaml.doc(
    "<p>The code signing policy controls the validation failure action for signature mismatch or expiry.</p>"
  )
  @as("CodeSigningPolicies")
  codeSigningPolicies: codeSigningPolicies,
  @ocaml.doc("<p>List of allowed publishers.</p>") @as("AllowedPublishers")
  allowedPublishers: allowedPublishers,
  @ocaml.doc("<p>Code signing configuration description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Code signing configuration.</p>")
  @as("CodeSigningConfigArn")
  codeSigningConfigArn: codeSigningConfigArn,
  @ocaml.doc("<p>Unique identifer for the Code signing configuration.</p>")
  @as("CodeSigningConfigId")
  codeSigningConfigId: codeSigningConfigId,
}
@ocaml.doc(
  "<p>Provides configuration information about a Lambda function <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html\">alias</a>.</p>"
)
type aliasConfiguration = {
  @ocaml.doc("<p>A unique identifier that changes when you update the alias.</p>") @as("RevisionId")
  revisionId: option<string_>,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html\">routing
        configuration</a> of the alias.</p>")
  @as("RoutingConfig")
  routingConfig: option<aliasRoutingConfiguration>,
  @ocaml.doc("<p>A description of the alias.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The function version that the alias invokes.</p>") @as("FunctionVersion")
  functionVersion: option<version>,
  @ocaml.doc("<p>The name of the alias.</p>") @as("Name") name: option<alias>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alias.</p>") @as("AliasArn")
  aliasArn: option<functionArn>,
}
type layersList = array<layersListItem>
type functionEventInvokeConfigList = array<functionEventInvokeConfig>
@ocaml.doc("<p>Details about a function's configuration.</p>")
type functionConfiguration = {
  @ocaml.doc("<p>The ARN of the signing job.</p>") @as("SigningJobArn") signingJobArn: option<arn>,
  @ocaml.doc("<p>The ARN of the signing profile version.</p>") @as("SigningProfileVersionArn")
  signingProfileVersionArn: option<arn>,
  @ocaml.doc("<p>The function's image configuration values.</p>") @as("ImageConfigResponse")
  imageConfigResponse: option<imageConfigResponse>,
  @ocaml.doc(
    "<p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for .zip file archive.</p>"
  )
  @as("PackageType")
  packageType: option<packageType>,
  @ocaml.doc("<p>Connection settings for an Amazon EFS file system.</p>") @as("FileSystemConfigs")
  fileSystemConfigs: option<fileSystemConfigList>,
  @ocaml.doc("<p>The reason code for the last update that was performed on the function.</p>")
  @as("LastUpdateStatusReasonCode")
  lastUpdateStatusReasonCode: option<lastUpdateStatusReasonCode>,
  @ocaml.doc("<p>The reason for the last update that was performed on the function.</p>")
  @as("LastUpdateStatusReason")
  lastUpdateStatusReason: option<lastUpdateStatusReason>,
  @ocaml.doc("<p>The status of the last update that was performed on the function. This is first set to <code>Successful</code>
      after function creation completes.</p>")
  @as("LastUpdateStatus")
  lastUpdateStatus: option<lastUpdateStatus>,
  @ocaml.doc("<p>The reason code for the function's current state. When the code is <code>Creating</code>, you can't invoke or
      modify the function.</p>")
  @as("StateReasonCode")
  stateReasonCode: option<stateReasonCode>,
  @ocaml.doc("<p>The reason for the function's current state.</p>") @as("StateReason")
  stateReason: option<stateReason>,
  @ocaml.doc("<p>The current state of the function. When the state is <code>Inactive</code>, you can reactivate the function by
      invoking it.</p>")
  @as("State")
  state: option<state>,
  @ocaml.doc("<p>The function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">
      layers</a>.</p>")
  @as("Layers")
  layers: option<layersReferenceList>,
  @ocaml.doc("<p>The latest updated revision of the function or alias.</p>") @as("RevisionId")
  revisionId: option<string_>,
  @ocaml.doc("<p>For Lambda@Edge functions, the ARN of the master function.</p>") @as("MasterArn")
  masterArn: option<functionArn>,
  @ocaml.doc("<p>The function's AWS X-Ray tracing configuration.</p>") @as("TracingConfig")
  tracingConfig: option<tracingConfigResponse>,
  @ocaml.doc("<p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've
      configured a customer managed CMK.</p>")
  @as("KMSKeyArn")
  kmskeyArn: option<kmskeyArn>,
  @ocaml.doc("<p>The function's environment variables.</p>") @as("Environment")
  environment: option<environmentResponse>,
  @ocaml.doc("<p>The function's dead letter queue.</p>") @as("DeadLetterConfig")
  deadLetterConfig: option<deadLetterConfig>,
  @ocaml.doc("<p>The function's networking configuration.</p>") @as("VpcConfig")
  vpcConfig: option<vpcConfigResponse>,
  @ocaml.doc("<p>The version of the Lambda function.</p>") @as("Version") version: option<version>,
  @ocaml.doc("<p>The SHA256 hash of the function's deployment package.</p>") @as("CodeSha256")
  codeSha256: option<string_>,
  @ocaml.doc(
    "<p>The date and time that the function was last updated, in <a href=\"https://www.w3.org/TR/NOTE-datetime\">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>"
  )
  @as("LastModified")
  lastModified: option<timestamp_>,
  @ocaml.doc("<p>The amount of memory available to the function at runtime. </p>") @as("MemorySize")
  memorySize: option<memorySize>,
  @ocaml.doc(
    "<p>The amount of time in seconds that Lambda allows a function to run before stopping it.</p>"
  )
  @as("Timeout")
  timeout: option<timeout>,
  @ocaml.doc("<p>The function's description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The size of the function's deployment package, in bytes.</p>") @as("CodeSize")
  codeSize: option<long>,
  @ocaml.doc("<p>The function that Lambda calls to begin executing your function.</p>")
  @as("Handler")
  handler: option<handler>,
  @ocaml.doc("<p>The function's execution role.</p>") @as("Role") role: option<roleArn>,
  @ocaml.doc("<p>The runtime environment for the Lambda function.</p>") @as("Runtime")
  runtime: option<runtime>,
  @ocaml.doc("<p>The function's Amazon Resource Name (ARN).</p>") @as("FunctionArn")
  functionArn: option<nameSpacedFunctionArn>,
  @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName")
  functionName: option<namespacedFunctionName>,
}
@ocaml.doc(
  "<p>A mapping between an AWS resource and an AWS Lambda function. See <a>CreateEventSourceMapping</a> for details.</p>"
)
type eventSourceMappingConfiguration = {
  @ocaml.doc(
    "<p>(Streams) A list of current response type enums applied to the event source mapping.</p>"
  )
  @as("FunctionResponseTypes")
  functionResponseTypes: option<functionResponseTypeList>,
  @ocaml.doc(
    "<p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>"
  )
  @as("TumblingWindowInSeconds")
  tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
  @ocaml.doc(
    "<p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>"
  )
  @as("MaximumRetryAttempts")
  maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
  @ocaml.doc(
    "<p>(Streams) If the function returns an error, split the batch in two and retry. The default value is false.</p>"
  )
  @as("BisectBatchOnFunctionError")
  bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
  @ocaml.doc(
    "<p>(Streams) Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>"
  )
  @as("MaximumRecordAgeInSeconds")
  maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
  @ocaml.doc("<p>The Self-Managed Apache Kafka cluster for your event source.</p>")
  @as("SelfManagedEventSource")
  selfManagedEventSource: option<selfManagedEventSource>,
  @ocaml.doc(
    "<p>An array of the authentication protocol, or the VPC components to secure your event source.</p>"
  )
  @as("SourceAccessConfigurations")
  sourceAccessConfigurations: option<sourceAccessConfigurations>,
  @ocaml.doc("<p>
      (MQ) The name of the Amazon MQ broker destination queue to consume.
    </p>")
  @as("Queues")
  queues: option<queues>,
  @ocaml.doc("<p>The name of the Kafka topic.</p>") @as("Topics") topics: option<topics>,
  @ocaml.doc(
    "<p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>"
  )
  @as("DestinationConfig")
  destinationConfig: option<destinationConfig>,
  @ocaml.doc("<p>Indicates whether the last change to the event source mapping was made by a user, or by the Lambda
      service.</p>")
  @as("StateTransitionReason")
  stateTransitionReason: option<string_>,
  @ocaml.doc("<p>The state of the event source mapping. It can be one of the following: <code>Creating</code>,
      <code>Enabling</code>, <code>Enabled</code>, <code>Disabling</code>, <code>Disabled</code>,
      <code>Updating</code>, or <code>Deleting</code>.</p>")
  @as("State")
  state: option<string_>,
  @ocaml.doc("<p>The result of the last AWS Lambda invocation of your Lambda function.</p>")
  @as("LastProcessingResult")
  lastProcessingResult: option<string_>,
  @ocaml.doc(
    "<p>The date that the event source mapping was last updated, or its state changed.</p>"
  )
  @as("LastModified")
  lastModified: option<date>,
  @ocaml.doc("<p>The ARN of the Lambda function.</p>") @as("FunctionArn")
  functionArn: option<functionArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event source.</p>") @as("EventSourceArn")
  eventSourceArn: option<arn>,
  @ocaml.doc(
    "<p>(Streams) The number of batches to process from each shard concurrently. The default value is 1.</p>"
  )
  @as("ParallelizationFactor")
  parallelizationFactor: option<parallelizationFactor>,
  @ocaml.doc(
    "<p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds. The default value is zero.</p>"
  )
  @as("MaximumBatchingWindowInSeconds")
  maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
  @ocaml.doc("<p>The maximum number of items to retrieve in a single batch.</p>") @as("BatchSize")
  batchSize: option<batchSize>,
  @ocaml.doc("<p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
      reading.</p>")
  @as("StartingPositionTimestamp")
  startingPositionTimestamp: option<date>,
  @ocaml.doc("<p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
      sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>")
  @as("StartingPosition")
  startingPosition: option<eventSourcePosition>,
  @ocaml.doc("<p>The identifier of the event source mapping.</p>") @as("UUID")
  uuid: option<string_>,
}
type codeSigningConfigList = array<codeSigningConfig>
type aliasList = array<aliasConfiguration>
type functionList = array<functionConfiguration>
type eventSourceMappingsList = array<eventSourceMappingConfiguration>
@ocaml.doc("<fullname>AWS Lambda</fullname>
         <p>
            <b>Overview</b>
         </p>
         <p>This is the <i>AWS Lambda API Reference</i>. The AWS Lambda Developer Guide provides additional
      information. For the service overview, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/welcome.html\">What is
        AWS Lambda</a>, and for information about how the service works, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html\">AWS Lambda: How it Works</a> in the <b>AWS Lambda Developer Guide</b>.</p>")
module RemovePermission = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
      policy that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc(
      "<p>Specify a version or alias to remove permissions from a published version of the function.</p>"
    )
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>Statement ID of the permission to remove.</p>") @as("StatementId")
    statementId: namespacedStatementId,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "RemovePermissionCommand"
  let make = (~statementId, ~functionName, ~revisionId=?, ~qualifier=?, ()) =>
    new({
      revisionId: revisionId,
      qualifier: qualifier,
      statementId: statementId,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveLayerVersionPermission = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
      policy that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>The identifier that was specified when the statement was added.</p>")
    @as("StatementId")
    statementId: statementId,
    @ocaml.doc("<p>The version number.</p>") @as("VersionNumber") versionNumber: layerVersionNumber,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "RemoveLayerVersionPermissionCommand"
  let make = (~statementId, ~versionNumber, ~layerName, ~revisionId=?, ()) =>
    new({
      revisionId: revisionId,
      statementId: statementId,
      versionNumber: versionNumber,
      layerName: layerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutProvisionedConcurrencyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The amount of provisioned concurrency to allocate for the version or alias.</p>")
    @as("ProvisionedConcurrentExecutions")
    provisionedConcurrentExecutions: positiveInteger,
    @ocaml.doc("<p>The version number or alias name.</p>") @as("Qualifier") qualifier: qualifier,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time that a user last updated the configuration, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601 format</a>.</p>"
    )
    @as("LastModified")
    lastModified: option<timestamp_>,
    @ocaml.doc(
      "<p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>"
    )
    @as("StatusReason")
    statusReason: option<string_>,
    @ocaml.doc("<p>The status of the allocation process.</p>") @as("Status")
    status: option<provisionedConcurrencyStatusEnum>,
    @ocaml.doc("<p>The amount of provisioned concurrency allocated.</p>")
    @as("AllocatedProvisionedConcurrentExecutions")
    allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @ocaml.doc("<p>The amount of provisioned concurrency available.</p>")
    @as("AvailableProvisionedConcurrentExecutions")
    availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @ocaml.doc("<p>The amount of provisioned concurrency requested.</p>")
    @as("RequestedProvisionedConcurrentExecutions")
    requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutProvisionedConcurrencyConfigCommand"
  let make = (~provisionedConcurrentExecutions, ~qualifier, ~functionName, ()) =>
    new({
      provisionedConcurrentExecutions: provisionedConcurrentExecutions,
      qualifier: qualifier,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionConcurrency = {
  type t
  type request = {
    @ocaml.doc("<p>The number of simultaneous executions to reserve for the function.</p>")
    @as("ReservedConcurrentExecutions")
    reservedConcurrentExecutions: reservedConcurrentExecutions,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = concurrency
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionConcurrencyCommand"
  let make = (~reservedConcurrentExecutions, ~functionName, ()) =>
    new({reservedConcurrentExecutions: reservedConcurrentExecutions, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionCodeSigningConfigCommand"
  let make = (~functionName, ~codeSigningConfigArn, ()) =>
    new({functionName: functionName, codeSigningConfigArn: codeSigningConfigArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InvokeAsync = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON that you want to provide to your Lambda function as input.</p>")
    @as("InvokeArgs")
    invokeArgs: blobStream,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  @ocaml.doc(
    "<p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation. </p>"
  )
  type response = {@ocaml.doc("<p>The status code.</p>") @as("Status") status: option<httpStatus>}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "InvokeAsyncCommand"
  let make = (~invokeArgs, ~functionName, ()) =>
    new({invokeArgs: invokeArgs, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Invoke = {
  type t
  type request = {
    @ocaml.doc("<p>Specify a version or alias to invoke a published version of the function.</p>")
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The JSON that you want to provide to your Lambda function as input.</p>")
    @as("Payload")
    payload: option<blob>,
    @ocaml.doc("<p>Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context
      object.</p>")
    @as("ClientContext")
    clientContext: option<string_>,
    @ocaml.doc("<p>Set to <code>Tail</code> to include the execution log in the response.</p>")
    @as("LogType")
    logType: option<logType>,
    @ocaml.doc("<p>Choose from the following options.</p>
         <ul>
            <li>
               <p>
                  <code>RequestResponse</code> (default) - Invoke the function synchronously. Keep the connection open until
          the function returns a response or times out. The API response includes the function response and additional
          data.</p>
            </li>
            <li>
               <p>
                  <code>Event</code> - Invoke the function asynchronously. Send events that fail multiple times to the
          function's dead-letter queue (if it's configured). The API response only includes a status code.</p>
            </li>
            <li>
               <p>
                  <code>DryRun</code> - Validate parameter values and verify that the user or role has permission to invoke
          the function.</p>
            </li>
         </ul>")
    @as("InvocationType")
    invocationType: option<invocationType>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  type response = {
    @ocaml.doc("<p>The version of the function that executed. When you invoke a function with an alias, this indicates which
      version the alias resolved to.</p>")
    @as("ExecutedVersion")
    executedVersion: option<version>,
    @ocaml.doc("<p>The response from the function, or an error object.</p>") @as("Payload")
    payload: option<blob>,
    @ocaml.doc("<p>The last 4 KB of the execution log, which is base64 encoded.</p>")
    @as("LogResult")
    logResult: option<string_>,
    @ocaml.doc("<p>If present, indicates that an error occurred during function execution. Details about the error are included
      in the response payload.</p>")
    @as("FunctionError")
    functionError: option<string_>,
    @ocaml.doc("<p>The HTTP status code is in the 200 range for a successful request. For the <code>RequestResponse</code>
      invocation type, this status code is 200. For the <code>Event</code> invocation type, this status code is 202. For
      the <code>DryRun</code> invocation type, the status code is 204.</p>")
    @as("StatusCode")
    statusCode: option<integer_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "InvokeCommand"
  let make = (
    ~functionName,
    ~qualifier=?,
    ~payload=?,
    ~clientContext=?,
    ~logType=?,
    ~invocationType=?,
    (),
  ) =>
    new({
      qualifier: qualifier,
      payload: payload,
      clientContext: clientContext,
      logType: logType,
      invocationType: invocationType,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProvisionedConcurrencyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The version number or alias name.</p>") @as("Qualifier") qualifier: qualifier,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time that a user last updated the configuration, in <a href=\"https://www.iso.org/iso-8601-date-and-time-format.html\">ISO 8601 format</a>.</p>"
    )
    @as("LastModified")
    lastModified: option<timestamp_>,
    @ocaml.doc(
      "<p>For failed allocations, the reason that provisioned concurrency could not be allocated.</p>"
    )
    @as("StatusReason")
    statusReason: option<string_>,
    @ocaml.doc("<p>The status of the allocation process.</p>") @as("Status")
    status: option<provisionedConcurrencyStatusEnum>,
    @ocaml.doc("<p>The amount of provisioned concurrency allocated.</p>")
    @as("AllocatedProvisionedConcurrentExecutions")
    allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @ocaml.doc("<p>The amount of provisioned concurrency available.</p>")
    @as("AvailableProvisionedConcurrentExecutions")
    availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @ocaml.doc("<p>The amount of provisioned concurrency requested.</p>")
    @as("RequestedProvisionedConcurrentExecutions")
    requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetProvisionedConcurrencyConfigCommand"
  let make = (~qualifier, ~functionName, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Specify a version or alias to get the policy for that resource.</p>")
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the current revision of the policy.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>The resource-based policy.</p>") @as("Policy") policy: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetPolicyCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersionPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The version number.</p>") @as("VersionNumber") versionNumber: layerVersionNumber,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the current revision of the policy.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>The policy document.</p>") @as("Policy") policy: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionPolicyCommand"
  let make = (~versionNumber, ~layerName, ()) =>
    new({versionNumber: versionNumber, layerName: layerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionConcurrency = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>The number of simultaneous executions that are reserved for the function.</p>")
    @as("ReservedConcurrentExecutions")
    reservedConcurrentExecutions: option<reservedConcurrentExecutions>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionConcurrencyCommand"
  let make = (~functionName, ()) => new({functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionCodeSigningConfigCommand"
  let make = (~functionName, ()) => new({functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProvisionedConcurrencyConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The version number or alias name.</p>") @as("Qualifier") qualifier: qualifier,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteProvisionedConcurrencyConfigCommand"
  let make = (~qualifier, ~functionName, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLayerVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version number.</p>") @as("VersionNumber") versionNumber: layerVersionNumber,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteLayerVersionCommand"
  let make = (~versionNumber, ~layerName, ()) =>
    new({versionNumber: versionNumber, layerName: layerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionEventInvokeConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A version number or alias name.</p>") @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionEventInvokeConfigCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionConcurrency = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionConcurrencyCommand"
  let make = (~functionName, ()) => new({functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionCodeSigningConfigCommand"
  let make = (~functionName, ()) => new({functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify a version to delete. You can't delete a version that's referenced by an alias.</p>"
    )
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function or version.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteFunctionCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteCodeSigningConfigCommand"
  let make = (~codeSigningConfigArn, ()) => new({codeSigningConfigArn: codeSigningConfigArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the alias.</p>") @as("Name") name: alias,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteAliasCommand"
  let make = (~name, ~functionName, ()) => new({name: name, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddPermission = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
      policy that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc(
      "<p>Specify a version or alias to add permissions to a published version of the function.</p>"
    )
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc(
      "<p>For Alexa Smart Home functions, a token that must be supplied by the invoker.</p>"
    )
    @as("EventSourceToken")
    eventSourceToken: option<eventSourceToken>,
    @ocaml.doc("<p>For Amazon S3, the ID of the account that owns the resource. Use this together with <code>SourceArn</code> to
      ensure that the resource is owned by the specified account. It is possible for an Amazon S3 bucket to be deleted
      by its owner and recreated by another account.</p>")
    @as("SourceAccount")
    sourceAccount: option<sourceOwner>,
    @ocaml.doc("<p>For AWS services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or
      Amazon SNS topic.</p>")
    @as("SourceArn")
    sourceArn: option<arn>,
    @ocaml.doc("<p>The AWS service or account that invokes the function. If you specify a service, use <code>SourceArn</code> or
        <code>SourceAccount</code> to limit who can invoke the function through that service.</p>")
    @as("Principal")
    principal: principal,
    @ocaml.doc("<p>The action that the principal can use on the function. For example, <code>lambda:InvokeFunction</code> or
        <code>lambda:GetFunction</code>.</p>")
    @as("Action")
    action: action,
    @ocaml.doc(
      "<p>A statement identifier that differentiates the statement from others in the same policy.</p>"
    )
    @as("StatementId")
    statementId: statementId,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>The permission statement that's added to the function policy.</p>")
    @as("Statement")
    statement: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "AddPermissionCommand"
  let make = (
    ~principal,
    ~action,
    ~statementId,
    ~functionName,
    ~revisionId=?,
    ~qualifier=?,
    ~eventSourceToken=?,
    ~sourceAccount=?,
    ~sourceArn=?,
    (),
  ) =>
    new({
      revisionId: revisionId,
      qualifier: qualifier,
      eventSourceToken: eventSourceToken,
      sourceAccount: sourceAccount,
      sourceArn: sourceArn,
      principal: principal,
      action: action,
      statementId: statementId,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddLayerVersionPermission = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
      policy that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>With the principal set to <code>*</code>, grant permission to all accounts in the specified
      organization.</p>")
    @as("OrganizationId")
    organizationId: option<organizationId>,
    @ocaml.doc("<p>An account ID, or <code>*</code> to grant permission to all AWS accounts.</p>")
    @as("Principal")
    principal: layerPermissionAllowedPrincipal,
    @ocaml.doc(
      "<p>The API action that grants access to the layer. For example, <code>lambda:GetLayerVersion</code>.</p>"
    )
    @as("Action")
    action: layerPermissionAllowedAction,
    @ocaml.doc(
      "<p>An identifier that distinguishes the policy from others on the same layer version.</p>"
    )
    @as("StatementId")
    statementId: statementId,
    @ocaml.doc("<p>The version number.</p>") @as("VersionNumber") versionNumber: layerVersionNumber,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the current revision of the policy.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>The permission statement.</p>") @as("Statement") statement: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "AddLayerVersionPermissionCommand"
  let make = (
    ~principal,
    ~action,
    ~statementId,
    ~versionNumber,
    ~layerName,
    ~revisionId=?,
    ~organizationId=?,
    (),
  ) =>
    new({
      revisionId: revisionId,
      organizationId: organizationId,
      principal: principal,
      action: action,
      statementId: statementId,
      versionNumber: versionNumber,
      layerName: layerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys to remove from the function.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The function's Amazon Resource Name (ARN).</p>") @as("Resource")
    resource: functionArn,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resource, ()) => new({tagKeys: tagKeys, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to apply to the function.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The function's Amazon Resource Name (ARN).</p>") @as("Resource")
    resource: functionArn,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resource, ()) => new({tags: tags, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PublishLayerVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The layer's software license. It can be any of the following:</p>
         <ul>
            <li>
               <p>An <a href=\"https://spdx.org/licenses/\">SPDX license identifier</a>. For example,
          <code>MIT</code>.</p>
            </li>
            <li>
               <p>The URL of a license hosted on the internet. For example,
          <code>https://opensource.org/licenses/MIT</code>.</p>
            </li>
            <li>
               <p>The full text of the license.</p>
            </li>
         </ul>")
    @as("LicenseInfo")
    licenseInfo: option<licenseInfo>,
    @ocaml.doc("<p>A list of compatible <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html\">function
        runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p>")
    @as("CompatibleRuntimes")
    compatibleRuntimes: option<compatibleRuntimes>,
    @ocaml.doc("<p>The function layer archive.</p>") @as("Content")
    content: layerVersionContentInput,
    @ocaml.doc("<p>The description of the version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }
  type response = {
    @ocaml.doc("<p>The layer's software license.</p>") @as("LicenseInfo")
    licenseInfo: option<licenseInfo>,
    @ocaml.doc("<p>The layer's compatible runtimes.</p>") @as("CompatibleRuntimes")
    compatibleRuntimes: option<compatibleRuntimes>,
    @ocaml.doc("<p>The version number.</p>") @as("Version") version: option<layerVersionNumber>,
    @ocaml.doc(
      "<p>The date that the layer version was created, in <a href=\"https://www.w3.org/TR/NOTE-datetime\">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>"
    )
    @as("CreatedDate")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>The description of the version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The ARN of the layer version.</p>") @as("LayerVersionArn")
    layerVersionArn: option<layerVersionArn>,
    @ocaml.doc("<p>The ARN of the layer.</p>") @as("LayerArn") layerArn: option<layerArn>,
    @ocaml.doc("<p>Details about the layer version.</p>") @as("Content")
    content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "PublishLayerVersionCommand"
  let make = (~content, ~layerName, ~licenseInfo=?, ~compatibleRuntimes=?, ~description=?, ()) =>
    new({
      licenseInfo: licenseInfo,
      compatibleRuntimes: compatibleRuntimes,
      content: content,
      description: description,
      layerName: layerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {
    @ocaml.doc("<p>The function's Amazon Resource Name (ARN).</p>") @as("Resource")
    resource: functionArn,
  }
  type response = {@ocaml.doc("<p>The function's tags.</p>") @as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListTagsCommand"
  let make = (~resource, ()) => new({resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionsByCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of items to return.</p>") @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @ocaml.doc("<p>The function ARNs. </p>") @as("FunctionArns")
    functionArns: option<functionArnList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListFunctionsByCodeSigningConfigCommand"
  let make = (~codeSigningConfigArn, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, codeSigningConfigArn: codeSigningConfigArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersionByArn = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the layer version.</p>") @as("Arn") arn: layerVersionArn,
  }
  type response = {
    @ocaml.doc("<p>The layer's software license.</p>") @as("LicenseInfo")
    licenseInfo: option<licenseInfo>,
    @ocaml.doc("<p>The layer's compatible runtimes.</p>") @as("CompatibleRuntimes")
    compatibleRuntimes: option<compatibleRuntimes>,
    @ocaml.doc("<p>The version number.</p>") @as("Version") version: option<layerVersionNumber>,
    @ocaml.doc(
      "<p>The date that the layer version was created, in <a href=\"https://www.w3.org/TR/NOTE-datetime\">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>"
    )
    @as("CreatedDate")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>The description of the version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The ARN of the layer version.</p>") @as("LayerVersionArn")
    layerVersionArn: option<layerVersionArn>,
    @ocaml.doc("<p>The ARN of the layer.</p>") @as("LayerArn") layerArn: option<layerArn>,
    @ocaml.doc("<p>Details about the layer version.</p>") @as("Content")
    content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionByArnCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version number.</p>") @as("VersionNumber") versionNumber: layerVersionNumber,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
  }
  type response = {
    @ocaml.doc("<p>The layer's software license.</p>") @as("LicenseInfo")
    licenseInfo: option<licenseInfo>,
    @ocaml.doc("<p>The layer's compatible runtimes.</p>") @as("CompatibleRuntimes")
    compatibleRuntimes: option<compatibleRuntimes>,
    @ocaml.doc("<p>The version number.</p>") @as("Version") version: option<layerVersionNumber>,
    @ocaml.doc(
      "<p>The date that the layer version was created, in <a href=\"https://www.w3.org/TR/NOTE-datetime\">ISO-8601 format</a> (YYYY-MM-DDThh:mm:ss.sTZD).</p>"
    )
    @as("CreatedDate")
    createdDate: option<timestamp_>,
    @ocaml.doc("<p>The description of the version.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The ARN of the layer version.</p>") @as("LayerVersionArn")
    layerVersionArn: option<layerVersionArn>,
    @ocaml.doc("<p>The ARN of the layer.</p>") @as("LayerArn") layerArn: option<layerArn>,
    @ocaml.doc("<p>Details about the layer version.</p>") @as("Content")
    content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionCommand"
  let make = (~versionNumber, ~layerName, ()) =>
    new({versionNumber: versionNumber, layerName: layerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountSettings = {
  type t

  type response = {
    @ocaml.doc("<p>The number of functions and amount of storage in use.</p>") @as("AccountUsage")
    accountUsage: option<accountUsage>,
    @ocaml.doc("<p>Limits that are related to concurrency and code storage.</p>")
    @as("AccountLimit")
    accountLimit: option<accountLimit>,
  }
  @module("@aws-sdk/client-lambda") @new external new: unit => t = "GetAccountSettingsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionEventInvokeConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A destination for events after they have been sent to a function for processing.</p>
         <p class=\"title\">
            <b>Destinations</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
            </li>
            <li>
               <p>
                  <b>Queue</b> - The ARN of an SQS queue.</p>
            </li>
            <li>
               <p>
                  <b>Topic</b> - The ARN of an SNS topic.</p>
            </li>
            <li>
               <p>
                  <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
            </li>
         </ul>")
    @as("DestinationConfig")
    destinationConfig: option<destinationConfig>,
    @ocaml.doc(
      "<p>The maximum age of a request that Lambda sends to a function for processing.</p>"
    )
    @as("MaximumEventAgeInSeconds")
    maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
    @ocaml.doc("<p>The maximum number of times to retry when the function returns an error.</p>")
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttempts>,
    @ocaml.doc("<p>A version number or alias name.</p>") @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateFunctionEventInvokeConfigCommand"
  let make = (
    ~functionName,
    ~destinationConfig=?,
    ~maximumEventAgeInSeconds=?,
    ~maximumRetryAttempts=?,
    ~qualifier=?,
    (),
  ) =>
    new({
      destinationConfig: destinationConfig,
      maximumEventAgeInSeconds: maximumEventAgeInSeconds,
      maximumRetryAttempts: maximumRetryAttempts,
      qualifier: qualifier,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the alias if the revision ID matches the ID that's specified. Use this option to avoid modifying
      an alias that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing\">routing
        configuration</a> of the alias.</p>")
    @as("RoutingConfig")
    routingConfig: option<aliasRoutingConfiguration>,
    @ocaml.doc("<p>A description of the alias.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The function version that the alias invokes.</p>") @as("FunctionVersion")
    functionVersion: option<version>,
    @ocaml.doc("<p>The name of the alias.</p>") @as("Name") name: alias,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "UpdateAliasCommand"
  let make = (
    ~name,
    ~functionName,
    ~revisionId=?,
    ~routingConfig=?,
    ~description=?,
    ~functionVersion=?,
    (),
  ) =>
    new({
      revisionId: revisionId,
      routingConfig: routingConfig,
      description: description,
      functionVersion: functionVersion,
      name: name,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionEventInvokeConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A destination for events after they have been sent to a function for processing.</p>
         <p class=\"title\">
            <b>Destinations</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
            </li>
            <li>
               <p>
                  <b>Queue</b> - The ARN of an SQS queue.</p>
            </li>
            <li>
               <p>
                  <b>Topic</b> - The ARN of an SNS topic.</p>
            </li>
            <li>
               <p>
                  <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
            </li>
         </ul>")
    @as("DestinationConfig")
    destinationConfig: option<destinationConfig>,
    @ocaml.doc(
      "<p>The maximum age of a request that Lambda sends to a function for processing.</p>"
    )
    @as("MaximumEventAgeInSeconds")
    maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
    @ocaml.doc("<p>The maximum number of times to retry when the function returns an error.</p>")
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttempts>,
    @ocaml.doc("<p>A version number or alias name.</p>") @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionEventInvokeConfigCommand"
  let make = (
    ~functionName,
    ~destinationConfig=?,
    ~maximumEventAgeInSeconds=?,
    ~maximumRetryAttempts=?,
    ~qualifier=?,
    (),
  ) =>
    new({
      destinationConfig: destinationConfig,
      maximumEventAgeInSeconds: maximumEventAgeInSeconds,
      maximumRetryAttempts: maximumRetryAttempts,
      qualifier: qualifier,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisionedConcurrencyConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>Specify a number to limit the number of configurations returned.</p>")
    @as("MaxItems")
    maxItems: option<maxProvisionedConcurrencyConfigListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
    @ocaml.doc("<p>A list of provisioned concurrency configurations.</p>")
    @as("ProvisionedConcurrencyConfigs")
    provisionedConcurrencyConfigs: option<provisionedConcurrencyConfigList>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListProvisionedConcurrencyConfigsCommand"
  let make = (~functionName, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionEventInvokeConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A version number or alias name.</p>") @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionEventInvokeConfigCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the alias.</p>") @as("Name") name: alias,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetAliasCommand"
  let make = (~name, ~functionName, ()) => new({name: name, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing\">routing
        configuration</a> of the alias.</p>")
    @as("RoutingConfig")
    routingConfig: option<aliasRoutingConfiguration>,
    @ocaml.doc("<p>A description of the alias.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The function version that the alias invokes.</p>") @as("FunctionVersion")
    functionVersion: version,
    @ocaml.doc("<p>The name of the alias.</p>") @as("Name") name: alias,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "CreateAliasCommand"
  let make = (~functionVersion, ~name, ~functionName, ~routingConfig=?, ~description=?, ()) =>
    new({
      routingConfig: routingConfig,
      description: description,
      functionVersion: functionVersion,
      name: name,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>
            <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html\">Container image configuration
        values</a> that override the values in the container image Dockerfile.</p>")
    @as("ImageConfig")
    imageConfig: option<imageConfig>,
    @ocaml.doc("<p>Connection settings for an Amazon EFS file system.</p>") @as("FileSystemConfigs")
    fileSystemConfigs: option<fileSystemConfigList>,
    @ocaml.doc("<p>A list of <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">function layers</a>
      to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>")
    @as("Layers")
    layers: option<layerList>,
    @ocaml.doc("<p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
      function that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
      X-Ray.</p>")
    @as("TracingConfig")
    tracingConfig: option<tracingConfig>,
    @ocaml.doc("<p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
      variables. If it's not provided, AWS Lambda uses a default service key.</p>")
    @as("KMSKeyArn")
    kmskeyArn: option<kmskeyArn>,
    @ocaml.doc("<p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
      when they fail processing. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq\">Dead Letter Queues</a>.</p>")
    @as("DeadLetterConfig")
    deadLetterConfig: option<deadLetterConfig>,
    @ocaml.doc(
      "<p>The identifier of the function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html\">runtime</a>.</p>"
    )
    @as("Runtime")
    runtime: option<runtime>,
    @ocaml.doc(
      "<p>Environment variables that are accessible from function code during execution.</p>"
    )
    @as("Environment")
    environment: option<environment>,
    @ocaml.doc("<p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
      When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
      information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html\">VPC Settings</a>.</p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
      allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>")
    @as("MemorySize")
    memorySize: option<memorySize>,
    @ocaml.doc("<p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
      maximum allowed value is 900 seconds.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>A description of the function.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the method within your code that Lambda calls to execute your function. The format includes the
      file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
      see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html\">Programming Model</a>.</p>")
    @as("Handler")
    handler: option<handler>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function's execution role.</p>")
    @as("Role")
    role: option<roleArn>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateFunctionConfigurationCommand"
  let make = (
    ~functionName,
    ~imageConfig=?,
    ~fileSystemConfigs=?,
    ~layers=?,
    ~revisionId=?,
    ~tracingConfig=?,
    ~kmskeyArn=?,
    ~deadLetterConfig=?,
    ~runtime=?,
    ~environment=?,
    ~vpcConfig=?,
    ~memorySize=?,
    ~timeout=?,
    ~description=?,
    ~handler=?,
    ~role=?,
    (),
  ) =>
    new({
      imageConfig: imageConfig,
      fileSystemConfigs: fileSystemConfigs,
      layers: layers,
      revisionId: revisionId,
      tracingConfig: tracingConfig,
      kmskeyArn: kmskeyArn,
      deadLetterConfig: deadLetterConfig,
      runtime: runtime,
      environment: environment,
      vpcConfig: vpcConfig,
      memorySize: memorySize,
      timeout: timeout,
      description: description,
      handler: handler,
      role: role,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionCode = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
      function that has changed since you last read it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc("<p>Set to true to validate the request parameters and access permissions without modifying the function
      code.</p>")
    @as("DryRun")
    dryRun: option<boolean_>,
    @ocaml.doc("<p>Set to true to publish a new version of the function after updating the code. This has the same effect as
      calling <a>PublishVersion</a> separately.</p>")
    @as("Publish")
    publish: option<boolean_>,
    @ocaml.doc("<p>URI of a container image in the Amazon ECR registry.</p>") @as("ImageUri")
    imageUri: option<string_>,
    @ocaml.doc("<p>For versioned objects, the version of the deployment package object to use.</p>")
    @as("S3ObjectVersion")
    s3ObjectVersion: option<s3ObjectVersion>,
    @ocaml.doc("<p>The Amazon S3 key of the deployment package.</p>") @as("S3Key")
    s3Key: option<s3Key>,
    @ocaml.doc(
      "<p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>"
    )
    @as("S3Bucket")
    s3Bucket: option<s3Bucket>,
    @ocaml.doc("<p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for
      you.</p>")
    @as("ZipFile")
    zipFile: option<blob>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "UpdateFunctionCodeCommand"
  let make = (
    ~functionName,
    ~revisionId=?,
    ~dryRun=?,
    ~publish=?,
    ~imageUri=?,
    ~s3ObjectVersion=?,
    ~s3Key=?,
    ~s3Bucket=?,
    ~zipFile=?,
    (),
  ) =>
    new({
      revisionId: revisionId,
      dryRun: dryRun,
      publish: publish,
      imageUri: imageUri,
      s3ObjectVersion: s3ObjectVersion,
      s3Key: s3Key,
      s3Bucket: s3Bucket,
      zipFile: zipFile,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEventSourceMapping = {
  type t
  type request = {
    @ocaml.doc(
      "<p>(Streams) A list of current response type enums applied to the event source mapping.</p>"
    )
    @as("FunctionResponseTypes")
    functionResponseTypes: option<functionResponseTypeList>,
    @ocaml.doc(
      "<p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>"
    )
    @as("TumblingWindowInSeconds")
    tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
    @ocaml.doc(
      "<p>An array of the authentication protocol, or the VPC components to secure your event source.</p>"
    )
    @as("SourceAccessConfigurations")
    sourceAccessConfigurations: option<sourceAccessConfigurations>,
    @ocaml.doc("<p>(Streams) The number of batches to process from each shard concurrently.</p>")
    @as("ParallelizationFactor")
    parallelizationFactor: option<parallelizationFactor>,
    @ocaml.doc(
      "<p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>"
    )
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
    @ocaml.doc(
      "<p>(Streams) If the function returns an error, split the batch in two and retry.</p>"
    )
    @as("BisectBatchOnFunctionError")
    bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
    @ocaml.doc(
      "<p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>"
    )
    @as("MaximumRecordAgeInSeconds")
    maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
    @ocaml.doc(
      "<p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>"
    )
    @as("DestinationConfig")
    destinationConfig: option<destinationConfig>,
    @ocaml.doc(
      "<p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>"
    )
    @as("MaximumBatchingWindowInSeconds")
    maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
    @ocaml.doc("<p>The maximum number of items to retrieve in a single batch.</p>
         <ul>
            <li>
               <p>
                  <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
            </li>
            <li>
               <p>
                  <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
            </li>
            <li>
               <p>
                  <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
            </li>
         </ul>")
    @as("BatchSize")
    batchSize: option<batchSize>,
    @ocaml.doc(
      "<p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>"
    )
    @as("Enabled")
    enabled: option<enabled>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: option<functionName>,
    @ocaml.doc("<p>The identifier of the event source mapping.</p>") @as("UUID") uuid: string_,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateEventSourceMappingCommand"
  let make = (
    ~uuid,
    ~functionResponseTypes=?,
    ~tumblingWindowInSeconds=?,
    ~sourceAccessConfigurations=?,
    ~parallelizationFactor=?,
    ~maximumRetryAttempts=?,
    ~bisectBatchOnFunctionError=?,
    ~maximumRecordAgeInSeconds=?,
    ~destinationConfig=?,
    ~maximumBatchingWindowInSeconds=?,
    ~batchSize=?,
    ~enabled=?,
    ~functionName=?,
    (),
  ) =>
    new({
      functionResponseTypes: functionResponseTypes,
      tumblingWindowInSeconds: tumblingWindowInSeconds,
      sourceAccessConfigurations: sourceAccessConfigurations,
      parallelizationFactor: parallelizationFactor,
      maximumRetryAttempts: maximumRetryAttempts,
      bisectBatchOnFunctionError: bisectBatchOnFunctionError,
      maximumRecordAgeInSeconds: maximumRecordAgeInSeconds,
      destinationConfig: destinationConfig,
      maximumBatchingWindowInSeconds: maximumBatchingWindowInSeconds,
      batchSize: batchSize,
      enabled: enabled,
      functionName: functionName,
      uuid: uuid,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The code signing policy.</p>") @as("CodeSigningPolicies")
    codeSigningPolicies: option<codeSigningPolicies>,
    @ocaml.doc("<p>Signing profiles for this code signing configuration.</p>")
    @as("AllowedPublishers")
    allowedPublishers: option<allowedPublishers>,
    @ocaml.doc("<p>Descriptive name for this code signing configuration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @ocaml.doc("<p>The code signing configuration</p>") @as("CodeSigningConfig")
    codeSigningConfig: codeSigningConfig,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateCodeSigningConfigCommand"
  let make = (
    ~codeSigningConfigArn,
    ~codeSigningPolicies=?,
    ~allowedPublishers=?,
    ~description=?,
    (),
  ) =>
    new({
      codeSigningPolicies: codeSigningPolicies,
      allowedPublishers: allowedPublishers,
      description: description,
      codeSigningConfigArn: codeSigningConfigArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PublishVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid
      publishing a version if the function configuration has changed since you last updated it.</p>")
    @as("RevisionId")
    revisionId: option<string_>,
    @ocaml.doc(
      "<p>A description for the version to override the description in the function configuration.</p>"
    )
    @as("Description")
    description: option<description>,
    @ocaml.doc("<p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid
      publishing a version if the function code has changed since you last updated it. You can get the hash for the
      version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>")
    @as("CodeSha256")
    codeSha256: option<string_>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "PublishVersionCommand"
  let make = (~functionName, ~revisionId=?, ~description=?, ~codeSha256=?, ()) =>
    new({
      revisionId: revisionId,
      description: description,
      codeSha256: codeSha256,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLayerVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of versions to return.</p>") @as("MaxItems")
    maxItems: option<maxLayerListItems>,
    @ocaml.doc("<p>A pagination token returned by a previous call.</p>") @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name or Amazon Resource Name (ARN) of the layer.</p>") @as("LayerName")
    layerName: layerName,
    @ocaml.doc("<p>A runtime identifier. For example, <code>go1.x</code>.</p>")
    @as("CompatibleRuntime")
    compatibleRuntime: option<runtime>,
  }
  type response = {
    @ocaml.doc("<p>A list of versions.</p>") @as("LayerVersions")
    layerVersions: option<layerVersionsList>,
    @ocaml.doc("<p>A pagination token returned when the response doesn't contain all versions.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListLayerVersionsCommand"
  let make = (~layerName, ~maxItems=?, ~marker=?, ~compatibleRuntime=?, ()) =>
    new({
      maxItems: maxItems,
      marker: marker,
      layerName: layerName,
      compatibleRuntime: compatibleRuntime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify a version or alias to get details about a published version of the function.</p>"
    )
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionConfigurationCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventSourceMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the event source mapping.</p>") @as("UUID") uuid: string_,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetEventSourceMappingCommand"
  let make = (~uuid, ()) => new({uuid: uuid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc("<p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @ocaml.doc("<p>The code signing configuration</p>") @as("CodeSigningConfig")
    codeSigningConfig: codeSigningConfig,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetCodeSigningConfigCommand"
  let make = (~codeSigningConfigArn, ()) => new({codeSigningConfigArn: codeSigningConfigArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventSourceMapping = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the event source mapping.</p>") @as("UUID") uuid: string_,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteEventSourceMappingCommand"
  let make = (~uuid, ()) => new({uuid: uuid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunction = {
  type t
  type request = {
    @ocaml.doc("<p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration
includes a set of signing profiles, which define the trusted publishers for this function.</p>")
    @as("CodeSigningConfigArn")
    codeSigningConfigArn: option<codeSigningConfigArn>,
    @ocaml.doc("<p>
            <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html\">Container image configuration
      values</a> that override the values in the container image Dockerfile.</p>")
    @as("ImageConfig")
    imageConfig: option<imageConfig>,
    @ocaml.doc("<p>Connection settings for an Amazon EFS file system.</p>") @as("FileSystemConfigs")
    fileSystemConfigs: option<fileSystemConfigList>,
    @ocaml.doc("<p>A list of <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html\">function layers</a>
      to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>")
    @as("Layers")
    layers: option<layerList>,
    @ocaml.doc("<p>A list of <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/tagging.html\">tags</a> to apply to the
      function.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
      X-Ray.</p>")
    @as("TracingConfig")
    tracingConfig: option<tracingConfig>,
    @ocaml.doc("<p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
      variables. If it's not provided, AWS Lambda uses a default service key.</p>")
    @as("KMSKeyArn")
    kmskeyArn: option<kmskeyArn>,
    @ocaml.doc(
      "<p>Environment variables that are accessible from function code during execution.</p>"
    )
    @as("Environment")
    environment: option<environment>,
    @ocaml.doc("<p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
      when they fail processing. For more information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq\">Dead Letter Queues</a>.</p>")
    @as("DeadLetterConfig")
    deadLetterConfig: option<deadLetterConfig>,
    @ocaml.doc(
      "<p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for ZIP archive.</p>"
    )
    @as("PackageType")
    packageType: option<packageType>,
    @ocaml.doc("<p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
      When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
      information, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html\">VPC Settings</a>.</p>")
    @as("VpcConfig")
    vpcConfig: option<vpcConfig>,
    @ocaml.doc("<p>Set to true to publish the first version of the function during creation.</p>")
    @as("Publish")
    publish: option<boolean_>,
    @ocaml.doc("<p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
      allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>")
    @as("MemorySize")
    memorySize: option<memorySize>,
    @ocaml.doc("<p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
      maximum allowed value is 900 seconds.</p>")
    @as("Timeout")
    timeout: option<timeout>,
    @ocaml.doc("<p>A description of the function.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The code for the function.</p>") @as("Code") code: functionCode,
    @ocaml.doc("<p>The name of the method within your code that Lambda calls to execute your function. The format includes the
      file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
      see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html\">Programming Model</a>.</p>")
    @as("Handler")
    handler: option<handler>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function's execution role.</p>")
    @as("Role")
    role: roleArn,
    @ocaml.doc(
      "<p>The identifier of the function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html\">runtime</a>.</p>"
    )
    @as("Runtime")
    runtime: option<runtime>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "CreateFunctionCommand"
  let make = (
    ~code,
    ~role,
    ~functionName,
    ~codeSigningConfigArn=?,
    ~imageConfig=?,
    ~fileSystemConfigs=?,
    ~layers=?,
    ~tags=?,
    ~tracingConfig=?,
    ~kmskeyArn=?,
    ~environment=?,
    ~deadLetterConfig=?,
    ~packageType=?,
    ~vpcConfig=?,
    ~publish=?,
    ~memorySize=?,
    ~timeout=?,
    ~description=?,
    ~handler=?,
    ~runtime=?,
    (),
  ) =>
    new({
      codeSigningConfigArn: codeSigningConfigArn,
      imageConfig: imageConfig,
      fileSystemConfigs: fileSystemConfigs,
      layers: layers,
      tags: tags,
      tracingConfig: tracingConfig,
      kmskeyArn: kmskeyArn,
      environment: environment,
      deadLetterConfig: deadLetterConfig,
      packageType: packageType,
      vpcConfig: vpcConfig,
      publish: publish,
      memorySize: memorySize,
      timeout: timeout,
      description: description,
      code: code,
      handler: handler,
      role: role,
      runtime: runtime,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSourceMapping = {
  type t
  type request = {
    @ocaml.doc(
      "<p>(Streams) A list of current response type enums applied to the event source mapping.</p>"
    )
    @as("FunctionResponseTypes")
    functionResponseTypes: option<functionResponseTypeList>,
    @ocaml.doc("<p>The Self-Managed Apache Kafka cluster to send records.</p>")
    @as("SelfManagedEventSource")
    selfManagedEventSource: option<selfManagedEventSource>,
    @ocaml.doc(
      "<p>An array of the authentication protocol, or the VPC components to secure your event source.</p>"
    )
    @as("SourceAccessConfigurations")
    sourceAccessConfigurations: option<sourceAccessConfigurations>,
    @ocaml.doc("<p>
      (MQ) The name of the Amazon MQ broker destination queue to consume.
    </p>")
    @as("Queues")
    queues: option<queues>,
    @ocaml.doc("<p>The name of the Kafka topic.</p>") @as("Topics") topics: option<topics>,
    @ocaml.doc(
      "<p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>"
    )
    @as("TumblingWindowInSeconds")
    tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
    @ocaml.doc(
      "<p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>"
    )
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
    @ocaml.doc(
      "<p>(Streams) If the function returns an error, split the batch in two and retry.</p>"
    )
    @as("BisectBatchOnFunctionError")
    bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
    @ocaml.doc(
      "<p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>"
    )
    @as("MaximumRecordAgeInSeconds")
    maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
    @ocaml.doc(
      "<p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>"
    )
    @as("DestinationConfig")
    destinationConfig: option<destinationConfig>,
    @ocaml.doc("<p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
      reading.</p>")
    @as("StartingPositionTimestamp")
    startingPositionTimestamp: option<date>,
    @ocaml.doc("<p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
      sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>")
    @as("StartingPosition")
    startingPosition: option<eventSourcePosition>,
    @ocaml.doc("<p>(Streams) The number of batches to process from each shard concurrently.</p>")
    @as("ParallelizationFactor")
    parallelizationFactor: option<parallelizationFactor>,
    @ocaml.doc(
      "<p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>"
    )
    @as("MaximumBatchingWindowInSeconds")
    maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
    @ocaml.doc("<p>The maximum number of items to retrieve in a single batch.</p>
         <ul>
            <li>
               <p>
                  <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
            </li>
            <li>
               <p>
                  <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
            </li>
            <li>
               <p>
                  <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
            </li>
         </ul>")
    @as("BatchSize")
    batchSize: option<batchSize>,
    @ocaml.doc(
      "<p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>"
    )
    @as("Enabled")
    enabled: option<enabled>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event source.</p>
         <ul>
            <li>
               <p>
                  <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
            </li>
            <li>
               <p>
                  <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
            </li>
         </ul>")
    @as("EventSourceArn")
    eventSourceArn: option<arn>,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "CreateEventSourceMappingCommand"
  let make = (
    ~functionName,
    ~functionResponseTypes=?,
    ~selfManagedEventSource=?,
    ~sourceAccessConfigurations=?,
    ~queues=?,
    ~topics=?,
    ~tumblingWindowInSeconds=?,
    ~maximumRetryAttempts=?,
    ~bisectBatchOnFunctionError=?,
    ~maximumRecordAgeInSeconds=?,
    ~destinationConfig=?,
    ~startingPositionTimestamp=?,
    ~startingPosition=?,
    ~parallelizationFactor=?,
    ~maximumBatchingWindowInSeconds=?,
    ~batchSize=?,
    ~enabled=?,
    ~eventSourceArn=?,
    (),
  ) =>
    new({
      functionResponseTypes: functionResponseTypes,
      selfManagedEventSource: selfManagedEventSource,
      sourceAccessConfigurations: sourceAccessConfigurations,
      queues: queues,
      topics: topics,
      tumblingWindowInSeconds: tumblingWindowInSeconds,
      maximumRetryAttempts: maximumRetryAttempts,
      bisectBatchOnFunctionError: bisectBatchOnFunctionError,
      maximumRecordAgeInSeconds: maximumRecordAgeInSeconds,
      destinationConfig: destinationConfig,
      startingPositionTimestamp: startingPositionTimestamp,
      startingPosition: startingPosition,
      parallelizationFactor: parallelizationFactor,
      maximumBatchingWindowInSeconds: maximumBatchingWindowInSeconds,
      batchSize: batchSize,
      enabled: enabled,
      functionName: functionName,
      eventSourceArn: eventSourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCodeSigningConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The code signing policies define the actions to take if the validation checks fail. </p>"
    )
    @as("CodeSigningPolicies")
    codeSigningPolicies: option<codeSigningPolicies>,
    @ocaml.doc("<p>Signing profiles for this code signing configuration.</p>")
    @as("AllowedPublishers")
    allowedPublishers: allowedPublishers,
    @ocaml.doc("<p>Descriptive name for this code signing configuration.</p>") @as("Description")
    description: option<description>,
  }
  type response = {
    @ocaml.doc("<p>The code signing configuration.</p>") @as("CodeSigningConfig")
    codeSigningConfig: codeSigningConfig,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "CreateCodeSigningConfigCommand"
  let make = (~allowedPublishers, ~codeSigningPolicies=?, ~description=?, ()) =>
    new({
      codeSigningPolicies: codeSigningPolicies,
      allowedPublishers: allowedPublishers,
      description: description,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLayers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of layers to return.</p>") @as("MaxItems")
    maxItems: option<maxLayerListItems>,
    @ocaml.doc("<p>A pagination token returned by a previous call.</p>") @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A runtime identifier. For example, <code>go1.x</code>.</p>")
    @as("CompatibleRuntime")
    compatibleRuntime: option<runtime>,
  }
  type response = {
    @ocaml.doc("<p>A list of function layers.</p>") @as("Layers") layers: option<layersList>,
    @ocaml.doc("<p>A pagination token returned when the response doesn't contain all layers.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListLayersCommand"
  let make = (~maxItems=?, ~marker=?, ~compatibleRuntime=?, ()) =>
    new({maxItems: maxItems, marker: marker, compatibleRuntime: compatibleRuntime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionEventInvokeConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of configurations to return.</p>") @as("MaxItems")
    maxItems: option<maxFunctionEventInvokeConfigListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
    @ocaml.doc("<p>A list of configurations.</p>") @as("FunctionEventInvokeConfigs")
    functionEventInvokeConfigs: option<functionEventInvokeConfigList>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListFunctionEventInvokeConfigsCommand"
  let make = (~functionName, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCodeSigningConfigs = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of items to return.</p>") @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The code signing configurations</p>") @as("CodeSigningConfigs")
    codeSigningConfigs: option<codeSigningConfigList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListCodeSigningConfigsCommand"
  let make = (~maxItems=?, ~marker=?, ()) => new({maxItems: maxItems, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  type request = {
    @ocaml.doc("<p>Limit the number of aliases returned.</p>") @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Specify a function version to only list aliases that invoke that version.</p>")
    @as("FunctionVersion")
    functionVersion: option<version>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: functionName,
  }
  type response = {
    @ocaml.doc("<p>A list of aliases.</p>") @as("Aliases") aliases: option<aliasList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListAliasesCommand"
  let make = (~functionName, ~maxItems=?, ~marker=?, ~functionVersion=?, ()) =>
    new({
      maxItems: maxItems,
      marker: marker,
      functionVersion: functionVersion,
      functionName: functionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify a version or alias to get details about a published version of the function.</p>"
    )
    @as("Qualifier")
    qualifier: option<qualifier>,
    @ocaml.doc("<p>The name of the Lambda function, version, or alias.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
            </li>
         </ul>
         <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
      If you specify only the function name, it is limited to 64 characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  type response = {
    @ocaml.doc("<p>The function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html\">reserved
        concurrency</a>.</p>")
    @as("Concurrency")
    concurrency: option<concurrency>,
    @ocaml.doc(
      "<p>The function's <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/tagging.html\">tags</a>.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The deployment package of the function or version.</p>") @as("Code")
    code: option<functionCodeLocation>,
    @ocaml.doc("<p>The configuration of the function or version.</p>") @as("Configuration")
    configuration: option<functionConfiguration>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetFunctionCommand"
  let make = (~functionName, ~qualifier=?, ()) =>
    new({qualifier: qualifier, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVersionsByFunction = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of versions to return.</p>") @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: namespacedFunctionName,
  }
  type response = {
    @ocaml.doc("<p>A list of Lambda function versions.</p>") @as("Versions")
    versions: option<functionList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListVersionsByFunctionCommand"
  let make = (~functionName, ~maxItems=?, ~marker=?, ()) =>
    new({maxItems: maxItems, marker: marker, functionName: functionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of functions to return in the response. Note that <code>ListFunctions</code> returns a maximum of 50 items in each response, 
      even if you set the number higher.</p>")
    @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc(
      "<p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>"
    )
    @as("FunctionVersion")
    functionVersion: option<functionVersion>,
    @ocaml.doc("<p>For Lambda@Edge functions, the AWS Region of the master function. For example, <code>us-east-1</code> filters
      the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N.
      Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>")
    @as("MasterRegion")
    masterRegion: option<masterRegion>,
  }
  @ocaml.doc("<p>A list of Lambda functions.</p>")
  type response = {
    @ocaml.doc("<p>A list of Lambda functions.</p>") @as("Functions")
    functions: option<functionList>,
    @ocaml.doc("<p>The pagination token that's included if more results are available.</p>")
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListFunctionsCommand"
  let make = (~maxItems=?, ~marker=?, ~functionVersion=?, ~masterRegion=?, ()) =>
    new({
      maxItems: maxItems,
      marker: marker,
      functionVersion: functionVersion,
      masterRegion: masterRegion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventSourceMappings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of event source mappings to return.</p>") @as("MaxItems")
    maxItems: option<maxListItems>,
    @ocaml.doc("<p>A pagination token returned by a previous call.</p>") @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name of the Lambda function.</p>
         <p class=\"title\">
            <b>Name formats</b>
         </p>
         <ul>
            <li>
               <p>
                  <b>Function name</b> - <code>MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
            </li>
            <li>
               <p>
                  <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
            </li>
            <li>
               <p>
                  <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
            </li>
         </ul>
         <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
      characters in length.</p>")
    @as("FunctionName")
    functionName: option<functionName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event source.</p>
         <ul>
            <li>
               <p>
                  <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
            </li>
            <li>
               <p>
                  <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
            </li>
            <li>
               <p>
                  <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
            </li>
         </ul>")
    @as("EventSourceArn")
    eventSourceArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A list of event source mappings.</p>") @as("EventSourceMappings")
    eventSourceMappings: option<eventSourceMappingsList>,
    @ocaml.doc(
      "<p>A pagination token that's returned when the response doesn't contain all event source mappings.</p>"
    )
    @as("NextMarker")
    nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListEventSourceMappingsCommand"
  let make = (~maxItems=?, ~marker=?, ~functionName=?, ~eventSourceArn=?, ()) =>
    new({
      maxItems: maxItems,
      marker: marker,
      functionName: functionName,
      eventSourceArn: eventSourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
