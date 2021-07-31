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
type tracingConfigResponse = {@as("Mode") mode: option<tracingMode>}
type tracingConfig = {@as("Mode") mode: option<tracingMode>}
type topics = array<topic>
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type stringList = array<string_>
type sourceAccessConfiguration = {
  @as("URI") uri: option<uri>,
  @as("Type") type_: option<sourceAccessType>,
}
type signingProfileVersionArns = array<arn>
type securityGroupIds = array<securityGroupId>
type queues = array<queue>
type provisionedConcurrencyConfigListItem = {
  @as("LastModified") lastModified: option<timestamp_>,
  @as("StatusReason") statusReason: option<string_>,
  @as("Status") status: option<provisionedConcurrencyStatusEnum>,
  @as("AllocatedProvisionedConcurrentExecutions")
  allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
  @as("AvailableProvisionedConcurrentExecutions")
  availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
  @as("RequestedProvisionedConcurrentExecutions")
  requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  @as("FunctionArn") functionArn: option<functionArn>,
}
type onSuccess = {@as("Destination") destination: option<destinationArn>}
type onFailure = {@as("Destination") destination: option<destinationArn>}
type layerVersionContentOutput = {
  @as("SigningJobArn") signingJobArn: option<string_>,
  @as("SigningProfileVersionArn") signingProfileVersionArn: option<string_>,
  @as("CodeSize") codeSize: option<long>,
  @as("CodeSha256") codeSha256: option<string_>,
  @as("Location") location: option<string_>,
}
type layerVersionContentInput = {
  @as("ZipFile") zipFile: option<blob>,
  @as("S3ObjectVersion") s3ObjectVersion: option<s3ObjectVersion>,
  @as("S3Key") s3Key: option<s3Key>,
  @as("S3Bucket") s3Bucket: option<s3Bucket>,
}
type layerList = array<layerVersionArn>
type layer = {
  @as("SigningJobArn") signingJobArn: option<arn>,
  @as("SigningProfileVersionArn") signingProfileVersionArn: option<arn>,
  @as("CodeSize") codeSize: option<long>,
  @as("Arn") arn: option<layerVersionArn>,
}
type imageConfigError = {
  @as("Message") message: option<sensitiveString>,
  @as("ErrorCode") errorCode: option<string_>,
}
type functionResponseTypeList = array<functionResponseType>
type functionCodeLocation = {
  @as("ResolvedImageUri") resolvedImageUri: option<string_>,
  @as("ImageUri") imageUri: option<string_>,
  @as("Location") location: option<string_>,
  @as("RepositoryType") repositoryType: option<string_>,
}
type functionCode = {
  @as("ImageUri") imageUri: option<string_>,
  @as("S3ObjectVersion") s3ObjectVersion: option<s3ObjectVersion>,
  @as("S3Key") s3Key: option<s3Key>,
  @as("S3Bucket") s3Bucket: option<s3Bucket>,
  @as("ZipFile") zipFile: option<blob>,
}
type functionArnList = array<functionArn>
type fileSystemConfig = {
  @as("LocalMountPath") localMountPath: localMountPath,
  @as("Arn") arn: fileSystemArn,
}
type environmentVariables = Js.Dict.t<environmentVariableValue>
type environmentError = {
  @as("Message") message: option<sensitiveString>,
  @as("ErrorCode") errorCode: option<string_>,
}
type endpointLists = array<endpoint>
type deadLetterConfig = {@as("TargetArn") targetArn: option<resourceArn>}
type concurrency = {
  @as("ReservedConcurrentExecutions")
  reservedConcurrentExecutions: option<reservedConcurrentExecutions>,
}
type compatibleRuntimes = array<runtime>
type codeSigningPolicies = {
  @as("UntrustedArtifactOnDeployment") untrustedArtifactOnDeployment: option<codeSigningPolicy>,
}
type additionalVersionWeights = Js.Dict.t<weight>
type accountUsage = {
  @as("FunctionCount") functionCount: option<long>,
  @as("TotalCodeSize") totalCodeSize: option<long>,
}
type accountLimit = {
  @as("UnreservedConcurrentExecutions")
  unreservedConcurrentExecutions: option<unreservedConcurrentExecutions>,
  @as("ConcurrentExecutions") concurrentExecutions: option<integer_>,
  @as("CodeSizeZipped") codeSizeZipped: option<long>,
  @as("CodeSizeUnzipped") codeSizeUnzipped: option<long>,
  @as("TotalCodeSize") totalCodeSize: option<long>,
}
type vpcConfigResponse = {
  @as("VpcId") vpcId: option<vpcId>,
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
}
type vpcConfig = {
  @as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
}
type sourceAccessConfigurations = array<sourceAccessConfiguration>
type provisionedConcurrencyConfigList = array<provisionedConcurrencyConfigListItem>
type layersReferenceList = array<layer>
type layerVersionsListItem = {
  @as("LicenseInfo") licenseInfo: option<licenseInfo>,
  @as("CompatibleRuntimes") compatibleRuntimes: option<compatibleRuntimes>,
  @as("CreatedDate") createdDate: option<timestamp_>,
  @as("Description") description: option<description>,
  @as("Version") version: option<layerVersionNumber>,
  @as("LayerVersionArn") layerVersionArn: option<layerVersionArn>,
}
type imageConfig = {
  @as("WorkingDirectory") workingDirectory: option<workingDirectory>,
  @as("Command") command: option<stringList>,
  @as("EntryPoint") entryPoint: option<stringList>,
}
type fileSystemConfigList = array<fileSystemConfig>
type environmentResponse = {
  @as("Error") error: option<environmentError>,
  @as("Variables") variables: option<environmentVariables>,
}
type environment = {@as("Variables") variables: option<environmentVariables>}
type endpoints = Js.Dict.t<endpointLists>
type destinationConfig = {
  @as("OnFailure") onFailure: option<onFailure>,
  @as("OnSuccess") onSuccess: option<onSuccess>,
}
type allowedPublishers = {
  @as("SigningProfileVersionArns") signingProfileVersionArns: signingProfileVersionArns,
}
type aliasRoutingConfiguration = {
  @as("AdditionalVersionWeights") additionalVersionWeights: option<additionalVersionWeights>,
}
type selfManagedEventSource = {@as("Endpoints") endpoints: option<endpoints>}
type layersListItem = {
  @as("LatestMatchingVersion") latestMatchingVersion: option<layerVersionsListItem>,
  @as("LayerArn") layerArn: option<layerArn>,
  @as("LayerName") layerName: option<layerName>,
}
type layerVersionsList = array<layerVersionsListItem>
type imageConfigResponse = {
  @as("Error") error: option<imageConfigError>,
  @as("ImageConfig") imageConfig: option<imageConfig>,
}
type functionEventInvokeConfig = {
  @as("DestinationConfig") destinationConfig: option<destinationConfig>,
  @as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
  @as("MaximumRetryAttempts") maximumRetryAttempts: option<maximumRetryAttempts>,
  @as("FunctionArn") functionArn: option<functionArn>,
  @as("LastModified") lastModified: option<date>,
}
type codeSigningConfig = {
  @as("LastModified") lastModified: timestamp_,
  @as("CodeSigningPolicies") codeSigningPolicies: codeSigningPolicies,
  @as("AllowedPublishers") allowedPublishers: allowedPublishers,
  @as("Description") description: option<description>,
  @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  @as("CodeSigningConfigId") codeSigningConfigId: codeSigningConfigId,
}
type aliasConfiguration = {
  @as("RevisionId") revisionId: option<string_>,
  @as("RoutingConfig") routingConfig: option<aliasRoutingConfiguration>,
  @as("Description") description: option<description>,
  @as("FunctionVersion") functionVersion: option<version>,
  @as("Name") name: option<alias>,
  @as("AliasArn") aliasArn: option<functionArn>,
}
type layersList = array<layersListItem>
type functionEventInvokeConfigList = array<functionEventInvokeConfig>
type functionConfiguration = {
  @as("SigningJobArn") signingJobArn: option<arn>,
  @as("SigningProfileVersionArn") signingProfileVersionArn: option<arn>,
  @as("ImageConfigResponse") imageConfigResponse: option<imageConfigResponse>,
  @as("PackageType") packageType: option<packageType>,
  @as("FileSystemConfigs") fileSystemConfigs: option<fileSystemConfigList>,
  @as("LastUpdateStatusReasonCode") lastUpdateStatusReasonCode: option<lastUpdateStatusReasonCode>,
  @as("LastUpdateStatusReason") lastUpdateStatusReason: option<lastUpdateStatusReason>,
  @as("LastUpdateStatus") lastUpdateStatus: option<lastUpdateStatus>,
  @as("StateReasonCode") stateReasonCode: option<stateReasonCode>,
  @as("StateReason") stateReason: option<stateReason>,
  @as("State") state: option<state>,
  @as("Layers") layers: option<layersReferenceList>,
  @as("RevisionId") revisionId: option<string_>,
  @as("MasterArn") masterArn: option<functionArn>,
  @as("TracingConfig") tracingConfig: option<tracingConfigResponse>,
  @as("KMSKeyArn") kmskeyArn: option<kmskeyArn>,
  @as("Environment") environment: option<environmentResponse>,
  @as("DeadLetterConfig") deadLetterConfig: option<deadLetterConfig>,
  @as("VpcConfig") vpcConfig: option<vpcConfigResponse>,
  @as("Version") version: option<version>,
  @as("CodeSha256") codeSha256: option<string_>,
  @as("LastModified") lastModified: option<timestamp_>,
  @as("MemorySize") memorySize: option<memorySize>,
  @as("Timeout") timeout: option<timeout>,
  @as("Description") description: option<description>,
  @as("CodeSize") codeSize: option<long>,
  @as("Handler") handler: option<handler>,
  @as("Role") role: option<roleArn>,
  @as("Runtime") runtime: option<runtime>,
  @as("FunctionArn") functionArn: option<nameSpacedFunctionArn>,
  @as("FunctionName") functionName: option<namespacedFunctionName>,
}
type eventSourceMappingConfiguration = {
  @as("FunctionResponseTypes") functionResponseTypes: option<functionResponseTypeList>,
  @as("TumblingWindowInSeconds") tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
  @as("MaximumRetryAttempts") maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
  @as("BisectBatchOnFunctionError") bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
  @as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
  @as("SelfManagedEventSource") selfManagedEventSource: option<selfManagedEventSource>,
  @as("SourceAccessConfigurations") sourceAccessConfigurations: option<sourceAccessConfigurations>,
  @as("Queues") queues: option<queues>,
  @as("Topics") topics: option<topics>,
  @as("DestinationConfig") destinationConfig: option<destinationConfig>,
  @as("StateTransitionReason") stateTransitionReason: option<string_>,
  @as("State") state: option<string_>,
  @as("LastProcessingResult") lastProcessingResult: option<string_>,
  @as("LastModified") lastModified: option<date>,
  @as("FunctionArn") functionArn: option<functionArn>,
  @as("EventSourceArn") eventSourceArn: option<arn>,
  @as("ParallelizationFactor") parallelizationFactor: option<parallelizationFactor>,
  @as("MaximumBatchingWindowInSeconds")
  maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
  @as("BatchSize") batchSize: option<batchSize>,
  @as("StartingPositionTimestamp") startingPositionTimestamp: option<date>,
  @as("StartingPosition") startingPosition: option<eventSourcePosition>,
  @as("UUID") uuid: option<string_>,
}
type codeSigningConfigList = array<codeSigningConfig>
type aliasList = array<aliasConfiguration>
type functionList = array<functionConfiguration>
type eventSourceMappingsList = array<eventSourceMappingConfiguration>

