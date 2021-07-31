type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-apprunner") @new external createClient: unit => awsServiceClient = "AppRunnerClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type uuid = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type startCommand = string
type sourceCodeVersionType = [@as("BRANCH") #BRANCH]
type serviceStatus = [@as("OPERATION_IN_PROGRESS") #OPERATION_IN_PROGRESS | @as("PAUSED") #PAUSED | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("RUNNING") #RUNNING | @as("CREATE_FAILED") #CREATE_FAILED]
type serviceName = string
type serviceMaxResults = int
type serviceId = string
type runtimeEnvironmentVariablesValue = string
type runtimeEnvironmentVariablesKey = string
type runtime = [@as("NODEJS_12") #NODEJS_12 | @as("PYTHON_3") #PYTHON_3]
type roleArn = string
type providerType = [@as("GITHUB") #GITHUB]
type operationType = [@as("DELETE_SERVICE") #DELETE_SERVICE | @as("RESUME_SERVICE") #RESUME_SERVICE | @as("PAUSE_SERVICE") #PAUSE_SERVICE | @as("CREATE_SERVICE") #CREATE_SERVICE | @as("START_DEPLOYMENT") #START_DEPLOYMENT]
type operationStatus = [@as("ROLLBACK_SUCCEEDED") #ROLLBACK_SUCCEEDED | @as("ROLLBACK_FAILED") #ROLLBACK_FAILED | @as("ROLLBACK_IN_PROGRESS") #ROLLBACK_IN_PROGRESS | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type nullableBoolean = bool
type nextToken = string
type memory = string
type maxResults = int
type listOperationsMaxResults = int
type kmsKeyArn = string
type integer_ = int
type imageRepositoryType = [@as("ECR_PUBLIC") #ECR_PUBLIC | @as("ECR") #ECR]
type imageIdentifier = string
type healthCheckUnhealthyThreshold = int
type healthCheckTimeout = int
type healthCheckProtocol = [@as("HTTP") #HTTP | @as("TCP") #TCP]
type healthCheckInterval = int
type healthCheckHealthyThreshold = int
type errorMessage = string
type domainName = string
type describeCustomDomainsMaxResults = int
type customDomainAssociationStatus = [@as("BINDING_CERTIFICATE") #BINDING_CERTIFICATE | @as("PENDING_CERTIFICATE_DNS_VALIDATION") #PENDING_CERTIFICATE_DNS_VALIDATION | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATING") #CREATING]
type cpu = string
type connectionStatus = [@as("DELETED") #DELETED | @as("ERROR") #ERROR | @as("AVAILABLE") #AVAILABLE | @as("PENDING_HANDSHAKE") #PENDING_HANDSHAKE]
type connectionName = string
type configurationSource = [@as("API") #API | @as("REPOSITORY") #REPOSITORY]
type certificateValidationRecordStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type buildCommand = string
type boolean_ = bool
type autoScalingConfigurationStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type autoScalingConfigurationName = string
type appRunnerResourceArn = string
type asconfigMinSize = int
type asconfigMaxSize = int
type asconfigMaxConcurrency = int
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>
}
type sourceCodeVersion = {
@as("Value") value: string_,
  @as("Type") type_: sourceCodeVersionType
}
type serviceSummary = {
@as("Status") status: option<serviceStatus>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("ServiceUrl") serviceUrl: option<string_>,
  @as("ServiceArn") serviceArn: option<appRunnerResourceArn>,
  @as("ServiceId") serviceId: option<serviceId>,
  @as("ServiceName") serviceName: option<serviceName>
}
type runtimeEnvironmentVariables = Js.Dict.t<runtimeEnvironmentVariablesValue>
type operationSummary = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("EndedAt") endedAt: option<timestamp_>,
  @as("StartedAt") startedAt: option<timestamp_>,
  @as("TargetArn") targetArn: option<appRunnerResourceArn>,
  @as("Status") status: option<operationStatus>,
  @as("Type") type_: option<operationType>,
  @as("Id") id: option<uuid>
}
type instanceConfiguration = {
@as("InstanceRoleArn") instanceRoleArn: option<roleArn>,
  @as("Memory") memory: option<memory>,
  @as("Cpu") cpu: option<cpu>
}
type healthCheckConfiguration = {
@as("UnhealthyThreshold") unhealthyThreshold: option<healthCheckUnhealthyThreshold>,
  @as("HealthyThreshold") healthyThreshold: option<healthCheckHealthyThreshold>,
  @as("Timeout") timeout: option<healthCheckTimeout>,
  @as("Interval") interval: option<healthCheckInterval>,
  @as("Path") path: option<string_>,
  @as("Protocol") protocol: option<healthCheckProtocol>
}
type encryptionConfiguration = {
@as("KmsKey") kmsKey: kmsKeyArn
}
type connectionSummary = {
@as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<connectionStatus>,
  @as("ProviderType") providerType: option<providerType>,
  @as("ConnectionArn") connectionArn: option<appRunnerResourceArn>,
  @as("ConnectionName") connectionName: option<connectionName>
}
type connection = {
@as("CreatedAt") createdAt: option<timestamp_>,
  @as("Status") status: option<connectionStatus>,
  @as("ProviderType") providerType: option<providerType>,
  @as("ConnectionArn") connectionArn: option<appRunnerResourceArn>,
  @as("ConnectionName") connectionName: option<connectionName>
}
type certificateValidationRecord = {
@as("Status") status: option<certificateValidationRecordStatus>,
  @as("Value") value: option<string_>,
  @as("Type") type_: option<string_>,
  @as("Name") name: option<string_>
}
type autoScalingConfigurationSummary = {
@as("AutoScalingConfigurationRevision") autoScalingConfigurationRevision: option<integer_>,
  @as("AutoScalingConfigurationName") autoScalingConfigurationName: option<autoScalingConfigurationName>,
  @as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>
}
type autoScalingConfiguration = {
@as("DeletedAt") deletedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("MaxSize") maxSize: option<integer_>,
  @as("MinSize") minSize: option<integer_>,
  @as("MaxConcurrency") maxConcurrency: option<integer_>,
  @as("Status") status: option<autoScalingConfigurationStatus>,
  @as("Latest") latest: option<boolean_>,
  @as("AutoScalingConfigurationRevision") autoScalingConfigurationRevision: option<integer_>,
  @as("AutoScalingConfigurationName") autoScalingConfigurationName: option<autoScalingConfigurationName>,
  @as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>
}
type authenticationConfiguration = {
@as("AccessRoleArn") accessRoleArn: option<roleArn>,
  @as("ConnectionArn") connectionArn: option<appRunnerResourceArn>
}
type tagList_ = array<tag>
type serviceSummaryList = array<serviceSummary>
type operationSummaryList = array<operationSummary>
type imageConfiguration = {
@as("Port") port: option<string_>,
  @as("StartCommand") startCommand: option<string_>,
  @as("RuntimeEnvironmentVariables") runtimeEnvironmentVariables: option<runtimeEnvironmentVariables>
}
type connectionSummaryList = array<connectionSummary>
type codeConfigurationValues = {
@as("RuntimeEnvironmentVariables") runtimeEnvironmentVariables: option<runtimeEnvironmentVariables>,
  @as("Port") port: option<string_>,
  @as("StartCommand") startCommand: option<startCommand>,
  @as("BuildCommand") buildCommand: option<buildCommand>,
  @as("Runtime") runtime: runtime
}
type certificateValidationRecordList = array<certificateValidationRecord>
type autoScalingConfigurationSummaryList = array<autoScalingConfigurationSummary>
type imageRepository = {
@as("ImageRepositoryType") imageRepositoryType: imageRepositoryType,
  @as("ImageConfiguration") imageConfiguration: option<imageConfiguration>,
  @as("ImageIdentifier") imageIdentifier: imageIdentifier
}
type customDomain = {
@as("Status") status: customDomainAssociationStatus,
  @as("CertificateValidationRecords") certificateValidationRecords: option<certificateValidationRecordList>,
  @as("EnableWWWSubdomain") enableWWWSubdomain: nullableBoolean,
  @as("DomainName") domainName: domainName
}
type codeConfiguration = {
@as("CodeConfigurationValues") codeConfigurationValues: option<codeConfigurationValues>,
  @as("ConfigurationSource") configurationSource: configurationSource
}
type customDomainList = array<customDomain>
type codeRepository = {
@as("CodeConfiguration") codeConfiguration: option<codeConfiguration>,
  @as("SourceCodeVersion") sourceCodeVersion: sourceCodeVersion,
  @as("RepositoryUrl") repositoryUrl: string_
}
type sourceConfiguration = {
@as("AuthenticationConfiguration") authenticationConfiguration: option<authenticationConfiguration>,
  @as("AutoDeploymentsEnabled") autoDeploymentsEnabled: option<nullableBoolean>,
  @as("ImageRepository") imageRepository: option<imageRepository>,
  @as("CodeRepository") codeRepository: option<codeRepository>
}
type service = {
@as("AutoScalingConfigurationSummary") autoScalingConfigurationSummary: autoScalingConfigurationSummary,
  @as("HealthCheckConfiguration") healthCheckConfiguration: option<healthCheckConfiguration>,
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("InstanceConfiguration") instanceConfiguration: instanceConfiguration,
  @as("SourceConfiguration") sourceConfiguration: sourceConfiguration,
  @as("Status") status: serviceStatus,
  @as("DeletedAt") deletedAt: option<timestamp_>,
  @as("UpdatedAt") updatedAt: timestamp_,
  @as("CreatedAt") createdAt: timestamp_,
  @as("ServiceUrl") serviceUrl: string_,
  @as("ServiceArn") serviceArn: appRunnerResourceArn,
  @as("ServiceId") serviceId: serviceId,
  @as("ServiceName") serviceName: serviceName
}

module StartDeployment = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("OperationId") operationId: uuid
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "StartDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceArn") resourceArn: appRunnerResourceArn
}
  type response = unit
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAutoScalingConfiguration = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: autoScalingConfiguration
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DescribeAutoScalingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionArn") connectionArn: appRunnerResourceArn
}
  type response = {
@as("Connection") connection: option<connection>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAutoScalingConfiguration = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: appRunnerResourceArn
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: autoScalingConfiguration
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DeleteAutoScalingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceArn") resourceArn: appRunnerResourceArn
}
  type response = unit
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: appRunnerResourceArn
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServices = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<serviceMaxResults>,
  @as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("ServiceSummaryList") serviceSummaryList: serviceSummaryList
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ListServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOperations = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<listOperationsMaxResults>,
  @as("NextToken") nextToken: option<string_>,
  @as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("OperationSummaryList") operationSummaryList: option<operationSummaryList>
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ListOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("ConnectionName") connectionName: option<connectionName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ConnectionSummaryList") connectionSummaryList: connectionSummaryList
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ListConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAutoScalingConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("LatestOnly") latestOnly: option<boolean_>,
  @as("AutoScalingConfigurationName") autoScalingConfigurationName: option<autoScalingConfigurationName>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("AutoScalingConfigurationSummaryList") autoScalingConfigurationSummaryList: autoScalingConfigurationSummaryList
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ListAutoScalingConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("ProviderType") providerType: providerType,
  @as("ConnectionName") connectionName: connectionName
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "CreateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAutoScalingConfiguration = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
  @as("MaxSize") maxSize: option<asconfigMaxSize>,
  @as("MinSize") minSize: option<asconfigMinSize>,
  @as("MaxConcurrency") maxConcurrency: option<asconfigMaxConcurrency>,
  @as("AutoScalingConfigurationName") autoScalingConfigurationName: autoScalingConfigurationName
}
  type response = {
@as("AutoScalingConfiguration") autoScalingConfiguration: autoScalingConfiguration
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "CreateAutoScalingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateCustomDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
  @as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("CustomDomain") customDomain: customDomain,
  @as("ServiceArn") serviceArn: appRunnerResourceArn,
  @as("DNSTarget") dnstarget: string_
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DisassociateCustomDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateCustomDomain = {
  type t;
  type request = {
@as("EnableWWWSubdomain") enableWWWSubdomain: option<nullableBoolean>,
  @as("DomainName") domainName: domainName,
  @as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("CustomDomain") customDomain: customDomain,
  @as("ServiceArn") serviceArn: appRunnerResourceArn,
  @as("DNSTarget") dnstarget: string_
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "AssociateCustomDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<describeCustomDomainsMaxResults>,
  @as("NextToken") nextToken: option<string_>,
  @as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("NextToken") nextToken: option<string_>,
  @as("CustomDomains") customDomains: customDomainList,
  @as("ServiceArn") serviceArn: appRunnerResourceArn,
  @as("DNSTarget") dnstarget: string_
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DescribeCustomDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateService = {
  type t;
  type request = {
@as("HealthCheckConfiguration") healthCheckConfiguration: option<healthCheckConfiguration>,
  @as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>,
  @as("InstanceConfiguration") instanceConfiguration: option<instanceConfiguration>,
  @as("SourceConfiguration") sourceConfiguration: option<sourceConfiguration>,
  @as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("OperationId") operationId: uuid,
  @as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "UpdateServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResumeService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("OperationId") operationId: option<uuid>,
  @as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "ResumeServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PauseService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("OperationId") operationId: option<uuid>,
  @as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "PauseServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DescribeServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteService = {
  type t;
  type request = {
@as("ServiceArn") serviceArn: appRunnerResourceArn
}
  type response = {
@as("OperationId") operationId: uuid,
  @as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "DeleteServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateService = {
  type t;
  type request = {
@as("AutoScalingConfigurationArn") autoScalingConfigurationArn: option<appRunnerResourceArn>,
  @as("HealthCheckConfiguration") healthCheckConfiguration: option<healthCheckConfiguration>,
  @as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
  @as("Tags") tags: option<tagList_>,
  @as("InstanceConfiguration") instanceConfiguration: option<instanceConfiguration>,
  @as("SourceConfiguration") sourceConfiguration: sourceConfiguration,
  @as("ServiceName") serviceName: serviceName
}
  type response = {
@as("OperationId") operationId: uuid,
  @as("Service") service: service
}
  @module("@aws-sdk/client-apprunner") @new external new_: (request) => t = "CreateServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
