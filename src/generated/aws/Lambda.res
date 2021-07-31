type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workingDirectory = string
type weight = float;
type vpcId = string
type version = string
type unreservedConcurrentExecutions = int;
type uRI = string
type tumblingWindowInSeconds = int;
type tracingMode = [@as("PassThrough") #PassThrough | @as("Active") #Active]
type topic = string
type amazonawsTimestamp = string
type timeout = int;
type throttleReason = [@as("CallerRateLimitExceeded") #CallerRateLimitExceeded | @as("ReservedFunctionInvocationRateLimitExceeded") #ReservedFunctionInvocationRateLimitExceeded | @as("ReservedFunctionConcurrentInvocationLimitExceeded") #ReservedFunctionConcurrentInvocationLimitExceeded | @as("FunctionInvocationRateLimitExceeded") #FunctionInvocationRateLimitExceeded | @as("ConcurrentInvocationLimitExceeded") #ConcurrentInvocationLimitExceeded]
type tagValue = string
type tagKey = string
type subnetId = string
type amazonawsString = string
type statementId = string
type stateReasonCode = [@as("InvalidImage") #InvalidImage | @as("ImageAccessDenied") #ImageAccessDenied | @as("ImageDeleted") #ImageDeleted | @as("InvalidSecurityGroup") #InvalidSecurityGroup | @as("InvalidSubnet") #InvalidSubnet | @as("SubnetOutOfIPAddresses") #SubnetOutOfIPAddresses | @as("InternalError") #InternalError | @as("InvalidConfiguration") #InvalidConfiguration | @as("InsufficientRolePermissions") #InsufficientRolePermissions | @as("EniLimitExceeded") #EniLimitExceeded | @as("Restoring") #Restoring | @as("Creating") #Creating | @as("Idle") #Idle]
type stateReason = string
type state = [@as("Failed") #Failed | @as("Inactive") #Inactive | @as("Active") #Active | @as("Pending") #Pending]
type sourceOwner = string
type sourceAccessType = [@as("SASL_SCRAM_256_AUTH") #SASL_SCRAM_256_AUTH | @as("SASL_SCRAM_512_AUTH") #SASL_SCRAM_512_AUTH | @as("VPC_SECURITY_GROUP") #VPC_SECURITY_GROUP | @as("VPC_SUBNET") #VPC_SUBNET | @as("BASIC_AUTH") #BASIC_AUTH]
type sensitiveString = string
type securityGroupId = string
type s3ObjectVersion = string
type s3Key = string
type s3Bucket = string
type runtime = [@as("provided.al2") #provided_al2 | @as("provided") #provided | @as("ruby2.7") #ruby2_7 | @as("ruby2.5") #ruby2_5 | @as("go1.x") #go1_x | @as("nodejs4.3-edge") #nodejs4_3_edge | @as("dotnetcore3.1") #dotnetcore3_1 | @as("dotnetcore2.1") #dotnetcore2_1 | @as("dotnetcore2.0") #dotnetcore2_0 | @as("dotnetcore1.0") #dotnetcore1_0 | @as("python3.8") #python3_8 | @as("python3.7") #python3_7 | @as("python3.6") #python3_6 | @as("python2.7") #python2_7 | @as("java11") #java11 | @as("java8.al2") #java8_al2 | @as("java8") #java8 | @as("nodejs14.x") #nodejs14_x | @as("nodejs12.x") #nodejs12_x | @as("nodejs10.x") #nodejs10_x | @as("nodejs8.10") #nodejs8_10 | @as("nodejs6.10") #nodejs6_10 | @as("nodejs4.3") #nodejs4_3 | @as("nodejs") #nodejs]
type roleArn = string
type resourceArn = string
type reservedConcurrentExecutions = int;
type queue = string
type qualifier = string
type provisionedConcurrencyStatusEnum = [@as("FAILED") #FAILED | @as("READY") #READY | @as("IN_PROGRESS") #IN_PROGRESS]
type principal = string
type positiveInteger = int;
type parallelizationFactor = int;
type packageType = [@as("Image") #Image | @as("Zip") #Zip]
type organizationId = string
type nonNegativeInteger = int;
type namespacedStatementId = string
type namespacedFunctionName = string
type nameSpacedFunctionArn = string
type memorySize = int;
type maximumRetryAttemptsEventSourceMapping = int;
type maximumRetryAttempts = int;
type maximumRecordAgeInSeconds = int;
type maximumEventAgeInSeconds = int;
type maximumBatchingWindowInSeconds = int;
type maxProvisionedConcurrencyConfigListItems = int;
type maxListItems = int;
type maxLayerListItems = int;
type maxFunctionEventInvokeConfigListItems = int;
type masterRegion = string
type amazonawsLong = float;
type logType = [@as("Tail") #Tail | @as("None") #None]
type localMountPath = string
type licenseInfo = string
type layerVersionNumber = float;
type layerVersionArn = string
type layerPermissionAllowedPrincipal = string
type layerPermissionAllowedAction = string
type layerName = string
type layerArn = string
type lastUpdateStatusReasonCode = [@as("InvalidImage") #InvalidImage | @as("ImageAccessDenied") #ImageAccessDenied | @as("ImageDeleted") #ImageDeleted | @as("InvalidSecurityGroup") #InvalidSecurityGroup | @as("InvalidSubnet") #InvalidSubnet | @as("SubnetOutOfIPAddresses") #SubnetOutOfIPAddresses | @as("InternalError") #InternalError | @as("InvalidConfiguration") #InvalidConfiguration | @as("InsufficientRolePermissions") #InsufficientRolePermissions | @as("EniLimitExceeded") #EniLimitExceeded]
type lastUpdateStatusReason = string
type lastUpdateStatus = [@as("InProgress") #InProgress | @as("Failed") #Failed | @as("Successful") #Successful]
type kMSKeyArn = string
type invocationType = [@as("DryRun") #DryRun | @as("RequestResponse") #RequestResponse | @as("Event") #Event]
type amazonawsInteger = int;
type httpStatus = int;
type handler = string
type functionVersion = [@as("ALL") #ALL]
type functionResponseType = [@as("ReportBatchItemFailures") #ReportBatchItemFailures]
type functionName = string
type functionArn = string
type fileSystemArn = string
type eventSourceToken = string
type eventSourcePosition = [@as("AT_TIMESTAMP") #AT_TIMESTAMP | @as("LATEST") #LATEST | @as("TRIM_HORIZON") #TRIM_HORIZON]
type environmentVariableValue = string
type environmentVariableName = string
type endpoint = string
type endPointType = [@as("KAFKA_BOOTSTRAP_SERVERS") #KAFKA_BOOTSTRAP_SERVERS]
type enabled = bool;
type destinationArn = string
type description = string
type date = Js.Date.t;
type codeSigningPolicy = [@as("Enforce") #Enforce | @as("Warn") #Warn]
type codeSigningConfigId = string
type codeSigningConfigArn = string
type amazonawsBoolean = bool;
type blobStream = NodeJs.Buffer.t;
type blob = NodeJs.Buffer.t;
type bisectBatchOnFunctionError = bool;
type batchSize = int;
type arn = string
type alias = string
type additionalVersion = string
type action = string
type tracingConfigResponse = {
@as("Mode") mode: tracingMode
}
type tracingConfig = {
@as("Mode") mode: tracingMode
}
type topics = array<topic>
type tags = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type stringList = array<amazonawsString>
type sourceAccessConfiguration = {
@as("URI") uRI: uRI,
@as("Type") type_: sourceAccessType
}
type signingProfileVersionArns = array<arn>
type securityGroupIds = array<securityGroupId>
type queues = array<queue>
type provisionedConcurrencyConfigListItem = {
@as("LastModified") lastModified: amazonawsTimestamp,
@as("StatusReason") statusReason: amazonawsString,
@as("Status") status: provisionedConcurrencyStatusEnum,
@as("AllocatedProvisionedConcurrentExecutions") allocatedProvisionedConcurrentExecutions: nonNegativeInteger,
@as("AvailableProvisionedConcurrentExecutions") availableProvisionedConcurrentExecutions: nonNegativeInteger,
@as("RequestedProvisionedConcurrentExecutions") requestedProvisionedConcurrentExecutions: positiveInteger,
@as("FunctionArn") functionArn: functionArn
}
type onSuccess = {
@as("Destination") destination: destinationArn
}
type onFailure = {
@as("Destination") destination: destinationArn
}
type layerVersionContentOutput = {
@as("SigningJobArn") signingJobArn: amazonawsString,
@as("SigningProfileVersionArn") signingProfileVersionArn: amazonawsString,
@as("CodeSize") codeSize: amazonawsLong,
@as("CodeSha256") codeSha256: amazonawsString,
@as("Location") location: amazonawsString
}
type layerVersionContentInput = {
@as("ZipFile") zipFile: blob,
@as("S3ObjectVersion") s3ObjectVersion: s3ObjectVersion,
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: s3Bucket
}
type layerList = array<layerVersionArn>
type layer = {
@as("SigningJobArn") signingJobArn: arn,
@as("SigningProfileVersionArn") signingProfileVersionArn: arn,
@as("CodeSize") codeSize: amazonawsLong,
@as("Arn") arn: layerVersionArn
}
type imageConfigError = {
@as("Message") message: sensitiveString,
@as("ErrorCode") errorCode: amazonawsString
}
type functionResponseTypeList = array<functionResponseType>
type functionCodeLocation = {
@as("ResolvedImageUri") resolvedImageUri: amazonawsString,
@as("ImageUri") imageUri: amazonawsString,
@as("Location") location: amazonawsString,
@as("RepositoryType") repositoryType: amazonawsString
}
type functionCode = {
@as("ImageUri") imageUri: amazonawsString,
@as("S3ObjectVersion") s3ObjectVersion: s3ObjectVersion,
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: s3Bucket,
@as("ZipFile") zipFile: blob
}
type functionArnList = array<functionArn>
type fileSystemConfig = {
@as("LocalMountPath") localMountPath: option<localMountPath>,
@as("Arn") arn: option<fileSystemArn>
}
type environmentVariables = Js.Dict.t< environmentVariableValue>
type environmentError = {
@as("Message") message: sensitiveString,
@as("ErrorCode") errorCode: amazonawsString
}
type endpointLists = array<endpoint>
type deadLetterConfig = {
@as("TargetArn") targetArn: resourceArn
}
type concurrency = {
@as("ReservedConcurrentExecutions") reservedConcurrentExecutions: reservedConcurrentExecutions
}
type compatibleRuntimes = array<runtime>
type codeSigningPolicies = {
@as("UntrustedArtifactOnDeployment") untrustedArtifactOnDeployment: codeSigningPolicy
}
type additionalVersionWeights = Js.Dict.t< weight>
type accountUsage = {
@as("FunctionCount") functionCount: amazonawsLong,
@as("TotalCodeSize") totalCodeSize: amazonawsLong
}
type accountLimit = {
@as("UnreservedConcurrentExecutions") unreservedConcurrentExecutions: unreservedConcurrentExecutions,
@as("ConcurrentExecutions") concurrentExecutions: amazonawsInteger,
@as("CodeSizeZipped") codeSizeZipped: amazonawsLong,
@as("CodeSizeUnzipped") codeSizeUnzipped: amazonawsLong,
@as("TotalCodeSize") totalCodeSize: amazonawsLong
}
type vpcConfigResponse = {
@as("VpcId") vpcId: vpcId,
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds
}
type vpcConfig = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds
}
type sourceAccessConfigurations = array<sourceAccessConfiguration>
type provisionedConcurrencyConfigList = array<provisionedConcurrencyConfigListItem>
type layersReferenceList = array<layer>
type layerVersionsListItem = {
@as("LicenseInfo") licenseInfo: licenseInfo,
@as("CompatibleRuntimes") compatibleRuntimes: compatibleRuntimes,
@as("CreatedDate") createdDate: amazonawsTimestamp,
@as("Description") description: description,
@as("Version") version: layerVersionNumber,
@as("LayerVersionArn") layerVersionArn: layerVersionArn
}
type imageConfig = {
@as("WorkingDirectory") workingDirectory: workingDirectory,
@as("Command") command: stringList,
@as("EntryPoint") entryPoint: stringList
}
type fileSystemConfigList = array<fileSystemConfig>
type environmentResponse = {
@as("Error") error: environmentError,
@as("Variables") variables: environmentVariables
}
type environment = {
@as("Variables") variables: environmentVariables
}
type endpoints = Js.Dict.t< endpointLists>
type destinationConfig = {
@as("OnFailure") onFailure: onFailure,
@as("OnSuccess") onSuccess: onSuccess
}
type allowedPublishers = {
@as("SigningProfileVersionArns") signingProfileVersionArns: option<signingProfileVersionArns>
}
type aliasRoutingConfiguration = {
@as("AdditionalVersionWeights") additionalVersionWeights: additionalVersionWeights
}
type selfManagedEventSource = {
@as("Endpoints") endpoints: endpoints
}
type layersListItem = {
@as("LatestMatchingVersion") latestMatchingVersion: layerVersionsListItem,
@as("LayerArn") layerArn: layerArn,
@as("LayerName") layerName: layerName
}
type layerVersionsList = array<layerVersionsListItem>
type imageConfigResponse = {
@as("Error") error: imageConfigError,
@as("ImageConfig") imageConfig: imageConfig
}
type functionEventInvokeConfig = {
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: maximumEventAgeInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttempts,
@as("FunctionArn") functionArn: functionArn,
@as("LastModified") lastModified: date
}
type codeSigningConfig = {
@as("LastModified") lastModified: option<amazonawsTimestamp>,
@as("CodeSigningPolicies") codeSigningPolicies: option<codeSigningPolicies>,
@as("AllowedPublishers") allowedPublishers: option<allowedPublishers>,
@as("Description") description: description,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>,
@as("CodeSigningConfigId") codeSigningConfigId: option<codeSigningConfigId>
}
type aliasConfiguration = {
@as("RevisionId") revisionId: amazonawsString,
@as("RoutingConfig") routingConfig: aliasRoutingConfiguration,
@as("Description") description: description,
@as("FunctionVersion") functionVersion: version,
@as("Name") name: alias,
@as("AliasArn") aliasArn: functionArn
}
type layersList = array<layersListItem>
type functionEventInvokeConfigList = array<functionEventInvokeConfig>
type functionConfiguration = {
@as("SigningJobArn") signingJobArn: arn,
@as("SigningProfileVersionArn") signingProfileVersionArn: arn,
@as("ImageConfigResponse") imageConfigResponse: imageConfigResponse,
@as("PackageType") packageType: packageType,
@as("FileSystemConfigs") fileSystemConfigs: fileSystemConfigList,
@as("LastUpdateStatusReasonCode") lastUpdateStatusReasonCode: lastUpdateStatusReasonCode,
@as("LastUpdateStatusReason") lastUpdateStatusReason: lastUpdateStatusReason,
@as("LastUpdateStatus") lastUpdateStatus: lastUpdateStatus,
@as("StateReasonCode") stateReasonCode: stateReasonCode,
@as("StateReason") stateReason: stateReason,
@as("State") state: state,
@as("Layers") layers: layersReferenceList,
@as("RevisionId") revisionId: amazonawsString,
@as("MasterArn") masterArn: functionArn,
@as("TracingConfig") tracingConfig: tracingConfigResponse,
@as("KMSKeyArn") kMSKeyArn: kMSKeyArn,
@as("Environment") environment: environmentResponse,
@as("DeadLetterConfig") deadLetterConfig: deadLetterConfig,
@as("VpcConfig") vpcConfig: vpcConfigResponse,
@as("Version") version: version,
@as("CodeSha256") codeSha256: amazonawsString,
@as("LastModified") lastModified: amazonawsTimestamp,
@as("MemorySize") memorySize: memorySize,
@as("Timeout") timeout: timeout,
@as("Description") description: description,
@as("CodeSize") codeSize: amazonawsLong,
@as("Handler") handler: handler,
@as("Role") role: roleArn,
@as("Runtime") runtime: runtime,
@as("FunctionArn") functionArn: nameSpacedFunctionArn,
@as("FunctionName") functionName: namespacedFunctionName
}
type eventSourceMappingConfiguration = {
@as("FunctionResponseTypes") functionResponseTypes: functionResponseTypeList,
@as("TumblingWindowInSeconds") tumblingWindowInSeconds: tumblingWindowInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttemptsEventSourceMapping,
@as("BisectBatchOnFunctionError") bisectBatchOnFunctionError: bisectBatchOnFunctionError,
@as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: maximumRecordAgeInSeconds,
@as("SelfManagedEventSource") selfManagedEventSource: selfManagedEventSource,
@as("SourceAccessConfigurations") sourceAccessConfigurations: sourceAccessConfigurations,
@as("Queues") queues: queues,
@as("Topics") topics: topics,
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("StateTransitionReason") stateTransitionReason: amazonawsString,
@as("State") state: amazonawsString,
@as("LastProcessingResult") lastProcessingResult: amazonawsString,
@as("LastModified") lastModified: date,
@as("FunctionArn") functionArn: functionArn,
@as("EventSourceArn") eventSourceArn: arn,
@as("ParallelizationFactor") parallelizationFactor: parallelizationFactor,
@as("MaximumBatchingWindowInSeconds") maximumBatchingWindowInSeconds: maximumBatchingWindowInSeconds,
@as("BatchSize") batchSize: batchSize,
@as("StartingPositionTimestamp") startingPositionTimestamp: date,
@as("StartingPosition") startingPosition: eventSourcePosition,
@as("UUID") uUID: amazonawsString
}
type codeSigningConfigList = array<codeSigningConfig>
type aliasList = array<aliasConfiguration>
type functionList = array<functionConfiguration>
type eventSourceMappingsList = array<eventSourceMappingConfiguration>
type clientType;
@module("@aws-sdk/client-lambda") @new external createClient: unit => clientType = "LambdaClient";
module RemovePermission = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("Qualifier") qualifier: qualifier,
@as("StatementId") statementId: option<namespacedStatementId>,
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "RemovePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveLayerVersionPermission = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("StatementId") statementId: option<statementId>,
@as("VersionNumber") versionNumber: option<layerVersionNumber>,
@as("LayerName") layerName: option<layerName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "RemoveLayerVersionPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutProvisionedConcurrencyConfig = {
  type t;
  type request = {
@as("ProvisionedConcurrentExecutions") provisionedConcurrentExecutions: option<positiveInteger>,
@as("Qualifier") qualifier: option<qualifier>,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("LastModified") lastModified: amazonawsTimestamp,
@as("StatusReason") statusReason: amazonawsString,
@as("Status") status: provisionedConcurrencyStatusEnum,
@as("AllocatedProvisionedConcurrentExecutions") allocatedProvisionedConcurrentExecutions: nonNegativeInteger,
@as("AvailableProvisionedConcurrentExecutions") availableProvisionedConcurrentExecutions: nonNegativeInteger,
@as("RequestedProvisionedConcurrentExecutions") requestedProvisionedConcurrentExecutions: positiveInteger
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PutProvisionedConcurrencyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFunctionConcurrency = {
  type t;
  type request = {
@as("ReservedConcurrentExecutions") reservedConcurrentExecutions: option<reservedConcurrentExecutions>,
@as("FunctionName") functionName: option<functionName>
}
  type response = concurrency;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PutFunctionConcurrencyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFunctionCodeSigningConfig = {
  type t;
  type request = {
@as("FunctionName") functionName: option<functionName>,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  type response = {
@as("FunctionName") functionName: option<functionName>,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PutFunctionCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InvokeAsync = {
  type t;
  type request = {
@as("InvokeArgs") invokeArgs: option<blobStream>,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = {
@as("Status") status: httpStatus
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "InvokeAsyncCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Invoke = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("Payload") payload: blob,
@as("ClientContext") clientContext: amazonawsString,
@as("LogType") logType: logType,
@as("InvocationType") invocationType: invocationType,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = {
@as("ExecutedVersion") executedVersion: version,
@as("Payload") payload: blob,
@as("LogResult") logResult: amazonawsString,
@as("FunctionError") functionError: amazonawsString,
@as("StatusCode") statusCode: amazonawsInteger
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "InvokeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProvisionedConcurrencyConfig = {
  type t;
  type request = {
@as("Qualifier") qualifier: option<qualifier>,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("LastModified") lastModified: amazonawsTimestamp,
@as("StatusReason") statusReason: amazonawsString,
@as("Status") status: provisionedConcurrencyStatusEnum,
@as("AllocatedProvisionedConcurrentExecutions") allocatedProvisionedConcurrentExecutions: nonNegativeInteger,
@as("AvailableProvisionedConcurrentExecutions") availableProvisionedConcurrentExecutions: nonNegativeInteger,
@as("RequestedProvisionedConcurrentExecutions") requestedProvisionedConcurrentExecutions: positiveInteger
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetProvisionedConcurrencyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = {
@as("RevisionId") revisionId: amazonawsString,
@as("Policy") policy: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLayerVersionPolicy = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<layerVersionNumber>,
@as("LayerName") layerName: option<layerName>
}
  type response = {
@as("RevisionId") revisionId: amazonawsString,
@as("Policy") policy: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetLayerVersionPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionConcurrency = {
  type t;
  type request = {
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("ReservedConcurrentExecutions") reservedConcurrentExecutions: reservedConcurrentExecutions
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetFunctionConcurrencyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionCodeSigningConfig = {
  type t;
  type request = {
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("FunctionName") functionName: option<functionName>,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetFunctionCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisionedConcurrencyConfig = {
  type t;
  type request = {
@as("Qualifier") qualifier: option<qualifier>,
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteProvisionedConcurrencyConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLayerVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<layerVersionNumber>,
@as("LayerName") layerName: option<layerName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteLayerVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunctionEventInvokeConfig = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteFunctionEventInvokeConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunctionConcurrency = {
  type t;
  type request = {
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteFunctionConcurrencyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunctionCodeSigningConfig = {
  type t;
  type request = {
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteFunctionCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFunction = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCodeSigningConfig = {
  type t;
  type request = {
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  type response = unit
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlias = {
  type t;
  type request = {
@as("Name") name: option<alias>,
@as("FunctionName") functionName: option<functionName>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddPermission = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("Qualifier") qualifier: qualifier,
@as("EventSourceToken") eventSourceToken: eventSourceToken,
@as("SourceAccount") sourceAccount: sourceOwner,
@as("SourceArn") sourceArn: arn,
@as("Principal") principal: option<principal>,
@as("Action") action: option<action>,
@as("StatementId") statementId: option<statementId>,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("Statement") statement: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "AddPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddLayerVersionPermission = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("OrganizationId") organizationId: organizationId,
@as("Principal") principal: option<layerPermissionAllowedPrincipal>,
@as("Action") action: option<layerPermissionAllowedAction>,
@as("StatementId") statementId: option<statementId>,
@as("VersionNumber") versionNumber: option<layerVersionNumber>,
@as("LayerName") layerName: option<layerName>
}
  type response = {
@as("RevisionId") revisionId: amazonawsString,
@as("Statement") statement: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "AddLayerVersionPermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("Resource") resource: option<functionArn>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Resource") resource: option<functionArn>
}
  
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PublishLayerVersion = {
  type t;
  type request = {
@as("LicenseInfo") licenseInfo: licenseInfo,
@as("CompatibleRuntimes") compatibleRuntimes: compatibleRuntimes,
@as("Content") content: option<layerVersionContentInput>,
@as("Description") description: description,
@as("LayerName") layerName: option<layerName>
}
  type response = {
@as("LicenseInfo") licenseInfo: licenseInfo,
@as("CompatibleRuntimes") compatibleRuntimes: compatibleRuntimes,
@as("Version") version: layerVersionNumber,
@as("CreatedDate") createdDate: amazonawsTimestamp,
@as("Description") description: description,
@as("LayerVersionArn") layerVersionArn: layerVersionArn,
@as("LayerArn") layerArn: layerArn,
@as("Content") content: layerVersionContentOutput
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PublishLayerVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("Resource") resource: option<functionArn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctionsByCodeSigningConfig = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  type response = {
@as("FunctionArns") functionArns: functionArnList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListFunctionsByCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLayerVersionByArn = {
  type t;
  type request = {
@as("Arn") arn: option<layerVersionArn>
}
  type response = {
@as("LicenseInfo") licenseInfo: licenseInfo,
@as("CompatibleRuntimes") compatibleRuntimes: compatibleRuntimes,
@as("Version") version: layerVersionNumber,
@as("CreatedDate") createdDate: amazonawsTimestamp,
@as("Description") description: description,
@as("LayerVersionArn") layerVersionArn: layerVersionArn,
@as("LayerArn") layerArn: layerArn,
@as("Content") content: layerVersionContentOutput
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetLayerVersionByArnCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLayerVersion = {
  type t;
  type request = {
@as("VersionNumber") versionNumber: option<layerVersionNumber>,
@as("LayerName") layerName: option<layerName>
}
  type response = {
@as("LicenseInfo") licenseInfo: licenseInfo,
@as("CompatibleRuntimes") compatibleRuntimes: compatibleRuntimes,
@as("Version") version: layerVersionNumber,
@as("CreatedDate") createdDate: amazonawsTimestamp,
@as("Description") description: description,
@as("LayerVersionArn") layerVersionArn: layerVersionArn,
@as("LayerArn") layerArn: layerArn,
@as("Content") content: layerVersionContentOutput
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetLayerVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountSettings = {
  type t;
  type request = unit
  type response = {
@as("AccountUsage") accountUsage: accountUsage,
@as("AccountLimit") accountLimit: accountLimit
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunctionEventInvokeConfig = {
  type t;
  type request = {
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: maximumEventAgeInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttempts,
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionEventInvokeConfig;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateFunctionEventInvokeConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAlias = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("RoutingConfig") routingConfig: aliasRoutingConfiguration,
@as("Description") description: description,
@as("FunctionVersion") functionVersion: version,
@as("Name") name: option<alias>,
@as("FunctionName") functionName: option<functionName>
}
  type response = aliasConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutFunctionEventInvokeConfig = {
  type t;
  type request = {
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("MaximumEventAgeInSeconds") maximumEventAgeInSeconds: maximumEventAgeInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttempts,
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionEventInvokeConfig;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PutFunctionEventInvokeConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisionedConcurrencyConfigs = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxProvisionedConcurrencyConfigListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("NextMarker") nextMarker: amazonawsString,
@as("ProvisionedConcurrencyConfigs") provisionedConcurrencyConfigs: provisionedConcurrencyConfigList
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListProvisionedConcurrencyConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionEventInvokeConfig = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionEventInvokeConfig;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetFunctionEventInvokeConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAlias = {
  type t;
  type request = {
@as("Name") name: option<alias>,
@as("FunctionName") functionName: option<functionName>
}
  type response = aliasConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAlias = {
  type t;
  type request = {
@as("RoutingConfig") routingConfig: aliasRoutingConfiguration,
@as("Description") description: description,
@as("FunctionVersion") functionVersion: option<version>,
@as("Name") name: option<alias>,
@as("FunctionName") functionName: option<functionName>
}
  type response = aliasConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "CreateAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunctionConfiguration = {
  type t;
  type request = {
@as("ImageConfig") imageConfig: imageConfig,
@as("FileSystemConfigs") fileSystemConfigs: fileSystemConfigList,
@as("Layers") layers: layerList,
@as("RevisionId") revisionId: amazonawsString,
@as("TracingConfig") tracingConfig: tracingConfig,
@as("KMSKeyArn") kMSKeyArn: kMSKeyArn,
@as("DeadLetterConfig") deadLetterConfig: deadLetterConfig,
@as("Runtime") runtime: runtime,
@as("Environment") environment: environment,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("MemorySize") memorySize: memorySize,
@as("Timeout") timeout: timeout,
@as("Description") description: description,
@as("Handler") handler: handler,
@as("Role") role: roleArn,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateFunctionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFunctionCode = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("DryRun") dryRun: amazonawsBoolean,
@as("Publish") publish: amazonawsBoolean,
@as("ImageUri") imageUri: amazonawsString,
@as("S3ObjectVersion") s3ObjectVersion: s3ObjectVersion,
@as("S3Key") s3Key: s3Key,
@as("S3Bucket") s3Bucket: s3Bucket,
@as("ZipFile") zipFile: blob,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateFunctionCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEventSourceMapping = {
  type t;
  type request = {
@as("FunctionResponseTypes") functionResponseTypes: functionResponseTypeList,
@as("TumblingWindowInSeconds") tumblingWindowInSeconds: tumblingWindowInSeconds,
@as("SourceAccessConfigurations") sourceAccessConfigurations: sourceAccessConfigurations,
@as("ParallelizationFactor") parallelizationFactor: parallelizationFactor,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttemptsEventSourceMapping,
@as("BisectBatchOnFunctionError") bisectBatchOnFunctionError: bisectBatchOnFunctionError,
@as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: maximumRecordAgeInSeconds,
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("MaximumBatchingWindowInSeconds") maximumBatchingWindowInSeconds: maximumBatchingWindowInSeconds,
@as("BatchSize") batchSize: batchSize,
@as("Enabled") enabled: enabled,
@as("FunctionName") functionName: functionName,
@as("UUID") uUID: option<amazonawsString>
}
  type response = eventSourceMappingConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateEventSourceMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCodeSigningConfig = {
  type t;
  type request = {
@as("CodeSigningPolicies") codeSigningPolicies: codeSigningPolicies,
@as("AllowedPublishers") allowedPublishers: allowedPublishers,
@as("Description") description: description,
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  type response = {
@as("CodeSigningConfig") codeSigningConfig: option<codeSigningConfig>
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "UpdateCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PublishVersion = {
  type t;
  type request = {
@as("RevisionId") revisionId: amazonawsString,
@as("Description") description: description,
@as("CodeSha256") codeSha256: amazonawsString,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "PublishVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLayerVersions = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxLayerListItems,
@as("Marker") marker: amazonawsString,
@as("LayerName") layerName: option<layerName>,
@as("CompatibleRuntime") compatibleRuntime: runtime
}
  type response = {
@as("LayerVersions") layerVersions: layerVersionsList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListLayerVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunctionConfiguration = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = functionConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetFunctionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEventSourceMapping = {
  type t;
  type request = {
@as("UUID") uUID: option<amazonawsString>
}
  type response = eventSourceMappingConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetEventSourceMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCodeSigningConfig = {
  type t;
  type request = {
@as("CodeSigningConfigArn") codeSigningConfigArn: option<codeSigningConfigArn>
}
  type response = {
@as("CodeSigningConfig") codeSigningConfig: option<codeSigningConfig>
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEventSourceMapping = {
  type t;
  type request = {
@as("UUID") uUID: option<amazonawsString>
}
  type response = eventSourceMappingConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "DeleteEventSourceMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFunction = {
  type t;
  type request = {
@as("CodeSigningConfigArn") codeSigningConfigArn: codeSigningConfigArn,
@as("ImageConfig") imageConfig: imageConfig,
@as("FileSystemConfigs") fileSystemConfigs: fileSystemConfigList,
@as("Layers") layers: layerList,
@as("Tags") tags: tags,
@as("TracingConfig") tracingConfig: tracingConfig,
@as("KMSKeyArn") kMSKeyArn: kMSKeyArn,
@as("Environment") environment: environment,
@as("DeadLetterConfig") deadLetterConfig: deadLetterConfig,
@as("PackageType") packageType: packageType,
@as("VpcConfig") vpcConfig: vpcConfig,
@as("Publish") publish: amazonawsBoolean,
@as("MemorySize") memorySize: memorySize,
@as("Timeout") timeout: timeout,
@as("Description") description: description,
@as("Code") code: option<functionCode>,
@as("Handler") handler: handler,
@as("Role") role: option<roleArn>,
@as("Runtime") runtime: runtime,
@as("FunctionName") functionName: option<functionName>
}
  type response = functionConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "CreateFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventSourceMapping = {
  type t;
  type request = {
@as("FunctionResponseTypes") functionResponseTypes: functionResponseTypeList,
@as("SelfManagedEventSource") selfManagedEventSource: selfManagedEventSource,
@as("SourceAccessConfigurations") sourceAccessConfigurations: sourceAccessConfigurations,
@as("Queues") queues: queues,
@as("Topics") topics: topics,
@as("TumblingWindowInSeconds") tumblingWindowInSeconds: tumblingWindowInSeconds,
@as("MaximumRetryAttempts") maximumRetryAttempts: maximumRetryAttemptsEventSourceMapping,
@as("BisectBatchOnFunctionError") bisectBatchOnFunctionError: bisectBatchOnFunctionError,
@as("MaximumRecordAgeInSeconds") maximumRecordAgeInSeconds: maximumRecordAgeInSeconds,
@as("DestinationConfig") destinationConfig: destinationConfig,
@as("StartingPositionTimestamp") startingPositionTimestamp: date,
@as("StartingPosition") startingPosition: eventSourcePosition,
@as("ParallelizationFactor") parallelizationFactor: parallelizationFactor,
@as("MaximumBatchingWindowInSeconds") maximumBatchingWindowInSeconds: maximumBatchingWindowInSeconds,
@as("BatchSize") batchSize: batchSize,
@as("Enabled") enabled: enabled,
@as("FunctionName") functionName: option<functionName>,
@as("EventSourceArn") eventSourceArn: arn
}
  type response = eventSourceMappingConfiguration;
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "CreateEventSourceMappingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCodeSigningConfig = {
  type t;
  type request = {
@as("CodeSigningPolicies") codeSigningPolicies: codeSigningPolicies,
@as("AllowedPublishers") allowedPublishers: option<allowedPublishers>,
@as("Description") description: description
}
  type response = {
@as("CodeSigningConfig") codeSigningConfig: option<codeSigningConfig>
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "CreateCodeSigningConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLayers = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxLayerListItems,
@as("Marker") marker: amazonawsString,
@as("CompatibleRuntime") compatibleRuntime: runtime
}
  type response = {
@as("Layers") layers: layersList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListLayersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctionEventInvokeConfigs = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxFunctionEventInvokeConfigListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("NextMarker") nextMarker: amazonawsString,
@as("FunctionEventInvokeConfigs") functionEventInvokeConfigs: functionEventInvokeConfigList
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListFunctionEventInvokeConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCodeSigningConfigs = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString
}
  type response = {
@as("CodeSigningConfigs") codeSigningConfigs: codeSigningConfigList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListCodeSigningConfigsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAliases = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionVersion") functionVersion: version,
@as("FunctionName") functionName: option<functionName>
}
  type response = {
@as("Aliases") aliases: aliasList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFunction = {
  type t;
  type request = {
@as("Qualifier") qualifier: qualifier,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = {
@as("Concurrency") concurrency: concurrency,
@as("Tags") tags: tags,
@as("Code") code: functionCodeLocation,
@as("Configuration") configuration: functionConfiguration
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "GetFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVersionsByFunction = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionName") functionName: option<namespacedFunctionName>
}
  type response = {
@as("Versions") versions: functionList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListVersionsByFunctionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFunctions = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionVersion") functionVersion: functionVersion,
@as("MasterRegion") masterRegion: masterRegion
}
  type response = {
@as("Functions") functions: functionList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListFunctionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventSourceMappings = {
  type t;
  type request = {
@as("MaxItems") maxItems: maxListItems,
@as("Marker") marker: amazonawsString,
@as("FunctionName") functionName: functionName,
@as("EventSourceArn") eventSourceArn: arn
}
  type response = {
@as("EventSourceMappings") eventSourceMappings: eventSourceMappingsList,
@as("NextMarker") nextMarker: amazonawsString
}
  @module("@aws-sdk/client-lambda") @new external new_: (request) => t = "ListEventSourceMappingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