module RemovePermission = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Qualifier") qualifier: option<qualifier>,
    @as("StatementId") statementId: namespacedStatementId,
    @as("FunctionName") functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "RemovePermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveLayerVersionPermission = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("StatementId") statementId: statementId,
    @as("VersionNumber") versionNumber: layerVersionNumber,
    @as("LayerName") layerName: layerName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "RemoveLayerVersionPermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutProvisionedConcurrencyConfig = {
  type t
  type request = {
    @as("ProvisionedConcurrentExecutions") provisionedConcurrentExecutions: positiveInteger,
    @as("Qualifier") qualifier: qualifier,
    @as("FunctionName") functionName: functionName,
  }
  type response = {
    @as("LastModified") lastModified: option<timestamp_>,
    @as("StatusReason") statusReason: option<string_>,
    @as("Status") status: option<provisionedConcurrencyStatusEnum>,
    @as("AllocatedProvisionedConcurrentExecutions")
    allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @as("AvailableProvisionedConcurrentExecutions")
    availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @as("RequestedProvisionedConcurrentExecutions")
    requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutProvisionedConcurrencyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionConcurrency = {
  type t
  type request = {
    @as("ReservedConcurrentExecutions") reservedConcurrentExecutions: reservedConcurrentExecutions,
    @as("FunctionName") functionName: functionName,
  }
  type response = concurrency
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionConcurrencyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionCodeSigningConfig = {
  type t
  type request = {
    @as("FunctionName") functionName: functionName,
    @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @as("FunctionName") functionName: functionName,
    @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InvokeAsync = {
  type t
  type request = {
    @as("InvokeArgs") invokeArgs: blobStream,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = {@as("Status") status: option<httpStatus>}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "InvokeAsyncCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Invoke = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("Payload") payload: option<blob>,
    @as("ClientContext") clientContext: option<string_>,
    @as("LogType") logType: option<logType>,
    @as("InvocationType") invocationType: option<invocationType>,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = {
    @as("ExecutedVersion") executedVersion: option<version>,
    @as("Payload") payload: option<blob>,
    @as("LogResult") logResult: option<string_>,
    @as("FunctionError") functionError: option<string_>,
    @as("StatusCode") statusCode: option<integer_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "InvokeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProvisionedConcurrencyConfig = {
  type t
  type request = {
    @as("Qualifier") qualifier: qualifier,
    @as("FunctionName") functionName: functionName,
  }
  type response = {
    @as("LastModified") lastModified: option<timestamp_>,
    @as("StatusReason") statusReason: option<string_>,
    @as("Status") status: option<provisionedConcurrencyStatusEnum>,
    @as("AllocatedProvisionedConcurrentExecutions")
    allocatedProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @as("AvailableProvisionedConcurrentExecutions")
    availableProvisionedConcurrentExecutions: option<nonNegativeInteger>,
    @as("RequestedProvisionedConcurrentExecutions")
    requestedProvisionedConcurrentExecutions: option<positiveInteger>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetProvisionedConcurrencyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicy = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Policy") policy: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersionPolicy = {
  type t
  type request = {
    @as("VersionNumber") versionNumber: layerVersionNumber,
    @as("LayerName") layerName: layerName,
  }
  type response = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Policy") policy: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionConcurrency = {
  type t
  type request = {@as("FunctionName") functionName: functionName}
  type response = {
    @as("ReservedConcurrentExecutions")
    reservedConcurrentExecutions: option<reservedConcurrentExecutions>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionConcurrencyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionCodeSigningConfig = {
  type t
  type request = {@as("FunctionName") functionName: functionName}
  type response = {
    @as("FunctionName") functionName: functionName,
    @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProvisionedConcurrencyConfig = {
  type t
  type request = {
    @as("Qualifier") qualifier: qualifier,
    @as("FunctionName") functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteProvisionedConcurrencyConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLayerVersion = {
  type t
  type request = {
    @as("VersionNumber") versionNumber: layerVersionNumber,
    @as("LayerName") layerName: layerName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteLayerVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionEventInvokeConfig = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionEventInvokeConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionConcurrency = {
  type t
  type request = {@as("FunctionName") functionName: functionName}

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionConcurrencyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunctionCodeSigningConfig = {
  type t
  type request = {@as("FunctionName") functionName: functionName}

  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteFunctionCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFunction = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCodeSigningConfig = {
  type t
  type request = {@as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn}
  type response = unit
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAlias = {
  type t
  type request = {
    @as("Name") name: alias,
    @as("FunctionName") functionName: functionName,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "DeleteAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddPermission = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Qualifier") qualifier: option<qualifier>,
    @as("EventSourceToken") eventSourceToken: option<eventSourceToken>,
    @as("SourceAccount") sourceAccount: option<sourceOwner>,
    @as("SourceArn") sourceArn: option<arn>,
    @as("Principal") principal: principal,
    @as("Action") action: action,
    @as("StatementId") statementId: statementId,
    @as("FunctionName") functionName: functionName,
  }
  type response = {@as("Statement") statement: option<string_>}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "AddPermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddLayerVersionPermission = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("OrganizationId") organizationId: option<organizationId>,
    @as("Principal") principal: layerPermissionAllowedPrincipal,
    @as("Action") action: layerPermissionAllowedAction,
    @as("StatementId") statementId: statementId,
    @as("VersionNumber") versionNumber: layerVersionNumber,
    @as("LayerName") layerName: layerName,
  }
  type response = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Statement") statement: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "AddLayerVersionPermissionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("Resource") resource: functionArn,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("Resource") resource: functionArn,
  }

  @module("@aws-sdk/client-lambda") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PublishLayerVersion = {
  type t
  type request = {
    @as("LicenseInfo") licenseInfo: option<licenseInfo>,
    @as("CompatibleRuntimes") compatibleRuntimes: option<compatibleRuntimes>,
    @as("Content") content: layerVersionContentInput,
    @as("Description") description: option<description>,
    @as("LayerName") layerName: layerName,
  }
  type response = {
    @as("LicenseInfo") licenseInfo: option<licenseInfo>,
    @as("CompatibleRuntimes") compatibleRuntimes: option<compatibleRuntimes>,
    @as("Version") version: option<layerVersionNumber>,
    @as("CreatedDate") createdDate: option<timestamp_>,
    @as("Description") description: option<description>,
    @as("LayerVersionArn") layerVersionArn: option<layerVersionArn>,
    @as("LayerArn") layerArn: option<layerArn>,
    @as("Content") content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "PublishLayerVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  type request = {@as("Resource") resource: functionArn}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListTagsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionsByCodeSigningConfig = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
    @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {
    @as("FunctionArns") functionArns: option<functionArnList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListFunctionsByCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersionByArn = {
  type t
  type request = {@as("Arn") arn: layerVersionArn}
  type response = {
    @as("LicenseInfo") licenseInfo: option<licenseInfo>,
    @as("CompatibleRuntimes") compatibleRuntimes: option<compatibleRuntimes>,
    @as("Version") version: option<layerVersionNumber>,
    @as("CreatedDate") createdDate: option<timestamp_>,
    @as("Description") description: option<description>,
    @as("LayerVersionArn") layerVersionArn: option<layerVersionArn>,
    @as("LayerArn") layerArn: option<layerArn>,
    @as("Content") content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionByArnCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLayerVersion = {
  type t
  type request = {
    @as("VersionNumber") versionNumber: layerVersionNumber,
    @as("LayerName") layerName: layerName,
  }
  type response = {
    @as("LicenseInfo") licenseInfo: option<licenseInfo>,
    @as("CompatibleRuntimes") compatibleRuntimes: option<compatibleRuntimes>,
    @as("Version") version: option<layerVersionNumber>,
    @as("CreatedDate") createdDate: option<timestamp_>,
    @as("Description") description: option<description>,
    @as("LayerVersionArn") layerVersionArn: option<layerVersionArn>,
    @as("LayerArn") layerArn: option<layerArn>,
    @as("Content") content: option<layerVersionContentOutput>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetLayerVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountSettings = {
  type t
  type request = unit
  type response = {
    @as("AccountUsage") accountUsage: option<accountUsage>,
    @as("AccountLimit") accountLimit: option<accountLimit>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetAccountSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionEventInvokeConfig = {
  type t
  type request = {
    @as("DestinationConfig") destinationConfig: option<destinationConfig>,
    @as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
    @as("MaximumRetryAttempts") maximumRetryAttempts: option<maximumRetryAttempts>,
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateFunctionEventInvokeConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAlias = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("RoutingConfig") routingConfig: option<aliasRoutingConfiguration>,
    @as("Description") description: option<description>,
    @as("FunctionVersion") functionVersion: option<version>,
    @as("Name") name: alias,
    @as("FunctionName") functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "UpdateAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutFunctionEventInvokeConfig = {
  type t
  type request = {
    @as("DestinationConfig") destinationConfig: option<destinationConfig>,
    @as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: option<maximumEventAgeInSeconds>,
    @as("MaximumRetryAttempts") maximumRetryAttempts: option<maximumRetryAttempts>,
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "PutFunctionEventInvokeConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisionedConcurrencyConfigs = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxProvisionedConcurrencyConfigListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionName") functionName: functionName,
  }
  type response = {
    @as("NextMarker") nextMarker: option<string_>,
    @as("ProvisionedConcurrencyConfigs")
    provisionedConcurrencyConfigs: option<provisionedConcurrencyConfigList>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListProvisionedConcurrencyConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionEventInvokeConfig = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionEventInvokeConfig
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionEventInvokeConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAlias = {
  type t
  type request = {
    @as("Name") name: alias,
    @as("FunctionName") functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAlias = {
  type t
  type request = {
    @as("RoutingConfig") routingConfig: option<aliasRoutingConfiguration>,
    @as("Description") description: option<description>,
    @as("FunctionVersion") functionVersion: version,
    @as("Name") name: alias,
    @as("FunctionName") functionName: functionName,
  }
  type response = aliasConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "CreateAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionConfiguration = {
  type t
  type request = {
    @as("ImageConfig") imageConfig: option<imageConfig>,
    @as("FileSystemConfigs") fileSystemConfigs: option<fileSystemConfigList>,
    @as("Layers") layers: option<layerList>,
    @as("RevisionId") revisionId: option<string_>,
    @as("TracingConfig") tracingConfig: option<tracingConfig>,
    @as("KMSKeyArn") kmskeyArn: option<kmskeyArn>,
    @as("DeadLetterConfig") deadLetterConfig: option<deadLetterConfig>,
    @as("Runtime") runtime: option<runtime>,
    @as("Environment") environment: option<environment>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("MemorySize") memorySize: option<memorySize>,
    @as("Timeout") timeout: option<timeout>,
    @as("Description") description: option<description>,
    @as("Handler") handler: option<handler>,
    @as("Role") role: option<roleArn>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateFunctionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFunctionCode = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("DryRun") dryRun: option<boolean_>,
    @as("Publish") publish: option<boolean_>,
    @as("ImageUri") imageUri: option<string_>,
    @as("S3ObjectVersion") s3ObjectVersion: option<s3ObjectVersion>,
    @as("S3Key") s3Key: option<s3Key>,
    @as("S3Bucket") s3Bucket: option<s3Bucket>,
    @as("ZipFile") zipFile: option<blob>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "UpdateFunctionCodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEventSourceMapping = {
  type t
  type request = {
    @as("FunctionResponseTypes") functionResponseTypes: option<functionResponseTypeList>,
    @as("TumblingWindowInSeconds") tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
    @as("SourceAccessConfigurations")
    sourceAccessConfigurations: option<sourceAccessConfigurations>,
    @as("ParallelizationFactor") parallelizationFactor: option<parallelizationFactor>,
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
    @as("BisectBatchOnFunctionError")
    bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
    @as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
    @as("DestinationConfig") destinationConfig: option<destinationConfig>,
    @as("MaximumBatchingWindowInSeconds")
    maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
    @as("BatchSize") batchSize: option<batchSize>,
    @as("Enabled") enabled: option<enabled>,
    @as("FunctionName") functionName: option<functionName>,
    @as("UUID") uuid: string_,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateEventSourceMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCodeSigningConfig = {
  type t
  type request = {
    @as("CodeSigningPolicies") codeSigningPolicies: option<codeSigningPolicies>,
    @as("AllowedPublishers") allowedPublishers: option<allowedPublishers>,
    @as("Description") description: option<description>,
    @as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
  }
  type response = {@as("CodeSigningConfig") codeSigningConfig: codeSigningConfig}
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "UpdateCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PublishVersion = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<string_>,
    @as("Description") description: option<description>,
    @as("CodeSha256") codeSha256: option<string_>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "PublishVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLayerVersions = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxLayerListItems>,
    @as("Marker") marker: option<string_>,
    @as("LayerName") layerName: layerName,
    @as("CompatibleRuntime") compatibleRuntime: option<runtime>,
  }
  type response = {
    @as("LayerVersions") layerVersions: option<layerVersionsList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListLayerVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunctionConfiguration = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "GetFunctionConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventSourceMapping = {
  type t
  type request = {@as("UUID") uuid: string_}
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetEventSourceMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCodeSigningConfig = {
  type t
  type request = {@as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn}
  type response = {@as("CodeSigningConfig") codeSigningConfig: codeSigningConfig}
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventSourceMapping = {
  type t
  type request = {@as("UUID") uuid: string_}
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "DeleteEventSourceMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFunction = {
  type t
  type request = {
    @as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>,
    @as("ImageConfig") imageConfig: option<imageConfig>,
    @as("FileSystemConfigs") fileSystemConfigs: option<fileSystemConfigList>,
    @as("Layers") layers: option<layerList>,
    @as("Tags") tags: option<tags>,
    @as("TracingConfig") tracingConfig: option<tracingConfig>,
    @as("KMSKeyArn") kmskeyArn: option<kmskeyArn>,
    @as("Environment") environment: option<environment>,
    @as("DeadLetterConfig") deadLetterConfig: option<deadLetterConfig>,
    @as("PackageType") packageType: option<packageType>,
    @as("VpcConfig") vpcConfig: option<vpcConfig>,
    @as("Publish") publish: option<boolean_>,
    @as("MemorySize") memorySize: option<memorySize>,
    @as("Timeout") timeout: option<timeout>,
    @as("Description") description: option<description>,
    @as("Code") code: functionCode,
    @as("Handler") handler: option<handler>,
    @as("Role") role: roleArn,
    @as("Runtime") runtime: option<runtime>,
    @as("FunctionName") functionName: functionName,
  }
  type response = functionConfiguration
  @module("@aws-sdk/client-lambda") @new external new: request => t = "CreateFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSourceMapping = {
  type t
  type request = {
    @as("FunctionResponseTypes") functionResponseTypes: option<functionResponseTypeList>,
    @as("SelfManagedEventSource") selfManagedEventSource: option<selfManagedEventSource>,
    @as("SourceAccessConfigurations")
    sourceAccessConfigurations: option<sourceAccessConfigurations>,
    @as("Queues") queues: option<queues>,
    @as("Topics") topics: option<topics>,
    @as("TumblingWindowInSeconds") tumblingWindowInSeconds: option<tumblingWindowInSeconds>,
    @as("MaximumRetryAttempts")
    maximumRetryAttempts: option<maximumRetryAttemptsEventSourceMapping>,
    @as("BisectBatchOnFunctionError")
    bisectBatchOnFunctionError: option<bisectBatchOnFunctionError>,
    @as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: option<maximumRecordAgeInSeconds>,
    @as("DestinationConfig") destinationConfig: option<destinationConfig>,
    @as("StartingPositionTimestamp") startingPositionTimestamp: option<date>,
    @as("StartingPosition") startingPosition: option<eventSourcePosition>,
    @as("ParallelizationFactor") parallelizationFactor: option<parallelizationFactor>,
    @as("MaximumBatchingWindowInSeconds")
    maximumBatchingWindowInSeconds: option<maximumBatchingWindowInSeconds>,
    @as("BatchSize") batchSize: option<batchSize>,
    @as("Enabled") enabled: option<enabled>,
    @as("FunctionName") functionName: functionName,
    @as("EventSourceArn") eventSourceArn: option<arn>,
  }
  type response = eventSourceMappingConfiguration
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "CreateEventSourceMappingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCodeSigningConfig = {
  type t
  type request = {
    @as("CodeSigningPolicies") codeSigningPolicies: option<codeSigningPolicies>,
    @as("AllowedPublishers") allowedPublishers: allowedPublishers,
    @as("Description") description: option<description>,
  }
  type response = {@as("CodeSigningConfig") codeSigningConfig: codeSigningConfig}
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "CreateCodeSigningConfigCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLayers = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxLayerListItems>,
    @as("Marker") marker: option<string_>,
    @as("CompatibleRuntime") compatibleRuntime: option<runtime>,
  }
  type response = {
    @as("Layers") layers: option<layersList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListLayersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctionEventInvokeConfigs = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxFunctionEventInvokeConfigListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionName") functionName: functionName,
  }
  type response = {
    @as("NextMarker") nextMarker: option<string_>,
    @as("FunctionEventInvokeConfigs")
    functionEventInvokeConfigs: option<functionEventInvokeConfigList>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListFunctionEventInvokeConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCodeSigningConfigs = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
  }
  type response = {
    @as("CodeSigningConfigs") codeSigningConfigs: option<codeSigningConfigList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListCodeSigningConfigsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAliases = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionVersion") functionVersion: option<version>,
    @as("FunctionName") functionName: functionName,
  }
  type response = {
    @as("Aliases") aliases: option<aliasList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFunction = {
  type t
  type request = {
    @as("Qualifier") qualifier: option<qualifier>,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = {
    @as("Concurrency") concurrency: option<concurrency>,
    @as("Tags") tags: option<tags>,
    @as("Code") code: option<functionCodeLocation>,
    @as("Configuration") configuration: option<functionConfiguration>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "GetFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVersionsByFunction = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionName") functionName: namespacedFunctionName,
  }
  type response = {
    @as("Versions") versions: option<functionList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListVersionsByFunctionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFunctions = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionVersion") functionVersion: option<functionVersion>,
    @as("MasterRegion") masterRegion: option<masterRegion>,
  }
  type response = {
    @as("Functions") functions: option<functionList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new external new: request => t = "ListFunctionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventSourceMappings = {
  type t
  type request = {
    @as("MaxItems") maxItems: option<maxListItems>,
    @as("Marker") marker: option<string_>,
    @as("FunctionName") functionName: option<functionName>,
    @as("EventSourceArn") eventSourceArn: option<arn>,
  }
  type response = {
    @as("EventSourceMappings") eventSourceMappings: option<eventSourceMappingsList>,
    @as("NextMarker") nextMarker: option<string_>,
  }
  @module("@aws-sdk/client-lambda") @new
  external new: request => t = "ListEventSourceMappingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
